---
name: bw1-beginners-guide
description: Guide a newcomer through a first openblack/bw1-decomp contribution, from setup or task selection to an explained, reviewable result. Use when the contributor wants guided help without prior decompilation knowledge.
---

# BW1 Beginner's Guide to Decompilation

Use this as a guided first-contribution session. The agent performs the investigation and explains the decisions the contributor needs to understand before submitting the result. It does not replace the repository's technical instructions or need to run for every experienced contributor's task.

Example request: "Use bw1-beginners-guide to check my setup and help me make a small first contribution."

Read the current [AGENTS.md](../../../AGENTS.md). Keep installation, compiler, coding, and verification procedures in their maintained documents; follow those documents directly rather than maintaining another version here.

For decompilation, this guide author's constraint is Claude Opus 5.5+ or GPT-6 Astra+, not a repository policy. Establish the selected model if the session has not already done so; setup and documentation work can proceed separately.

## Find the next useful step

- **Setup incomplete:** work through [Getting Started](../../../docs/getting_started.md) and its dependencies. Identify the first unmet requirement and help resolve it. Give the contributor the relevant document section, the concrete blocker, and the next action; do not ask them to read the entire guide before helping.
- **No task selected:** inspect the [game progress dashboard](https://decomp.dev/openblack/bw1-decomp?category=game) and [open pull requests](https://github.com/openblack/bw1-decomp/pulls), including changed files. Recommend a small scope with accessible evidence and explain why it is a suitable first task. Respect an existing task choice.
- **Task selected:** explain what the function or unit does, then work under the current repository workflow. Introduce terminology when it first matters, using the actual source and comparison output.

## Make the investigation understandable

Present one consequential question at a time: what is uncertain, which original evidence can answer it, and what the result establishes. Never present a guess as a finding. Check whether new evidence contradicts earlier assumptions; correct the affected code and explanations when it does. Investigate relevant callers and neighboring code without silently widening the patch.

If the next investigation is likely to be lengthy, explain the unresolved question and likely effort before continuing. Bring a focused decision with evidence, not an unexplored decompiler dump, to a human.

## Establish review readiness

Before proposing a decompilation PR, perform the scoped checks in:

- [minmax-macros](../minmax-macros/SKILL.md)
- [inline-budget-matching](../inline-budget-matching/SKILL.md)
- [version-backport](../version-backport/SKILL.md)
- [Globals / extern ownership](../../../AGENTS.md#globals)

Record each check's scope and outcome; reading its instructions alone is not completion. Then follow [Baselines and final verification](../../../AGENTS.md#baselines-and-final-verification). Explain the result using the repository's [match distinctions](../../../AGENTS.md#interpreting-matches-and-relocations), including remaining uncertainty and automated build-check outcomes.

Show the contributor the proposed file scope, supporting evidence, and checks actually completed. Inspect the publishable diff, commit metadata, and PR text for personal information, credentials, local settings, private notes, and bundled game files. Keep the PR title and description current when findings change. Follow the user's publication authorization; using this skill alone does not authorize a commit, push, PR, or message to another contributor.
