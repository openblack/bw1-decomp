---
name: dupe-harvest
description: Cheap, easy matching wins from tools/asm-dupe-scan.py — unmatched functions whose target bytes equal an already-matched function (exact twin) or equal it up to callee/data names (shape twin). Coordinator plans disjoint per-unit batches with harvest.py and fans out cheap workers (Sonnet); each worker copies the twin's source shape into its unit, builds one object, keeps only 100% matches. Use when asked for quick wins, dupes, twins, or a low-cost matching sweep.
---

# Dupe harvest — copy what already matches

`tools/asm-dupe-scan.py` signs every target function (bytes with relocations blanked +
relocation targets). An unmatched function whose signature equals a matched one is a **twin**:

- **exact** — same bytes, same relocation targets. The twin's source compiles to it verbatim
  (often the same inline/template body in another unit, or a sibling override).
- **shape** — same bytes, relocations point at differently named symbols. Copy the twin and
  rename the class / callees / data to what the target's relocations name.
- **generated** — `scalar deleting destructor`, `_$E`/`_$S` initializers, vftables: no body to
  write; the compiler emits them once the class's destructor / static is set up the way the
  twin's unit does it.

Cheap means cheap: **≤ 4 build-diff cycles per candidate, keep only 100%**. Anything harder
goes back to the coordinator as a note, never forced.

`H="python3 .claude/skills/dupe-harvest/harvest.py"`

## Coordinator (you, on the main model)

1. Fresh BW1W120 build first — the scan reads `build/<ver>/report.json` and target objects.
   `head -4 build.ninja` must say `BW1W120`. Then `ninja` and `ninja baseline`.
   (`configure.py` failing with "Missing configuration" for a unit that no longer exists =
   stale `build/BW1W120/config.json`: move it aside and reconfigure.)
2. `$H plan --workers N` → `build/dupe-harvest-plan.json`. It drops CRT libs (libcmt skill
   owns them), upstream zlib/jpeg/mpg123 (never edited), and units already `complete`.
   Each unit lands in exactly one batch → workers own disjoint `.cpp` files.
3. `$H pch` lists headers inside BlackPCH. Workers must not edit those (Ninja has no header
   deps; one edit silently stales every game object). Collect such requests and do them
   yourself between waves: edit, `rm build/BW1W120/src/Black/BlackPCH.pch`, full `ninja`.
4. Spawn one worker per batch **in a single message** (`Agent`, `subagent_type:
   general-purpose`, `model: sonnet`), prompt = the worker brief below + `$H show <i>` output.
5. Integrate: read each JSON summary. Shared-header requests in two batches → apply once.
6. Wave 2: full `ninja`, then `$H plan` again — new matches create new twins. Also
   `$H clusters --min-count 3`: unmatched clusters where hand-matching ONE member turns the
   rest into scan hits; hand the best few to a normal `decomp-matcher` worker.
7. Numbering budget. Inlining bodies into headers renumbers every unit that includes them
   (`docs/msvc6_symbol_numbering.md`): a one-line body costs 2-3, a declaration 1 + one per
   parameter, a forward declaration 0. A linked unit that stops matching in one version only
   (e.g. `WorshipSite::SaveObject`, two loads swapped) is that tie-break. Never move code back to
   dodge it: sweep the window per version with `tools/tiebreak-probe.py --variants` (0..70
   dummy enumerators at the end of an early header), then add Mac-evidenced method declarations
   to headers before the sensitive symbol until every version matches at count 0.
8. Finish: `python tools/decomp-verify.py --changed --run --baseline build/BW1W120/baseline.json`,
   `ninja changes_all`, clang-format 22 on touched files. Any regression → find which edit,
   revert that function only. Commit locally per unit (`git commit --no-gpg-sign`), never push.
   A unit whose overview turns all-`match` is a candidate flip to `Matching` — check
   BW1W130/BW1WCI before choosing `Matching` vs `MatchingFor(...)` (AGENTS.md).

## Worker brief (paste into each worker prompt)

You harvest cheap matches in the BW1 decompilation. Follow AGENTS.md conventions. Your batch
lists units you exclusively own, and per candidate: kind, address, name, and its matched twin
with the twin's source location.

Per candidate, in address order:

