# MSVC 6.5 /O2 /Og idiom cheat-sheet — BW1 decomp (game-wide)

This is **game-wide MSVC 6 codegen knowledge**, not Villager-specific. It was grown
during the Villager campaign but every entry below is a property of the compiler /
linker and applies to any BW1 TU. When you expand matching to another subsystem,
read this first and keep appending — the idiom set is the compounding asset.

Append-only. Entry format:

```
### slug
Rule: one line.
Diff signature: what you see in decomp-diff → what to write.
```

Tag ledger entries that used one: `vsm.py log ... --idiom slug`.
Seeded from AGENTS.md rules and the matched `Villager::DecideWhatToDo` session
(0x7515c0); everything below is proven against the real compiler.

---

## Mangled-name decoder (MSVC 6, 32-bit)

The `// BW1W120 <addr> BW1M100 <addr> <demangled>` comment is **ground truth for the
signature**, but the demangling can be wrong/incomplete — decode the raw mangled
symbol from `config/BW1W120/symbols.txt` yourself. Signature disputes (const, ref vs
ptr, `bool` vs `bool32_t`, static/virtual) are settled here, not by guessing. This is
the single most-reused lookup in the campaign; keep it handy.

A member symbol is `?Name@Class@@` then `<access><cv><callconv><ret><args>Z`:

| position | code → meaning |
|---|---|
| **access** | `Q`=public · `I`=protected · `A`=private · `U`=public **virtual** · `M`=protected virtual · `E`=private virtual · `S`=public **static** (no `this`, no cv, callconv follows directly) |
| **cv** (non-static only) | `A`=none · `B`=**const** · `C`=volatile · `D`=const volatile |
| **callconv** | `E`=`__thiscall` · `A`=`__cdecl` · `G`=`__stdcall` · `I`=`__fastcall` |
| **return / arg types** | see below, in order: return type first, then each arg |

Type codes (the ones that actually appear): `X`=void · `_N`=**bool** (1 byte) ·
`D`=char `E`=unsigned char `C`=signed char · `F`=short `G`=unsigned short ·
`H`=int `I`=**unsigned int** (this is what `bool32_t` mangles as) · `J`=long `K`=unsigned long ·
`M`=**float** `N`=double · `PA`=pointer (`PAX`=void*, `PAUFoo@@`=`Foo*`, `PAVFoo@@`=`Foo*` for class) ·
`PB`=pointer-to-const · `AA`=**reference** (`AAUFoo@@`=`Foo&`) · `AB`=**const reference** (`ABUFoo@@`=`const Foo&`) ·
`U`=struct `V`=class `W4`=enum · a `?A` prefix on the return marks a returned UDT/enum by value.

Worked examples (all validated against the binary this campaign):
- `?GetTopState@Living@@QBE?AW4VILLAGER_STATES@@XZ` → `public`,`const`,`__thiscall`, returns enum `VILLAGER_STATES`, `void` args ⇒ `VILLAGER_STATES GetTopState() const;`
- `?IsDancing@Living@@UAEIXZ` → public **virtual**, non-const, returns `I`=unsigned int ⇒ `virtual bool32_t IsDancing();` (**not** `bool` — that would be `_N`)
- `?MakeHomeless@Villager@@QAE_NXZ` → `_N` return ⇒ `bool MakeHomeless();` (**not** `bool32_t`)
- `?CheckForClearArea@Villager@@QAEIABUMapCoords@@M@Z` → `ABUMapCoords`=`const MapCoords&`, `M`=float ⇒ `bool32_t CheckForClearArea(const MapCoords&, float);` (AGENTS Rule 1: ref, not ptr)
- `?SetupAfterTapOnAbode@Villager@@QAEXAAUMapCoords@@W4VILLAGER_STATES@@@Z` → `AAUMapCoords`=`MapCoords&` (non-const ref), returns void.

