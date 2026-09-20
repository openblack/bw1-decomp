#!/usr/bin/env python3
"""Pre-dtk patch: turn a third-party-decrypted runblack exe back into the
pristine MSVC link.exe shape so dtk/lld only ever see clean linker output.

The shipped disc image is SafeDisc-encrypted. The decrypted exes we build from
were produced by a third-party decryptor that vandalized the PE header padding:

  * it removed SafeDisc's two extra section headers (stxt774 / stxt371), which
    the SafeDisc *encryptor* had inserted right after the real section table --
    shifting the exestr comment block forward by their size (2 * 40 = 0x50);
  * it scribbled a cracker signature into the freed space ("crazy bad bwoy",
    "Safedisc2Cleaner ...", "Myth / Deviance", ...);
  * it overran the first comment string, zeroing its leading 24 bytes
    ("Intel(R) C++ Compiler fo").

None of that is linker output. This script undoes it, producing a clean exe
whose exestr comments are full and flush against the section table -- exactly
what MSVC 6.0 link.exe emits (verified: link.exe places exestr comments at
section_table_end + 0). dtk then extracts the full comments, lld re-emits them
flush, and post_link_patch.py re-applies the SafeDisc bump + vandalism to
reproduce the decrypted target byte-for-byte.

Future: when we start from the encrypted image and run our own decryptor, this
restoration step folds into that decryptor and the hardcoded prefix below is
sourced from the encrypted exe instead.
"""

import argparse
import struct
import sys
from pathlib import Path

# The 24 bytes the decryptor zeroed off the front of the first exestr comment.
# Constant for this toolchain (Intel C++ Compiler #pragma comment(exestr)).
INTEL_COMMENT_PREFIX = b"Intel(R) C++ Compiler fo"

# Substring present in every Intel exestr comment -- full ("Intel(R) C++
# Compiler for 32-bit applications ...") and the decryptor-truncated fragment
# ("r 32-bit applications ..."). Used to pick the comment runs out of the header
# padding while leaving cracker graffiti and unrelated linker markers (e.g. the
# "BoG_" stamp near SizeOfHeaders) untouched.
COMMENT_CONTENT_MARKER = b"32-bit applications"

# A comment run that does not start with this is a decryptor-truncated fragment
# and gets INTEL_COMMENT_PREFIX prepended.
COMMENT_MARKER = b"Intel(R)"


def section_table_end(data: bytes) -> int:
    """File offset just past the last section header."""
    e_lfanew = struct.unpack_from("<I", data, 0x3C)[0]
    num_sections = struct.unpack_from("<H", data, e_lfanew + 6)[0]
    size_opt = struct.unpack_from("<H", data, e_lfanew + 20)[0]
    return e_lfanew + 4 + 20 + size_opt + num_sections * 40


def size_of_headers(data: bytes) -> int:
    e_lfanew = struct.unpack_from("<I", data, 0x3C)[0]
    return struct.unpack_from("<I", data, e_lfanew + 24 + 60)[0]


def scan_runs(data: bytes, start: int, end: int):
    """Yield (offset, bytes) for each NUL-delimited printable run in [start,end)."""
    pos = start
    run_start = None
    for pos in range(start, end):
        b = data[pos]
        printable = 0x20 <= b < 0x7F
        if printable and run_start is None:
            run_start = pos
        elif not printable and run_start is not None:
            yield run_start, data[run_start:pos]
            run_start = None
    if run_start is not None:
        yield run_start, data[run_start:end]


def build_clean(data: bytes) -> bytes:
    ste = section_table_end(data)
    soh = size_of_headers(data)

    # The header padding between the section table and the first section holds
    # only two things in these exes: the Intel exestr comments (linker output)
    # and SafeDisc/cracker graffiti ("crazy bad bwoy", the "BoG_" identifier).
    # Keep the comments, discard everything else. Match comments by content so
    # graffiti and identifiers are never mistaken for one.
    comments = [
        run for _, run in scan_runs(data, ste, soh) if COMMENT_CONTENT_MARKER in run
    ]
    if not comments:
        return data  # nothing to restore

    # Restore the truncated first comment.
    if not comments[0].startswith(COMMENT_MARKER):
        comments[0] = INTEL_COMMENT_PREFIX + comments[0]

    # Rebuild the whole padding: full comments, NUL-terminated, flush at the
    # section table (where link.exe emits them); the rest zeroed, wiping all
    # SafeDisc graffiti.
    block = b"".join(c + b"\x00" for c in comments)
    if ste + len(block) > soh:
        raise SystemExit(
            f"restored comments ({len(block)} bytes) overflow SizeOfHeaders"
        )

    out = bytearray(data)
    out[ste:soh] = b"\x00" * (soh - ste)
    out[ste:ste + len(block)] = block
    return bytes(out)


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("input", type=Path, help="decrypted runblack exe")
    ap.add_argument("output", type=Path, nargs="?", help="clean exe (default: in place)")
    args = ap.parse_args()

    data = args.input.read_bytes()
    clean = build_clean(data)
    (args.output or args.input).write_bytes(clean)
    return 0


if __name__ == "__main__":
    sys.exit(main())
