---
name: minmax-macros
description: Find hand-expanded min()/max() (ternaries, if-clamps, assign+clamp, if/else and return selects, two-sided clamps/saturates) in BW1 source and replace them with windef.h's min/max macros only where the compiled bytes stay identical. Script-driven — tools/minmax-scan.py scans, trial-compiles every spelling with the unit's real cl command, and applies the byte-identical ones. Use when writing or reviewing decompiled code that selects between two values, when a diff shows a double-evaluated operand, or when asked to clean up min/max/clamp/saturate expansions.
---

# min/max macro recovery (MSVC6)

Lionhead code used windef.h's macros (no project-specific ones are known):

```c
#define max(a,b) (((a) > (b)) ? (a) : (b))
#define min(a,b) (((a) < (b)) ? (a) : (b))
```

Decompilers emit them as `a < b ? a : b` or as an `if` that assigns. Bytes decide
which one the original used, so every rewrite is compile-tested before it is kept.

## 1. Scan (no compiles)

```bash
python tools/minmax-scan.py src/Black/Fixed.cpp       # one file
python tools/minmax-scan.py --all                     # every .cpp/.c/.h under src/ (zlib skipped)
```

Shapes found, where the selected values are textually the compared operands:

| kind | source | rewrite |
|------|--------|---------|
| ternary | `p < q ? p : q` | `min(p, q)` |
| clamp | `if (L < R) L = R;` | `L = max(L, R)` |
| assign + clamp | `L = E; if (E < R) L = R;` / `L += E; if (L < R) L = R;` | `L = max(E, R)` / `max(L + E, R)` |
| if/else select | `if (p < q) L = p; else L = q;` | `L = min(p, q)` |
| return select | `if (p < q) return p; return q;` | `return min(p, q)` |
| two-sided clamp | `if (x < lo) x = lo; [else] if (x > hi) x = hi;` | `x = min(max(x, lo), hi)` |

`<=`/`>=` forms are flagged `[not an exact macro]` but still tested: they often compile
the same. "saturate 0..1" marks a two-sided clamp to `[0, 1]`.

## 2. Verify, then apply

```bash
python tools/minmax-scan.py --verify src/Black/Object.cpp
python tools/minmax-scan.py --verify --apply src/Black/Object.cpp
python tools/minmax-scan.py --verify --unit Fixed src/Black/MultiMapFixed.h   # header: pick a consumer
```

Each candidate is tried in both argument orders. The macro's comparison is fixed
(`max` always tests `a > b`), so the order that reproduces the original comparison is
not always the conventional one: `if (frameTime < 1) frameTime = 1;` only matches
as `max(1, frameTime)`. Take whichever order the tool reports `SAME`.

| verdict | meaning | action |
|---------|---------|--------|
| `SAME` | every function in the object byte-identical (relocations masked) | `--apply` writes it |
| `TARGET` | changed, and every changed function now matches the target | `--apply` writes it |
| `DIFF` | changed for the worse; changed functions listed | keep the `if`/ternary |
| `…*` | min/max not in scope in this unit; judged with windef.h's definitions injected (`#line 1` keeps `__LINE__`) | not applied: ask the human about an include |
| `ERROR` | does not compile | inspect |

`--apply` re-compiles all chosen rewrites together and refuses to write if the
combined result differs. Afterwards run `clang-format -i` on the file and the normal
completion checks (`decomp-verify.py`, `decomp-regress.py --refresh --fail-on-regression`).

## 3. Reading the asm (when the source has no candidate yet)

- **Macro**: compare, branch, then the chosen operand is **re-evaluated** in each arm
  (reloaded, recomputed, or a call made a second time) and stored **once** after the join.
  `min(desire * info->X, 1.0f)` recomputes the product in the taken arm.
- **if-clamp**: the value is stored **unconditionally**, compared, and the bound is
  stored again **conditionally** (`fst [x]; fcomp 0; jnz skip; mov [x], 0`).
  `MultiMapFixed::BuildBy`/`SetPercentBuilt` are this shape: real `if`s, not macros.
- A `DIFF` in both orders means the original was not a macro. Leave it as written.

## 4. Clamp / saturate macros

No original one is known, but `include/re_common.h` provides a project-defined
`CLAMP(value, low, high)` statement macro (a plain braced if/else-if one-liner; the braces keep inline sizes right, and `value` is left unparenthesised because `(value) < low` reorders a load in `CreatureAgenda::ConstructSubActionsForFight`) for the `if (x < lo) x = lo; else if (x > hi) x = hi;`
shape. It expands to exactly that chain, so it is byte-identical wherever the chain is (an inline
`Clamp(T&, T, T)` template is not: the reference makes MSVC6 reload the stored value instead of
reusing the register, e.g. `GAlignment::CrudeSet`). `minmax-scan.py` offers it as the last
spelling of every two-sided clamp and verifies it like the others; real min/max win when both
pass. Where `CLAMP` is not in scope it is judged injected (`SAME*`), and `--apply` adds
`#include <re_common.h>` after the last include, then re-checks the real file (`__LINE__` shifts):

```bash
python tools/minmax-scan.py --all --kind two-sided                    # scan the whole tree
python tools/minmax-scan.py --all --verify --kind two-sided           # dry run, every .cpp
python tools/minmax-scan.py --verify --apply --kind two-sided src/Black/VillagerFood.cpp
```

`>`-first chains, `>=` bounds and two independent `if`s come out `DIFF`: leave them written out.

No original helper is known. BW1M119 (main and all 11 module symbol files) has no Clamp/Saturate/
Bound/Limit symbol, there is no such `#define` in src/ or include/, and macros
leave no symbols. The two-sided candidates also get a **probe-only** single-expression
shape (`x < lo ? lo : (x > hi ? hi : x)`). It is printed as evidence and never
applied. An if/else-if chain often compiles to the same bytes as that ternary, so a
probe `SAME` proves nothing. Only a probe `SAME` where both nested min/max spellings
`DIFF` *and* the existing source `DIFF`s against the target would hint at a lost
macro. Do not invent a name; leave a TODO and tell the human.

Findings at time of writing (BW1W120): all three two-sided clamps
(`ControlHand.cpp` `CHand::SetSize`, `VillagerFood.cpp` x2) are genuine if-chains.

## Pitfalls

- Header edits change every consumer. `--verify` on a header compiles one `--unit`.
  Run `decomp-verify.py --changed` before keeping it.
- The probe compiles only the configured version (check `configure_args` at the top
  of build.ninja). Units with `VERSION_*` blocks need a build per version (`python
  configure.py --version BW1W100 && ninja`, then back to BW1W120).
- Collapsing a multi-line `if` shifts later line numbers. Explicit `new (FILE, 739)`
  literals are unaffected, but a later `__LINE__` changes the bytes. Verification
  catches that as `DIFF`, so trust the verdict over the shape.
