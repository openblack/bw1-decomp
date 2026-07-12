# Getting Started

See [Dependencies](dependencies.md) first.

1. Clone the repository.

2. Place the original game executable in `orig/<VERSION>/`. The path inside `orig` matches the version ID in [`configure.py`](/configure.py).

   - `orig/BW1W100/runblack-decrypted.exe` — Windows v1.0 (decrypted)
   - `orig/BW1W110/runblack-decrypted.exe` — Windows v1.1 (decrypted)
   - `orig/BW1W120/runblack-decrypted.exe` — Windows v1.2 (decrypted)
   - `orig/BW1M100/Black & White` — Classic Mac OS v1.0.0 PEF binary

   The Windows builds expect a **decrypted** exe. The original retail discs ship the executable wrapped in SafeDisc 2 / Macrovision protection. Use the SafeDisc cleaner referenced in the project notes to produce `runblack-decrypted.exe`.

3. Place the MSVC 6.0 SP5 static CRT libraries and the DirectX 7.0 SDK headers under `orig/` (they are not committed and not downloaded). The build errors out with the expected path if a static lib is missing.

   **MSVC 6.0 SP5 static libs → `orig/libs/msvc6.5/`**

   Needed: `libcmt.lib` and `libcpmt.lib`. If you have a Visual C++ 6.0 (SP5) install, copy them straight from `VC98\Lib`. Otherwise pull them from the genuine SP5 install CD on the Internet Archive, item [`X08-02111`](https://archive.org/details/X08-02111):

   1. Download `2001-03_X08-02111_X06-21660_CD_ROM.7z` from that item.
   2. Extract the `.7z` (e.g. `7z x 2001-03_X08-02111_X06-21660_CD_ROM.7z`). It yields a raw CD image (a `.mdf`).
   3. The `.mdf` is a raw 2352/2448-byte-sector image, not a plain ISO. Convert it first: `mdf2iso disc.mdf disc.iso` (the `mdf2iso` package on Linux/macOS). On Windows, mount the `.mdf` directly with DAEMON Tools / WinCDEmu, or open it in 7-Zip / AnyBurn.
   4. From the image, copy `VC98\Lib\LIBCMT.LIB` and `VC98\Lib\LIBCPMT.LIB` to `orig/libs/msvc6.5/libcmt.lib` and `orig/libs/msvc6.5/libcpmt.lib`. Filenames are matched case-insensitively; lowercase is fine.

   **DirectX 7.0 DDK → `orig/directx7.0/`**

   From the Internet Archive item [`dx7ddk`](https://archive.org/details/dx7ddk):

   1. Download `dx7ddk.exe` (a self-extracting installer).
   2. Extract it with 7-Zip (`7z x dx7ddk.exe`), or run it on Windows to install.
   3. Copy both the `include` directory (holding `ddraw.h`, `d3d.h`, `dinput.h`, `dsound.h`, …) and the `lib` directory (holding `ddraw.lib`, `dinput.lib`, `dsound.lib`, `dxguid.lib`, …) to `orig/directx7.0/include/` and `orig/directx7.0/lib/`.

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