**`bool` (`_N`, 1 byte) vs `bool32_t` (`I`, 4 bytes)** decides `al` vs `eax` codegen and
is a frequent 1-instruction miss — read the mangling before touching a bool return.

---

## Systemic blockers — recognise, then DEFER (dispatcher-owned)

Six independent Villager workers converged on the same five ceilings. When you hit one,
you are done with that function: get the semantics correct, add a `// TODO:`, log
`deferred` with the specifics, and move on. Chasing these past the 12-cycle cap produces
fakematches (negative progress). They resolve at the campaign level, not per-function.

1. **Scheduler / register-pressure tie-breaks** — semantics are right, only a spill/push/
   vtable-load floats by 1–2 positions. Idioms: [`save-across-call-spill`], [`retbuf-arg-order`],
   [`bool-return-full-eax-epilogue`], [`cmp-mem-rhs-spill`], [`tail-duplication-asymmetry`],
   [`setup-addreaction-field-sched`]. A toy can match while the full TU doesn't (register
   pressure differs). Revisit only when a *neighbour with the same shape* matches and reveals it.

2. **Return-type truths you cannot override** — the mangled signature is ground truth;
   never add/remove a return type to move bytes. Idioms: [`void-call-eax-probed-by-caller`]
   (a `QAEX` void whose caller reads `eax`), [`fpu-leak-void-return`] (void/uint body leaks
   ST0), [`bool-return-mask-needs-callee-defined`] (caller's `and eax,0xff` vanishes once
   the in-TU bool callee is *defined*). Often unblocked by defining a callee, not by editing the caller.

3. **Base-class vtable / layout bugs** — `call [reg+0xNNN]` differs only in the displacement,
   or a member is read at the wrong offset. The header hierarchy has extra/missing virtuals or
   a base placed at the wrong offset (seen in Creche, MultiMapFixed, Abode/GameThingWithPos).
   VERIFY with a raw `.rdata` vtable dump ([`vtable-slot-verify`]) — never trust Ghidra alone —
   then defer with the exact byte delta. **Do not edit another unit's class header to "fix" layout**;
   that is dispatcher work with cross-TU blast radius.

4. **Missing / unnamed symbols** — a global at an absolute address or an `fn_00xxxxxx` helper
   that has no name in `symbols.txt`. You cannot reference it by name, so the call/load reloc
   can't match. Defer with `--notes "symbol: <addr> needs naming"`; the dispatcher adds it.

5. **Link artifacts (not real mismatches, not fakematchable)** — `/OPT:ICF` folds two
   byte-identical functions onto one address (e.g. a `Villager` reaction folded onto a
   `PuzzleHorse` method): writing a cast to force it is a fakematch — leave it. `__real@…`
   COMDAT float pooling and phantom abs32 relocs ([`phantom-abs32-reloc`]) are byte-identical
   after link — verify with `objdump -r` on both objects and ignore.

---

### ptr-vs-ref
Rule: the mangled name in the `// BW1W120` comment encodes the true signature — `Type const &` there beats `Type*` in the header (AGENTS.md Rule 1).
Diff signature: header disagrees with comment → fix the header, not the caller.

### hidden-retbuf
Rule: `Type* Func(Type* out, ...)` whose comment shows one fewer param returns `Type` by value via a hidden buffer (AGENTS.md Rule 2).
Diff signature: comment omits first param → return by value, drop the param.

### globals-game
Rule: `(*globals.game)->` is the old spelling of `GGame::g_game->`; both exist in the codebase — copy whichever neighboring matched code uses.
Diff signature: extra indirection level on a global load.

### float-const-reloc
Rule: float/double constants are `.rdata` `__real@<hexbits>` COMDATs — never type a literal the reloc doesn't name; convert the hex bits to decide what the source literal was.
Diff signature: `~` on an operand naming `__real@...` → your literal has different bits (e.g. `0.5f` vs `0.5` double).

