# GitHub Actions

[`.github/workflows/build.yml`](/.github/workflows/build.yml) runs on every push and pull request. For each version in the matrix it:

1. Pulls the private container `ghcr.io/openblack/bw1-build:main`, which carries the original game binaries under `/orig/<VERSION>/` (for BW1WCI, `CreatureIsle-decrypted.exe` and its four DLLs).
2. Copies `/orig` into the workspace.
3. Runs `configure.py --version <VERSION>`, then `ninja all_source progress build/<VERSION>/report.json`.
4. Uploads `report.json` as a build artifact for [decomp.dev](https://decomp.dev) to consume.

The container is built and pushed by [openblack/bw1-build](https://github.com/openblack/bw1-build) (private — contains game assets). Its package settings grant this repo's Actions runner the **Read** role so the workflow can pull it.

## decomp.dev

Progress is tracked at <https://decomp.dev/openblack/bw1-decomp>. The badge URLs in the root README pull from there.

## Personal fork CI

`boltz/bw1-decomp` uses its own private build image from `boltz/bw1-build`.
Set the fork's `BW1_BUILD_IMAGE` Actions variable to the published image digest,
for example `ghcr.io/boltz/bw1-build@sha256:<digest>`. Without this variable,
the workflow uses upstream's image.

The private package must grant the fork Read under Manage Actions access.
The workflow authenticates with its repository's `GITHUB_TOKEN` and requests
`packages: read`. No personal access token is stored in the fork.

Open experiment PRs with `boltz/bw1-decomp:main` as the base. Each PR runs the
same five-version build commands and uploads the same map/report artifacts as
upstream. The lint workflow also runs clang-format 22 and address-comment checks.
Manual builds are available through the Build workflow's Run workflow button.

Build jobs run only for branches in the same repository, pushes to `main`, and
manual runs. PRs from another fork run lint but skip the private-input build.
To test an external contribution, review it and bring it onto a branch in the
personal fork first. Do not use `pull_request_target` to build PR code.

The image recipe and original-input release remain in the private build repository.
Only maps and progress reports are uploaded by this workflow. Its normal link still
uses extracted objects for `NonMatching` units, even though `all_source` compiles them.
The upstream decomp.dev page and bot are separate from this fork's Actions setup.

## Automatic PR review

`automatic-review.yml` reviews ready PRs with the upstream `AGENTS.md` as its
source guide. It reads patches through the GitHub API and checks out only the
trusted base revision; it never checks out or runs PR code. Review text is sent
to the configured OpenAI-compatible API, so enable it only if that provider may
receive repository diffs.

Set the Actions variable `AI_PR_REVIEW_ENABLED` to `true`, the variable
`PR_REVIEW_MODEL` to a model name, and the secret `PR_REVIEW_API_KEY` to an API
key accepted by that endpoint. `PR_REVIEW_API_BASE` is optional and defaults to
`https://api.openai.com/v1`. The bot updates one summary comment per PR and
posts only findings anchored to added lines. It leaves approval decisions to
maintainers.
