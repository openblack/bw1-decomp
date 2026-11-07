# Verification and publication

Read before cleanup, final validation, or preparing public artifacts. Use current tool help and repository instructions; the commands below illustrate the expected workflow and do not replace inspecting the selected targets.

The build and matching checks below apply to decompiled code and build/configuration changes. For a documentation-only contribution, validate the instructions, referenced paths, examples, and applicable documentation checks; do not claim new binary verification or rebuild the game merely to check prose.

## Pre-PR skill and extern checks

For decompilation contributions, this guide requires an explicit completion pass through the following checks before publication. A matching score does not replace them. Use the checkout's current skills and `AGENTS.md`; reading a skill is preparation, not a completed check.

| Check | Required outcome |
| --- | --- |
| `.claude/skills/minmax-macros/SKILL.md` | Scan the affected source and relevant helpers with `tools/minmax-scan.py`. Verify candidate rewrites with the original compiler; keep only supported, matching forms. Record no candidates or a verified reason to retain an existing form when appropriate. |
| `.claude/skills/inline-budget-matching/SKILL.md` | Perform its initial diff/call-set classification for the recovered functions and relevant helpers. Confirm the call/inlining patterns agree, or follow the bounded procedure for the observed mismatch. Exact agreement is a valid completion result; do not start budget experiments merely to tick a box. |
| `.claude/skills/version-backport/SKILL.md` | Inspect the selected unit in every version required by current repository policy. Port the justified new names and necessary metadata, not just the C++ source, following [version-checks.md](version-checks.md). Re-split and verify the committed mappings. |
| Global ownership / `extern` | Search the affected source and headers for `extern` declarations, including existing ones relied on by the recovered code. Follow `AGENTS.md`'s Globals rules: establish the owner and use its proper declaration, rather than a convenient TU-local stand-in. Distinguish linkage specifications such as `extern "C"` and the documented, evidence-backed free-global exception from ownership shortcuts. |

Keep a short local record for each check: scope, command or original evidence inspected, outcome, and any unresolved item. An applicability conclusion must explain what was checked; bare "N/A" or "skill loaded" is insufficient. Missing tools or reference inputs are explicit incomplete checks. Do not widen the PR to unrelated cleanup or force speculative transformations to make every row produce a change.

Do this before final formatting and consumer/version verification, since these passes may change code or headers. After later edits, repeat the affected checks. Summarize meaningful results and unresolved limitations in the PR without copying the full investigation log. This completion pass adds no authorization to publish or contact reviewers.

## Preserve the comparisons that answer different questions

Before edits, run `ninja baseline` and preserve that baseline. For the actively investigated unit, capture a strict rich snapshot with `tools/decomp-regress.py --unit <unit> --strict --snapshot <path>`. Record revision, input set, compiler/configuration, and any existing work included. Keep detailed investigation notes outside the repository.

Before readability-only edits, use `tools/codegen-check.py snapshot <label> --source <source>` (or its current changed-file selector), then `compare <label>` after cleanup. A comparison against main cannot detect losing a function that the PR itself newly recovered. Cover affected consumers of header edits. Order-only differences still matter for linked units; do not ignore them blindly.

At completion, use the current `tools/decomp-verify.py` selector matching the work: `--changed` for uncommitted changes or `--since <base>` for a branch. Inspect its plan, then execute with `--run --baseline <preserved-baseline>`. It checks formatting, original-compiler replay, full build/hashes, report refresh, and regressions. Finish with `ninja changes_all` and inspect section changes using `decomp-regress.py` as well.

If a shared header changed, compiling the focal source alone is insufficient. Verify real consumers, including inline/template instantiations and affected versions. Use current version macros and toolchains; compiling another version without its original binaries proves compilation only. Never treat missing inputs as evidence of genuine version divergence.

Use [version-checks.md](version-checks.md) for the per-version baseline, backport and failure-investigation procedure. In particular, distinguish a failure already present in the branch before a follow-up edit from one reproduced on clean upstream. Check CI on the exact upstream base and PR revision; contradictory results require investigation, not a stronger disclaimer.