### bittest-fold
Rule: MSVC folds `flags & 0x200`-style tests into `test ah,2` / `test byte [mem+1],2` almost no matter how you write them — write the natural mask form and let it fold; `(expr) == 1` is one of the few shapes that BLOCKS folding (emits `and reg,mask; cmp reg,mask`).
Diff signature: target has `test ah,N`/`test byte [mem+1],N`, ours has `and`+`cmp` → drop the `== 1`.

### bittest-byte-local
Rule: target shape `mov ecx,eax; shr ecx,9; test cl,1` (UNfolded bit test) comes from byte truncation of the shifted value: `uint8_t b = f >> 9; if (b & 1 || f & 0x400)`.
Diff signature: `test cl,1`/`test al,1` after a `shr` in target → introduce the named byte local.

### local-copy-zext
Rule: `uint32_t f = word_member;` emits `xor eax,eax; mov ax,[mem]` (zext); direct member access emits no `xor`. Presence/absence of the `xor` tells you local-copy vs direct access per site; the local can be reassigned mid-function (target reloads member after calls instead of spilling).
Diff signature: target has `xor eax,eax` before a 16-bit member load → copy member into a `uint32_t` local first.

### dont-inline
Rule: some small functions must not be inlined into their callers to match; the repo precedent is `#pragma dont_inline on/off` around the definition. Decide per call-site from the diff, never preemptively.
Diff signature: our call site open-codes a callee body (or vice versa).

### stale-object
Rule: `decomp-diff.py` does NOT rebuild — if an earlier ninja run died on an unrelated TU, you are diffing an old object.
Diff signature: identical % and identical diff across source edits → rerun `ninja build/BW1W120/src/Black/<Unit>.o`, check exit status.

### phantom-abs32-reloc
Rule: a target-side abs32 inside a SIB displacement (`[edx*4+0x99a1fc]`) may lack a dtk-recovered reloc while ours shows `dir32 sym+addend`; if `sym+addend == raw address` it is byte-identical after link — not a real mismatch.
Diff signature: `~` where target shows a raw address and ours shows `symbol+off` → verify with `objdump -r` on both objects, then ignore.

### save-across-call-spill (OPEN — don't burn cycles)
Rule: when a `this`/pointer result is saved across an inner call and the call's other args are constants (e.g. `p->Virt(0, DropFood(0), 0, false, 0, 0)`), the 8966 scheduler places `mov <reg>,eax` (the spill) and `mov <reg>,[<reg>]` (vtable load) at a specific point among the constant `push 0`s. Naive source lands the spill one or two pushes too early → sticks at ~85%. The backend is CORRECT (c2.dll is 8966), so a source shape exists, but it was NOT found in the pilot after 5+ toy variants (temp-chain, named-local, inline-getter, decl-order, ==0).
Diff signature: only diffs are `>`/`<` on a `mov esi,eax` and one `push 0` that float relative to a run of identical `push 0`s; everything else matches. → This is a scheduler tie-break, not a semantic bug. Get the function to ~85% with correct semantics, add a `// TODO:` and `vsm.py log --result deferred`. Revisit only if a neighbor's match reveals the shape. Do not exceed the 12-cycle cap chasing it.

### retbuf-arg-order (OPEN — don't burn cycles)
Rule: a call passing a by-value-returned struct temp (`f(a, obj->ReturnsByValue(), CONST)`) bound to a `const T&` param, alongside a constant arg, evaluates right-to-left: target pushes the CONST first, then materialises the retbuf temp (`lea retbuf; push retbuf; call; push eax`). Our build sometimes hoists the retbuf call ahead of the CONST push → sticks ~86%. Verified in the pilot: an isolated toy of the exact shape — with BOTH a POD MapCoords and a copy-ctor MapCoords — matches the target. So when the real function still mismatches, the hoist is a whole-function register-pressure / real-header interaction, NOT a local shape you can rewrite away.
Diff signature: `~`/`>`/`<` where a `push 0x20` (or other constant state arg) and a `lea`/`push` retbuf pointer swap order around a virtual call, everything else matching. → Get correct semantics, `// TODO:`, `vsm.py log --result deferred`. Revisit only after a neighbour with the same retbuf-arg pattern matches and reveals the surrounding shape. Don't exceed the 12-cycle cap.

