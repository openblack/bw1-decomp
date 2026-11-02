# Setup and a first contribution

Read this when inputs are uncertain or the contributor is new. Use the current checkout's `docs/getting_started.md`, `docs/dependencies.md`, configuration, and manifests for exact requirements. Do not freeze binary hashes or dependency versions into this skill.

## Own the game and identify the target

Contributors need their own actual copy of Black & White. The repository does not supply game binaries or assets. Prepare the original compiler/runtime and SDK dependencies as well as the executable and DLLs; a missing SDK is a setup blocker, not evidence that reconstructed code is wrong.

Official 1.10 and 1.20 are different references: BW1W110 and BW1W120. For the usual installation path, obtain both official patches, apply 1.10 then 1.20, and preserve the 1.10 files before advancing if both targets will be checked. Preserve a separate 1.20 reference before installing a later gameplay patch. Unofficial 1.42 is not a substitute for official 1.20. A folder name, a runnable game, or installing an older patch over newer files does not prove the files' version.

The build expects exact decrypted/unprotected references under `orig/<VERSION>/`, using the names in the current guide. For Windows game targets these include the executable plus `LHaudiodllR.dll`, `LHLogR.dll`, `LHMultiplayerR.dll`, and `LHDialogLib.dll`. Report input validation separately for all required files. Trace the selected build graph back to these paths; do not accidentally inspect a different executable from the gameplay installation.

Distinguish three transformations: official patching, removing the protection wrapper, and later compatibility/gameplay changes. The expected hashes identify exact artifacts at particular pipeline stages; they are not a blanket endorsement of any executable called "patched." `config.yml` can identify a preprocessed intermediate rather than the raw executable. Check the appropriate manifest and pipeline stage. Never edit expected hashes to accept wrong inputs.

Keep validated references separate. There is no need to overwrite the user's installed game to decompile files in `orig/`. Do not overwrite installations, newer gameplay files, or known-good references merely to resolve an ambiguous folder name.

## Copy protection and help finding the right inputs

Sources checked on 2026-11-02 disagree on the protection name: [bw1-patches](https://github.com/openblack/bw1-patches) calls the default wrapper SecuROM; the decompilation setup guide calls it SafeDisc 2 / Macrovision. Do not assert one scheme for every release. Establish the specific input by its validated bytes.

The [unofficial 1.42 page](https://www.bwgame.net/downloads/black-white-unofficial-patch-v1-42.1418/) describes a SafeDisc-related fix for newer Windows and requires official 1.10 followed by 1.20. Its instruction against 1.30 concerns that gameplay installation path, not obtaining BW1W130 references for decompilation.

For help running an owned copy, offer those two resources or the [openblack Discord](https://discord.gg/5QTexBU) linked from the repository. These are help routes, not interchangeable matching inputs. `bw1-patches` applies changes to an already unprotected executable and excludes extracting it from its scope. Do not promise it supplies the decrypted reference. When input provenance remains uncertain, request the specific missing information or direct the contributor to project help; do not invent an extraction procedure or post on their behalf.

## QMixer SDK: a dependency the installed game does not supply

Full builds include the audio DLL, even when the chosen task concerns game code. They need the QSound QMixer 5.00 SDK header `Qmixer.h`; possessing the game's `QMixer.dll` does not supply that header. Check the current `docs/getting_started.md` dependency list before starting lengthy verification.

The guide identifies [QSound's archived qm500sdk.exe download](https://web.archive.org/web/20010429011901id_/http://www.qsound.com:80/gamedev/qmdx-files/qm500sdk.exe). If automated downloading is blocked, provide this direct link and ask the contributor to download it in their browser and give its local path. A failed automated request does not establish that the archive is unavailable. Do not repeatedly retry the same blocked route or replace the SDK with an invented header.

Validate the installer against the SHA-1 in the current setup guide, for example with PowerShell's `Get-FileHash -Algorithm SHA1 -LiteralPath <download-path>`. Check that the download is the installer rather than an HTML error page. Extract into an ignored scratch directory and verify the extracted header against the guide's separate header hash before copying it to `orig/libs/qmixer-5.00/Qmixer.h`. Keep the exact include spelling.

This installer has two layers: `7z x` extracts the outer package, leaving `qmsdk.z`, an InstallShield 3 archive. It has not yet extracted the SDK header. An alternative to running the legacy installer is [idecomp](https://github.com/lephilousophe/idecomp), an InstallShield 3 extractor. Obtain its `idecomp.py` and companion `pwexplode.py` from the upstream repository and keep them together in an ignored tool directory. With the outer archive already extracted, these example commands list and extract only the required header:

```powershell
python build/tools/idecomp/idecomp.py -l build/downloads/qmixer/outer/qmsdk.z '*Qmixer.h'
python build/tools/idecomp/idecomp.py -C build/downloads/qmixer/extracted build/downloads/qmixer/outer/qmsdk.z '*Qmixer.h'
Get-FileHash -Algorithm SHA1 -LiteralPath build/downloads/qmixer/extracted/qmixer/Qmixer.h
```

The header-only extraction procedure was checked on 2026-11-01 against the guide's expected header hash. Adapt scratch paths to the actual download; this does not require installing anything into or overwriting the gameplay directory. `QMixer.lib` is optional under the documented build, which obtains imports from the original binary; do not substitute that SDK library for the game's import layout.

Keep SDKs, original binaries, extraction tools and local paths out of the contribution. Resolve other missing runtime libraries or SDK headers from the current dependency guide in the same evidence-based way; a working compiler alone does not establish that the complete build environment is ready.

## Guided first session

Explain terms only when needed:

| Term | Meaning for this workflow |
| --- | --- |
| Translation unit (TU) | A source file compiled as a unit, with its included declarations. |
| Target object | Code/data extracted from the original reference binary. |
| Compiled object | Output produced from the reconstructed C++. |
| Relocation | A reference the linker must resolve, whose identity matters to comparison. |
| Matching | Agreement under an explicitly stated comparison; similar behavior alone is insufficient. |

After validating setup, reproduce one small existing match with the pinned compiler. If a demonstration helps, use an isolated scratch copy for one understood change, predict its effect, compare, and discard the experiment without disturbing user work. Keep training patches local.

For actual work, inspect current progress and open PR files/discussions. Prefer a small coherent group with surviving names, understandable callers, and limited shared-layout impact. A nearly complete percentage can hide a difficult compiler-order problem. Virtual interfaces, COMDAT/RTTI ordering, exception machinery, and unexplained globals can make a tiny function unsuitable as a first task.

Work toward a useful reviewable contribution rather than one PR per exercise. Explain the evidence and uncertainty in ordinary language so the contributor can understand what they would be submitting. The agent does the routine work; the beginner need not pass a reverse-engineering quiz.
