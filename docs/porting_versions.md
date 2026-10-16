# Porting a version's config

`config/BW1W130` and `config/BW1WCI` (Creature Isle) were not carved by hand. They are
BW1W120's splits and symbols, translated to the other build's addresses by
[`tools/port_version.py`](../tools/port_version.py). The tool's module docstring explains how it
places code, data, RTTI, vtables, import thunks, library objects, initializer tables and `.bss`.
This page covers the workflow and where the result stands.

BW1W130 has been fixed by hand since it was ported. Keep it in step with the
[version-backport](../.claude/skills/version-backport/SKILL.md) skill's `backport.py`, and never
re-emit it. BW1WCI has no hand fixes, so regenerate it whenever BW1W120's splits or names
improve.

## Regenerating BW1WCI

```sh
python3 tools/port_version.py emit --dst BW1WCI --report /tmp/dropped.txt   # the executable, ~5 minutes
python3 tools/port_version.py emit --dst BW1WCI --module LHAudio            # the two DLLs built for Creature Isle
python3 tools/port_version.py emit --dst BW1WCI --module LHMultiplayer

python3 configure.py --version BW1WCI
ninja build/BW1WCI/config.json      # dtk splits and adds what it finds to symbols.txt/splits.txt
touch build/BW1WCI/runblack-preprocessed.exe && ninja build/BW1WCI/config.json   # repeat until no "Writing updated"
ninja build/BW1WCI/ok               # relink, post-link patch, SHA-1 check against config/BW1WCI/build.sha1
```

Commit the converged files. A re-emit followed by the same convergence reproduces them byte for
byte, so after regenerating, the diff is exactly what BW1W120's changes carry over to Creature
Isle. Which units link for Creature Isle (see below) can change with it: if `ok` fails, take the
units that stopped matching out of their `MatchingFor(...)`.

- `--reuse` skips the alignment and only rewrites the files from the cached one
  (`build/port/*.pickle`). The cache holds the reference splits and symbols it was computed
  from, so the tool aligns again by itself when BW1W120's config has changed since.
- `--report` lists what could not be placed with evidence: dropped ranges, conflicts, dropped
  `add_relocations` entries and dropped symbols. A dropped range or symbol is simply absent,
  and dtk fills the hole with an `auto_` unit.
- Library objects are found by their own bytes in the static libraries under `build/lib`, which
  any build unpacks, so build once before porting.
- Two DLLs are not ported, because they are byte-identical to another build's: `LHLogR.dll` is
  BW1W110's and `LHDialogLib.dll` is every version's. The executable's emit copies those
  module configs instead, together with their `config.yml` stanzas.
- `build.sha1` is not emitted: it lists the shipped files' hashes.

## How BW1WCI builds

- As in the other versions, a unit links from its source or from the library where its
  `configure.py` entry says so, and from its extracted object everywhere else. Every unit that
  links for BW1W120 or BW1W130 was tried for Creature Isle. It was linked in, kept where the
  rebuilt files stayed byte-identical, and otherwise excluded and later retried on its own.
  Plain `Matching` units that do not link there are `MatchingFor(<the other four versions>)`.
- CI compiles every source for BW1WCI (`/DBUILD_VERSION=4 /DVERSION_BW1WCI`), so layout checks
  must not fall through to it (see AGENTS.md, *Game versions*).
- The executable is not link.exe output wrapped by SafeDisc but a rebuilt container:
  - it has nine sections, three of them SafeDisc or unpacker leftovers (`stxt774`, `stxt371`,
    `.MGD32`);
  - the import tables were rebuilt in `.MGD32`, while the originals are still in `.rdata`;
  - the file alignment is 0x200, there is no Rich header, and the decryptor's NFO sits in the
    header padding.

  `generate_imports` is therefore off, and the import tables are plain data. lld-link sorts
  non-standard sections by name, so `post_link_patch.py` (`build_BW1WCI_exe`) reassembles the
  image from the linked sections.
- `LHaudiodllR.dll` and `LHMultiplayerR.dll` are Creature Isle builds of their own. Their Rich
  headers are in `post_link_patch.py`.

## Where the port stands

| BW1W120 → BW1WCI | executable | `LHAudio` | `LHMultiplayer` |
|---|---|---|---|
| split ranges carried over | 2121 of 2549 | 218 of 256 | 511 of 519 |
| named symbols carried over | 25 087 of 28 590 | 899 of 1225 | 3432 of 3544 |
| units linking from source or the library | 232 of 321 | 95 of 152 | 199 of 226 |
| rebuilt file | byte-identical | byte-identical | byte-identical |

Of the 702 units that link for 1.20 or 1.30 (`LHDialog`'s 3 link for Creature Isle too), 173
do not link for Creature Isle:

- **92 cannot be linked.** The port did not carry over all of their sections, so their contents
  would land wherever the link order puts them.
- **81 were each shown to break the rebuilt files.** Either their code differs in Creature Isle
  (most of the game units, `GameSpy`), or their range was placed imperfectly (a share of the
  CRT).

Most of the executable's dropped ranges have one of three causes:

- **`.text` (113 ranges).** Creature Isle's code is further from 1.20 than 1.30's is (struct
  layouts and virtual tables moved), and a function whose bytes changed throughout cannot be
  placed.
- **`.CRT$XCU` (127 ranges).** A unit's slice of the initializer table is placed by what its
  entries point at, so it carries over only when the unit's `.text` does. Some units have no
  dynamic initializers in Creature Isle at all. In 7 units, BW1W120's own slice points outside
  the unit's `.text`: `LHFile.cpp`, `LHMemoryLeak.cpp`, `LH3DTech.cpp`,
  `LH3DCameraChecker.cpp`, `LHCollide.cpp`, `LH3DText.cpp` and `Route.cpp`.
- **Data (184 ranges of `.data`, `.bss`, `.rdata` and `.rdata$r`).** Some belong to units
  whose `.text` was dropped too. For the rest, one end of the range falls in data that changed
  size, or that no placed code or data points at, so nothing pins it.