### toy-experiment
Rule: to test codegen variants fast, write `V::tN()` methods on a struct with the field at the right offset in a scratch .cpp and compile with `wine build/compilers/MSVC/6.5/cl.exe /nologo /W3 /O2 /Og /Ob1 /Zd /MT /GR /c file.cpp` (cd into the file's dir first — wine cl can't take absolute unix paths), then `objdump -d -M intel`. IMPORTANT: a toy match does NOT guarantee a real-TU match — register pressure from the full function can still change scheduling (see retbuf-arg-order).
Diff signature: n/a — workflow tool for when two source shapes are both plausible.

### byte-enum-compare
Rule: when the target loads an enum/int param as a byte (`mov al,[esp+4]`) and does `cmp al, K`, the source compared the enum truncated to a byte. Cast EACH comparison operand: `(uint8_t)state == VILLAGER_STATE_X`. A single `uint8_t s = state;` then `s == K` does NOT work — comparing a uint8_t to an int literal re-promotes to `cmp eax`.
Diff signature: target `cmp al, imm8` vs ours `cmp eax, imm32` on an enum param → per-comparison `(uint8_t)` cast.

### tailcall-jmp-stub
Rule: when a target symbol's size is exactly 5 bytes (or a small size ending on a 16-byte NOP-padded boundary) and the whole body is a single `jmp rel32`, the source is a one-line forwarder whose ONLY statement is `return OtherFunc(...);` in tail position — /O2 turns it into a plain JMP (no call/ret) as long as the callee's calling convention exactly matches (same thiscall `this`, no extra args to clean up). Don't assume the callee is in the same file/class role — verify via `objdump -dr` on the target `.o`, which shows the JMP's relocation naming the real target symbol; Ghidra's own auto-analysis can be unreliable here (may mis-chain a `noreturn` callee and merge/truncate neighboring function boundaries), so prefer `objdump -dr -M intel --disassemble-zeroes build/BW1W120/obj/<unit>.o` on the real target object over trusting Ghidra's decompilation for these tiny stubs.
Diff signature: target status is `missing`, decomp-diff SIZE for the symbol is tiny (5B) and doesn't match the Ghidra-decompiled body at that name — objdump the real target `.o` directly to find the true single-instruction body and its relocation target.

### vtable-slot-verify
Rule: when a diff shows `~` on a `call dword ptr [reg+OFFSET]` operand (same shape otherwise, just the displacement differs), don't guess the callee from Ghidra decompilation alone — read the REAL vtable bytes. Find the class's vtable symbol (`??_7ClassName@@6B@` in symbols.txt), compute `vtable_addr + offset`, then `objdump -s -j .rdata --start-address=<addr> --stop-address=<addr+8> orig/BW1W120/runblack-decrypted.exe` to get the raw dword (little-endian function pointer), then grep that address in symbols.txt for the real callee name. If the target's dword at that slot resolves to a sensible, already-declared method (confirmed correct) but YOUR build calls the same C++ expression at a DIFFERENT displacement, the mismatch is a vtable-layout bug in a base-class header (missing/extra virtual declared before that slot) — not a source-shape bug in your unit. Cross-check with a slot that DOES match (e.g. an earlier virtual on the same class) to bracket which header range contains the discrepancy, then defer with the exact byte delta for the dispatcher.
Diff signature: `call [reg+0xNNN]` differs only in the displacement between target and ours, everything else (args, order, following code) identical → verify via raw `.rdata` vtable dump, not Ghidra; if confirmed, it's a layout bug outside your unit — defer, don't touch other units' class headers.

