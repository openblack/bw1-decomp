---
name: villager-state-matching
description: Match Villager state-machine functions in BW1W120 (24 objdiff units, ~980 functions — VillagerStates, VillagerReaction, VillagerChild/Home, role files like VillagerFarmer/Fisherman). Script-driven queue (.claude/skills/villager-state-matching/vsm.py) ranks candidates by payoff; per-function loop is Ghidra decompile → write MSVC6 C++ → build one .o → decomp-diff → iterate. Covers the diff triage table, the MSVC6 idiom cheat-sheet, rules of engagement (12-cycle cap, defer-is-success), and the unit claim protocol for parallel workers.
---

# Match a Villager state function — end to end

Goal: byte-match functions of the `Villager` class (BW1W120) against the original
binary. All roles (Farmer, Fisherman, Child, …) and reactions are methods on the
**one** `Villager` class, grouped into per-role `.cpp` files under `src/Black/`.
The state machine itself is a 255-entry table of member-function pointers —
see `docs/villager_states.md` for architecture.

The tool **`vsm.py`** (in this skill directory) owns the queue, the unit locks
and the progress ledger. You own exactly one unit at a time and the edit loop.

## TL;DR — the loop

```bash
# 0. once per session: claim your assigned unit (fails if someone else holds it)
python3 .claude/skills/villager-state-matching/vsm.py claim --unit VillagerStates --agent <yourname>

# 1. pick a candidate (highest score = best payoff; JSON gives addr, size, callees)
python3 .claude/skills/villager-state-matching/vsm.py next --unit VillagerStates -n 5

# 2. read the original: Ghidra MCP (symbols already applied)
#    mcp__ghidra__decompile_function_by_address  0x769830
#    mcp__ghidra__disassemble_function           0x769830   (when decompiler output is fishy)

# 3. write the body in the unit's .cpp at the stub marked  // BW1W120 00769830
#    (if the file has no stub yet, add the function in ADDRESS ORDER with that comment;
#     the declaration already exists in src/Black/Villager.h)
#    STUB COMMENT: copy the ENTIRE `// BW1W120 <w> BW1M100 <m> <sig>` line VERBATIM from
#    the header — never retype the BW1M100 (Mac) address. Retyping corrupts the Mac
#    address map (9 such copy errors were found and fixed in the pilot). Validate with:
#      python3 tools/check_stub_addrs.py src/Black/<Unit>.cpp
#    PARAMS: name parameters meaningfully (snake_case, from Ghidra/callsites) as you
#    write each body — don't leave param_1/param_2 in code you author (only when the
#    meaning is truly unknown). Rename in the .cpp definition; header sync is dispatcher work.

# 4. build ONLY your object (never bare `ninja` in the loop — seconds vs minutes)
ninja build/BW1W120/src/Black/VillagerStates.o

# 5. diff (unit name = runblack-decrypted/Black/<file stem>)
python tools/decomp-diff.py -u runblack-decrypted/Black/VillagerStates -d "GotoStoragePitForFood"

# 6. iterate 4↔5 until match, then log it (also log deferred/improved — see limits below)
#    --function prefers an EXACT demangled/mangled name; an ambiguous substring
#    (e.g. "Dying" also matches "SetDying") now ERRORS instead of mis-logging —
#    pass the full name when in doubt.
python3 .claude/skills/villager-state-matching/vsm.py log --function GotoStoragePitForFood \
    --result matched --pct 100 --idiom <slug-if-new-idiom>

# done with the unit: release
python3 .claude/skills/villager-state-matching/vsm.py release --unit VillagerStates --agent <yourname>
```

**Before writing any body, read `CHEATSHEET.md` in this directory.** It is the
distilled list of MSVC 6 codegen idioms that decide matches. When you discover a
new one, append it there (format at top of that file) and tag the `log` call
with `--idiom <slug>`.

## Reading the diff

`decomp-diff.py` markers, one instruction per line, target = original:

| marker | meaning |
|---|---|
| ` ` | matches |
| `~` | same opcode, operand differs — differing operand shown in `{braces}` |
| `\|` | different opcode at this position |
| `<` | only in target (we're missing an instruction) |
| `>` | only in ours (we emit an extra instruction) |

Triage table — what a mismatch usually means:

| you see | it usually means |
|---|---|
| `~` on a memory operand, e.g. `{0x1f4}` vs `{0x1f8}` | wrong struct offset — check the field in `src/Black/Villager.h`; if the header field is a placeholder `field_0xNNN`, your access is right and the name is wrong (rename only with proof) |
| `jz` vs `jnz` (or `jl`/`jge` etc.) flip | inverted condition — swap `if`/`else` bodies or negate the test |
| whole tail shifted by a few instructions | missing/extra early-out `return` near the top |
| `test ah, N` / `test byte [mem+1], N` in target | folded bit-test — write the natural `flags & 0x200` form, MSVC folds it (see cheat-sheet `bittest-fold`) |
| `mov ecx,eax; shr ecx,9; test cl,1` in target | the *unfolded* byte-truncation idiom — `uint8_t b = f >> 9; if (b & 1)` (cheat-sheet `bittest-byte-local`) |
| `xor eax,eax; mov ax,[mem]` in target | member copied to a `uint32_t` local (zext); direct member access emits no `xor` (cheat-sheet `local-copy-zext`) |
| extra/missing `call` to a small getter | inlining difference — try calling the getter vs open-coding it; last resort `#pragma dont_inline` |
| operand is `__real@...` | float constant from .rdata — never invent a literal; the reloc name IS the bit pattern |
| identical % and identical diff across your edits | **stale object** — an earlier `ninja` died on another TU; rerun step 4 and check it succeeded |

