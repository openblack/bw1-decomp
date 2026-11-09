# GitHub Actions

[`.github/workflows/build.yml`](/.github/workflows/build.yml) runs on every push, pull request and merge queue entry. For each version in the matrix it:

1. Pulls the private container `ghcr.io/openblack/bw1-build:main`, which carries the original game binaries under `/orig/<VERSION>/` (for BW1WCI, `CreatureIsle-decrypted.exe` and its four DLLs).
2. Copies `/orig` into the workspace.
3. Runs `configure.py --version <VERSION>`, then `ninja all_source build/<VERSION>/ok`: builds every source object, links and verifies every artifact hash against `config/<VERSION>/build.sha1`.
4. Outside the merge queue, also builds `progress build/<VERSION>/report.json` and uploads `report.json` as a build artifact for [decomp.dev](https://decomp.dev) to consume.

The container is built and pushed by [openblack/bw1-build](https://github.com/openblack/bw1-build) (private — contains game assets). Its package settings grant this repo's Actions runner the **Read** role so the workflow can pull it.

## Merge queue

`main` merges through GitHub's merge queue. The required status checks are `check-format`, `check-address-comments` (from [`lint.yml`](/.github/workflows/lint.yml)) and `build (<VERSION>)` for all five versions; both workflows handle the `merge_group` event so the same checks report on the merge group as on the pull request.

Merge queue entries build only: no progress report, no report upload, no map files. The report dominates the CI run time and a merge group is ephemeral, while the pull request itself and the post-merge push to `main` both produce one anyway. `Triage` does not run for merge groups — when the queue merges, the push to `main` triggers it like any other push.

## decomp.dev

Progress is tracked at <https://decomp.dev/openblack/bw1-decomp>. The badge URLs in the root README pull from there.