### bool-return-full-eax-epilogue (OPEN — don't burn cycles)
Rule: a function mangled `_N` (real C++ `bool`, not `bool32_t`) that ends with a literal `return 1;`/`return true;` after some side-effecting calls sometimes has the target emit a full `mov eax,1` (5B) for the epilogue where our build emits the narrower `mov al,1` (2B). Toy-tested (isolated struct, matching prologue, `/O2 /Og /Ob1`): plain `return true`, `return 1`, and a comma-expression `(SetTopState(x), true)` all reproduced ONLY the narrow `mov al,1` — never the wide form. Not a local source-phrasing bug; likely full-TU register-pressure/scheduler tie-break (same family as save-across-call-spill).
Diff signature: only diff is `mov eax,{1}` (target) vs `mov al,{1}` (ours) as the very last instruction before `pop`/`ret` in a `_N`-mangled function → get correct semantics, `// TODO:`, `vsm.py log --result deferred`. Revisit only if a neighboring `_N`-returning function reveals the trigger.

### cmp-mem-rhs-spill (OPEN — don't burn cycles)
Rule: for an `a == b` comparison where BOTH `a` and `b` are memory dereferences (struct field reads, e.g. `x->info->TribeType == y->info->TribeType`), the target sometimes keeps the RHS as a direct memory operand in the `cmp` (`cmp eax,[edx+0xNNN]`) while our build spills it into a register first (`mov ecx,[edx+0xNNN]; cmp eax,ecx`) — 2 tries, same source shape, everything else matches. Confirmed on two independent functions (`MakeChildOrphaned`'s `mother == param_1` and `IsMotherAlive`'s `TribeType == TribeType`). Tried and failed: swapping comparison operand order (regresses further, e.g. 91%→86%, 94.8%→94.0%), early-return restructuring (91%→58%), introducing a named local for the LHS. Not a local source-shape bug — likely full-function register-pressure/scheduler tie-break (same family as save-across-call-spill).
Diff signature: `cmp reg,[mem]` (target) vs `mov reg2,[mem]; cmp reg,reg2` (ours) as the only diff, both sides of the comparison are struct-field reads → get correct semantics, `// TODO:`, `vsm.py log --result deferred`. Don't try operand-order swaps or early-return rewrites again without new evidence — both are proven regressions here.

### tail-duplication-asymmetry (OPEN — don't burn cycles)
Rule: for an if/else where each branch ends in either "bail out" (cheap, e.g. `pop;xor;pop;ret`) or "do the real action" (expensive, e.g. `push;mov;call`), MSVC 6 /O2 can choose to DUPLICATE the cheap tail into both branches while sharing a single instance of the expensive tail (both branches `jg`/`jne` to one common call site) — a code-size-driven tail-duplication heuristic. Source shapes tried and NOT matching this exact asymmetry: nested if/else with the action written inside each branch (duplicates the action, shares the bail-out — backwards), a shared local computed per-branch with one trailing check (still duplicates the action), and early-return-per-branch with a single trailing action call (closest so far, but still duplicates the action instead of sharing it). Register assignment (which var lands in edi vs esi) resolved itself once the early-return form was used, independent of this remaining issue.
Diff signature: target has ONE call reached by multiple `jg`/`jne` targets converging on the same address, ours has the SAME call instruction sequence repeated verbatim at each branch (or vice versa with the cheap tail) → get correct semantics, `// TODO:`, defer. Untested idea for a future attempt: making the "cheap" path the one written as a shared trailing statement and the "expensive" path the one written inline per-branch (inverse of what's been tried).

### void-call-eax-probed-by-caller (OPEN — needs research, don't burn cycles)
Rule: some `void`-mangled (`QAEX`) methods have their body end each control-flow path with an explicit `mov eax,1` / `xor eax,eax` (not a leftover flag, a deliberate immediate-load right before `ret`), and a CALLER elsewhere does `call Foo(); cmp eax,1; jne ...` directly on the result — i.e. reads a "return value" from a function that has none per its mangled signature. Confirmed real (not decompiler noise) via raw `objdump -dr` on the target `.o` on both sides (`Villager::MoveVillagerToAbode` body + `Villager::CheckNeedNewAbode` call site). Ruled out via wine-cl toy: MSVC6 hard-errors (C2562) on `return 1;` from a `void` function, and DOES eliminate a genuinely-dead local written 0/1 on each path under `/O2 /Og` — so this is neither an illegal return nor a dead-store survival. Cause not yet found.
Diff signature: n/a yet (not reproduced in our build) — this is a research note for when a `void`-returning helper's caller needs its result. Do not try to write `if (VoidFunc() == 1)` (won't compile) or add a return type to a `QAEX`-mangled function (mangling is ground truth). Look for a matched neighbor with the identical shape before attempting.

