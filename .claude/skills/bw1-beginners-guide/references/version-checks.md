# Checking other versions without overstating the evidence

Read this for version backports, shared-header changes, or failing builds outside the primary target. These are verification lessons, not permission to expand a small task into a repository-wide port.

## Establish a comparison for each version

Use the exact configured names: `BW1W100`, `BW1W110`, `BW1W120`, `BW1W130`, and `BW1WCI` for Creature Isle. Check current repository policy for required versions and toolchain flags. Keep each version's validated executable and companion DLLs under its own `orig/<VERSION>/`; never substitute another version's DLL because its filename agrees.

Before changing a version's source or configuration, preserve its baseline, a strict snapshot of the affected unit, and relevant built artifacts. Record the source revision, uncommitted changes, compiler, inputs and linking status. Keep these distinct:

| Comparison | Question it answers |
| --- | --- |
| Before/after the current edit | Did this edit change the branch's output? |
| Clean upstream base versus the complete PR | Did any part of the contribution introduce the failure? |
| Rebuilt artifact versus expected original hash | Does this configuration reproduce the original artifact? |

Byte-identical before/after executables prove only that the current edit did not change those executable bytes. If the earlier baseline already included PR changes, it cannot clear the whole PR. Replacing one header in a probe is a narrower control than rebuilding clean upstream, especially when precompiled headers or other shared declarations may differ. State that limitation.

Confirm that a private probe actually reads the modified header copy, including when building its PCH. Inspect the compiler's real source argument and preprocessor dependencies. On Windows, `src/Black/File.cpp` and `src\Black\File.cpp` refer to the same file but are unequal strings: a retargeter using exact string equality may silently keep compiling the original source, whose quoted includes resolve in the original directory even when include paths were redirected. Derive the source argument from the real compiler command and verify the replacement. An experiment that never consumed its changed input cannot establish that the input has no effect.

When a probe proves invalid, revisit the conclusions that depended on it. Repeat those comparisons with a working control; keep independent evidence separate. Correcting the immediate diagnosis does not automatically repair other claims derived from the same faulty experiment.

One checkout has one active configuration: `configure.py` updates the root build graph and `objdiff.json`. Build versions serially in that checkout, or use isolated checkouts following `docs/parallel_builds.md`. Do not run concurrent Ninja/configure operations against the same graph. Preserve exact target spelling on Windows. Restore the user's chosen version, normally BW1W120, and ensure its objects and report describe the final source.

Record complete hash-check results while each version is active. Some paths, notably `build/lib/`, are reused and replaced when switching configurations. Preserve a per-version digest manifest or successful hash-check log with its source revision and configuration. A later version's library occupying the same path is not evidence that the earlier build failed. Restore the relevant configuration before rechecking shared outputs.

Verification in an isolated checkout does not update the primary checkout's cached objects. Before removing it, preserve the reports, strict snapshots and supporting objects needed to explain the result, and confirm that its verified source/configuration matches what will be published. Rebuild affected primary caches or invalidate known-stale generated outputs so later builds cannot silently reuse them. Preserve original inputs and baselines; follow the repository's worktree cleanup guidance for shared dependencies.

## Backport correspondence must survive contradictory evidence

Read the repository's `version-backport` skill when using its tool. Begin with read-only reports and inspect the selected unit's existing splits. Apply only the scoped changes justified by original code; an automatic pairing is a proposal, not proof of matching signatures or behavior.

Compare argument use, stack cleanup, register conventions, calls and function boundaries in the target version. An older routine in a corresponding location may take an extra argument or perform different work. Reject an unsupported rename rather than forcing it to share the newer signature. Recover debug allocation paths, capitalization and line literals from each version's original bytes; do not copy the primary version's metadata blindly.

Check the actual target configuration and its history before regenerating it. Instructions asserting that a version has no hand fixes may become stale. Preserve existing hand fixes and do not re-emit a whole version for a scoped task when doing so would discard them. Preserve split boundaries unless changing them is necessary and supported. Never relax overlap, alignment or symbol-boundary guards to make a proposal apply.

## Publish the metadata needed to reproduce the match

