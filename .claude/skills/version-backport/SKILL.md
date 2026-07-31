---
name: version-backport
description: Backport BW1W120's more complete splits.txt file organization (and the symbol names that go with it) onto BW1W110 / BW1W100, which lag behind. Script-driven (.claude/skills/version-backport/backport.py) mangled-name correlation with several hard-won safety guards — read this before trusting a "clean" verdict, and read it before loosening any of the guards.
---

# Backport splits/symbols from BW1W120 to BW1W110 / BW1W100

BW1W120 is the primary matching target and has ~462 game-code files carved
out of `config/BW1W120/splits.txt`. BW1W110 has ~169, BW1W100 has ~183. Most
mangled symbol names already agree across all three versions (~93%+ named in
each, from an earlier bulk naming pass keyed off the Mac PPC symbol map) —
what's missing on 110/100 is mostly the per-file **splits** (which address
range belongs to which `.cpp`).

The tool is `.claude/skills/version-backport/backport.py`. Read its module
docstring first — it explains the translation method (name-anchor based,
deliberately *not* address-adjacency based) and, importantly, **why**: an
adjacency/neighbor-based approach was tried first and produced a silently
wrong, overlapping range because link order is not guaranteed to be
preserved across game versions. That failure mode, and four more —
a min/max-of-matched-symbols fallback overshooting into a neighboring file;
a boundary landing mid-vtable/mid-symbol; two *placeholder* names (e.g.
`fn_00450020` in both versions) "matching" by pure numeric coincidence of
unrelated per-binary hex offsets; a non-exact fallback boundary landing at
an unaligned address dtk rejects — are exactly what the current guards
(`size_ok`, `bisects_symbol`, `misaligned`, the placeholder exclusion in
`name_anchor`, the cross-batch occupancy check in `apply`) exist to catch.
**Do not remove or loosen these without re-deriving why they're there** —
each one corresponds to a real corrupted splits.txt (or a real false
`conflict`/`reordered` misclassification) this tool produced once during
development, caught only by actually running `configure.py` + `ninja`
afterwards.

Deliberately out of scope: `.bss` and `.CRT$XCU`. Both are almost entirely
unlabeled by individual symbol in *every* version, so there's no name
evidence to anchor on, and 110/100 currently have near-zero bss granularity
anyway. Treat as a separate follow-up problem, not something to force here.

## TL;DR

```
python3 .claude/skills/version-backport/backport.py report BW1W110       # summary counts
python3 .claude/skills/version-backport/backport.py show BW1W110 --status mixed   # full detail
python3 .claude/skills/version-backport/backport.py diff-file BW1W110 "Black/Foo.cpp"  # one file
python3 .claude/skills/version-backport/backport.py apply BW1W110        # writes splits.txt (+ any safe symbol renames)
python3 .claude/skills/version-backport/backport.py rename BW1W110       # symbols.txt only: re-sweep every already-split file
```

`report`/`show`/`diff-file` are read-only. `apply` is the only writer, and
only ever touches the target version's `config/<VER>/splits.txt` and
`symbols.txt` — BW1W120 is never written.

**Always verify after `apply`** — the classifier is conservative but not
infallible (see the guard history above):
```
python3 configure.py --version BW1W110
ninja        # from repo root; rebuild-graph errors here are dtk split failures, not compile errors
```
A `dtk coff split` failure (overlap / "ends within symbol") means `apply`
still produced something wrong for this batch — `git checkout --
config/<VER>/splits.txt config/<VER>/symbols.txt` and investigate via
`diff-file` before re-running. Don't just narrow `--only` and retry blindly.

## Per-file status meanings

- **clean** — every section resolved with enough evidence; `apply` adds it.
- **mixed** — some sections clean, others not (commonly `.data` with only 1
  symbol total — not enough to anchor confidently). `apply` still adds the
  clean sections for this file (partial application is the default and is
  safe: a file can legitimately have only `.text` split with `.rdata`/`.data`
  left for later, that's already how many existing entries look).
- **reordered** — matched target addresses aren't monotonic in BW1W120
  order. Usually real: function order shifted between versions (different
  inlining decisions, added/removed members). Needs a human/agent to work
  out the true boundary by hand (Ghidra, `decomp-diff.py`, or the
  byte-pattern-search approach used historically — see `git log --oneline
  --follow -- config/BW1W110/splits.txt` for hand-matched examples with
  addresses cited per version). Never force a monotonic reading.
- **no_anchor** — fewer than 2 matched symbol names in range. Often a small
  file where nothing's named yet in the target; will often resolve itself
  once neighboring files are split (re-run `report` after a batch — new
  `precise_start`/`precise_end` anchors appear as neighbors' first/last
  symbols become resolvable via other means). Otherwise, manual.
  it may need a completely different approach (Ghidra decompile, byte-diff).
- **subdivide** — the candidate range overlaps an *existing*, differently
  named target split. This is real: 110/100 sometimes have old, coarse
  entries (one filename covering what's now several files in BW1W120's more
  refined organization). Needs an agent to shrink/split the existing coarse
  entry to make room — this is a manual carve, `apply` refuses it.
- **conflict** — evidence contradicts itself: either the size-sanity check
  failed (candidate range is a wildly different size than the BW1W120
  source range — a sign a stray/duplicate name match skewed the fallback
  bound) or the candidate boundary lands mid-symbol in the target
  (`bisects_symbol`). Investigate by hand with `diff-file`; do not silence
  by just relaxing the threshold.

## Symbol backport

Placeholder names come in two flavors, both handled the same way by
`is_placeholder()`: dtk's own auto-generated fallback names (`fn_`/`sub_`/
`lbl_`/`data_`/`func_` + a raw per-binary hex offset), and `_pef_` + hex
(cross-referenced to a Mac PEF address, so the correspondence is *known*,
just not yet given a real C++ name).

`apply` (within newly-added ranges) and the standalone `rename <version>`
subcommand (a full sweep — every file already present in *both* BW1W120's
and the target's splits.txt, not just newly-added ones) both use
`align_and_rename()`: an LIS (longest-increasing-subsequence) alignment over
the real (non-placeholder) name matches between a BW1W120 range and the
corresponding target range, the same idea as a text diff. Those matches are
anchors; between two consecutive anchors, if both sides have exactly the
same number of symbols, they're paired up positionally and target
placeholders get renamed.

The first version of this required a single *global* exact count match
across the whole range and almost never fired (a file's total symbol count
legitimately differs between versions from inlining/dead-stripping even
when the great majority of functions correspond 1:1). Anchor-bounded local
matching fixed that — run `rename BW1W110` / `rename BW1W100` any time
either side gains more splits or names; it's idempotent and safe to re-run.
`write_symbol_renames()` refuses any rename whose target name would
duplicate an existing symbol elsewhere in the file.

Note: a rename can be correct even when the *file* it lives in is
questionable — `align_and_rename` only asserts "this address is named X in
BW1W120", not "this file assignment is right". If you see a rename bringing
in a name from a different class than the file's own name (e.g. a
`CameraModeTwoObjects::` method landing in `CameraModeCitadel.cpp`), that's
usually pointing at a pre-existing BW1W120 file-labeling question, not a
bug in the rename — leave a note rather than blocking on it.

## Manual cases: judgement, not force

Per the project's general philosophy (see `AGENTS.md`), a `reordered` /
`subdivide` / `conflict` / `no_anchor` file that resists a confident manual
resolution should be left alone with a note, not headbutted into a guess.
New evidence (a neighboring file resolving, a Ghidra decompile revealing the
true class layout) often unblocks these later — re-run `report` after other
progress rather than forcing it now.
