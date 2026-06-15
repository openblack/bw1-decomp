---
name: libcmt-obj-matching
description: Make CRT objects from the downloaded LIBCMT.LIB / LIBCPMT.LIB link byte-exact into all three BW1 versions (BW1E100, BW1E110, BW1E142). Script-driven loop (.claude/skills/libcmt-obj-matching/libobj.py) that auto-matches clean objects with no agent judgement and flags the hard ones (E100 /OPT:REF dead-strip, trailing-alignment, __real@8 comdat fold) for hand work. Covers the worked numbers, the verify/recover cycle, and the manual symbol edits.
---

# Match a LIBCMT.LIB object — all 3 versions, script-driven

Goal: take members of `LIBCMT.LIB` / `LIBCPMT.LIB` and make them link **byte-exact**
into BW1E100, BW1E110 and BW1E142. Nothing new is committed — the `.LIB` and the
extracted `.obj` are build artifacts; the result is edits to `configure.py`,
`config/<VER>/splits.txt` and `config/<VER>/symbols.txt`.

There are 240+ NonMatching lib objects. Most are mechanical. The tool
**`libobj.py`** (in this skill directory, `.claude/skills/libcmt-obj-matching/`)
does all the deterministic work and emits JSON; the agent only steps in for
objects the tool flags. It writes its working files (`libobj_index.json`,
`libobj_loop.jsonl`, `libobj_review.md`) beside itself.

## TL;DR

```
python3 .claude/skills/libcmt-obj-matching/libobj.py index                  # one-time read-only symbol map
python3 .claude/skills/libcmt-obj-matching/libobj.py scan  --archive libcmt # READ-ONLY triage of the backlog
python3 .claude/skills/libcmt-obj-matching/libobj.py loop  --archive libcmt # hands-off match everything clean
```

`scan` writes nothing and builds nothing — it classifies every object so you can
plan. `loop` then matches the clean part hands-off: per object analyze → apply →
`configure + ninja` verify on all 3 versions (one repair retry) → keep on
byte-exact pass, **revert on any failure** (splits, configure *and* symbol edits).
It is multi-pass (a `blocked` object becomes matchable once its provider object is
matched), resumable (already-`Matching` skipped), and never leaves the tree
broken. Read `.claude/skills/libcmt-obj-matching/libobj_loop.jsonl`: `matched` = done, the rest is your queue.

## The tool

`python3 .claude/skills/libcmt-obj-matching/libobj.py <cmd>` — every command prints one JSON object.

| Command | Writes? | Builds? | What |
|---|---|---|---|
| `list` | no | no | NonMatching lib objects |
| `index` | cache only | no | parse all archive members → symbol→member map (the dependency graph). Cached to `.claude/skills/libcmt-obj-matching/libobj_index.json` |
| `scan` | no | no | **read-only triage of the whole backlog**: per-object verdict, flags, dependencies + roll-up |
| `analyze <name>` | no | no | per-object report: locate in all 3 exes, resolve every external, classify, propose splits + symbol renames |
| `apply <name>` | **yes** | no | flip `configure.py`→`Matching`; insert splits (configure order, `align:1`); **auto-subdivide** the containing blob/gap around each section (carve blob symbol, shrink prior gap, add `align:1` tail); auto-rename decoration-mismatch symbols |
| `verify [--version V] [--member N]` | yes | **yes** | `dtk coff split`+`configure.py`+`ninja` per version; structured pass/fail; `--member` auto-reverts on fail |
| `revert <name>` | yes | no | undo apply |
| `loop [--archive A] [--limit N] [--only x.obj …]` | yes | yes | the multi-pass batch driver above |

The **read-only** commands (`list`, `index`, `scan`, `analyze`) write no source and
run no builds — they are whitelisted in `.claude/settings.local.json` so the agent
never pauses on them. Only `apply`/`verify`/`revert`/`loop` need a grant.

`<name>` is a basename: `wcscmp`, `wcscmp.obj`, or the full archive path.

