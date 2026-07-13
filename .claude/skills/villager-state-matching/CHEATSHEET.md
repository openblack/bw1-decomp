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
   a base placed at the wrong offset (seen in Creche, MultiMapFixed). VERIFY with a raw `.rdata`
   vtable dump ([`vtable-slot-verify`]) — never trust Ghidra alone — then defer with the exact byte
   delta. **Do not edit another unit's class header to "fix" layout**; cross-TU blast radius.
   CAUTION: before blaming layout on a *member-offset* mismatch, rule out [`base-member-shadow`]
   first — a "coords at 0x2c vs 0x14" diff was misdiagnosed campaign-wide as "GameThingWithPos base
   0x18 too deep" when it was really `Object::coords` (0x2c) shadowing the inherited base member.

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

### ptr-vs-ref-blocked-by-existing-caller
Rule: before applying `ptr-vs-ref` to a SHARED method (declared in `Living.h`/a base class, called from multiple `.cpp`s), grep the whole `src/` tree for existing call sites first. If even one already-written `.cpp` in ANOTHER unit calls it with the current (wrong-per-mangling) pointer form (`Func(&expr, ...)`), fixing the header to the mangled-true reference form breaks that unit's compile — cross-TU blast radius, not yours to take. Proven on `Living::PerformDance` (mangled `ABUMapCoords@@` = `const MapCoords&`, header has `const MapCoords*`): VillagerWorshipper.cpp already calls it 3x (`RestartWorshippingCreature`, `WorshippingCreature`, `WorshippingAtWorshipSite`) with `&dance_group->Dancer->Pos`-style args matching the pointer form. Contrast with a clean `ptr-vs-ref` fix (e.g. `MapCoords::operator==`/`operator!=`/`operator+=(JustMapXZ)`): grep first — if there are ZERO existing callers anywhere in `src/`, the fix is safe and required (do it); if there are existing callers elsewhere, defer instead and log the specific caller(s) that block you.
Diff signature: your call site's `~` diff shows target callee demangles with `const Type&` and yours with `const Type*` (or vice versa) on an otherwise-correct call (right args, right order) → grep `src/` for existing callers of that method BEFORE editing the shared header; zero callers → fix it; any existing caller elsewhere → defer with the exact caller(s) named.

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
Rule: to test codegen variants fast, write `V::tN()` methods on a struct with the field at the right offset in a scratch .cpp under the repo-local `tmp/` dir (gitignored — never `/tmp` or anywhere outside the repo) and compile with `wine build/compilers/MSVC/6.5/cl.exe /nologo /W3 /O2 /Og /Ob1 /Zd /MT /GR /c file.cpp` (cd into `tmp/` first — wine cl can't take absolute unix paths), then `objdump -d -M intel`. IMPORTANT: a toy match does NOT guarantee a real-TU match — register pressure from the full function can still change scheduling (see retbuf-arg-order).
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

### u16-member-16bit-cmp
Rule: to reproduce a 16-bit unsigned compare `cmp di,ax; jbe`/`jae` (not a 32-bit `cmp eax,ecx` with movsx/movzx), BOTH compared operands must be `unsigned short` at the point of comparison. A signed `int16_t` member compared against an `unsigned short` arg forces `movsx member` + `and arg,0xffff` + 32-bit `cmp` + `jle` (signed). Cast the member: `arg > (unsigned short)Member16` → MSVC6 emits the 16-bit `cmp arg,member; jbe`. Also: to match a target that RE-loads the member in each branch (fast path + clamp path) rather than caching, access the member directly each time — do NOT introduce a single `unsigned short held = Member;` local (that caches into one register and loads once).
Diff signature: target `mov ax,[mem]; cmp di,ax; jbe` (16-bit) vs ours `movsx ecx,ax; and edx,0xffff; cmp edx,ecx; jle` (32-bit signed) → cast the signed member to `(unsigned short)` in the comparison.

### setup-addreaction-field-sched (OPEN — don't burn cycles)
Rule: the `Villager::SetupReactTo*` family bodies are `AddReaction(reaction, STATE); field_0xbc = target;` (or field-first). Semantics are trivial and correct, but MSVC6's scheduler places the virtual-call vtable load (`mov eax,[esi]`/`mov eax,[ecx]`) at a position that our naive source can't reproduce for the BARE two-statement form: target loads the vtable BEFORE the constant `push STATE` (or, for field-first-with-`this`, reloads it AFTER the field store), ours does the opposite → sticks ~83% (or ~43% for the `field_0xbc=this` self-store shape). Guarded variants that have EXTRA instructions before the call (e.g. SetupFleeFromPredator's `GetFinalState()` early-out) DO reach 100%, because the added register pressure shifts the schedule. So the fix is not a local rewrite — it's whole-function context. field-first with `field=param_1` (not `this`) fares better (~83%) than `field=this` (~43%).
Diff signature: only diffs are a `push <imm>` (the STATE constant) and a `mov <reg>,[<this>]` (vtable load) floating past each other around one virtual call, everything else identical → correct semantics, `// TODO:` if desired, `vsm.py log --result improved`. Don't exceed the cap chasing it; revisit only if a neighboring Setup* with the same shape reveals the trigger.

### gamerand-file-line-split-tu (systemic ceiling — improve then defer)
Rule: `GRand::GameRand(max, __FILE__, __LINE__)` / `GameFloatRand(scale, __FILE__, __LINE__)` bake the calling file path and line number into the call as constant arg pushes (the `__FILE__`/`__LINE__` default-arg debug pattern). In a SPLIT TU our reconstructed file has different line numbers than the original single source, and the emitted file-string is a `'string'` literal COMDAT vs the original's plain `.data` label — so the `push <line>` and `push <file>` (two per call) can NEVER match until the whole TU is reconstructed line-for-line to the original layout. Everything else around the call (the max/scale arg, the branchless select of the result, etc.) matches. This is a whole-file/dispatcher concern, not a per-function bug — see the precedent TODO in VillagerHome.cpp (`HomeNothingToDo`). Write the correct call with `__FILE__, __LINE__`, get the surrounding logic to match, add a `// TODO:`, and log `improved`/`deferred`.
Diff signature: `~ push {0xNNN}` (target line) vs our line, and `push lbl_00Cxxxxx` (target .data file string) vs `push 'string'` (our COMDAT), immediately before a `call GRand::GameRand`/`GameFloatRand` → unavoidable in a split TU; don't chase.

### secs-per-year-cluster (systemic — dispatcher-owned, don't chase per-unit)
Rule: nearly every `Villager*.cpp` TU (grep `symbols.txt` for `_num_days_in_year_` — ~25 hits: VillagerTrader, VillagerChild, VillagerScript, VillagerLeader, VillagerFarmer, VillagerCivic, … one pair per TU) carries an identical 4-symbol cluster in its `.text`/`.rdata`/`.CRT$XCU`/`.bss` ranges: `crt_xc_fn_atexitCleanupReg_<TU>_<addr>` (44B, byte-identical binary-wide CRT/header boilerplate — same guard flag `_Stz@?$fpos@H@std@@0HA` + nullsub callee — not TU logic), `crt_xc_fn_secsPerYear_<TU>_<addr>` (5B `tailcall-jmp-stub` to the real init function), a `?FUN_<addr>@Villager@@QAEXXZ` whose confirmed body is `fld seconds_in_day; fmul num_days_in_year; fstp -> private .bss float`, and a private per-TU `.rdata` pair `num_days_in_year`=365.25f / `seconds_in_day`=86400.0f (365.25*86400 = seconds/year) plus one more UNREFERENCED float that varies by TU (0.7f in VillagerTrader/VillagerScript, 1000.0f in VillagerLeader — harmless dead data, just reproduce the value). Because the mangled init symbol is a genuine `Villager::` member AND the same triple recurs with its OWN private address in ~25 different TUs (not one shared global initialized once), this cannot be an ordinary file-scope global — it is almost certainly a `static` Villager data member (or a widely-included-header entity) that every including TU re-instantiates with its own guarded dynamic initializer. That is a Villager.h/shared-header change with cross-TU naming implications, not a single-unit fix. Confirmed independently in VillagerTrader, VillagerChild, VillagerScript, VillagerLeader — always the same conclusion.
Diff signature: `missing` (not `nonmatching`) on all 4 `.text`/`.rdata` symbols of the cluster, and `extra` anonymous `_$E9`/`_$E10`/`_$S11` CRT initializers appear instead once you write a plain `const float`/`static float` file-scope approximation → get the VALUES and operand order right (per-TU-prefixed `const float TuNameNumDaysInYear = 365.25f; const float TuNameSecondsInDay = 86400.0f; static float TuNameSecondsPerYear = TuNameNumDaysInYear * TuNameSecondsInDay;` plus the 3rd unused float, values confirmed via `objdump -s -j .rdata` on the real addresses), add a `// TODO:` citing this idiom, `vsm.py log --result deferred --notes "symbol: needs Villager static data member"` for all 4 symbols in the cluster. Don't try to rename/relocate — this is a Villager.h change, dispatcher-owned.

### ternary-select-int-local-width
Rule: for `Narrow_f(cond ? ENUM_A : ENUM_B, ...)` where the param is `unsigned char`/narrow and A,B are int-width enum constants differing by a constant, MSVC6 emits a branchless select `neg eax; sbb eax,eax; and eax,(A-B); add eax,B`. If you write the ternary inline as the call argument, MSVC folds the narrowing into the select and does it in `al` (`sbb al,al; and al,..; add al,..`). Target computes it in full `eax`. Bind the ternary to an `int` local first — `int state = cond ? A : B; Narrow_f(state, ...);` — and the select stays 32-bit (`eax`), matching; the implicit narrowing happens at the `push eax`. Proven on Villager::CongregateInTownAfterEmergency (PlayAnimThenSetState state arg).
Diff signature: `sbb al,al; and al,K; add al,B` (ours) vs `sbb eax,eax; and eax,K; add eax,B` (target) feeding a narrow param → introduce an `int` local for the ternary.

### getbestworkshop-getarrivepos-sched (OPEN — don't burn cycles)
Rule: the Villager Civic "arrive/check" family (`ArrivesAtWorkshopForDropOff`, `ArrivesAtStoragePitForWorkshopMaterials`, `CheckSatisfySupplyWorkshop`) all share a body shape `GetTown(); GetBestWorkshop/GetStoragePit -> pointer in edi/ebx; ...; obj->GetArrivePos()` (by-value MapCoords retbuf) `; SetupMoveToOnFootpath(...)`. Get the semantics/vtable slots correct (GetArrivePos@0x104, IsFunctional@0xd4, GetResource@0x98, AddResource@0x9c, AreWeThere@0x85c, SetTopState@0x8e8) and these reach 87–93%, but THREE scheduler ties persist and were NOT source-fixable in this campaign: (1) MSVC6 emits the last callee-save `push edi` LAZILY — after `mov eax,[esi]` — while our source emits it eagerly right after `mov esi,ecx`; (2) the coords `lea ecx,[esi+0x14]` for the `GetBestWorkshop(coords,1,1)` arg is scheduled AFTER both `push 1`s in target, ours puts it between them; (3) the shared GetArrivePos retbuf lands at a frame offset 4 bytes higher in target (`lea eax,[esp+0x10]` vs ours `[esp+0xc]`). All three co-vary and are register-pressure/prologue-scheduling driven (same family as save-across-call-spill). Also expect `test eax,eax` (target) vs `test al,al` (ours) on external/virtual `bool` (`_N`) callees like AreWeThere/IsHarvestTime — the caller-side mirror of bool-return-mask-needs-callee-defined.
Diff signature: an otherwise-perfect diff whose only `>`/`<` are a floating `push edi`, a floating coords `lea`, and a 4-byte retbuf `lea esp+N` offset around GetBestWorkshop/GetArrivePos → correct semantics, `// TODO:`, `vsm.py log --result improved`. Revisit only if a neighbour in this family matches and reveals the prologue shape.

### member-reload-eax-vs-ecx-before-lookatobject (OPEN — 99.7%, don't burn cycles)
Rule: the "reaction look-at" family — `if (!field_0xbc || !field_0xbc->IsAvailable()){StopReactingAndSetState(); return true;} if (LookAtObject(field_0xbc, N) != 1) return true; TurnsUntilNextStateChange=0; SetTopState(K); return true;` — matches to exactly 99.7%. field_0xbc is loaded into `ecx` at the top for the null-check + IsAvailable dispatch, and after the (caller-clobbering) IsAvailable call it must be RELOADED as the stack arg for LookAtObject. The target reloads into `eax` (`mov eax,[esi+0xbc]; push N; push eax`); MSVC6 in our build reloads into `ecx` (`mov ecx,[esi+0xbc]; push N; push ecx`) — a 2-instruction `~` operand diff (register only), everything else byte-identical. Proven identical on TurnToFaceMagicTree (0x764d10) and InitialiseImpressedReaction (0x766d00). NOT source-fixable: early-return form and positive `if(field&&avail){...}else` form give the SAME 99.7% diff; a top-level named local (`GameThingWithPos* t = field_0xbc;`) makes it WORSE (caches into callee-saved `edi` with an extra `push edi`, ~82%). The `InitialiseTellOthersAboutObject` sibling that has NO LookAtObject reload (SetTopState directly after IsAvailable) reaches 100% — confirming the reload is the sole tie-break. Pure 8966 regalloc tie-break in the same family as save-across-call-spill.
Diff signature: only diff is `mov {eax}` (target) vs `mov {ecx}` (ours) on a `[esi+0xbc]` reload feeding `push` before a `LookAtObject` thiscall, everything else identical → correct semantics, `// TODO:` if desired, `vsm.py log --result improved`. Don't chase; revisit only if a neighbour in the family matches and reveals the trigger.

### base-member-shadow
Rule: a "member read at the wrong offset" diff (classic symptom: target `lea/mov [esi+0x14]`, ours `[esi+0x2c]` for `coords`) is usually NOT a base-class layout bug — it is a **shadowing** member. `Object` (0x2c) declares its OWN `MapCoords coords`, distinct from the inherited `GameThingWithPos::coords` (0x14); both are real members (Object's is at 0x2c, verified: 0x2c + sizeof(MapCoords)=0xc == MapParent@0x38). Bare `coords` in any Object-derived method (Villager, Creature, …) binds to the most-derived `Object::coords` (0x2c). When the target wants the base position it read 0x14, so QUALIFY the access: `((GameThingWithPos*)this)->coords` (the established idiom, already used ~5x). Applies to any object expr: `((GameThingWithPos*)abode)->coords`, `((GameThingWithPos*)dancer)->coords`. This is a SAFE per-function SOURCE fix (codegen changes 0x2c→0x14 and matches) — NOT the "GameThingWithPos base 0x18 too deep" layout change that was mis-hypothesised campaign-wide. Do NOT touch base-class headers for this.
Diff signature: only diff is the displacement on a `coords` access — target `[reg+0x14]`, ours `[reg+0x2c]` (delta 0x18) → wrap the object in `((GameThingWithPos*)x)->coords`. Verify build+diff (proof the offset is right). Beware: NOT every bare `coords` wants 0x14 — some legitimately use `Object::coords` (0x2c); only qualify where the target reads 0x14.
UPDATE (VillagerCheck campaign): `GameThingWithPos::coords` has since been RENAMED to **`Pos`** (still 0x14); `Object::coords` (0x2c) keeps the name `coords`. With distinct names there is no shadowing anymore — write bare `Pos` for the base position (`[reg+0x14]`, no cast needed, proven in CheckInteractWithField/FishFarm/Tree/Abode) and bare `coords` for 0x2c.

### flags-or-high-byte-narrow
Rule: `u16member |= CONST` where CONST only sets bits in the HIGH byte (e.g. `Flags |= 0x400`, Flags is uint16_t at 0xe0) is narrowed by MSVC6 to a single byte OR on the high byte: `or byte ptr [ecx+0xe1], 4` (0x400>>8 == 4, offset+1). Just write the natural 16-bit `member |= 0x400`; do not hand-narrow to a byte or split the field. Same family as bittest-fold but for writes.
Diff signature: target `or byte ptr [mem+1], N` (or `+0` for low-byte constants) where you have a uint16_t member OR — write `member |= (N<<8)` (high) / `member |= N` (low) as a normal 16-bit op and let MSVC narrow it. Proven on Villager::SetDiscipleFollower (`Flags |= 0x400` → `or byte [ecx+0xe1],4`).

### wchar-native-unreachable (systemic — build/toolchain, defer)
Rule: the decomp's MSVC 6.5 `cl.exe` has NO native `wchar_t`. A bare `wchar_t` with no CRT header is an *undeclared-identifier* error (proven), `/Zc:wchar_t` is unsupported, `__wchar_t` is unknown, and the CRT headers `typedef unsigned short wchar_t`. So `wchar_t` AND the project's `char16_t` (uchar.h aliases it to `wchar_t`) BOTH mangle as `G` (unsigned short) — verified: a toy with `wchar_t*` and `char16_t*` params both emit `PAG`. The original game was built with native wchar_t ON, so its symbols use `_W` (e.g. `?MakeHimSpeak@SpecialVillager@@QAEXPA_W@Z`, and the whole SetupControl/Setup* UI family). Any function whose mangled name — or a callee's — contains `_W` is therefore UNREACHABLE here: our compiler can only emit `G`, never `_W`. This is a whole-project toolchain limit (a native-wchar_t compiler build), dispatcher-owned; workers should recognise + defer, not chase.
Diff signature: target symbol/callee demangles with `wchar_t` and ours shows `unsigned short` (a `~` on a call operand, or the function shows missing/extra with a `_W`↔`G` name delta) → defer.

### byte-shift-widen (OPEN — MSVC6.0-vs-6.5 codegen, don't burn cycles)
Rule: for a bit test on a byte member (`!(field & 0x40)`, `(field>>6)&1`, `(field&0x40)==0`, or a 1-bit bitfield read), MSVC6.5 loads the byte (`mov al,[mem]`), may `not al` in byte width, but then WIDENS the shift+mask to 32-bit (`shr eax,6; and eax,1`), and schedules the callee-save `pop` early (right after the byte load). The original MSVC6.0-SP5 kept it byte-wide (`shr al,6; and al,1`) and popped last. Proven unreachable across 12+ source forms (plain mask, `==0`, `!(...)`, 1-bit bitfield `!v->b6`, compound-assign `r>>=6; r&=1` on a `uint8_t` lvalue, explicit `(uint8_t)`/`(unsigned char)` casts) — all widen to `eax`. Note `~x >> 6` (int-promoted, negative) additionally emits `sar` not `shr`; casting to `unsigned char` first fixes the opcode but not the width. Residual cost ≈ 2 `~` (shr/and operand width) + 1 pop-reorder ≈ 86%.
Diff signature: target `shr al,N; and al,M` vs ours `shr eax,N; and eax,M` after a matching `mov al`/`not al`, plus a floating `pop` → codegen delta, get semantics right and improve/defer.

### state-eq-const-byte-sub
Rule: returning `(uint8_t)Enum() == K` as an int/uint — MSVC6 emits the arithmetic bool idiom `sub al,K; neg al; sbb eax,eax; inc eax` ONLY when K==1 (via `dec al`, it's free). For any other constant, a plain `==` emits `xor ecx,ecx; cmp al,K; sete cl; mov eax,ecx` (sete form). To reproduce the target's arithmetic byte form for K!=1, write the equality as a byte subtraction: `return (unsigned char)((uint8_t)Enum() - K) == 0;` — keeps it byte-width (`sub al,K`) with no `and eax,0xff`. Same predicate, not a fakematch; the original clearly compiled the subtraction form. (A full-int `(x - K) == 0` gives `sub eax,K` + a leading `and eax,0xff` — must cast BOTH the call `(uint8_t)` and the result `(unsigned char)`.)
Diff signature: target `sub al,K; neg al; sbb eax,eax; inc eax`, ours `cmp al,K; sete cl` for a `return Enum()==K` (K!=1) → rewrite as `(unsigned char)((uint8_t)Enum() - K) == 0`.

### void-eax-leftover-no-return (partial fix for void-call-eax-probed)
Rule: a `QAEI`/`QAEX` function whose body leaves a leftover value in eax on one path (e.g. target `mov eax,[this+0x28]` for `info`, then `test byte[flags],N; jne ret` with NO `xor eax,eax` on the fall-through, the caller reading that leftover as the "result") is reproduced by writing that path with **no explicit return statement** — let control fall off the end so MSVC leaves the last-loaded value in eax (C4715 warning, not error; the original relied on this). Removed the extra `xor eax,eax` on Villager::HousewifeGetsPregnant (47.9%->77.1%). CAVEAT: a residual usually remains — MSVC, not knowing eax must survive, clobbers al for a following `Flags & N` test (`mov al,[mem]; test al,N` instead of folded `test byte [mem],N`), so it does NOT reach 100%. Get the leftover shape, `// TODO:`, log improved.
Diff signature: target has no `xor eax,eax`/`mov eax,imm` before `ret` on the leftover path and the caller consumes the value; ours emits one -> drop the explicit return on that path.

### mangled-return-mislabel-vs-codegen (symbols.txt may be wrong — DEFER, dispatcher fix)
Rule: when a function's CODEGEN only matches under a return type / calling convention that CONTRADICTS its symbols.txt mangling, symbols.txt is likely the error (it is a reconstruction; Mac/GCC symbols encode neither return type nor Win calling convention, so `_N`/`I` and `YA`/`YE` were guessed). Proven twice in VillagerHousewife: (1) `?CheckNeededToMakeDinner@Villager@@QAE_N` — as `bool` the body emits `neg;sbb;neg` on every `return <bool32-call>` and `xor al,al` for false; recompiled `bool32_t` (QAEI) the body matches the target EXACTLY (no normalization, `xor eax,eax`) => true symbol is QAEI. (2) `?ChildBorn@@YE...` (YE=__thiscall) but the body reads its arg from the STACK with caller `add esp,4` (pure __cdecl), and MSVC6.5 hard-errors C4234 on explicit __thiscall for a free function => YE is impossible to emit, true symbol is YA. You CANNOT match either without the symbols.txt fix (emitting the correct type gives right bytes but wrong symbol NAME -> objdiff shows extra/missing, callers' relocs mismatch). Keep the decl matching current symbols.txt (clean report), `// TODO:` with the proof, log deferred with `--notes "symbol: <name> QAE_N->QAEI"`.
Diff signature: a body/xor-width/normalization mismatch that vanishes ONLY when you change the return type away from what the mangling says -> prove via throwaway recompile + objdump byte compare, then DEFER.

### block-order-early-out
Rule: for `if (!cond) { early_out; return; } main_body;` MSVC /O2 lays out the early_out INLINE (with a `jne` skip) and main_body after — but the target often wants main_body inline (fallthrough) and the cheap early-out at the END (reached by `je`). Flip to the POSITIVE condition `if (cond) { main_body; return; } early_out;` so the fallthrough is the main path. Proven on Villager::TakeWoodFromTree (53%->89%).
Diff signature: target `test eax,eax; je <far end-block>` with the body as fallthrough; ours has `jne` skipping an inline early-out → invert the `if` to the positive form.

### dynamic-cast-findtype
Rule: `dynamic_cast<T*>(coords.FindType(OBJECT_TYPE_X, NULL))` compiles to a `MapCoords::FindType` thiscall (returns `Object*`) immediately followed by `___RTDynamicCast` with the `??_R0?AV<Src>@@@8` (source, e.g. Object) and `??_R0?AV<Dst>@@@8` (dest, e.g. Tree) RTTI Type Descriptors pushed as args. The FindType OBJECT_TYPE is the enum whose value == the `push N` right before the call (6 = OBJECT_TYPE_FOREST_TREE). Needs /GR. A companion Object flag test `test byte [obj+0x25],0x40` is `GameThingWithPos::Flags & 0x4000` (Flags u16 @0x24; high-byte bit folds — see bittest-fold).
Diff signature: target `call MapCoords::FindType` then `push eax; call ___RTDynamicCast` with two `??_R0...` reloc pushes → write `dynamic_cast<Dst*>(coords.FindType(TYPE, NULL))`.

### mangled-void-returns-value (systemic — dispatcher-owned; refines mangled-return-mislabel)
Rule: a NON-virtual (`Q`/`S`) symbol mangled `QAEX...` (thiscall **void**), OR with one fewer arg than the call site pushes, is often a wrong reconstruction from a Mac/GCC symbol (which encodes no return type). The real function returns a value: MapCoords **by value** via a hidden retbuf (extra `lea/push` of a stack temp; `ret 8` for a 1-arg decl), or a pointer **in eax** the caller `test`s, or (cdecl factory) the caller `add esp,N` after the call and reads eax. You cannot satisfy BOTH the reloc NAME (needs the void mangling) AND the args/return (needs the value mangling) — declaring the true return re-mangles the symbol (`?AUMapCoords@@` / `PAVTown@@`) so your reloc no longer equals the target's. Dispatcher must re-mangle symbols.txt. Confirmed in VillagerForester: `BigForest::GetArrivePos` (retbuf MapCoords), `Town::FindNearestForestToPos` (eax=Town*), `FelledTree::Create` (cdecl `add esp,8`, returns FelledTree* in eax). CONTRAST: **virtual** by-value returns (`StoragePit::GetArrivePos`, `Object::GetWorkingPos`) call via vtable slot (no reloc name) so declaring them `MapCoords Func(...)` by value (Rule 2 hidden-retbuf) DOES match and is a real fix — only the direct-call `Q`/`S` ones are blocked.
Diff signature: a single `~` on a `call <Sym>` operand where the target names `...QAEX...`(void) but your code passes/uses a return value; everything else matches → write the natural returning code (best %), `// TODO:`, `vsm.py log --result deferred --notes "symbol: re-mangle <Sym> as returning"`.

### thiscall-symbol-cdecl-body (symbols.txt calling-conv wrong — DEFER, dispatcher fix)
Rule: a function whose symbols.txt mangling is **thiscall with a stack arg** (`?Name@Cls@@QAE<ret><arg>@Z`, the `E`) but whose TARGET body ends in a bare `ret` (0xc3, NO `ret N` arg cleanup), reads its arg from `[esp+4]`, and NEVER touches ecx(this) — is in reality a **__cdecl / static** function. A faithful thiscall member always compiles to `ret 4` (and, for a `_N` return computed via `setnz cl; mov ?,ecx`, narrow `al` vs the target's full `eax`), so it can NEVER byte-match the folded/cdecl body. This is NOT /OPT:ICF — ICF folds byte-IDENTICAL functions, and `ret`(c3) ≠ `ret 4`(c2 04 00), so they can't be folded together. The symbol's calling convention in symbols.txt is the reconstruction error (Mac/GCC symbols don't encode Win calling convention or static-ness); the real symbol is likely `SA` (static __cdecl). Same family as mangled-return-mislabel-vs-codegen but for the CALLING CONVENTION, not the return type. Confirmed on Villager::IsReactiveState (0x7525b0, `QAE_NK` but body is cdecl `ret`+full-eax, arg-only, ignores this). You cannot fix it in-unit: emitting a static/cdecl body re-mangles the symbol name (`SA_NK`) so objdiff sees extra/missing and callers' relocs break.
Diff signature: the ONLY diffs are `ret`(target) vs `ret 4`(ours) [+ maybe `mov eax,ecx` vs `mov al,cl` on a `_N` return], and objdump -dr on the target .o confirms the body reads `[esp+4]` and never uses ecx → get the semantics right (index/field/etc. all match), `// TODO:`, `vsm.py log --result deferred --notes "symbol: <name> mangled thiscall(QAE) but body is cdecl -- likely static SA"`.

### missing-unnamed-global (worse than fn_ — DEFER, dispatcher fix)
Rule: some target instructions load an absolute address that has **NO entry at all** in `symbols.txt` — not even an `fn_00xxxxxx` placeholder (grep the exact hex address, e.g. `0x00C5FCF8`, both zero-padded and not: nothing comes back). This is strictly worse than the ordinary "unnamed fn_ helper" blocker (#4 in the systemic list above): there is no placeholder identifier to reference AT ALL, so no source expression — inline, cast, or otherwise — can produce a matching relocation. Confirmed on `Villager::ExitControlledByCreature`'s creature-participant-list head (`mov ecx,[0xc5fcf8]`). Also covers the `Villager::FUN_00759850`/`FUN_00759880`-style crt static-init cluster (mirrors VillagerTrader.cpp/VillagerScript.cpp): the mangled name IS known (`?FUN_00759850@Villager@@QAEXXZ`, a genuine thiscall member) but a plain file-scope `const`/`static` approximation can never reproduce that Villager::-scoped symbol identity — it needs a real static DATA MEMBER added to the class (a header/layout change, dispatcher-owned).
Diff signature: `grep -n "<hex addr>" config/BW1W120/symbols.txt` (try both padded and unpadded hex) returns NOTHING at all (not even a placeholder name) → write the surrounding semantics you CAN name, stub/comment the specific blocked expression with a `// TODO:` giving the exact address and inferred purpose, and `vsm.py log --result deferred --notes "symbol: <addr> has NO symbols.txt entry, needs naming"`. Don't invent an `extern` declaration for it — that creates a phantom symbol name that will never match and pollutes the build with an extra/missing pair.

### in-unit-unnamed-thiscall (DEFER, dispatcher fix)
Rule: occasionally a `fn_00xxxxxx`-placeholder address (no C++ class scope in symbols.txt) falls INSIDE your own unit's address range rather than being an external callee — e.g. a small helper only ever called from one function in your file. Its own body can still be unambiguously thiscall-shaped (implicit `this` in ECX, explicit args on the stack only, `ret N` with N matching the stack args, zero EDX use) per raw disassembly — but you cannot author a definition that emits the exact placeholder name: `extern "C"` gives an undecorated name but MSVC hard-errors on explicit `__thiscall` for a free function (see thiscall-symbol-cdecl-body), and any real class/method you invent mangles to a DIFFERENT name than the placeholder. This is the in-unit twin of the ordinary "unnamed fn_ helper" blocker — the fix is still dispatcher-owned (identify the true class, update symbols.txt), not something a source rewrite can route around. Confirmed on `fn_0075A310` in VillagerFarmer (a desire-list node remove-by-key helper, ECX=list head, one stack arg=key, `ret 4`).
Diff signature: the address is `missing` in your OWN unit's overview with a bare `fn_0000000` name (no `@Class@@`), and its own disassembly shows this-in-ECX + stack-only args + `ret N` → describe the real behavior/signature in a short comment, leave it undefined (stays `missing`), `vsm.py log --result deferred --notes "symbol: fn_0000000 needs class scope (thiscall-shaped, in-unit)"`. Don't invent an extern "C" or class-scoped stand-in — neither can emit the placeholder name.

### bool-narrow-test-needs-callee-defined (caller-side sibling of bool-return-mask-needs-callee-defined)
Rule: same root cause as bool-return-mask-needs-callee-defined (an in-TU-visible vs. extern-only `_N`-mangled bool callee), but the caller-side symptom here is a TEST WIDTH difference rather than an extra mask instruction: target does `test eax,eax` (trusting the full register is a clean 0/1) right after the call, ours does the narrower, always-safe `test al,al` — because our compiler, seeing only the Villager.h declaration (not a same-TU definition) for the bool callee, cannot prove the upper 24 bits of eax are clean. Confirmed on `Villager::EnterFarming`'s call to `IsStateEntryFunctionSameAs` (99.6%, this is the ONLY diff).
Diff signature: only diff is `test eax,eax` (target) vs `test al,al` (ours) immediately after a call to a non-virtual `_N`-mangled callee that is declared but NOT defined in this TU → correct semantics, no source fix available, `vsm.py log --result improved`. Revisit only if the callee ends up defined in-TU some other way.

### mapcoords-highword-cast
Rule: when the target compares/reads only the HIGH 16 bits of a `MapCoords::x`/`z` `int` field via a plain 16-bit `mov`/`cmp` (no `sar`/`shr` anywhere), the source is NOT a runtime shift (`(short)(v >> 16)`) — that shape always compiles to an actual `sar`/`shr` instruction (proven via a wibo/cl.exe toy: `(short)(t->Pos.x >> 16)` emits `mov eax,[..]; sar eax,0x10`, never a direct word load). Instead, write a raw pointer-cast to the upper half: `((short*)&Pos.x)[1]` (index 1 = bytes 2-3 on little-endian, i.e. the high 16 bits of the 4-byte `int`) — this reproduces the target's `mov dx,[mem+2]` byte-for-byte with NO struct layout change needed (MapCoords stays a plain `int x; int z; float altitude;`). Proven 100% on `Villager::IsAtValidFishingPos` (compares the high halfword of `Pos.x`/`Pos.z` between `this` and a target `FishFarm*`, i.e. a coarse "same map cell" check on what is very likely a 16.16-fixed-point-ish coordinate).
Diff signature: target `mov ax,[mem+2]; cmp ax,[mem2+2]` (or similar direct high-halfword word load/compare, no shift instruction anywhere) on a `MapCoords` `int` field → replace a `>> 16` shift attempt with `((short*)&Obj.field)[1]` pointer-cast indexing; verify with a wibo toy first since the two source shapes look deceptively equivalent but compile completely differently.