Cross-version byte verification and cross-version contribution completeness are different checks. A private audit can resolve calls or strings using temporary address mappings while the committed configuration still has wrong names, signatures or boundaries. That can prove the selected bytes, but other contributors and CI cannot reproduce the same strict comparison from the checkout alone.

For each required version, trace the new functions and the symbols their comparisons depend on: callees, imports, strings and relevant data. Verify each correspondence against that version's original evidence. Include the justified, scoped `symbols.txt` corrections in the contribution; change splits or other configuration only when needed. An existing split, a successful build, or a backport report with no new splits does not establish that the symbol names are complete. Do not use a private verifier's overrides as a substitute for fixing known configuration errors.

After reconfiguring and re-splitting, rerun strict comparisons using the committed symbol maps, inspect both sides for instruction/relocation differences, and verify resolved bytes and artifact hashes as applicable. Retain before/after section evidence. If a correspondence remains ambiguous, leave it unresolved and identify the affected version and check precisely; do not invent names or claim the version's metadata is complete. Update the PR summary when temporary investigative mappings have been replaced by committed corrections.

## Diagnose the actual difference

- A rounded 100% is insufficient. Check strict relocation identities/addends and underlying instruction differences on both sides, including inserted or removed instructions.
- A target function symbol can include padding or stale bytes beyond its actual body, and an anonymous data boundary can fall inside a string. Check instruction boundaries, control flow, jump tables, exception funclets and neighboring entries before correcting an extent; finding a `ret` is not sufficient. Name strings from their exact original bytes and preserve padding/remainders. Verify that extraction retains the original section bytes and that rebuilt hashes still pass. Never truncate genuine code or alter reference bytes to raise a score.
- An immediate value can accidentally fall inside the executable's address range and be extracted as a pointer. Prove its role from the instruction and consumers; compare independent versions where useful. Use the repository's relocation inspection and resolved-byte verification tools. A narrowly scoped extraction override needs this evidence; globally ignoring relocations or inventing a source reference conceals the problem. Reconfigure and re-split after configuration changes.
- Unrelated instructions can reorder when a shared header gains declarations. Consult `docs/msvc6_symbol_numbering.md` and use bounded controls to identify the triggering change. Check which types each consumer actually needs; separating an unnecessary dependency into its owning header can be a supported fix. Do not invent padding declarations or move code solely to tune a count. Reverify all affected consumers and versions after changing the include boundary.
- An initializer rename may appear as a lost match under its old name. Pair old and new symbols by the same original address, then verify code, relocations, data and scores. Do not dismiss every initializer change as renumbering.
- A data-score drop does not by itself establish a storage or behavior change. Compare section sizes, data bytes, symbol offsets and relocation targets. Use controlled upstream/PR compiler comparisons when needed. Account for COMDAT/section ordering separately; do not add padding to restore a percentage. Retain the raw failed check and explain the evidence instead of reporting an unconditional pass.

## Failing hashes and CI are unresolved until explained

Identify the failing artifact and first failing step. Separate missing dependencies, compilation errors, executable/DLL hash failures and report-analysis flags. Preserve detailed logs locally; report a concise per-version result with compilation, strict function checks, linking status, artifact hashes and remaining uncertainty.

For a hash failure, locate the differing bytes and owning function/section. Reproduce clean upstream with the same validated inputs, toolchain and relevant build environment; verify header/PCH freshness. If upstream CI passes while the branch fails, investigate the complete PR and environmental differences. Do not call it an upstream issue merely because a local baseline or narrow probe also fails. A failure in a different source file can still be caused by a shared header changed in this PR.

Never change expected hashes, disable checks, or remove an already-matching version from `MatchingFor(...)` to hide a regression. If evidence cannot resolve it, present the concrete mismatch and controls to the human. Correct earlier PR claims as soon as contradictory evidence is found; label any proposed cause as provisional until verified.

Reviewer approval, CI success and merge status are separate facts. Check the approval's commit and the current CI head before reporting readiness. Keep the main PR description current after new results, rather than leaving a false summary for later contributors or agents.

An empty check-job list does not establish success: inspect the workflow-run status too. A new fork contribution update may require maintainer approval before jobs start. Report that pending action separately from local verification, and do not carry a previous commit's successful checks forward to an untested head.
