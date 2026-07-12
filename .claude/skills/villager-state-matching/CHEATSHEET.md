# MSVC 6.5 /O2 /Og idiom cheat-sheet — Villager campaign

Append-only. Entry format:

```
### slug
Rule: one line.
Diff signature: what you see in decomp-diff → what to write.
```

Tag ledger entries that used one: `vsm.py log ... --idiom slug`.
Seeded from AGENTS.md rules and the matched `Villager::DecideWhatToDo` session
(0x7515c0); everything below is proven against the real compiler.

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
