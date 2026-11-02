# Evidence and reviewer lessons

These are a dated synthesis of public discussion, not new repository policy. Research on 2026-10-29 collected 554 PRs, 759 submitted review records, 1,038 inline comments, and 747 conversation comments. The synthesis examined human feedback, including relevant author replies; it was not a fresh code audit of every PR or a replay of historical CI. Nine merged diffs were sampled for conventions. Counts describe that snapshot, not today's repository.

Maintainer statements, contributor investigation reports, and inferred practices have different weight. A merge does not endorse every line or prove a stated theory. Deleted comments, unpublished reviews, and unrecorded reasons for acceptance are not recoverable from this evidence. Use current repository instructions where historical advice differs.

## Decisions that repeatedly needed correction

| Pitfall | Evidence-driven response | Source |
| --- | --- | --- |
| Giving a number a macro name without understanding it | Recover the enum/count/flag model; do not conceal an unexplained offset behind a definition. | [#425 review](https://github.com/openblack/bw1-decomp/pull/425#pullrequestreview-5483652512) |
| Treating a reconstructed Windows declaration as independent type proof | Check original symbols, RTTI, machine code, and callers; distinguish return-type evidence from parameter mangling. | [#432 discussion](https://github.com/openblack/bw1-decomp/pull/432#discussion_r4242426652), [#493 author investigation](https://github.com/openblack/bw1-decomp/pull/493#issuecomment-6168074448) |
| Flattening post-inlining pseudocode into callers | Search for original point/container/assignment helpers and their proper owners before reproducing expanded operations. | [#525 review](https://github.com/openblack/bw1-decomp/pull/525#pullrequestreview-5549455683) |
| Moving unrelated methods into whichever object retained them | Check COMDAT ownership and deduplication. The retained copy does not identify original source ownership. | [#320 review](https://github.com/openblack/bw1-decomp/pull/320#pullrequestreview-5260564763) |
| Fixing only a highlighted Boolean, placeholder, or literal | Apply the relevant principle across touched code, with correct types and codegen verification. | [#514 checklist](https://github.com/openblack/bw1-decomp/pull/514#pullrequestreview-5553896506) |
| Calling partial function progress a matched TU | Verify the configuration/linking status. NonMatching replacement code is not linked by a normal matching build. | [#485 discussion](https://github.com/openblack/bw1-decomp/pull/485#issuecomment-6153403820) |
| Testing only the edited unit after a header change | Rebuild affected consumers and versions; snapshot before cleanup to detect losses within the PR itself. | [#432 author report](https://github.com/openblack/bw1-decomp/pull/432#issuecomment-6110393890) |
| Asking a reviewer to resolve routine recoverable facts | Inspect the available Mac body and signature first; bring only a concrete unresolved decision. | [#496 discussion](https://github.com/openblack/bw1-decomp/pull/496#issuecomment-6174252751) |
| Bundling architectural speculation or unrelated work | Keep a coherent contribution and separate unsupported shared changes. | [#567 review](https://github.com/openblack/bw1-decomp/pull/567#pullrequestreview-5589898196) |
| Fixing an original bug during matching | Preserve observed behavior; separate a future behavior change from reconstruction. | [#411 discussion](https://github.com/openblack/bw1-decomp/pull/411#issuecomment-6131926535) |
| Generating a reply for every routine review item | Apply the correction and consolidate the recap when authorized; ask substantive questions at their relevant evidence. | [#574 discussion](https://github.com/openblack/bw1-decomp/pull/574#issuecomment-6424603022) |

Historical preferences are not uniform. [#574's review](https://github.com/openblack/bw1-decomp/pull/574#pullrequestreview-5643138094) also warns against unhelpful constant names. Follow current magic-value rules while recovering meaning, rather than mechanically naming every numeral. [#591](https://github.com/openblack/bw1-decomp/pull/591#issuecomment-6449326226) documents accepted partial function progress in a NonMatching unit; that does not authorize claiming a complete TU or bypassing today's verification requirements.

## Trace a claim back to original evidence

Mac symbols can establish surviving names and parameter types, but may omit a return type; caller register use and the target body must supply missing evidence. Typedef spelling may not survive mangling. Windows RTTI can establish type identity. Neither a guessed Windows symbol nor pseudocode improved by applying that guess independently confirms it.

An existing field type, enum boundary, or helper body is a hypothesis if its provenance is unknown. Search relevant writers and readers, signed/unsigned operations, allocation size, lifetime, virtual dispatch, and serialization as needed. Use every relevant observed caller; a favorable example alone is insufficient. Match evidence must identify the same version and revision as the claim.

Names can overstate the evidence even when code generation is exact. A value stored in an API parameter block is not necessarily consumed: inspect selecting flags and modes. A proposed name asserting a duration or upper bound needs evidence of units and effective behavior, not just a write or arithmetic identity. When a descriptive name is justified, distinguish its meaning from a claim that its original spelling survived.

If contradictory evidence remains, record precisely what conflicts. Do not make a shared declaration fit a fabricated caller. Investigate the weaker premise, narrow the implementation, or present the unresolved decision to a human with reproducing evidence.

## Conventions observed in merged work

The sample included [#493](https://github.com/openblack/bw1-decomp/pull/493), [#525](https://github.com/openblack/bw1-decomp/pull/525), [#558](https://github.com/openblack/bw1-decomp/pull/558), [#569](https://github.com/openblack/bw1-decomp/pull/569), [#583](https://github.com/openblack/bw1-decomp/pull/583), [#587](https://github.com/openblack/bw1-decomp/pull/587), [#590](https://github.com/openblack/bw1-decomp/pull/590), [#596](https://github.com/openblack/bw1-decomp/pull/596), and [#597](https://github.com/openblack/bw1-decomp/pull/597). Their reported historical checks were not rerun for this synthesis.

- Names distinguish roles and evidenced units; no universal Boolean prefix follows from this.
- Logical grouping aids readability, but member/vtable order describes layout and include/static-definition order can affect output. Do not alphabetize declarations or impose own-header-first ordering as cleanup.
- Correct types and helper recovery can eliminate artificial padding or compiler workarounds. That is a reason to investigate existing workarounds, not remove them speculatively.
- Verification follows consumers and versions, not the number of edited files. No evidence establishes a mandatory new conventional unit-test file per recovered function.
- Unfavorable results need explanation and comparison controls. A historical accepted residual is not permission to ignore a new regression.

Current naming rules specify `snake_case` parameters, `camelCase` locals, `PascalCase` members/classes, and prefixed `SCREAMING_SNAKE_CASE` enums. These are explicit instructions, not discoveries of an unwritten rule. Preserve evidenced original names and follow the current formatter. Legacy placeholders/comments in a merged diff are not a style template.
