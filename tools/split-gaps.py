#!/usr/bin/env python3
"""List address ranges that no unit in splits.txt claims.

Usage:
    python3 tools/split-gaps.py                          # BW1W120 main exe, every section
    python3 tools/split-gaps.py -v BW1W110               # another version
    python3 tools/split-gaps.py -s .text -s .rdata       # only these sections
    python3 tools/split-gaps.py -m LHLog                 # a DLL module's splits
    python3 tools/split-gaps.py --min-size 0x10          # hide tiny alignment holes
    python3 tools/split-gaps.py -s .text --range 0x401000-0x7AEBB0 --check
                                                         # fail if that range has a gap
    python3 tools/split-gaps.py --units --check          # fail on configure.py units no splits claim

A section that the header declares with vaddr/end is checked over that whole range.
A section declared only by align (.text, .rdata, ...) is checked between the first
and last range some unit claims, so a hole before the first or after the last unit
is not reported.

--range limits the report to gaps inside the given address ranges (clipped to them). With
--check the script exits with status 1 when it reports a gap; CI runs it over the ranges
that every version should cover completely.

--allow-padding leaves out alignment padding: a gap shorter than 16 bytes and than the
alignment of the address it ends at, which the linker inserts to align the next object.

--units instead lists the objects of configure.py that no version's splits.txt (executable
or module) claims: they compile to nothing in any build. The names are read from
configure.py's source, not by running it, so this needs no original files.
"""
import argparse
import ast
import glob
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


def configured_units():
    """Unit names of the objects configure.py lists, as its *Object helpers derive them."""

    def literal(node):
        if isinstance(node, ast.Constant) and isinstance(node.value, str):
            return node.value
        if isinstance(node, ast.BinOp) and isinstance(node.op, ast.Add):
            return literal(node.right)  # prefix + "member.obj": the name keeps the basename only
        return None

    tree = ast.parse(open(os.path.join(ROOT, "configure.py"), encoding="utf-8").read())
    names = set()
    for node in ast.walk(tree):
        if not (isinstance(node, ast.Call) and isinstance(node.func, ast.Name) and node.func.id.endswith("Object")):
            continue
        helper = node.func.id
        keywords = {k.arg: literal(k.value) for k in node.keywords if k.arg}
        if helper == "LibObject" and len(node.args) >= 3:
            archive, member = literal(node.args[1]), literal(node.args[2])
            if archive is None or member is None:
                continue
            name = "lib/" + archive + "/" + member.replace("\\", "/").rsplit("/", 1)[-1]
        elif len(node.args) >= 2 and literal(node.args[1]) is not None:
            name = literal(node.args[1])
        else:
            continue  # a helper's own definition, passing its parameters on
        module = "LHMultiplayer" if helper == "MultiplayerGameSpyObject" else keywords.get("module")
        if module and helper in ("LibObject", "GameSpyObject", "MultiplayerGameSpyObject"):
            name = module + "/" + name
        names.add(name)
    return names


def split_units():
    """Names of the units any version's splits.txt, executable or module, claims."""
    units = set()
    for path in glob.glob(os.path.join(ROOT, "config", "*", "splits.txt")) + glob.glob(
            os.path.join(ROOT, "config", "*", "*", "splits.txt")):
        for line in open(path, encoding="utf-8"):
            if line[:1] not in ("", " ", "\t", "\n") and line.rstrip().endswith(":"):
                units.add(line.rstrip()[:-1])
    return units


def is_padding(start, end):
    """A gap the linker leaves to align the object at `end`: shorter than that alignment, at most 15 bytes."""
    size = end - start
    return size < 16 and size < (end & -end)


def parse_range(text):
    start, sep, end = text.partition("-")
    if not sep or int(end, 16) <= int(start, 16):
        raise argparse.ArgumentTypeError(f"expected START-END in hex, got {text!r}")
    return int(start, 16), int(end, 16)


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("-v", "--version", default="BW1W120", help="config/<version> to read (default BW1W120)")
    ap.add_argument("-m", "--module", help="DLL module directory under the version (default: main executable)")
    ap.add_argument("-s", "--section", action="append", help="section to check, repeatable (default: all)")
    ap.add_argument("--min-size", type=lambda x: int(x, 0), default=1, help="skip gaps smaller than this")
    ap.add_argument("--range", action="append", type=parse_range, metavar="START-END",
                    help="only report gaps inside this address range, repeatable (default: everywhere)")
    ap.add_argument("--allow-padding", action="store_true",
                    help="leave out gaps that only align the next object (shorter than 16 bytes and its end's alignment)")
    ap.add_argument("--units", action="store_true", help="list configure.py units no version's splits.txt claims")
    ap.add_argument("--check", action="store_true", help="exit with status 1 if anything is reported")
    args = ap.parse_args()

    if args.units:
        empty = sorted(configured_units() - split_units())
        for name in empty:
            print(f"{name}: in configure.py, claimed by no version's splits.txt")
        print(f"configure.py units without splits: {len(empty)}")
        if args.check and empty:
            sys.exit(1)
        return

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
        found = gaps(extents.get(name), claimed.get(name, []))
        if args.range:
            found = [(max(s, lo), min(e, hi)) for s, e in found for lo, hi in args.range if s < hi and lo < e]
        found = [g for g in found if g[1] - g[0] >= args.min_size]
        if args.allow_padding:
            found = [g for g in found if not is_padding(*g)]
        if not found:
            continue
        size = sum(e - s for s, e in found)
        total += size
        print(f"{name}: {len(found)} gaps, 0x{size:x} bytes")
        for s, e in found:
            print(f"  {s:08x}-{e:08x}  size 0x{e - s:x}")
    print(f"total unclaimed: 0x{total:x} bytes")
    if args.check and total:
        sys.exit(1)


if __name__ == "__main__":
    main()
