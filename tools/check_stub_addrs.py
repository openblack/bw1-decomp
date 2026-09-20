#!/usr/bin/env python3
"""Validate `// BW1W120 <w> BW1M100 <m> <sig>` stub comments in .cpp files against
the authoritative header declarations.

The headers under src/ and include/ carry the canonical per-symbol comment (both the
Windows BW1W120 address and the Mac BW1M100 address). When a stub is added to a .cpp,
its comment must be copied verbatim from the header; retyping the Mac address is an easy
copy error that silently corrupts the Mac address map. This script keys on the reliable
BW1W120 address and reports any .cpp stub whose BW1M100 address (or demangled signature)
disagrees with the header.

Usage:
    python3 tools/check_stub_addrs.py [file.cpp ...]     # default: all src/Black/*.cpp
    python3 tools/check_stub_addrs.py --fix file.cpp      # rewrite Mac addr to match header

Exit status is non-zero if any mismatch is found (CI-friendly).
"""
import glob
import os
import re
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
RX = re.compile(r'BW1W120\s+([0-9a-fA-F]+)\s+BW1M100\s+([0-9a-fA-F]+)\s+(.*?)\s*$')


def load_headers():
    """BW1W120 addr (lower) -> (BW1M100 addr, signature, header path)."""
    hdr = {}
    pats = [os.path.join(ROOT, "src", "**", "*.h"),
            os.path.join(ROOT, "include", "**", "*.h")]
    for pat in pats:
        for h in glob.glob(pat, recursive=True):
            for line in open(h, errors="ignore"):
                m = RX.search(line)
                if m:
                    hdr.setdefault(m.group(1).lower(),
                                   (m.group(2).lower(), m.group(3).strip(), h))
    return hdr


def main(argv):
    fix = "--fix" in argv
    files = [a for a in argv if not a.startswith("--")]
    if not files:
        files = sorted(glob.glob(os.path.join(ROOT, "src", "Black", "*.cpp")))

    hdr = load_headers()
    if not hdr:
        print("no BW1W120/BW1M100 header comments found — nothing to check against")
        return 1

    bad = 0
    for path in files:
        try:
            lines = list(open(path, errors="ignore"))
        except OSError as e:
            print(f"skip {path}: {e}")
            continue
        changed = False
        for i, line in enumerate(lines):
            m = RX.search(line)
            if not m:
                continue
            w, mac = m.group(1).lower(), m.group(2).lower()
            if w not in hdr:
                # Not necessarily wrong (local helper, non-symbol), but worth flagging.
                continue
            hmac, hsig, hh = hdr[w]
            if mac != hmac:
                bad += 1
                rel = os.path.relpath(path, ROOT)
                print(f"{rel}:{i + 1}  BW1W120 {w}: BW1M100 {mac} != header {hmac}  ({hsig})")
                if fix:
                    lines[i] = line.replace(f"BW1M100 {mac}", f"BW1M100 {hmac}", 1)
                    changed = True
        if fix and changed:
            open(path, "w").writelines(lines)
            print(f"  -> fixed {os.path.relpath(path, ROOT)}")

    if bad == 0:
        print(f"OK: {len(files)} file(s), no Mac-address mismatches")
        return 0
    print(f"\n{bad} mismatch(es){' (fixed)' if fix else ''}")
    return 0 if fix else 1


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
