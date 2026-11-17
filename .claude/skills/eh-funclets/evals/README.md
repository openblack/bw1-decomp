# eh-funclets evals

`claude plugin eval` cases for the skill. Each run gets an empty workspace; the case's
`fixture.sh` (`scaffold.sh`) turns it into a small checkout. It holds the repo's current
`tools/funclets.py` and helpers, plus BW1W120's LHMultiplayer objects and config with 224 stale
`$L` labels. The run then follows the skill against real tools.

The fixture is game bytes (target objects, the image), so it is not committed. Make it once from a
built BW1W120 tree whose labels are out of date, for example right after adding a declaration to
`LHTransportInfo.h` and running `ninja`, before relabelling:

```
.claude/skills/eh-funclets/evals/make-fixtures.sh [CHECKOUT]   # -> build/eval-fixtures/eh-funclets/
```

The graders' expected values (224 labels, `LH3DHair.cpp` at 0x008A8210) come from the fixture made
on 2026-11-17. Regenerate them if the fixture changes.

Run (Sonnet, about 6 cents a run at the time of writing):

```
claude plugin eval .claude/skills/eh-funclets --model sonnet --judge-model haiku --allow-tools Bash \
    --scaffold --trust-plugin --no-publish --ablation none --max-cost-usd 2
```

Cases: `relabel-after-header` (load the skill, run `relabel --apply`, no hand edits),
`check-before-push` (report 224 without changing anything), `owners` (find the owning unit).

Known limit: in Claude Code 2.1.325 a granted Bash cannot write anywhere in an eval run (the
workspace is mounted read-only), so `relabel --apply` fails there. The case checks that the agent
runs it and does not edit symbols.txt by hand, not the rewritten file.
