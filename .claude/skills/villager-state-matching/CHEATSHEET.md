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
