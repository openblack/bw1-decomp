Dependencies
============

Required on every host:

- [Python 3](https://www.python.org/downloads/)
- [ninja](https://github.com/ninja-build/ninja/releases) (or `pip install ninja`)

Everything else is downloaded automatically by `configure.py` on first run:

- `dtk` — [openblack/decomp-toolkit](https://github.com/openblack/decomp-toolkit) build (split + link verification)
- `lld-link` — [openblack/llvm-project](https://github.com/openblack/llvm-project) release (PE linker)
- MSVC 6.0 SP5 compilers — pulled at the version pinned in `configure.py`
- `objdiff-cli` — diff report generator

Two things are **not** downloaded and must be supplied by hand under `orig/` (see [Getting Started](getting_started.md)):

- MSVC 6.0 SP5 static CRT libs — `orig/libs/msvc6.5/libcmt.lib`, `orig/libs/msvc6.5/libcpmt.lib` (from `VC98\Lib`)
- DirectX 7.0 DDK — headers in `orig/directx7.0/include/` and libs in `orig/directx7.0/lib/`

Windows
-------

Use native tooling. WSL is not required and breaks objdiff filesystem watching.

macOS / Linux
-------------

`pip install ninja` (or your package manager) and you're done.

`BW1M100` (Classic Mac OS PowerPC, PEF)
---------------------------------------

The Mac target is **WIP** and needs an extra dependency that is **not** auto-downloaded:

- [Retro68](https://github.com/autc04/Retro68), built locally. Provides the `powerpc-apple-macos` binutils, `MakePEF`, and the CFM stub libraries the link consumes.

Set `RETRO68_BIN=/path/to/Retro68/build/toolchain/bin` (or accept the default of `~/code/Retro68/build/toolchain/bin`) before running `configure.py --version BW1M100`.

See the [PEF status TODO](../TODO.md) for the current gaps (objdiff XCOFF reader, MakePEF pidata compression, byte-identical link).
