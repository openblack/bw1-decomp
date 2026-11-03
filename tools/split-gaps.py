#!/usr/bin/env python3
"""List address ranges that no unit in splits.txt claims.

Usage:
    python3 tools/split-gaps.py                          # BW1W120 main exe, every section
    python3 tools/split-gaps.py -v BW1W110               # another version
    python3 tools/split-gaps.py -s .text -s .rdata       # only these sections
    python3 tools/split-gaps.py -m LHLog                 # a DLL module's splits
    python3 tools/split-gaps.py --min-size 0x10          # hide tiny alignment holes

A section that the header declares with vaddr/end is checked over that whole range.
A section declared only by align (.text, .rdata, ...) is checked between the first
and last range some unit claims, so a hole before the first or after the last unit
is not reported.
"""
import argparse
import os
import re
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

SECTION = re.compile(r"^\s+(\S+)\s+type:\S+(?:\s+vaddr:0x([0-9A-Fa-f]+)\s+end:0x([0-9A-Fa-f]+))?")
RANGE = re.compile(r"^\s+(\S+)\s+start:0x([0-9A-Fa-f]+)\s+end:0x([0-9A-Fa-f]+)")


def parse(path):
    """Return (extents, claimed): extents[name] = (start, end) or None, claimed[name] = [(start, end, unit)]."""
    extents = {}
    claimed = {}
    unit = None
    in_sections = False
    for line in open(path):
        line = line.rstrip("\n")
        if line.startswith("Sections:"):
            in_sections = True
            continue
        if line and not line[0].isspace():
            in_sections = False
            unit = line.rstrip(":")
            continue
        if in_sections:
            m = SECTION.match(line)
            if m:
                extents[m[1]] = (int(m[2], 16), int(m[3], 16)) if m[2] else None
            continue
        m = RANGE.match(line)
        if m and unit:
            claimed.setdefault(m[1], []).append((int(m[2], 16), int(m[3], 16), unit))
    return extents, claimed


def gaps(extent, ranges):
    ranges = sorted(ranges)
    if extent is None:
        if not ranges:
            return []
        extent = (ranges[0][0], max(r[1] for r in ranges))
    pos = extent[0]
    out = []
    for start, end, unit in ranges:
        if start > pos:
            out.append((pos, start))
        pos = max(pos, end)
    if pos < extent[1]:
        out.append((pos, extent[1]))
    return out


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("-v", "--version", default="BW1W120", help="config/<version> to read (default BW1W120)")
    ap.add_argument("-m", "--module", help="DLL module directory under the version (default: main executable)")
    ap.add_argument("-s", "--section", action="append", help="section to check, repeatable (default: all)")
    ap.add_argument("--min-size", type=lambda x: int(x, 0), default=1, help="skip gaps smaller than this")
    args = ap.parse_args()

    cfg = os.path.join(ROOT, "config", args.version)
    if args.module:
        cfg = os.path.join(cfg, args.module)
    path = os.path.join(cfg, "splits.txt")
    if not os.path.isfile(path):
        sys.exit(f"no such file: {path}")

    extents, claimed = parse(path)
    names = list(extents) + [n for n in claimed if n not in extents]
    if args.section:
        unknown = [s for s in args.section if s not in names]
        if unknown:
            sys.exit(f"unknown section(s): {', '.join(unknown)}; have: {', '.join(names)}")
        names = args.section

    total = 0
    for name in names:
        found = [g for g in gaps(extents.get(name), claimed.get(name, [])) if g[1] - g[0] >= args.min_size]
        if not found:
            continue
        size = sum(e - s for s, e in found)
        total += size
        print(f"{name}: {len(found)} gaps, 0x{size:x} bytes")
        for s, e in found:
            print(f"  {s:08x}-{e:08x}  size 0x{e - s:x}")
    print(f"total unclaimed: 0x{total:x} bytes")


if __name__ == "__main__":
    main()
