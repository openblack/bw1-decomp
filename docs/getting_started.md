# Getting Started

See [Dependencies](dependencies.md) first.

1. Clone the repository.

2. Place the original game executable in `orig/<VERSION>/`. The path inside `orig` matches the version ID in [`configure.py`](/configure.py).

   - `orig/BW1E100/runblack-decrypted.exe` — Windows v1.0 (decrypted)
   - `orig/BW1E110/runblack-decrypted.exe` — Windows v1.1 (decrypted)
   - `orig/BW1E120/runblack-decrypted.exe` — Windows v1.2 (decrypted)
   - `orig/BW1EMAC/Black & White` — Classic Mac OS PEF binary

   The Windows builds expect a **decrypted** exe. The original retail discs ship the executable wrapped in SafeDisc 2 / Macrovision protection. Use the SafeDisc cleaner referenced in the project notes to produce `runblack-decrypted.exe`.

3. Run `configure.py` with the version you want to work on:

   ```sh
   python configure.py --version BW1E100
   ```

   Pass `--version BW1E120` or `--version BW1EMAC` for the other targets. Default is `BW1E120`.

4. Build:

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