1. Read the twin's definition (location given; else `grep -rn 'Class::Method(' src include`).
2. See the target: `python3 tools/decomp-diff.py --unit <unit> -d "<name>" --exact` (or
   substring) — LEFT column is the target; relocation names tell you the callees/data.
3. Write the candidate's body into the unit's `.cpp` by copying the twin's shape:
   - exact/shape: same statements, class and callee names changed to the target's relocations.
     Parameters keep the twin's naming (`delete_now`, `info_count`), not `param_N` — if the
     header declares `param_1`, rename it there to the twin's name.
   - inline/template twins (`scope:weak` in `config/BW1W120/symbols.txt`, or twin defined in a
     header): the candidate is the same header code instantiated here — make the unit use it
     (include/instantiate) rather than writing a new out-of-line copy.
   - generated (`scalar deleting destructor`): look how the twin's unit defines that class's
     destructor (out-of-line `X::~X() {}` in the `.cpp`, or inline in the header) and mirror
     it. Needs a destructor body you can't see from a twin → skip.
   - definition position: address order among the unit's existing definitions. No comments
     above definitions in `.cpp`; the header declaration carries the
     `// BW1W120 <addr> BW1M119 <mac>` line (Mac addr from `config/BW1M119/symbols.txt`;
     `inlined` if absent). Validate with `python3 tools/check_addr_comments.py`.
   - Mac symbol is ground truth for the signature: `grep 'Method__<len>Class' config/BW1M119/symbols.txt`
     then `python3 tools/cwdemangle.py '<.sym>'`.
4. Build only your object, with the exact Ninja command (never `ninja` itself — other workers
   share the build dir):
   `eval "$(ninja -t commands -s build/BW1W120/src/<path>.o)"` — run it from repo root.
   Header edited → `rm` the `.o` first.
5. Diff. 100% (`match`) → keep, next. Else up to 4 cycles total, then **revert that function
   to exactly what was there before** and record why. Also check the unit overview didn't
   lose a previously matching symbol: `python3 tools/decomp-diff.py --unit <unit> -s match | wc -l`
   before and after.

Hard rules:
- Edit only your units' `.cpp` and the headers declaring their own classes. Never edit headers
  listed by `harvest.py pch`, `configure.py`, `config/`, or any other unit's `.cpp` — note the
  need instead. No struct layout changes (adding/moving members): note it.
- Candidate already defined out-of-line in some other unit's `.cpp` (grep first): moving it
  inline is a cross-unit change — skip, request it.
- Unnamed candidate (`fn_…`, `FUN_…`) or exact twin of a *different* function name in the same
  unit (likely duplicate/mis-split symbol): skip, note it — naming is coordinator work.
- No `extern`, no `goto`, no padding/fake locals, no decompilation commentary in source.
- Never `git stash/reset/checkout/commit`. Never run bare `ninja`.
- clang-format 22 (`clang-format` from the pip venv, see memory; system one is 23) on files you
  touched at the end, then rebuild + re-diff once to confirm.

Reply with only JSON:
`{"worker": i, "matched": [{"unit":…, "fn":…}], "skipped": [{"unit":…, "fn":…, "why":…}],
"files": [...], "coordinator_requests": [{"file":…, "change":…, "unblocks":[…]}]}`

## Pitfalls seen

- **Base-class methods inside a subclass's unit** (e.g. `MobileObject::GetXAngle` at the top of
  `Arrow.o`) are header inlines whose COMDAT copy the linker kept from the first unit
  alphabetically that emitted the base's vtable. Define them inline in the base's header, never
  out-of-line in the subclass `.cpp`. They show `missing` until that unit emits the vtable (its
  ctor is written); that is the right state, not a reason to move them into the `.cpp`.
  Tell-tales: the class has its own unit elsewhere; the copy sits beside another class's
  `??0`/`??_G`/vftable-adjacent run; a sibling virtual is already inline in the header.
  Not a tell-tale: **feature files** — one method name across many classes (`SoundGuidance.cpp`:
  `X::GetGuidanceResourceType`; `CreatureMentalObjectTests.cpp`: `X::CanHave…CastOnMe`;
  `FootBall.cpp`: `Villager::FootballWonGoal`). Those really are defined in that `.cpp`.

- Twin in another unit's header as inline → candidate is a COMDAT copy kept in an earlier
  unit; `tools/comdat-scan.py where --unit <unit>` tells whether this unit should own it.
- Same body ≠ same source when the twin's file is `NonMatching`-linked oddly; the 100% diff is
  the only proof — never keep a 99%.
- `GetBaseInfo` / `ToBeDeleted` / `GetDebugText` families: one-line overrides, the twin's
  body with the class's own enum/table names (`SPELL_ICON_INFO_LAST` → that class's `*_LAST`).