Useful flags: `--no-collapse` (full instruction flow), `-C 8` (context),
`--range 40-a0` (hex offsets). Overview mode (no `-d`) lists all symbols in the
unit with match %.

## Rules of engagement

- **Max 12 build-diff cycles per function.** Not ≥97% by then → keep the best
  body, add `// TODO:` at the stuck spot describing what differs, then
  `vsm.py log --result deferred --pct <best> --notes "<stuck point>"`. **Deferring
  is a successful outcome** — evidence from neighboring functions usually
  unblocks it later. Never contort code into something a human wouldn't write
  just to move bytes (fakematch = negative progress).
- Only edit **your claimed unit's `.cpp`** and (narrowly) shared headers:
  - allowed: fix a signature per AGENTS.md Rules 1/2 (pointer→reference,
    hidden retbuf); rename a `field_0xNNN` **when the diff proves the offset's
    meaning**; add a missing declaration.
  - forbidden: moving/resizing/inserting struct members, editing
    `configure.py` / `symbols.txt` / `splits.txt`, editing other units' `.cpp`.
    Need a layout change? `vsm.py log --result deferred --notes "layout: <what
    you need at which offset>"` and move on — the dispatcher owns layout.
- Ghidra MCP: read-only for you (`decompile*`, `disassemble*`, `*xrefs*`,
  `list_*`, `search_*`). Do not rename/retype anything in the shared Ghidra DB.
- Style: AGENTS.md conventions — args `snake_case`, locals `camelCase`, members
  `PascalCase`, no C++11, `NULL` not `nullptr`. Copy the surrounding file's look.
  **Never use `goto`** — not even to force the target's block ordering; that is a
  block-ordering tie-break: keep the best natural if/else shape, TODO the residual.
- **Comment hygiene (code is for the game's engineers, not the campaign):**
  - Never mention symbols.txt, manglings, "Rule 1/2", proofs, percentages,
    the dispatcher, the ledger, or your own attempts in code comments. That
    detail goes in `vsm.py log --notes`; code keeps at most one terse
    `// TODO:` phrased about the code ("incorrect return type", "block
    ordering differs", "needs helper at 0xNNNNNN named").
  - No notes about other classes in a class's header; state what a member IS
    or nothing. Where a field's meaning is established, RENAME it (PascalCase)
    instead of commenting on `field_0xNN`.
  - Every declaration you add or touch keeps its full
    `// BW1W120 <addr> BW1M100 <addr> <sig>` line and named parameters.
  - Never invent types/enums from a mangling you constructed yourself — real
    names come from the Mac symbols; use the simplest expressible type instead.
  - Don't invent public container types (check src/Lionhead for existing ones);
    never name anything "DLL".
- Log **every** attempt (`matched` / `improved` / `deferred`). The ledger is the
  campaign's shared memory; an unlogged discovery is a lost discovery.
- **Never `git stash` / `git reset` / `git checkout` in the worktree.** Parallel
  workers share one checkout, so a stash sweeps up *their* uncommitted edits too.
  To compare against a clean baseline, build/diff a single `.o` — don't touch git.

## Unit completion checklist (usually dispatcher work)

A unit is done when overview mode shows every symbol `match`, including:
- small `?FUN_00xxxxxx@Villager@@` helpers (unnamed — naming needs dispatcher
  judgement),
- `crt_xc_fn_*` static-init fragments (float-constant initializers; pattern
  exists in already-matched units — grep `crt_xc_fn_` under `src/`),
- data symbols (.data/.rdata tables).

Then the **dispatcher** (not you): full `ninja` + `ninja baseline`/`changes_all`
regression pair, flip the TU to `Matching` in `configure.py`, commit.

**Dispatcher: what to fix next.** `vsm.py blockers` surfaces the leftover work —
near-miss functions (≥90%, one fix from matching) and every deferred function's
notes. When many near-misses share a blocker (a base-class vtable/layout offset, an
unnamed `symbols.txt` symbol, a return-type retype), fixing that ONE shared thing
converts a whole cluster at once — far higher leverage than another matching round.

## Generalizing to other subsystems (Creature, Town, World, …)

This skill is the template for matching *any* BW1 subsystem, not just Villager. What is
reusable as-is vs. what to re-scope per campaign:

- **Reusable game-wide (do not rewrite):** `CHEATSHEET.md` (MSVC6 codegen idioms +
  mangled-name decoder + systemic-blocker taxonomy), the per-function loop
  (Ghidra → write → build one `.o` → decomp-diff → iterate), the 12-cycle cap /
  defer-is-success discipline, the diff-triage table, and `tools/check_stub_addrs.py`.
- **Re-scope per campaign:** `vsm.py` is currently hard-scoped to the Villager objdiff
  units (`index`/`next` rank within that set). For a new subsystem, point the same queue
  machinery at that subsystem's units (or generalize the unit list), keep one ledger,
  and reuse the claim protocol so parallel workers don't collide.
- **Dispatcher handoff is the same everywhere:** workers own single-unit source shapes;
  struct/vtable **layout**, **symbol naming** in `symbols.txt`, shared-header return-type
  decisions, and TU-status flips in `configure.py` are dispatcher-owned. Workers log the
  need and defer — see the systemic-blocker taxonomy in `CHEATSHEET.md`.