### setstate-eq-1
Rule: `SetCurrentAndDestinationState(CURRENT, dest) == 1` (vtable slot 0x8dc) is the standard state-entry predicate; the `== 1` (not `!= 0`) matches the `dec;neg;sbb;inc` normalization the compiler emits and the existing LivingReaction precedent.
Diff signature: target calls `[vtbl+0x8dc]` then `dec eax;neg eax;sbb eax,eax;inc eax` → write `... == 1`.

### arg-bool-local-defer
Rule: when a call passes a comparison/bool as one arg and a struct member's address (`obj.member` by const-ref) as another, MSVC6 evaluates args right-to-left and computes the address LAST (into the just-freed reg). Writing the comparison inline lets the scheduler hoist the address `lea` early into a spare reg (edx) → sticks ~92%. Materialising the comparison into a named `int` local first (`int isX = (Field == K); f(obj.member, isX);`) defers the `lea` to after the bool push, reusing ecx — matching.
Diff signature: only diff is a `lea reg,[this+off]` that appears BEFORE `sete`/`setz` in ours but AFTER the `push` of the bool in target (and reg is edx vs ecx) → pull the bool comparison out into an `int` local.

### fpu-leak-void-return (OPEN — don't burn cycles)
Rule: several VillagerFood methods are mangled `void`/`unsigned int` (`X`/`I` return) yet the target's body ends by leaving a `float` result of a callee (e.g. `GetLifeDesireFromLife`, `GetAmountOfFoodToEat`, `POWER`) sitting in ST0 with NO `fstp st(0)` to discard it — the original source apparently relied on that leaked FPU value (UB / return-type mismatch in the original). Our faithful `void` body always emits the extra `fstp st(0)` (or, for an `unsigned int` return, an `__ftol` conversion) that the target omits, costing exactly one trailing instruction. Not reproducible from a clean `void`/`uint` source: declaring the true float return changes the mangled name (breaks symbols.txt), and MSVC6 won't emit a bare leak from a void statement call. Confirmed on `GetDesireForLife` (extra `fstp st(0)`), family also flagged on `GetDesireToPickupFood`, `EatFoodHeld`, `EatFood`, `GetFoodFromHome`.
Diff signature: only diff is a `>` extra `fstp st(0)` (void return) or an extra `call __ftol`/`fistp` (uint return) immediately after a float-returning callee, right before `pop`/`ret` → get correct semantics, `// TODO:`, defer. Revisit only if a neighbor reveals a source shape that legally leaks ST0.

