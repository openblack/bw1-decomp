#!/usr/bin/env python3
"""Extract one member from a static library (.lib) to a specific output path.

`llvm-ar p <archive> <member>` streams the named member's bytes to stdout; the
natural shell redirect `> <out>` is not portable. Windows ninja runs rule
commands without a shell, so both the `>` redirect and the quotes around the
member name reach llvm-ar as literal arguments and the extraction fails
("'>' was not found"). Doing the stream-and-write in Python behaves identically
on every host, with no shell dependency.

Usage: ar_extract.py <llvm-ar> <archive> <member> <out>
"""
import subprocess
import sys


def main(argv):
    if len(argv) != 5:
        sys.exit("usage: ar_extract.py <llvm-ar> <archive> <member> <out>")
    ar, archive, member, out = argv[1:]
    # `p` prints the named member's raw bytes to stdout; capture them as binary.
    result = subprocess.run([ar, "p", archive, member], stdout=subprocess.PIPE)
    if result.returncode != 0:
        return result.returncode
    with open(out, "wb") as handle:
        handle.write(result.stdout)
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))
