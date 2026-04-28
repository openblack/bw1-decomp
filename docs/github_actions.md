# GitHub Actions

[`.github/workflows/build.yml`](/.github/workflows/build.yml) runs on every push and pull request. For each version in the matrix it:

1. Pulls the private container `ghcr.io/openblack/bw1-build:main`, which carries the original game binaries under `/orig/<VERSION>/`.
2. Copies `/orig` into the workspace.
3. Runs `configure.py --version <VERSION>`, then `ninja all_source progress build/<VERSION>/report.json`.
4. Uploads `report.json` as a build artifact for [decomp.dev](https://decomp.dev) to consume.

The container is built and pushed by [openblack/bw1-build](https://github.com/openblack/bw1-build) (private — contains game assets). Its package settings grant this repo's Actions runner the **Read** role so the workflow can pull it.

## decomp.dev

Progress is tracked at <https://decomp.dev/openblack/bw1-decomp>. The badge URLs in the root README pull from there.
