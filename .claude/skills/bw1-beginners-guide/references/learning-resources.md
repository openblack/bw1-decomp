# Learn only what the current question needs

Use the repository's pinned tools and measured compiler notes first. Teach concepts beside the actual evidence instead of assigning an exhaustive reading list. Resource availability does not require installing another reverse-engineering environment.

| Current question | Resource | Limit of the evidence |
| --- | --- | --- |
| Where are inputs, symbols, and split boundaries? | Current checkout: `docs/getting_started.md`, `docs/dependencies.md`, `docs/symbols.md`, `docs/splits.md`, `docs/transformations.md` | Trace the actual version and pipeline stage; do not copy old hashes blindly. |
| Why does an object contain another class's inline? | `docs/msvc6_comdat.md`, `tools/comdat-scan.py` | Retention by the linker is not original source ownership. |
| Why did a helper inline on only one side? | `docs/msvc6_inliner.md` and available inline-budget procedures | Measure budget/body effects; do not assume optimization flags are wrong. |
| Why are the same instructions ordered differently? | `docs/msvc6_scheduler.md`, `docs/msvc6_passes.md`, related compiler probes | Separate integer scheduling, x87 ties, and symbol numbering; follow bounded-search guidance. |
| How do I navigate callers and cross-references? | [Official Ghidra beginner course](https://ghidra.re/ghidra_docs/GhidraClass/Beginner/Introduction_to_Ghidra_Student_Guide.html) | Decompiler output depends on supplied types/signatures; applying a guess can propagate it. |
| What do stack cleanup and the this pointer mean? | [Microsoft x86 conventions](https://learn.microsoft.com/en-us/cpp/cpp/argument-passing-and-naming-conventions?view=msvc-170), [thiscall](https://learn.microsoft.com/en-us/cpp/cpp/thiscall?view=msvc-170) | Modern documentation supplies ABI vocabulary, not proof of MSVC6 optimizer choices. |
| How does object comparison work? | [objdiff](https://github.com/encounter/objdiff), local `tools/decomp-diff.py --help` | A rounded score is weaker than exact evidence with the right relocation settings. |
| What does this IA-32/x87 instruction do? | [Intel manuals](https://www.intel.com/content/www/us/en/developer/articles/technical/intel-sdm.html), Volume 2 | Instruction semantics do not uniquely determine source or compiler scheduling. |
| What is this section/relocation/COMDAT? | [Microsoft PE/COFF specification](https://learn.microsoft.com/en-us/windows/win32/debug/pe-format) | Distinguish file offsets, RVAs, and virtual addresses; verify project-specific linker behavior. |
| How can behavior be compared? | `docs/differential_testing.md` and existing suitable harnesses | Test coverage, mocked callees, and emulator assumptions limit conclusions. No new harness is required for every trivial edit. |
| What does this game concept mean? | [openblack](https://github.com/openblack/openblack) and relevant reviewer discussions | A modern reimplementation suggests leads; it is not Lionhead's original source or ABI evidence. |

Repository documentation is available in [the docs directory](https://github.com/openblack/bw1-decomp/tree/main/docs). Read only the files needed for the current uncertainty, and preserve their distinctions between measured facts and inference.