### Verdicts (from `analyze` / `scan`)
- **`auto`** — clean, all external refs resolved, found uniquely & contiguously in
  all 3. `loop` matches it directly. (A few are *false-auto* — a symbols.txt label
  that isn't actually linkable; verify catches them and `loop` reverts.)
- **`assisted`** — fixable mechanically: a `decoration_mismatch` (obj wants
  `__imp__X@N`, symbols.txt has `__imp__X`; `apply` auto-renames it), or a
  `needs_fltused` / `has_rdata_comdat` that needs the symbol edits in §"Manual
  edits". `loop` attempts the decoration-only ones.
- **`blocked`** — references a symbol provided by **another archive member** not yet
  matched (`needs_dependencies` lists them). Match those first; `loop` retries
  automatically across passes.
- **`manual`** — ambiguous, not found in 110/142, non-contiguous, or truly
  undefined externals. Agent territory. `apply` refuses unless `--force`.

## Doing one object by hand (when `loop` skips it)

```
python3 .claude/skills/libcmt-obj-matching/libobj.py analyze <name>        # read the report + plan
python3 .claude/skills/libcmt-obj-matching/libobj.py apply   <name>        # if verdict auto/assisted
python3 .claude/skills/libcmt-obj-matching/libobj.py verify  --member <name>   # builds all 3, reverts if it fails
```
`verify` returns `results[].errors` with `kind`:
`undefined_symbol` / `duplicate_symbol` / `split_within_symbol` — fix per below,
re-`apply` (or re-run verify). `split_within_symbol` where the symbol *starts at*
the split start is auto-repaired by `loop`; by hand, shrink that symbol (below).

## Key facts (the gotchas the tool encodes)

- Always work per version. `splits.txt`/`symbols.txt` are per version; the
  `configure.py` `Matching` flag is shared.
- The lib is `build/lib/libcmt.lib`; members keep Windows paths with backslashes
  (some have a `..\` prefix). `apply` resolves the exact member from `configure.py`.
- **A lib object's `.text`/`.data` split size MUST equal the obj's section size**
  (verbatim link). Never pad a split to absorb alignment — see below.
- **dtk requires every byte covered and no split bisecting a symbol.** Two
  consequences the tool handles / flags:
  - *Pre-labelled functions* (e.g. a guessed `..._vfuncNNN`, or a CRT name with a
    size that includes trailing padding) make dtk bail `split_within_symbol`.
    Fix: shrink that symbol to the real function size (`size:0x<len>`). `loop`
    does this automatically when the symbol starts at the split start.
  - *Trailing 0xCC alignment padding* before a 16-aligned successor object. The
    obj is e.g. 9 bytes, then `0xCC` fill to the next 16-aligned function. You
    **cannot** claim it in the split (size mismatch). It is the *successor's*
    leading alignment and is only reproduced when that successor is also a
    16-aligned unit — i.e. these CRT objects must be matched as an
    **address-contiguous run**, not in isolation. `analyze` flags this.
- **BW1E100 links with `/OPT:REF /OPT:NOICF`** (`dead_strip: true`). Two effects:
  - Functions the original build didn't reference are dropped, so only the
    *referenced* functions of an object survive (size the `.text` range to the
    survivors, in obj section order). 110/142 link all of them.
  - A function referenced **only by data** (e.g. `__purecall` from `purevirt.obj`,
    reached only through vtable pure-call slots) gets dead-stripped when carved
    into its own COMDAT lib object, because the data pointers aren't symbolic
    references `/OPT:REF` can see. **`purevirt.obj` is the canonical example of
    this — it matches E142 (NOREF) but not E100/E110 in isolation.** Do not try to
    force it with `/INCLUDE` linker flags; treat it as a `manual`/run-matching case.
- `dtk` is at `build/tools/dtk` (the loop auto-discovers the exact dtk+python the
  last `configure` used from `build.ninja`). `lld-link` at
  `build/tools/llvm/bin/lld-link`.

## Manual symbols.txt edits (for `assisted` / `manual`)

Fix in `config/<VERSION>/symbols.txt`, then re-`apply` / re-`verify`.

**`split_within_symbol 'NAME' (sym range)`** — a pre-existing symbol over-claims
into our split. If it starts at our split start, resize it:
```
NAME = .text:0x<start>; // type:function size:0x<real-len> scope:global
```

**`undefined symbol: __fltused`** — the float marker. (Already defined in all 3
BW1 versions; only relevant if missing.) Find the `dd 0x9875` marker in `.data`
and name it `__fltused = .data:0x<VA>; // type:object size:0x4 data:4byte`.

**`duplicate symbol: __real@8@…`** (or an 8-byte `.rdata$r` shift) — the obj's
shared float constant must **fold** into the game's copy. Find the game's copy
(the `dc 1d <addr>` operand in the obj points at it), which sits inside a vtable
like `??_7Feature@@6B@`. Shrink that vtable symbol so it ends at the constant and
carve the constant out as a `comdat`:
```
??_7Feature@@6B@ = .rdata:0x<vtbl>; // type:object size:0x<shrunk to constant>
__real@8@00000000000000000000 = .rdata:0x<const VA>; // type:object size:0x8 data:double comdat
lbl_0x<const+8> = .rdata:0x<const+8>; // type:object size:0x<to original vtbl end>
```
Use `comdat`, **not** `weak` (the earlier/game copy wins placement → byte-exact).
After carving a comdat you MUST re-run `configure.py` (the loop/verify already
does `dtk coff split` *then* `configure.py`), else `.rdata` looks ~hundreds of KB
short because the new auto units are missing from the link.

**`Split … .data ends within symbol 'lbl_Y'`** — the obj's `.data`/`.rdata` lands
inside a big blob. Split that blob around the obj's range:
```
lbl_Y       = .data:0xY;        // type:object size:0x<obj.start - Y>
lbl_<obj.end> = .data:0x<obj.end>; // type:object size:0x<Y_end - obj.end>
```

**`Invalid alignment for split: auto_00_<ADDR>_<sec>`** — the obj ends at a
non-aligned address with **contiguous code/data right after** (not 0xCC padding —
a real function/const follows). dtk's *auto-generated* gap splits floor at align 4
(`.text`) / 8 (`.rdata`), so an auto-split starting at `<ADDR>` (not 4-/8-aligned)
bails. dtk **can** do unaligned, but only via an **explicit `align:1` split** —
auto-splits can't. Fix: in `splits.txt`, add a bare-named verbatim unit (dtk
extracts it; no source object needed) covering the successor region up to the next
**aligned, labelled** symbol, with `align:1`:
```
auto_gap_<ADDR>:
	.text       start:0x<ADDR> end:0x<next-4-aligned-labelled-sym> align:1
	.rdata      start:0x<rADDR> end:0x<next-blob-end> align:1   ; if .rdata tail also unaligned
```
(If the obj's `.rdata` end is already 8-aligned, no `.rdata` gap is needed — only
the `.text` one.) This is why a CRT obj matches in one version but not another:
same content, but its placement makes the end aligned in one exe and not the other.

**Per-version comdat fold targets.** A shared float const (e.g.
`__real@8@3fff8000000000000000` = 1.5) folds to a **different game copy in each
version** — find it per version by reading the obj's `dir32` reloc operand in that
exe (`struct.unpack` the 4 bytes at the reloc site). Carve a `comdat` there (§
duplicate-symbol). If you don't, the obj's own copy is placed inline → +8 shift.
Worked: `testfdiv.obj`'s 1.5 folds to E100 `0x7ED5A8` (inside `??_7GAlignmentInfo`),
E110 `0x89B680`, E142 `0x8AB680`. An obj absent from a version (e.g. `ldexp` in
E100) should be `MatchingFor(...)` only the versions it exists in — else its carve
is orphaned and `/OPT:REF` dead-strips it.

## Worked examples (real numbers)

**`wcscmp.obj`** — the clean `auto` case the loop nails with zero edits: one
`.text` function, no externals, found contiguously in all 3. analyze→apply→verify
all OK.

**`util.obj`** — 6 functions, a 40-byte `.data` (float consts), a
`__real@8@00000000000000000000` `.rdata` comdat, refs `__fltused`.

| Version | .text | .data | survivors |
|---|---|---|---|
| BW1E100 | 0x0073D2BF–0x0073D403 | 0x00B52358–0x00B52380 | 3 of 6 (REF drops `__get_exp`,`__add_exp`,`__set_bexp`) |
| BW1E110 | 0x007C0DED–0x007C0F95 | 0x00C1ECA8–0x00C1ECD0 | all 6 |
| BW1E142 | 0x007D0FDD–0x007D1185 | 0x00C2FE58–0x00C2FE80 | all 6 |

`__fltused` at: BW1E100 0x00B4F894, BW1E110 0x00C1C1DC.
`__real@8` (comdat) at: BW1E100 0x00802630 (in `??_7Feature@@6B@` @0x00801D08,
shrink 0x978→0x928), BW1E110 0x008B2C48 (Feature @0x008B2320, shrink 0x978→0x928).

**`purevirt.obj`** — the dead-strip trap. `__purecall` (9 bytes) at E100 0x0073404F,
E110 0x007B58D6, E142 0x007C60DB, followed by 0xCC fill to 16-aligned `_memmove`.
Matches E142; on E100/E110 it dead-strips / orphans its alignment in isolation.
Match it together with its contiguous successors, or leave for hand work.

## Common mistakes
- Padding a `.text`/`.data` split to swallow alignment → size mismatch, garbage
  unit, big shift. Split size == obj section size, always.
- Forcing E100 dead-strip with `/INCLUDE` or `force_active` — wrong path; it's a
  run-matching / data-reference problem, not a linker-flag one.
- Forgetting to re-run `configure.py` after a comdat carve → `.rdata` short.
- Tabs (not spaces) in `splits.txt`. Always `-v <VERSION>` (default BW1E100).