Fetch and rebase onto current `origin/main` before submission when required by the task/repository. Preserve user work. Reverify after conflicts or upstream changes. Keep the original task baseline intact; when upstream moved, obtain a separately labeled clean-upstream comparison where needed to distinguish upstream changes from branch regressions. Do not overwrite the original evidence or attribute upstream differences to the contribution without a control.

Reports can be stale even after a successful build. Explicitly refresh them, but remember a refresh reads existing objects and cannot prove headers were recompiled. An infrastructure error or unavailable dependency is a failed/incomplete check, not a passing source test. Record the specific block and the checks that remain possible.

## Report the exact level of proof

| Result | What it establishes | What it does not establish |
| --- | --- | --- |
| Compiler success | The selected source/consumer builds in that configuration. | Binary matching or behavior. |
| Report match | Agreement under the report's settings. | Exactness from a rounded percentage. |
| Strict object match | Comparison includes relocation identities and addends. | Unique original source or a linked replacement. |
| Resolved-byte match | References resolved to original addresses reproduce bytes. | Proof of every source-level meaning. |
| Artifact hashes pass | The built artifacts match the expected hashes. | That a NonMatching source replacement was linked. |
| Behavioral comparison | Tested inputs/states agree under the harness assumptions. | Exhaustive equivalence or byte identity. |

Check `configure.py` for source-linking status. A completed TU requires the applicable matching status and successful linkage/verification; otherwise describe matching functions within a NonMatching unit. Inspect `.text`, data, `.bss`, initializers, COMDATs, and relocations as relevant. Investigate negative deltas instead of adding padding or labeling them noise. Do not drop a previously matched version to hide a regression.

## Keep the PR an accurate entry point

Before submission and after corrections, rebases, scope changes, or new results, compare the title/body against the actual diff and checked revision. Cover the affected TU/classes, what changed and why, consequential evidence, checks actually run, versions, comparison mode, linking status, and the remaining limitation or genuine reviewer decision. Scale detail to the change; do not paste the investigation diary.

Correct false or superseded claims in the main description, not only in a later comment. If an earlier assertion influenced related work, retain a short correction with the replacement evidence and relevant PR/commit link. Keep the handoff, title, body, and checklists consistent so later people and agents do not inherit contradictory summaries. Do not claim a historical check covers an untested revision.

Recheck open PR overlap, especially shared headers/configuration. Apply feedback across the relevant changed scope and report routine fixes together when messaging is authorized. Do not send unsolicited replies, ask reviewers to validate an unexamined dump, or update unrelated PRs. If full verification is blocked, describe it honestly and agree publication readiness within the user's authorization; draft status alone proves nothing.

## Privacy before anything becomes public

Inspect the full proposed file list and diff, every commit that would be published, messages, author/committer metadata, PR text, and any chosen logs/screenshots/attachments. Repeat for later updates. Ignore rules and a clean worktree do not prove that private data is absent from commits. Scan without printing secrets or personal details into tool output.

Exclude personal information, credentials, account/license data, saves/profiles, personal game content, local usernames/hostnames, identifying installation paths, environment dumps, local settings, editor state, machine-specific agent/session configuration, original game assets/binaries, private notes, and build outputs. Use repository-relative paths and sanitized examples in public explanations. Deliberately authored, shareable skill metadata is different from a contributor's private agent settings.

Preserve required original Lionhead `FILEPATH` strings and public game symbols: they are binary evidence, not the contributor's local settings. Do not rewrite them for privacy. Use an explicitly approved public commit identity; when existing authorization already establishes it, do not ask again. Resolve a private-email exposure before publication without displaying the private value. Do not silently change global Git settings or rewrite shared history.

For local-only work, produce the requested artifacts locally and stop before committing or publishing. For approved publication, use only the authorized repository/branch and verify the resulting PR contains the intended change. Keep public claims current as CI results arrive during the task; do not promise ongoing monitoring unless separately arranged.