### bool-return-mask-needs-callee-defined
Rule: `unsigned int Caller() { ... return BoolCallee(); ... }` where `BoolCallee` is mangled `_N` (real C++ `bool`, 1-byte). If `BoolCallee`'s DEFINITION is visible in the same TU, MSVC6 knows the return is a clean 0/1 and emits NO widening — the `bool` in eax is returned as-is. If `BoolCallee` is only an extern DECLARATION (callee not yet implemented in the TU), MSVC6 conservatively inserts `and eax,0xff` to zero-extend. So a caller can be stuck one instruction short (`> and eax,0xff`) purely because its in-TU bool callee is still a stub/missing. Not a caller-side source-shape bug.
Diff signature: only diff is a `>` extra `and eax,0xff` (or `movzx eax,al`) right after a `call <BoolCallee>` whose result is returned, and that callee is `missing`/stubbed in the same unit → the caller will match automatically once the bool callee is DEFINED in the TU. Defer the caller with a note pointing at the callee; don't try to rewrite the caller's return.

### argeval-named-local-before-const-push
Rule: for `f(GetX(), CONST)` where GetX() is a call and CONST is an immediate, the target often materialises GetX() FIRST (call, keep in eax) then `push CONST; push eax`. Naive `f(GetX(), CONST)` may push CONST before the call. Binding the call result to a named local — `T* x = GetX(); f(x, CONST);` — forces call-then-push-const-then-push-x, matching, without spilling (stays in eax).
Diff signature: target `call GetX; push CONST; push eax`, ours `push CONST; call GetX; push eax` → introduce the named local.

### cmp-imm-exact-boundary
Rule: MSVC6 encodes an integer relational compare with the EXACT literal you write — it does NOT canonicalize `> K` to `>= K+1` or `< K` to `<= K-1`. To match a target's `cmp eax, IMM; j<cc>`, pick the source operator+enum whose literal equals IMM. E.g. target `cmp 0x2f; jl` (i.e. `< 47`) came from `state >= 47` (enum FORESTER_MOVE_TO_FOREST=47), NOT `state > 46`; target `cmp 0x32; jle` came from `state <= 50`, NOT `state < 51`. Semantically-equal but off-by-one literals mismatch.
Diff signature: `~` on the immediate of a `cmp eax, {0xNN}` plus an extra/missing `jle`/`jl` pair → rewrite the boundary using the enum member whose value == the target immediate, flipping `>`↔`>=` / `<`↔`<=` accordingly.

### tailcall-virtual-jmp
Rule: `return this->SomeVirtual(args);` in tail position where SomeVirtual has the same calling convention/args as the enclosing method compiles to `mov eax,[ecx]; jmp [eax+slot]` (a vtable-dispatched tail jump, no call/ret). Just write the natural virtual call as the sole `return` statement.
Diff signature: target body is `mov eax,[ecx]; jmp dword ptr [eax+0xNNN]` (size ~8B) → `return VirtualMethod(...)`.

### setup-addreaction-field-sched (OPEN — don't burn cycles)
Rule: the `Villager::SetupReactTo*` family bodies are `AddReaction(reaction, STATE); field_0xbc = target;` (or field-first). Semantics are trivial and correct, but MSVC6's scheduler places the virtual-call vtable load (`mov eax,[esi]`/`mov eax,[ecx]`) at a position that our naive source can't reproduce for the BARE two-statement form: target loads the vtable BEFORE the constant `push STATE` (or, for field-first-with-`this`, reloads it AFTER the field store), ours does the opposite → sticks ~83% (or ~43% for the `field_0xbc=this` self-store shape). Guarded variants that have EXTRA instructions before the call (e.g. SetupFleeFromPredator's `GetFinalState()` early-out) DO reach 100%, because the added register pressure shifts the schedule. So the fix is not a local rewrite — it's whole-function context. field-first with `field=param_1` (not `this`) fares better (~83%) than `field=this` (~43%).
Diff signature: only diffs are a `push <imm>` (the STATE constant) and a `mov <reg>,[<this>]` (vtable load) floating past each other around one virtual call, everything else identical → correct semantics, `// TODO:` if desired, `vsm.py log --result improved`. Don't exceed the cap chasing it; revisit only if a neighboring Setup* with the same shape reveals the trigger.
