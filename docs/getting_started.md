# Getting Started

See [Dependencies](dependencies.md) first.

1. Clone the repository.

2. Place the original game executable **and its DLLs** in `orig/<VERSION>/`. The path inside `orig` matches the version ID in [`configure.py`](/configure.py).

   - `orig/BW1W100/runblack-decrypted.exe` — Windows v1.0 (decrypted)
   - `orig/BW1W110/runblack-decrypted.exe` — Windows v1.1 (decrypted)
   - `orig/BW1W120/runblack-decrypted.exe` — Windows v1.2 (decrypted)
   - `orig/BW1M100/Black & White` — Classic Mac OS v1.0.0 PEF binary

   The Windows builds also need the four DLLs shipped alongside the exe, in the same directory: `LHaudiodllR.dll`, `LHLogR.dll`, `LHMultiplayerR.dll`, `LHDialogLib.dll` (copy these from your own install — the build checks all five files' hashes against `config/<VERSION>/build.sha1` and fails at the split step with a clear "not found" message naming whichever one is missing).

   The Windows builds expect a **decrypted** exe. The original retail discs ship the executable wrapped in SafeDisc 2 / Macrovision protection. Decrypting it is currently undocumented tribal knowledge — if you don't already have a decrypted copy, ask in the project's Discord/issue tracker rather than guessing at a tool name.

3. Place the MSVC 6.0 static CRT libraries and the DirectX 7.0 SDK headers under `orig/` (they are not committed and not downloaded).

   BW1W120 was built with VC6 **SP5**; BW1W100/BW1W110 with VC6 **SP4** (confirmed via Rich header build-number comparison — see `configure.py`). `configure.py` picks the right package automatically based on `--version`, so both sets need to be present side by side if you plan to work on more than one version.

   **MSVC 6.0 SP5 static libs → `orig/libs/msvc6.5/`** (BW1W120)

   Needed: `libcmt.lib` and `libcpmt.lib`. If you have a Visual C++ 6.0 (SP5) install, copy them straight from `VC98\Lib`. Otherwise pull them from a plain ISO of the SP5 disc on the Internet Archive, item [`MSDN_VisualStudio_6.0_SP5_MASM_6.11_Visual_C_1.2`](https://archive.org/details/MSDN_VisualStudio_6.0_SP5_MASM_6.11_Visual_C_1.2) (`VS60SP5_EN`, byte-verified identical to the genuine SP5 CD):

   1. Download `MSDN_VisualStudio_6.0_SP5_MASM_6.11_Visual_C++_1.2.iso` from that item. It's a plain ISO9660 image — no proprietary disc-image format, no conversion step.
   2. Extract `ENGLISH/VS60SP5/VC98/LIB/LIBCMT.LIB` and `LIBCPMT.LIB` with `7z e <iso> "*LIBCMT.LIB" "*LIBCPMT.LIB" -r`, or mount the ISO directly (`mount -o loop` on Linux; double-click on Windows/macOS).
   3. Copy the two files to `orig/libs/msvc6.5/libcmt.lib` and `orig/libs/msvc6.5/libcpmt.lib`. Filenames are matched case-insensitively; lowercase is fine.

   **MSVC 6.0 SP4 `libcmt.lib` → `orig/libs/msvc6.4/`** (BW1W100/BW1W110)

   From the Internet Archive item [`msdn-disc0034-january-2001-x06-11596`](https://archive.org/details/msdn-disc0034-january-2001-x06-11596) (a plain ISO, no disc-image conversion needed):

   1. Download `1_V60SP4_DE.iso`.
   2. Extract `GERMAN/VS60SP4/VC98/LIB/LIBCMT.LIB` with `7z e <iso> "*LIBCMT.LIB" -r`, or mount directly.
   3. Copy it to `orig/libs/msvc6.4/libcmt.lib`.

   **MSVC 6.0 RTM `libcpmt.lib` → `orig/libs/msvc6.0/`** (also BW1W100/BW1W110)

   SP4 never shipped its own `libcpmt.lib` — checked three independent SP4 discs, none include it, since Microsoft only redistributes files that changed for a given service pack. The original 1998 RTM copy is the right one (a real SP4-era machine would still have it, untouched, in `VC98\Lib`). It's byte-different from SP5's, so don't substitute that one. From the Internet Archive item [`visualstudiov60enterpriseedition_199807`](https://archive.org/details/visualstudiov60enterpriseedition_199807):

   1. Download Disc 1 (`...(X03-78941)(Microsoft Corporation)(August 1998).iso`, a plain ISO).
   2. Extract `VC98/LIB/LIBCPMT.LIB` with `7z e <iso> "*LIBCPMT.LIB" -r`, or mount directly.
   3. Copy it to `orig/libs/msvc6.0/libcpmt.lib`.

   **DirectX 7.0 DDK → `orig/directx7.0/`**

   From the Internet Archive item [`dx7ddk`](https://archive.org/details/dx7ddk):

   1. Download `dx7ddk.exe` (a self-extracting installer).
   2. Extract it with 7-Zip (`7z x dx7ddk.exe`), or run it on Windows to install.
   3. Copy both the `include` directory (holding `ddraw.h`, `d3d.h`, `dinput.h`, `dsound.h`, …) and the `lib` directory (holding `ddraw.lib`, `dinput.lib`, `dsound.lib`, `dxguid.lib`, …) to `orig/directx7.0/include/` and `orig/directx7.0/lib/`.

   **Intel Approximate Math Library (AM Library) → `orig/libs/amaths-2.0/`**

   Needed: `amaths.lib`. The game links Intel's AM Library verbatim (SSE/SSE2
   `sin`/`cos`/`sincos`/`tan`/`atan`/`exp`/`log`/`pow`), Release 2.0 (Oct/Nov
   2000). Intel's own download location is long gone; pull the package from
   the Wayback Machine:

   1. Fetch `AMaths.zip` from the Internet Archive capture of Intel's old
      Pentium III devtools page:
      `https://web.archive.org/web/20060218064543id_/http://www.intel.com/design/pentiumiii/devtools/AMaths.zip`
      (the `id_` suffix returns the raw file instead of a replayed page).
   2. Unzip it. It contains `AMaths.lib`, `AMaths.c`/`AMaths.h` (source, for
      reference), `AMaths.pdf` (documentation), `MathTest.exe`/`.cpp` (Intel's
      test harness), and license files.
   3. Copy `AMaths.lib` to `orig/libs/amaths-2.0/amaths.lib`. As with the MSVC
      libs, the filename must be lowercase to match the config key.

4. Run `configure.py` with the version you want to work on:

   ```sh
   python configure.py --version BW1W100
   ```

   Pass `--version BW1W120` or `--version BW1M100` for the other targets. Default is `BW1W120`.

5. Build:

   ```sh
   ninja
   ```

   The first build downloads `dtk`, `lld-link`, and the MSVC 6.0 compilers, then runs `dtk pe split` (or `dtk pef split` for Mac) to produce per-function `.o` files, links them, post-patches the result, and verifies the SHA-1 against `config/<VERSION>/build.sha1`.

If the SHA-1 check passes, the rebuilt binary is byte-identical to the original.

## Configuration files

Each version lives under `config/<VERSION>/`:

- `config.yml` — project config, points at the original binary and the `splits.txt` / `symbols.txt` files for that version
- `splits.txt` — assigns address ranges to source files (see [`splits.txt`](splits.md))
- `symbols.txt` — names and types every symbol in the binary (see [`symbols.txt`](symbols.md))
- `build.sha1` — expected SHA-1 of the original (and, eventually, the rebuilt) binary

## Decompilation workflow

1. Pick a function from the disassembly that you want to match.
2. Add a `splits.txt` entry assigning its address range to a source file.
3. Add a `configure.py` `Object(NonMatching, "...")` entry under `config.libs` for that source file.
4. Write the C/C++ source in `src/` until [objdiff](https://github.com/encounter/objdiff) shows the compiled `.o` matches the disassembled `.o`.
5. Flip the entry to `Object(Matching, "...")` and rebuild — the function is now linked from your source instead of the auto-generated split.

Run `python configure.py progress` (or `ninja progress`) to print the current code/data match percentage.
