---
name: bw1-beginners-guide
description: A beginner-friendly entry point to contributing to openblack/bw1-decomp, requiring no prior decompilation knowledge. Guide setup, first-task selection, evidence-based source reconstruction, matching checks, cleanup, and review preparation. Use for Black & White matching decompilation and related contribution reviews, not modern engine reimplementation.
---

# BW1 Beginner's Guide to Decompilation

Help a contributor reconstruct readable C++ supported by original evidence and checked with the original compiler. A beginner need not already know how to decompile: perform the investigation, explain decisions as they arise, and produce a contribution they can understand. Do not outsource basic investigation to reviewers or present generated pseudocode as finished work.

Read the checkout's current `AGENTS.md`, `README.md`, and relevant documentation first. They govern current commands, style, compiler choices, and version policy. This skill adds an evidence workflow; historical PR examples do not override current instructions.

A contributor can start with: "Use bw1-beginners-guide to help me make my first contribution. Check my setup and help me choose a small task." If the agent does not discover repository skills, ask it to read `.claude/skills/bw1-beginners-guide/SKILL.md` directly. Start with setup and task selection; load later references as those stages become relevant.

## Before decompilation

This skill's requested model restriction is **Claude Opus 5.5 and above or GPT-6 Astra and above**, including delegated binary analysis and matching experiments. This is the skill author's requirement, not a maintainer policy or a claim of proven model quality. Verify the actual configured model from available session metadata. A generic Codex/Claude/GPT label, another model family with a larger number, or an assumed equivalent is insufficient. Only verified successors in the specified lines qualify. If eligibility cannot be established, ask the user to select an eligible model before decompilation; do not pretend a switch occurred. Documentation/setup work can proceed independently. Do not spawn additional agents merely because this skill is loaded.

For a new contributor or uncertain inputs, read [setup-and-first-task.md](references/setup-and-first-task.md). Validate the exact target executable, companion DLLs, and toolchain before interpreting match results. The default target is BW1W120. Keep each version's validated references separate from a gameplay installation.

For cross-version checks or backports, read [version-checks.md](references/version-checks.md). Each version needs its own evidence. A baseline containing earlier PR changes cannot establish that a failure exists on clean upstream.

Inspect the [game progress dashboard](https://decomp.dev/openblack/bw1-decomp?category=game) and [open PRs](https://github.com/openblack/bw1-decomp/pulls), including changed files and shared declarations. Recheck overlap before submission. No open PR does not prove nobody has unpublished work. Respect the user's selected task; if it overlaps or needs an unresolved shared model, explain the concrete issue and propose coordination or a tractable scope. Do not contact contributors without authorization.

## Evidence before commitment

**Never substitute a guess for evidence.** Hypotheses are useful investigation tools, but must remain provisional until tested. An existing header, Windows mangling, decompiler label, or previous agent explanation may itself be a guess. Two tools repeating that same assumption are not independent confirmation.

Before relying on a consequential signature, field type, layout, enum, owner, or behavior, keep a short record outside the repository:

`claim -> original evidence -> contradictions checked -> predicted experiment -> observed result -> uncertainty`

Identify the binary version and address/symbol, relevant callers or consumers, and the actual compiler experiment. Separate surviving original names from descriptive reconstructed names. A strict match proves code generation under that comparison; it does not uniquely prove the original source model or every semantic claim.

Actively seek evidence contradicting earlier guesses. Follow callers, constructors, serialization, related types, shared headers, and other versions when they answer a specific question. A narrow PR does not require narrow investigation. Reading neighboring code does not automatically put edits to it in scope. If a model fails to explain a caller, reconsider the weakest assumption before reshaping stronger evidence around it.

Names and expressions also make claims. Units, maximums, ownership, lifetimes, and timeouts require evidence. Inspect complete API uses: selectors, flags, modes, consumers, and whether a written field is effective on that path. Do not infer units from a convenient factorization of an integer. Use a domain expression when established; otherwise preserve the value under a conservative, supported role name. Do not change original behavior to make a chosen explanation true.

Read [evidence-and-review-lessons.md](references/evidence-and-review-lessons.md) for signature, ownership, helper, and semantic pitfalls, with traceable reviewer sources.

## Work in a controlled loop

1. Preserve existing work, run the required pre-edit baseline, and capture a strict snapshot of the active unit. Record whether the baseline includes existing changes. Never overwrite the original baseline with the final result.
2. Recover ownership, signatures, types, and relevant inline helpers from original evidence. Preserve behavior, including apparent original bugs. Keep useful partial progress when stronger claims remain unsupported.
3. Read the whole assembly diff and identify the difference the next experiment should explain. Classify real source differences, inline-budget changes, x87 operand ordering, integer scheduling, symbol-numbering effects, or relocation/layout problems using current repository guidance. Demonstrate that a proposed knob affects the mismatch before sweeping it. Bound inconclusive experiments; do not manufacture declarations, padding, or library defines to force a score.
4. Build only the active object's exact Ninja target from `objdiff.json` during iteration. Do not lowercase targets on Windows, touch files to force builds, or run concurrent Ninja builds in one build directory. Reserve full verification for a coherent batch.
5. Before readability cleanup, snapshot compiled output. Name and type every placeholder used by the recovered code. Use enum members, established defines, and size/count expressions for non-trivial values. Full-register flags use `bool32_t` and `true`/`false`; enum and Boolean arguments use their actual types. Counts stay counts. Remove TODO and investigation comments; keep required address and measured IL-size annotations. Follow current whole-file formatting and C++ dialect requirements. Do not modify or format vendored `src/zlib`, `src/jpeg`, or `src/mpg123`.
6. Verify cleanup against its snapshot and perform the complete consumer/version audit in [verification-and-publication.md](references/verification-and-publication.md). Never remove an already-matching version to conceal a regression. Leave unresolved code nonmatching and raise a focused human decision supported by evidence when needed.

Load advanced documentation only for the observed problem; [learning-resources.md](references/learning-resources.md) maps questions to primary sources. Do not make a beginner read a compiler manual before contributing.

## Finish with two independent reviews

**Code generation:** check exact inputs, compiler/configuration, revision, comparison mode, relocations, sections, source-linking status, affected consumers, versions, and regressions.

**Semantic claims:** challenge new meanings and names against original evidence, check contradictory uses, distinguish original spelling from reconstruction, and state unresolved uncertainty.

If either review finds an unsupported claim, fix the pending contribution and recheck it. Writing a lesson for the future does not fix misleading source or prose today. Prefer the clearest supported source when multiple forms match; do not claim unique recovery.

Explain what changed, why the evidence supports it, how it was checked, and what remains uncertain. Use a coherent review scope, usually one TU plus necessary declarations/configuration. Partial function progress can be useful but must not be called a matched TU.

Before committing for publication and again before publishing/updating, apply the privacy and PR checks in [verification-and-publication.md](references/verification-and-publication.md). Keep PR titles/descriptions accurate after corrections, rebases, scope changes, and new results. Correct the primary summary, not only a later reply. Do not present old checks as proof of the current revision.

Loading this skill does not authorize committing, pushing, opening PRs, or messaging others. Follow the user's actual authorization, including any local-only or preview-first requirement. A draft PR still needs useful evidence and honest limitations; it is not a substitute for investigating an unsupported patch.
