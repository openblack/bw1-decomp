#!/usr/bin/env bash
# port_setup.sh - prepare the bw1-dtk build environment to compile our ported bank bodies.
#
# Our verified bank bodies (from bw1-decomp/src/staging) reproduce BYTE-EXACT in dtk because dtk's
# MSVC 6.0 SP5 (12.00.8804) is the SAME compiler our staging meter used. The only setup needed is to
# make our header tree visible to the dtk compile (configure.py already adds `/I include`,
# `/I include/black`, and the MSVC6 CRT include dir to cflags).
#
# This script copies our headers into include/ with the structure the bodies expect:
#   - "Abode.h"                     -> include/black/   (flat refs, via /I include/black)
#   - "black/Data.h"                -> include/black/   (prefixed refs, via /I include)
#   - "chlasm/Enum.h"               -> include/chlasm/  (from libs/, via /I include)
#   - "lionhead/lhlib/ver5.0/..."   -> include/lionhead/ (from libs/)
#   - "libs/lionhead/lh3dlib/..."   -> include/libs/    (some refs carry the libs/ prefix)
#   - <stdbool.h> / <stdint.h>      -> include/         (our MSVC6 C99 shims)
#
# Usage:  tools/port_setup.sh [path-to-bw1-decomp]   (default: ../bw1-decomp)
set -e
DECOMP="${1:-../bw1-decomp}"
[ -d "$DECOMP/black" ] || { echo "ERROR: $DECOMP/black not found (pass the bw1-decomp path)"; exit 1; }

mkdir -p include
cp -r "$DECOMP/black"  include/black                                 # black/ (both flat + prefixed refs)
cp -r "$DECOMP/libs"   include/libs                                  # libs/<x> prefixed refs
cp -r "$DECOMP"/libs/* include/                                      # bare chlasm/ lionhead/ reversing_utils/ ...
cp    "$DECOMP"/libs/reversing_utils/stdlib_compat/*.h include/      # <stdbool.h> / <stdint.h> shims

echo "include/ seeded from $DECOMP."
echo "Next: build the long-path-aware ninja (pip install ninja) and run it, e.g."
echo "  python -m pip install ninja"
echo "  \$(python -c 'import ninja,os;print(os.path.join(ninja.BIN_DIR,\"ninja.exe\"))') build/<VER>/src/Black/<TU>.o"
