# Black & White 1 Decompilation

Structure, conventions, workflows of repo, for AI agents.

Matching decompilation of **Black & White 1** (PE/COFF, MSVC 6.0 SP5), use PPC Mac symbols to name classes and methods. Goal: C++ source compile with original compilers to byte-identical object files. Main version `BW1W120`.

### Mindset

Work = get into original devs' heads using only evidence: binary, linker map, debug strings, compiler behavior. Doubt every assumption (names, structure, control flow, whether function "looks right"). Commit only when evidence overwhelming.

Tough choice, weak evidence: **leave code nonmatching, move on**. New evidence often appear later (neighbor function, other TU, debug string). Wrong commitment harder to undo than nonmatching function. Forcing 100% usually yield fakematches and debt.

Defer truly hard calls (ambiguous structure, naming disputes, architecture) to humans via PR description or investigation notes (see [Comments](#comments--annotations-in-the-code)), never source comments. Do not refuse complicated tasks because of them. Goal = **human-readable, modifiable source**, not just matching binary.

Odd code that matches not a question: "If it matches it matches" (#486). Raise only decisions evidence cannot settle.

Before trying another source variant, identify assembly difference it should explain. If experiments only shuffle registers or move mismatches elsewhere, keep clearest supported implementation, document unresolved cause.

Two source shapes give byte-identical code (e.g. `values[age]` vs `values[age - 1]` with different member order) → pick more readable form, note ambiguity.

Experiment discipline, learned expensive way:

- **Classify difference before experimenting**, after reading whole diff (integer stores not x87 tie-break). Each class own procedure:
  - helper inlined one side only: inline-budget problem;
  - same x87 operations, different operand order inside inlined bodies: tie-break;
  - same integer instructions, different order around x87 chain: scheduling (`tools/c2-sched-log.py`, [`docs/msvc6_scheduler.md`](docs/msvc6_scheduler.md));
  - registers or store order move when unrelated declarations added to header: symbol-numbering tie-break (see [Inline expansion](#inline-expansion));
  - anything else: real source difference.
- **Prove knob moves output before sweeping it.**
- **Rank assumptions by evidence.** Mac bodies and signatures, target call sets across all units, outrank guessed shapes of fabricated or hand-expanded functions. Model can't fit every caller → doubt weakest-evidence caller before rewriting shared headers.
- **Bound search, escalate early.** Residual = x87 operand-order tie-break → stop, ask human whether accept fakematch. Reverse-engineering tie-break rule not paid off.
- **Regression not version divergence.** Change stops linked unit matching in one version (hash fails after header, PCH or merge change) → never first propose dropping version from `MatchingFor(...)`: unlinks matched code, hides regression. Find breaking change, classify difference, fix in source or headers. Fail → take evidence to human. Remove version only with human approval, record in PR.

## Repository Layout

- `configure.py` — project configuration and generator script.
- `config/[VERSION]` — per-version configs (`BW1W100`, `BW1W110`, `BW1W120`, `BW1W130`, `BW1WCI`, `BW1M119`, `BW1MCI119`). Mac configs (`BW1M*`) hold only symbols, reference for names and signatures; nothing built from them.
    - `config.yml` — decomp-toolkit project config
    - `symbols.txt` — every symbol with address, size, name etc.
    - `splits.txt` — per-TU section address ranges
    - `build.sha1` — SHA-1 of each built artifact, for final verification
- `src/` source, `include/` headers (classes, inlines), `tools/` scripts, `docs/` reverse-engineering notes; `build/` and `orig/[VERSION]` (original game files) gitignored. `dtk` (`build/tools/dtk`) splits binary, rarely need meddling.

Keep investigation records and task handoffs in own notes folder outside repo, not in `docs/`.

## Build & Diff Workflow

On Windows, native tool names use `.exe` (omitted below). Preserve Ninja target spelling exactly (case, separators), even on Windows; normalize paths only for filesystem comparisons.

`ninja` in repo root builds and reports overall progress.

### Baselines and final verification

Run `ninja baseline` **before editing**, keep throughout. Worktree already has changes → record whether baseline includes them (to baseline clean branch, stash changes first, restore after). For actively investigated units also capture rich snapshot, since ordinary reports lack historical layouts and strict relocation evidence:

```
ninja baseline
python tools/decomp-regress.py --unit Game --strict --snapshot build/BW1W120/Game-before.json
```

At completion, verify affected sources and header consumers, build, refresh report, run `ninja changes_all`. `decomp-verify.py` automates whole-file formatting checks, original compiler replay, full build/hash checks, report refresh, regression analysis. Default read-only plan; `--run` and existing baseline required to execute.

```
python tools/decomp-verify.py --since main --list
python tools/decomp-verify.py --since main --run --baseline build/BW1W120/baseline.json
ninja changes_all
```

`--changed` selects worktree edits, `--unit Game` one unit; after shared header changes use changed/since to cover consumers. `--compile-only` skips full pipeline.

**Inspect sections as well as functions.** `changes_all` hides some section changes; use `decomp-regress.py` for full audit. Negative `.bss` byte count may be real storage change, include introducing TU-local static, or fuzzy-score change from splitting anonymous target range into named symbols. Determine which; never add padding or undo symbol recovery to restore percentage.

Ninja not always refresh report after extracted objects change. To refresh and audit without rebuilding (reads existing objects, does not prove sources rebuilt):

```
python tools/decomp-regress.py --refresh --fail-on-regression
```

For readability pass that must not change codegen (renames, constants, comment removal, formatting), snapshot before editing, compare after:

```
python tools/codegen-check.py snapshot tidy --changed     # or --source <file> (repeatable)
python tools/codegen-check.py compare tidy                # add --ignore-comdat-order for NonMatching consumers
```

Recompiles with exact Ninja commands into `build/codegen-check/`, ignores compiler-numbered labels. For one unit, `tools/c2-il.py compare --source <file> --file <variant>` compares IL front end hands to `c2.dll`: identical (no object can change), same code (only section or COMDAT order can move) or different (see [`docs/msvc6_passes.md`](docs/msvc6_passes.md)). COMDAT/RTTI section order reacts to unrelated header contents and even source path, so order-only difference matters only for linked units, which executable hashes check.

PR requirements: **show it matching** (objdiff 100% and CI report), not assert; comment-only, analysis-only or "proposed" changes not enough, macro or abstraction must be shown working and matching. Run `clang-format` 22 on every touched file, rebase onto latest `main` (CI runs `check-format`, expects report to show claimed improvement). Rebuild `main` baseline after `main` moves, else merged upstream work shows as false regressions. Verify readability passes with `tools/codegen-check.py snapshot`/`compare`, not `decomp-regress` against `main` baseline, which cannot see drop in function PR itself adds (0% in baseline); `(status & F) == F` and `status & F` compile differently. `tools/review-lint.py` lists added lines that often draw reviewer comments; every hit needs judgement.

### Game versions

CI builds BW1W100, BW1W110, BW1W120, BW1W130, BW1WCI, including DLL units; only BW1W120 configured locally by default. Layouts differ between versions (e.g. `LHNetUser`): guard version-specific `static_assert`s and members with version macros, compile touched units with each version's `/DBUILD_VERSION=<n> /DVERSION_<ver>` before pushing. BW1W130 shares 1.20 layouts: guard with `#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)`.

BW1W130 ported from BW1W120 by `tools/port_version.py`, built from `D:\Work\Games\dd\Black\` not `C:\dev\MP\Black\`, with some changed code and layouts and stale bytes in some function padding. Unit matched for 1.20 not automatically matched for 1.30: list versions it really matches in inclusive `MatchingFor(...)`, keep version out of list rather than change source for it. That for code that really differs in that version's binary, not unit that matched there before your change (see [Mindset](#mindset)). Matching new unit → check BW1W130 and BW1WCI before using plain `Matching`.

BW1WCI (Creature Isle) ported from BW1W120 same way (see [`docs/porting_versions.md`](docs/porting_versions.md)), further from 1.20: list in `MatchingFor(...)` only where unit links byte-identical there. CI compiles every source for it with `/DBUILD_VERSION=4 /DVERSION_BW1WCI`. Its `GGame`, `GPlayer`, `Town` layouts not modeled, so layout check true for 1.00 and 1.10 names those (`#elif defined(VERSION_BW1W100) || defined(VERSION_BW1W110)`) instead of bare `#else`; size known for Creature Isle gets own branch (`GAudio` is 0x3fc). `config/BW1WCI/` generated by `port_version.py` when 1.20 splits or names improve, plus hand fixes for what 1.20 lacks (libjpeg decoder units): re-apply after regenerating.

User typically has **objdiff** open; compares our compiled `.o` against original extracted from `runblack-decrypted`, **recompiles automatically** on source changes. Do not `touch` files or force Ninja rebuilds when it reports "no work to do". Does not replace final header-consumer verification through `decomp-verify.py`.

### Fast per-iteration loop (agents)

Iterating on one translation unit → do **not** run bare `ninja` per edit: recompiles graph, relinks executable, regenerates whole report, dominates runtime over many guess-and-check cycles. Build only unit's object, the `base_path` in `objdiff.json` (what `decomp-diff.py` reads):

```
# inner loop (edit -> build one .o -> diff), ~1-2s per cycle:
ninja build/BW1W120/src/Lionhead/LHLib/ver5.0/LHHeap2.o
python tools/decomp-diff.py --source src/Lionhead/LHLib/ver5.0/LHHeap2.cpp -d "Heap::New(int)"
```

Reserve full verification for completed batch. Do not regenerate pre-edit baseline at end.

### Using `decomp-diff.py` (agent-friendly CLI diffing)

`tools/decomp-diff.py` wraps `objdiff-cli` for agents. Select unit with `--source src/Black/Abode.cpp`, exact unit name from `objdiff.json`, or unique basename (`--unit Abode`); never hardcode executable prefixes.

Overview (`python tools/decomp-diff.py --unit Abode`) lists STATUS (match/nonmatching/missing/extra), MATCH %, SIZE, SECTION, demangled NAME. Filters (combinable): `-s nonmatching|match|missing|extra` (missing = target only, extra = ours only), `-t function|object`, `--section .text`, `--search "init"` (substring), `--exact`/`--regex`, `--sections` (section sizes and scores, including `.bss`), `--strict` (compare all relocation identities and addends; default `data_value`). Example: `python tools/decomp-diff.py --unit Abode -s nonmatching -t function --section .text`

Diff (`python tools/decomp-diff.py --unit Abode -d "Fixed::CanBeSetOnFire"`): `-d` selects symbol by substring; ambiguity is error (use `--exact`, or `--regex` for batch). Target assembly **LEFT** column, ours **RIGHT**. Row markers: ` ` match, `~` same opcode with differing operands (in `{braces}`), `|` different opcode, `>` only in our build, `<` only in target. Relocation addends explicit (e.g. `PacketTimeHistory+0x28`). Runs of matching instructions collapse to `... 10 matching instructions ...` by default, good for finding hotspots; `--no-collapse` prints all, for mapping source lines to instructions. Also `-C 5` (context lines, default 3) and `--range 100-300` (hex offsets).

### Interpreting matches and relocations

State comparison mode and source-linking status when reporting results:

- **Report match:** under settings used to generate report.
- **Strict object match:** includes relocation identities and addends (`--strict`).
- **Resolved-byte match:** relocations mapped back to original addresses produce identical bytes.

Rounded `100.0%` not proof of exactness, and successful executable hashes do not prove `NonMatching` source replacement was linked.

`decomp-relocs.py` inspects relocation-boundary ambiguity, verifies resolved bytes (i386 COFF/PE32) without applying overrides:

```
python tools/decomp-relocs.py --unit Game --address 0054CE1E --symbol ProcessNetworkPackets --original orig/BW1W120/runblack-decrypted.exe --verify
```

objdiff "extra" functions of other classes usually COMDAT copies (inline functions, vftables, `??_G`) that image keeps in earlier unit; see [`docs/msvc6_comdat.md`](docs/msvc6_comdat.md) and `tools/comdat-scan.py where --unit X`. Keep them inline in headers.

### Parallel work

Parallel agents requested → give each independent investigation explicit file ownership; serialize integration, config edits, builds sharing a TU. Handoffs list changed files, evidence, verification results, remaining mismatches, and whether source, objects, reports describe same revision.

Concurrent Ninja runs in one build directory race on shared objects and logs. Workers build only own objects (compile command from `ninja -t compdb cl`, or `codegen-check.py`), never run bare `ninja`, never edit `config/`; one coordinator applies symbol, split, config requests and re-splits between waves.

#### Using every core for long verifications

Full build of one version saturates cores only while compiling. Run independent builds side by side (e.g. `main` against branch, or five versions of one revision) in separate `git worktree` checkouts, use `tools/tiebreak-probe.py --variants FILE -j <cores>` or `tools/variant-sweep.py` for sweeps over one unit instead of looping single-object rebuilds. Setup details (symlinks, backdated timestamps, per-checkout version lists) in [`docs/parallel_builds.md`](docs/parallel_builds.md).

## Source Organization

Each `.o` maps 1:1 to a `.cpp`, listed in `configure.py` under `config.libs`, with status:

- `Matching` — byte-identical output; linked into final executable (`runblack.exe`).
- `NonMatching` — work in progress; not linked.
- `Equivalent` — functionally equivalent, not byte-identical; linked only with `--non-matching`.

TU **matched** only when `configure.py` entry is `Matching`; matching functions inside `NonMatching` unit = progress, not matched TU (not linked until flipped). PR that *matches a TU* includes the flip. **One TU per PR**: broad PRs over many units get tabled (#484); prefer taking one TU to `Matching` over partial progress across many, wait for open PR touching same headers to land first.

### Directory structure mirrors game libraries

Game ships as `runblack.exe` plus few runtime DLLs. Remaining `LH*` directories, `zlib`, `jpeg` = static libraries linked into executable. `src/zlib`, `src/jpeg`, `src/mpg123` = unmodified upstream releases: never edit, format, lint them.

| Directory | Module |
|-----------|--------|
| `src/Black/` | `runblack.exe`: the game itself, bulk of codebase |
| `src/Lionhead/LH3DLib` | static lib: 3D rendering (terrain, meshes, camera, text, effects) |
| `src/Lionhead/LHAudio` | `LHAudioDLLR` (DLL): audio engine |
| `src/Lionhead/LHDialogLib` | `LHDialogLib` (DLL): Win32/MFC dialogs |
| `src/Lionhead/LHDLL` | static lib: DLL loading helper |
| `src/Lionhead/LHFile` | static lib: file I/O, text parsing |
| `src/Lionhead/LHLib` | static lib: core utilities (heaps, screen, mouse, collision, scripting, OS access) |
| `src/Lionhead/LHLog` | `LHLogR` (DLL): logging, assertions, version reporting |
| `src/Lionhead/LHMultiplayer` | `LHMultiplayerR` (DLL): sockets, packets, lobby, players |
| `src/zlib` | static lib: zlib |
| `src/jpeg` | static lib: IJG libjpeg 6b. Executable links compression side for `LHJpeg`'s screenshots; Creature Isle's links decoder too. `jconfig.h` is `jconfig.vc`, copied into build include directory as `install.doc` directs. |
| `src/mpg123` | reference: mpg123 0.59k (Michael Hipp). LHAudio's `MPGAudioDecoder` is Lionhead's C++ port, includes its `huffman.h` and `tables.h`. |

Mac build put Lionhead libraries in separate module, `LHCombined Release`; class whose BW1M119 symbols carry that tag belongs to library: header and source go under `src/Lionhead/` (usually `LH3DLib/development/`), never `src/Black/`. Game-side headers include it by full path (`<Lionhead/LH3DLib/development/...>`).

## Key Data Files

### `config/BW1W120/symbols.txt`

Every symbol in binary:
```
mangled_name = .section:0xADDRESS; // type:function size:0xSIZE scope:global align:4
```

Scope `global`, `local` (static) or `weak` (inline/header-defined).

dtk rewrites this file when splitting, de-duplicates function **and data** names per module: lowest address keeps repeated name, every other copy becomes `fn_0x…` or `data_0x…`. Name per-TU static (`_$E` initializer pairs, header-defined file statics) in one TU only, or new name silently steals already-paired one. Other recurring fixes:

- dtk `lbl_` inside function, or jump table after its code, splits function in objdiff: delete labels, extend size over table (not padding).
- Renaming delay-load import slot to `__imp__Name@N` drops its base relocation, breaks DLL hash; restore with `add_relocations` entry pointing slot at its `__imp_load_*` thunk. EH functions need `__except_list` entries same way.
- `add_relocations` and other `config.yml` changes take effect only after `python configure.py`.

### `config/BW1W120/splits.txt`

Maps each source file to section address ranges for dtk's per-TU split.

## Code Conventions

### Naming

- **Use original names wherever possible.** Mac symbols map to Windows methods 90%+ of time.
- Function arguments: `snake_case` (`food_amount`, `max_dist`). Locals: `camelCase` (`abodeType`). Matching function must not keep `param_N` placeholders: name each from role, demangled Mac symbol or call sites, following base-class convention (`ToBeDeleted(bool32_t delete_now)`, `PhysicsEditorCreate(int type)`). Keep `param_N` or Hex-Rays `fVarN` only where signature genuinely unknown, even then prefer closest evidence-based name.
- Classes `PascalCase` (`Abode`, `MapCoords`); methods `PascalCase` (`ArriveHome()`, `CalcRandomPos()`).
- Enums: type name `SCREAMING_SNAKE_CASE`, enumerators prefixed with it (`TOWN_STATUS` → `TOWN_STATUS_DEFAULT`).
- Members: `PascalCase`, no prefix (`AttachedThing`, `XOffset`). Real Lionhead headers never use `snake_case`/`camelCase`/`m_`; true name unknown → pick readable `PascalCase` one.
- Members code does not use, or only saves and loads, keep placeholders encoding hex offset (`field_0x7c`). Name anything used in significant way (field, function, enum value, flag, parameter) by role, found from what sets and reads it; fields only saved/loaded, never read, may stay `field_0x…`, but say so in PR. New code that reads `field_0x…`, `param_N` or offset-named member (`Material0x58`) renames it in same PR (#494). Address- or offset-suffixed name (`GetDistanceInMetres_0074cd50`) not a name (#501).
- Record evidence or uncertainty about name or provisional ownership in PR description, not source comments. No blanket comments such as "Descriptive member names".

### Comments & annotations in the code

Source must read as if Lionhead programmer wrote it. Only comments:

- Address comments in form under [Signatures](#signatures-function-boundaries-and-layouts), above declarations in headers. `.cpp` files carry no comments above definitions; function with no header (file static, callback) keeps address comment on forward declaration in `.cpp`.
- `// Inliner IL size: N` above inline helper's address comment: exact IL size from `tools/inline-budget.py size` (`<= 40` means never charged). Update whenever body changes.
- Empty trailing `//` after each entry of initializer table, keep clang-format at one entry per line (#506).
- Comments Lionhead programmer could plausibly have written; prefer none.

Do not commit decompilation commentary: TODOs, "fabricated", match percentages, register/scheduling/inliner notes, name evidence, Mac/IDA references, layout prose, or dividers such as `// Static methods`. Match percentage is the TODO. Keep such analysis in notes folder or PR description. `#pragma dont_inline on/off` is code, not commentary, stays where matching needs it.

### Style

- Formatting follows `.clang-format` (Microsoft-based, 120 columns, tabs for indentation, spaces for alignment). CI checks with **clang-format 22**; other majors wrap some expressions differently (`pip install "clang-format>=22,<23"`). Apply whole-file clang-format to touched C++ files before final verification and commits.
- Pre-C++11 (`Standard: c++03`, MSVC 6.0): no `auto`, range-for, lambdas, `nullptr` (use `NULL` or `0`).
- Header guards: `#ifndef BW1_DECOMP_<NAME>_INCLUDED_H` / `#define` / `#endif` (e.g. `BW1_DECOMP_ABODE_INCLUDED_H`).
- Use windef.h's `min`/`max` where original did. `tools/minmax-scan.py --verify --apply <file>` finds hand-expanded selects and clamps, keeps only rewrites that compile byte-identical (`minmax-macros` skill).
- No magic numbers: name sizes, counts, lengths, ports, timeouts, ids, flags. Value belonging to real enum is enumerator (`TRIBE_TYPE_LAST`, not separate constant). Any other standalone constant is `#define` in owning header, never anonymous `enum` or new static data. One-off char array length (`char name[150]`) is just literal, no `*_LENGTH`/`*_SIZE` define; where size needed again use `sizeof`. Use existing enums and Win32 names (`INFINITE`, `WAIT_FAILED`, `THREAD_PRIORITY_*`), `sizeof`/`ARRAY_SIZE` for repeated sizes, hex for colours, base 10 for line numbers.
- Model values, don't relocate them: `#define X (Y + 4)` still magic number. Work out what value *is* (enum count, slot in table with known entries, flag), model that, start enum from known entries (e.g. belief `Attributes[]` slots named from functions that fill them). Never reuse `chlasm` name that only coincidentally has same value. Related values for one property (`LIVING_LOOK_AT_SPEED_SLOW`/`_NORMAL`/`_FAST`) = named enum in owning header, not run of `#define`s (#501); new named enums go in owning class's header, standalone counts/sizes are `#define`s there (no anonymous enums). `include/chlasm/*.h` comes from Creature Isle but usable for Black & White; where last enumerator too large, needs `#ifdef VERSION_BW1WCI` guards.
- Full-register true/false values are `bool32_t` (returns, members, parameters, template helpers like `LHLinkedList::Add`) with `true`/`false`, not `TRUE`/`FALSE`/`1`/`0`. It is `int`, so manglings do not change. Wide strings are `wchar_t`, not `char16_t` or `unsigned short`. `unsigned long` (`K`) and `uint32_t` (`I`) mangle differently: never swap in signatures. Prefer `[u]intN_t` over `unsigned long`/`unsigned char`/`unsigned short` wherever size, signedness, mangling unchanged (plain `int` fine), never `uint16_t` for wide characters. Typedefs and `#define`d types do not survive mangling: `BOOL` and `int` mangle identically, game likely used `BOOL`, so Mac `int` may be `BOOL`/`bool32_t` in source. Pick spelling that reads best, matches surrounding code, confirm codegen unchanged.
- Declare each value as what it holds, compare in that type's terms. Flag is `bool32_t`, tested directly or against `true`/`false`, never `0`/`1`. Pointer is pointer type compared with `NULL`, never `uint32_t` cast back. Enum value has enum type, compared with enumerators. Cast inside comparison (`(uint8_t)GetTopState() != …`, `(uint32_t)NumAdults > …`) usually hides wrong declaration: fix field, return or parameter type, keep cast only when codegen needs it. Naming `field_0x…` member includes giving right type.
- Never use `__FILE__`, `__LINE__` or `#line`. For debug-new and logging calls define TU-local `#define FILEPATH "C:\\dev\\MP\\..."` holding binary's exact string, pass base-10 line literal. Path naming `.h` means call inlined from that header: define inline there with header's own path macro and line (both version-guarded, e.g. `GatheringInterface.h`), never as per-TU override of full path. Name's capitalisation comes from including unit's `#include` spelling: unit whose string reads `gatheringinterface.h` writes `#include "gatheringinterface.h"` and defines only header's include-name macro before it.
- Boilerplate recurring identically across modules = shared macro (e.g. `LH_VERSION_INFO` in `LHLog/ver4.0/LHVersion.h`).
- Shifts and masks in decompiler output usually how byte or field access compiled (`shr eax, 16; and eax, 0xff` prints as `(x >> 16) & 0xff`). Reconstruct what programmer wrote, keep when opcodes match: best existing macro used as intended (SDK's colour or flag macros), else struct member, union field or accessor Mac symbols show. Never copy decompiler's shifts and masks or name shift counts with `*_SHIFT` defines; keep literal shift only where code really shifts value (e.g. fixed-point scale).
- Parentheses around product stop cl folding constants: `(x * 3) / 4` emits `fmul 3.0; fmul 0.25`, while `x * 3 / 4` folds to `fmul 0.75`.
- We narrow flag helper's `& mask` to `test byte ptr` but target keeps `mov; and; test` → AND result flows into join at caller: `uint32_t type = i < n - 1 ? GetKeyPointType(i) : GESTURE_KEY_POINT_TYPE_END;`.
- Use inline accessors such as `LHCoordF::X()`/`Y()`/`Set()` where Mac build has them, not direct field access; float results add IL nodes that move schedule. Accessor's float result also makes operand heavier, so it loads first: `z - region.start.Y()` gives `fld start.y; fsubr [z]`.

### Header dependencies

Include can change generated code even when declarations unused: TU-local constants, dynamic initializers, template storage/helpers, inlining can all change. Keep enum-only headers lightweight, place complete types where consumers need them. Verify header consumers after layout, virtual-interface, include-boundary changes.

Every static data member declared in header bumps cl6's `_$E`/`_$S` counter in each including TU, renumbering initializers. Game's numbering shows it never saw DLL module's statics → hide with that module's own build define (e.g. `#ifdef LH_MULTIPLAYER_EXPORTS`). DLL modules only.

**Never use `_LH_3D_LIB_`.** Do not test it (`#ifdef`, `#if defined`) in source or headers, or add to MSVC compile flags, to give LH3DLib units statics, members or inline bodies game units do not see; same for any other invented library-only define. Only place: LH3DP3.cpp's reproduced Intel C++ command line in `configure.py`. LH3DLib declaration would break matched game code (executable hash, or currently matching function, initializer or section) → treat like global that cannot be declared yet (see [Globals](#globals)): leave function that needs it nonmatching, record why.

New `#include` in shared header reaches every transitive includer, can change their objects for *other* versions (extra include in `CreatureMentalAttributeTest.h` broke BW1W100 hash while 1.20 passed). Include heavy headers in `.cpp` that needs them, compile changed files for BW1W100/BW1W110 too.

Header code stays in headers: function TU only instantiates from header (inline or template body, COMDAT, `scope:weak`) defined inline there, not in TU's `.cpp` (#441).

Member-pointer tables follow `VillagerStates.h` (#515): declare entry struct while its class only forward-declared (MSVC's general 16-byte representation without `/vmg`), make table static member of entry struct in own small header. Static member in widely included class header bumps `_$E`/`_$S` in every consumer.

### Inline expansion

Target inlines different subset of calls than our build (helper stays `call` on one side only) → cause is compiler's inline budget, not optimization flags. Use `inline-budget-matching` skill; reference [`docs/msvc6_inliner.md`](docs/msvc6_inliner.md) (c2.dll inliner rules: per-function budget, 40-unit free threshold, nested budget shares, measured sizes, per-construct costs).

- `tools/c2-inline-log.py --source <file> -f <function>` prints every inline decision (callee IL size, budget left, nested share, why). Start here.
- `tools/inline-budget.py size` measures inline call's exact IL size; `sim` replays budget algorithm on call tree, must reproduce our object's call set before trusting for target.
- `tools/inline-budget.py callsets --all --target-only` lists which helpers stay calls in every target function; callers sharing body but different patterns show which helper cost differs.
- Change helper's IL size without changing bytes: ternary instead of `if`, compound or chained assignment. Do not reach for `__forceinline` or invented layouts.

Only remaining difference = operand order of equal-cost x87 operations inside inlined bodies → c2 tie-break depending on how much IL inliner built earlier in function, not source's meaning. `tools/tiebreak-probe.py --dummies` confirms in one batch (some counts of unused locals match, others not). Don't hunt further; leave function nonmatching or ask human about fakematch.

Second c2 tie-break depends on number front end gives symbol (how many declarations precede it in unit); register choice and store order can change with it, in cycle of 64 declarations. Merge adding unrelated declarations to shared headers can therefore break matched unit. Fix = real change to headers before sensitive symbol, adding members, enumerators or methods Mac symbols show are missing, never padding without such evidence (fakematch: ask human first). Localize with `tools/tiebreak-probe.py --variants`; procedure, and how to choose set that lands in matching window for every version, in [`docs/msvc6_symbol_numbering.md`](docs/msvc6_symbol_numbering.md).

Ninja `cl` rule and precompiled header have no header dependencies. After editing header, delete objects you rely on before rebuilding; for shared headers delete every object, then compare full reports (`decomp-regress.py --refresh --baseline <saved report>`) before keeping change. Also delete PCH the header feeds (`build/<version>/src/Black/BlackPCH.pch`, `.../LH3DLib/development/LH3DLibPCH.pch`), Ninja rebuilds it and its units (see [`docs/msvc6_pch.md`](docs/msvc6_pch.md)). Game units use game PCH unless `configure.py` entry says otherwise (`pch=`); LH3DLib units use theirs with `pch=True`. Forced in with `/FI`, never included by source. With PCH, `cl` lays out unit's uninitialised statics in reverse order of first mention, not by name hash: order definitions, or initialise to zero, rather than picking names or adding filler statics.

### Signatures, function boundaries and layouts

Each function and global declaration in header carries address comment:

```cpp
// BW1W120 <windows addr> BW1M119 <mac addr> [(<module>)]
// BW1WCI <creature isle addr> BW1MCI119 <mac creature isle addr> [(<module>)]
// BW1W120 0054cbd0 BW1M119 010cca10
// BW1W120 00c386e0 BW1M119 011d0df8 (LHCombined Release)
// BW1W120 0051f180 BW1M119 inlined
// BW1WCI 004690f0 BW1MCI119 011c7760
```

Mac address comes from `config/BW1M119/symbols.txt`, or module's own `config/BW1M119/<module>/symbols.txt` (module symbol tagged with that directory name). In either slot, `inlined` (no out-of-line copy), `null` (not in that binary) or `purecall` (pure virtual slot) replace address; nothing else does. DLL exports use DLL address (e.g. LHMultiplayerR `1001e2b0`). Line holds nothing else: notes go on comment line above, never trails code. CI runs `python3 tools/check_addr_comments.py`, also checks each address is real symbol of its version.

Declaration only Creature Isle sees (under `#ifdef VERSION_BW1WCI`) uses second form: Windows address is symbol in `config/BW1WCI/symbols.txt` (or DLL module there), Mac address from `config/BW1MCI119/symbols.txt` or module there, tagged same way. `BW1WCI` always pairs with `BW1MCI119`, `BW1W120` with `BW1M119`; never mix on one line. Where 1.20 has own declaration under `#ifndef VERSION_BW1WCI`, keeps `BW1W120` form. BW1MCI119 symbols = ground truth for Creature Isle-only function's name and signature. Older `BW1M100` comments (actually 1.1.0 or 1.1.9 addresses at base 0x10000000) with trailing function name historical; audit with `tools/mac_symbol_version.py`.

**Ground truth for function's name, class, argument list, `const`-ness = demangled CodeWarrior symbol in `config/BW1M119`.** Mac binary kept real symbols; Windows names in `config/BW1W120/symbols.txt` reconstructed from them, so trust Mac symbol where they disagree. Look up and demangle with objdiff's `cwdemangle` or local port:

```sh
grep 'CalculateDancePosition__6Living' config/BW1M119/symbols.txt
python3 tools/cwdemangle.py '.CalculateDancePosition__6LivingFRC9MapCoordsP9MapCoords'
#   -> Living::CalculateDancePosition(MapCoords const &, MapCoords *)
python3 tools/mac_symbol_version.py --find 'Living::CalculateDancePosition'
```

Use `.`-prefixed `.code0` symbol; unprefixed `.pidata1` object is its transition vector. CodeWarrior mangling encodes no return type, calling convention, static-ness: establish from Windows code (`ret N`, `this` in ECX, `al` vs `eax`); BW1W120 mangling for them is hypothesis. Header disagrees with demangled Mac signature → fix header.

Windows `symbols.txt` mangled names and return types reconstructed, can be wrong (`class` vs `struct`, `bool` vs `int`, return type disagreeing with codegen, offset encoded relative to one symbol base that resolves to another); Mac symbols right ~99% of time, only subtle differences. RTTI in Windows binaries absolute ground truth for RTTI types. Before renaming type or changing signature, confirm in objdiff *and* CI report, check it does not regress other functions, sections, data.

Ask Mac binary before asking reviewer: what body does (empty destructor, helper's argument order) is in BW1M119 code; `tools/mac-disasm.py` disassembles it (#496). New helper needs proof of where it lives and argument order. Mac symbol's class or namespace cannot be contradicted: resolve duplicate inside it, don't move function out (#501).

Treat decompiler signatures and function boundaries as hypotheses; corroborate Windows assembly with Mac symbols and call sites. Check full-register vs byte-sized Boolean results, static vs instance methods, calling conventions, virtual slots. Apparent entry can be continuation or exception funclet.

Recovered prefix not necessarily allocation-ready type: document incomplete layouts, do not allocate with unproven `sizeof` or define undersized singleton storage.

#### Pointer vs reference, hidden output parameters

Demangled BW1M119 signature says `Type&` or `Type const &` where header has `Type*` → use reference (any type). Function declared `Type* Func(Type* first_param, ...)` but Mac signature omits `first_param` → hidden output buffer: return `Type` by value, drop parameter.

```cpp
// BW1M119:  Living::CalcRandomPos(MapCoords const &, float, float)
// Current:  MapCoords* CalcRandomPos(MapCoords* param_1, MapCoords* param_2, float, float)
// Fix:      MapCoords CalcRandomPos(MapCoords* param_2, float, float)
```

### Globals

Globals belong to class as `static` data members (`GGame::g_game`, `EditorPhysics::PhysicsConstants`), declared in its header, defined in its `.cpp`. Find owning class first (functions that write data usually name it).

**Never use `extern`**, not even as temporary stand-in in NonMatching unit: hides which TU owns data, produces mangled name (`?Name@@3...`) that will not match. Global cannot be declared in proper header yet → leave function nonmatching, record why in notes or PR description.

True free global is exception: both manglings show it outside any class (`?Fonts@@3PAVFont@@A`, Mac `Fonts` rather than `Fonts__4Font`), so cannot be static member. While only one TU uses it, declare `extern` at top of that `.cpp` with address comment; move to owner's header only once second unit needs it.
