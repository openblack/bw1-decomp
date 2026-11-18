#!/bin/bash
# make-fixtures.sh [BUILD_CHECKOUT]
# Copies the eval fixture out of a checkout with a built BW1W120 tree into the repo's
# build/eval-fixtures/eh-funclets/ (gitignored: the target objects and the image are game bytes).
# The source build should have out-of-date $L labels (a header declaration added, relabel not run
# yet), so that `funclets.py relabel` has renames to make.
set -euo pipefail
REPO=$(git -C "$(dirname "${BASH_SOURCE[0]}")" rev-parse --show-toplevel)
SRC=${1:-$REPO}
OUT=$REPO/build/eval-fixtures/eh-funclets
V=BW1W120
rm -rf "$OUT"; mkdir -p "$OUT/config/$V/LHMultiplayer" "$OUT/orig/$V"
cp "$SRC/config/$V/LHMultiplayer/symbols.txt" "$SRC/config/$V/LHMultiplayer/splits.txt" "$OUT/config/$V/LHMultiplayer/"
cp "$SRC/config/$V/splits.txt" "$OUT/config/$V/"
cp "$SRC/configure.py" "$OUT/"
cp "$SRC/orig/$V/runblack-decrypted.exe" "$OUT/orig/$V/"
python3 - "$SRC" "$OUT" "$V" <<'PY'
import json, shutil, sys
from pathlib import Path
src, out, ver = Path(sys.argv[1]), Path(sys.argv[2]), sys.argv[3]
units = [u for u in json.load(open(src / "objdiff.json"))["units"]
         if u["name"].startswith("LHMultiplayer/") and u.get("target_path", "").startswith(f"build/{ver}/")
         and u.get("base_path") and "/lib/" not in u["name"]
         and u.get("metadata", {}).get("source_path", "").startswith("src/Lionhead/LHMultiplayer/")]
for u in units:
    for key in ("target_path", "base_path"):
        if (src / u[key]).is_file():
            (out / u[key]).parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(src / u[key], out / u[key])
json.dump({"units": units}, open(out / "objdiff.json", "w"), indent=1)
print(f"{len(units)} units")
PY
cd "$OUT" && mkdir -p tools && cp "$REPO"/tools/{funclets,ehtables,decomp_binary,decomp_common}.py tools/ && python3 tools/funclets.py relabel | tail -1; rm -rf tools
echo "fixture in $OUT ($(du -sh "$OUT" | cut -f1))"
