---
name: inline-budget-matching
description: Close the last gap on an MSVC6 (c2.dll 8966) function whose diff shows either (a) a helper that is inlined on one side but stays a `call` on the other, or (b) identical instructions in a different operand/x87 order around inlined helpers. Script-driven — tools/inline-budget.py (exact IL sizes, budget simulation, target call-set scan) and tools/tiebreak-probe.py (dummy-local tie-break test, parallel variant screening with exact byte compare). Classify first, compute the budget window, stop early on tie-breaks and hand the fakematch decision to the human.
---

# Inline budget and tie-break matching (MSVC6)

Background and measured numbers: [`docs/msvc6_inliner.md`](../../../docs/msvc6_inliner.md).
Read the "Budget rules" and "Tie-breaks" parts once. This skill is the procedure.

Budget per function: roughly **20 builds** for the budget branch and **~15 builds** for a
tie-break. Past that, stop and report — more guessing rarely converges.

## 0. Classify the diff (1 build)

```bash
ninja <base_path of the unit>                        # delete it first if you edited a header
python tools/decomp-diff.py --source <file> -d "<function>"
python tools/inline-budget.py callsets --source <file> --helpers <helper,names,...>
```

| What differs | Class | Go to |
|---|---|---|
| `call Helper` on one side, its body inlined on the other (callsets `XX`) | inline budget | §1 |
| Same calls; only operand order of commutative x87 ops (`fld st(1)` vs `st(2)`, `fmul` A/B swapped, `fxch`) in inlined bodies | tie-break | §2 |
| Same calls; register names or push/spill placement only | scheduler/regalloc tie | try ≤5 source shapes, then TODO + defer |
| Anything else (missing stores, different branches) | real source difference | normal matching |

Fix §1 before judging §2: budget changes reshuffle everything downstream.

## 1. Inline-budget branch

**Model.** Budget 1000 for any caller with IL ≤ 500. Callees ≤ 40 are free and never charged.
Larger callees are accepted only if they fit in what remains, then charged. Nested sites get
`remaining / count`, where `count` = candidates not yet processed at the parent level,
current one included. Everything else in this branch is arithmetic.

1. **List the candidates** in source order, nested ones in parentheses. Every inline
   function the call reaches counts; virtual calls and non-inline functions do not. Ask
   the Mac binary which calls exist. CodeWarrior leaves non-inlined calls as `bl`, which
   reveals the source's call structure, not just its semantics.
2. **Measure sizes exactly** (one command each, ~1 s):
   ```bash
   python tools/inline-budget.py size --source <file> --include <header> \
       --params "<caller params>" --call "<expr>" --symbol "<mangled substring>"
   ```
   The sizes are exact integers, so the simulation below is exact too.
3. **Reproduce our build** with `tools/inline-budget.py sim --tree ... --sizes ...`. If the
   simulation doesn't produce our object's call set, the tree is wrong; fix it before going on.
4. **Solve for the target.** Write the target's accept/reject list as inequalities. With one
   free unknown, this gives a window, e.g. "IL spent before `SetPosition` must be in (15, 83]".
5. **Use other callers as data.** Scan target objects for the same helpers:
   ```bash
   python tools/inline-budget.py callsets --all --target-only --helpers <names>
   ```
   Callers sharing a body but showing different target patterns differ only in what they
   spend *before* that body. Whatever inline call one has and the other lacks is the lever.
   Size windows from several callers usually pin it to one helper.
6. **Change that helper's IL size without changing its bytes.** The cheapest candidates:
   - ternary instead of `if` (can drop a callee to ≤ 40 and make it free);
   - compound `a += b` instead of `a = a + b`;
   - chained assignment `a = b = c = 0`;
   - fewer or more statements.

   Array element access (`m[i]`) costs 10 IL units, a flat member 8. Re-measure, re-simulate,
   then build. Try at most ~5 forms.
7. **Guard the change project-wide.** The Ninja `cl` rule has no header dependencies: delete
   every object before rebuilding, then compare full reports before and after:
   ```bash
   python tools/decomp-regress.py --refresh --baseline <report saved before the edit>
   ```
   Keep the change only with zero regressions.

Don't use `__forceinline` or `#pragma` to force a helper in or out. Don't invent struct
layouts to shave IL unless other evidence supports them. And don't brute-force global size
solutions across many callers: if no plausible body fits, an assumption about a caller's
shape is wrong. Re-check the callers whose shape is only a guess (fabricated names, functions
dead-stripped on Mac, hand-expanded bodies) before touching shared headers.

## 2. Tie-break branch

MSVC6 picks the evaluation order of equal-cost x87 operands (e.g. `m0*c` vs `m6*s` inside an
inlined `RotateY`) from how much IL the inliner has built earlier in the function. It is
deterministic but chaotic:
- an unused parameter flips it;
- extra inline-constructor calls flip it;
- `cosf`/`sinf` (inline wrappers in `<math.h>`) flip it;
- identifier names, line layout and other functions in the TU do not.

1. **Confirm the class** with the dummy test (one parallel batch):
   ```bash
   python tools/tiebreak-probe.py --source <file> -f "<mangled substring>" \
       --dummies "LHPoint probe{i};" --anchor "<first line of the function body>" --max 12
   ```
   If some counts give `MATCH` and neighbours don't, it's a tie-break. If nothing ever
   matches, the difference is elsewhere: go back to §0.
2. **Screen natural candidates once.** Write ≤ 20 plausible alternatives (helper forms backed
   by evidence, math wrappers, local layout) into a variants JSON and run
   `tiebreak-probe.py --variants`. Any variant whose hash equals `baseline` doesn't touch the
   tie at all; never build it into a bigger sweep.
3. **Stop.** If nothing matches, ask the human: leave it nonmatching (the recommended
   default), or accept a fakematch. Unused locals of a type with an inline constructor, at a
   count from step 1, are the smallest fakematch. Give the evidence from step 1 in the
   question.

Don't reverse-engineer the tie-break inside c2.dll (gdb on wibo is unreliable for 32-bit code:
child processes, breakpoints clobbered by the loader, jump tables inside `.text`). Don't run
thousand-variant sweeps before step 2 has shown that a knob moves the output at all.

## Pitfalls that cost hours before

- **Header edits don't rebuild consumers.** Delete the object before `ninja`, and every
  object before a regression check.
- **Parallel builds that edit headers must work on private copies of `src/`**
  (`tiebreak-probe.py` does this). Restore any header you edited in the real tree, and
  check `git diff` for leftovers.
- **Don't parse target objects with objdump disassembly.** Gap labels desync it. Compare
  bytes (`tools/msvc_probe.py`) or use `decomp-diff.py`.
- **Anything longer than a minute runs in the background with a monitor.** Don't block on
  sleeps.
- **Evidence ranking for helper shapes:** Mac out-of-line bodies and inlined copies, then
  target call sets across all units, then Windows out-of-line copies. A header body that
  fits one caller but breaks another's call set is wrong.
