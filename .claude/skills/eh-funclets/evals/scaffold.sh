#!/bin/bash
# scaffold.sh: called by each case's fixture.sh in the empty eval workspace. Builds a miniature
# checkout there: the repo's live tools (so the eval tests the current code) and the fixture from
# make-fixtures.sh (one version's LHMultiplayer objects and config, and the image).
set -euo pipefail
REPO=$(git -C "$(dirname "${BASH_SOURCE[0]}")" rev-parse --show-toplevel)
FIX=$REPO/build/eval-fixtures/eh-funclets
[ -f "$FIX/objdiff.json" ] || { echo "no fixture: run .claude/skills/eh-funclets/evals/make-fixtures.sh" >&2; exit 1; }
cp -r "$FIX"/. .
mkdir -p tools
cp "$REPO"/tools/{funclets,ehtables,decomp_binary,decomp_common,relabel-initializers}.py tools/
printf 'configure_args = --version BW1W120\n' > build.ninja
