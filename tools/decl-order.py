#!/usr/bin/env python3
"""Check a class header's declaration order against the image's COMDAT runs.

MSVC 6 emits a vftable group's inline virtuals in source (declaration) order, and the link
keeps the first copy of each (docs/msvc6_comdat.md, sections 3 and 6). The kept copies of a
class's inline functions therefore form runs in the image, and inside each run the address
order is the declaration order of those functions in the original header.

For one class this tool finds those runs (consecutive .text symbols of the class in
symbols.txt), maps every function to its declaration through the header's
`// BW1W120 <address>` comments, and reports:

  MISPLACED   not in declaration order relative to the rest of its run (the complement
              of a longest in-order subsequence, so the smallest set of moves)
  NOT-INLINE  kept in a run of inline copies but declared without a body in the header
  NO-DECL     no declaration with this address in the header

Each function also shows its vftable slot and whether it overrides a base slot (OVR) or
adds one (NEW). Reordering overrides never changes the vftable. New virtuals keep their
slot order, except that MSVC groups a class's new overloads at the first declaration (later
declarations take the earlier slots), so a second overload may move down freely.

A run is a vftable group when every member is a slot of some ??_7X and sits next to ??_GX
with only slots of ??_7X in between. Runs inside the class's own unit that are not a group
are restricted to header-inline functions: out-of-line definitions follow the .cpp's
definition order instead. Runs that are neither a group nor hold a header-inline function
are skipped. Runs from different units constrain only their own members' relative order:
copies kept elsewhere are folded away and leave no gap.

Base-class bodies that come after `??_G` instead of first suggest the original unit used a
precompiled header holding the base headers (see reports/inline-decl-order.md).

Examples:
  python tools/decl-order.py --class MultiMapFixed
  python tools/decl-order.py --class Object --header src/Black/Object.h -v
"""

import argparse
from pathlib import Path
import re
import struct
import sys

sys.path.insert(0, str(Path(__file__).resolve().parent))
from decomp_binary import PE, BinaryError, Unresolved  # noqa: E402
from decomp_common import ROOT  # noqa: E402


def load_functions(config):
    funcs = []
    for line in (config / "symbols.txt").read_text(encoding="utf-8").splitlines():
        m = re.match(r"(\S+) = \.text:0x([0-9A-Fa-f]+); // type:function", line)
        if m:
            funcs.append((int(m.group(2), 16), m.group(1)))
    funcs.sort()
    return funcs


def load_symbol(config, name):
    for line in (config / "symbols.txt").read_text(encoding="utf-8").splitlines():
        if line.startswith(name + " = "):
            return int(re.search(r":0x([0-9A-Fa-f]+);", line).group(1), 16)
    return None


def load_units(config):
    units, current = [], None
    for line in (config / "splits.txt").read_text(encoding="utf-8").splitlines():
        if line and not line[0].isspace() and line.rstrip().endswith(":"):
            current = line.rstrip()[:-1]
        m = re.match(r"\s+\.text\s+start:0x([0-9A-Fa-f]+) end:0x([0-9A-Fa-f]+)", line)
        if m and current:
            units.append((int(m.group(1), 16), int(m.group(2), 16), current))
    return units


def unit_at(units, address):
    for start, end, name in units:
        if start <= address < end:
            return name
    return "?"


def vftable(pe, config, cls):
    """Slots of ??_7cls read from the image up to the first word outside .text."""
    address = load_symbol(config, "??_7%s@@6B@" % cls)
    if address is None:
        return None
    text = next(s for s in pe.sections if s.name == ".text")
    slots = []
    while True:
        try:
            value, = struct.unpack("<I", pe.bytes(address + 4 * len(slots), 4))
        except (BinaryError, Unresolved):
            break
        if not text.address <= value < text.address + max(text.size, text.virtual_size):
            break
        slots.append(value)
    return slots


def vftable_groups(pe, config, funcs, cls):
    """Addresses of cls's functions that sit in a vftable group around some ??_GX.

    A group is ??_GX with the functions of ??_7X's slots directly before it (the unit's own
    bodies) and directly after it (bodies from a precompiled header).
    """
    position = {address: index for index, (address, _) in enumerate(funcs)}
    grouped = set()
    for address, name in funcs:
        m = re.match(r"\?\?_G(\w+)@@UAEPAXI@Z$", name)
        if not m:
            continue
        slots = set(vftable(pe, config, m.group(1)) or [])
        if not slots:
            continue
        for step in (-1, 1):
            index = position[address] + step
            while 0 <= index < len(funcs) and funcs[index][0] in slots:
                if owner(funcs[index][1])[0] == cls:
                    grouped.add(funcs[index][0])
                index += step
        if m.group(1) == cls:
            grouped.add(address)
    return grouped


def find_header(cls):
    pattern = re.compile(r"^\s*(class|struct)\s+%s\b[^;]*$" % re.escape(cls))
    for base in ("src", "include"):
        for path in sorted((ROOT / base).rglob("*.h")):
            try:
                text = path.read_text(encoding="utf-8", errors="replace")
            except OSError:
                continue
            if any(pattern.match(line) for line in text.splitlines()):
                return path
    return None


def parse_class(path, cls):
    """Return (base, [(line, address, name, inline, virtual)]) for the class body."""
    lines = Path(path).read_text(encoding="utf-8", errors="replace").splitlines()
    pattern = re.compile(r"^\s*(class|struct)\s+%s\b(?P<rest>[^;]*)$" % re.escape(cls))
    start = next((i for i, line in enumerate(lines) if pattern.match(line)), None)
    if start is None:
        raise ValueError("class %s not found in %s" % (cls, path))
    base = re.search(r":\s*(?:public|protected|private)?\s*(\w+)", pattern.match(lines[start]).group("rest"))
    decls, depth, opened, address = [], 0, False, None
    i = start
    while i < len(lines):
        line = lines[i]
        m = re.match(r"\s*// BW1W120 (\S+)", line)
        if m:
            address = m.group(1)
        elif depth == 1 and address and line.strip() and not line.strip().startswith(("//", "#")):
            text, j = line, i
            while ";" not in text and "{" not in text and j + 1 < len(lines):
                j += 1
                text += " " + lines[j].strip()
            name = re.search(r"(~?\w+|operator\s*\S+)\s*\(", text)
            semi, brace = text.find(";"), text.find("{")
            inline = brace >= 0 and (semi < 0 or brace < semi)
            decls.append((i + 1, address, name.group(1) if name else "?", inline, "virtual" in text))
            address = None
        code = line.split("//")[0]
        depth += code.count("{") - code.count("}")
        opened = opened or "{" in code
        if opened and depth == 0:
            break
        i += 1
    return (base.group(1) if base else None), decls


def owner(name):
    m = re.match(r"\?\?_G(\w+)@@", name)
    if m:
        return m.group(1), "??_G"
    m = re.match(r"\?([^@?]+)@(\w+)@@", name)
    if m:
        return m.group(2), m.group(1)
    return None, None


def in_order_keep(keys):
    """Indices of one longest non-decreasing subsequence."""
    best, prev = [1] * len(keys), [-1] * len(keys)
    for i in range(len(keys)):
        for j in range(i):
            if keys[j] <= keys[i] and best[j] + 1 > best[i]:
                best[i], prev[i] = best[j] + 1, j
    keep = set()
    i = max(range(len(keys)), key=best.__getitem__) if keys else -1
    while i >= 0:
        keep.add(i)
        i = prev[i]
    return keep


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("--class", dest="cls", required=True, help="class name as mangled (e.g. GameThingWithPos)")
    parser.add_argument("--header", help="header declaring the class (default: search src/ and include/)")
    parser.add_argument("--base", help="base class for OVR/NEW (default: first base in the header)")
    parser.add_argument("--version", default="BW1W120")
    parser.add_argument("--exe", help="image to read vftables from (default: orig/<version>/runblack-decrypted.exe)")
    parser.add_argument("-v", "--verbose", action="store_true", help="list every run member, not only problem runs")
    args = parser.parse_args(argv)

    config = ROOT / "config" / args.version
    header = Path(args.header) if args.header else find_header(args.cls)
    if header is None:
        parser.error("no header declares class %s; pass --header" % args.cls)
    base, decls = parse_class(header, args.cls)
    base = args.base or base
    by_address = {d[1].lower(): d for d in decls}

    pe = PE.read(args.exe or ROOT / "orig" / args.version / "runblack-decrypted.exe")
    slots = vftable(pe, config, args.cls) or []
    slot_of = {}
    for index, target in enumerate(slots):
        slot_of.setdefault(target, index)
    base_slots = len(vftable(pe, config, base) or []) if base else 0

    funcs = load_functions(config)
    grouped = vftable_groups(pe, config, funcs, args.cls)
    units = load_units(config)
    own_unit = None
    runs = []
    for index, (address, name) in enumerate(funcs):
        if owner(name)[0] != args.cls:
            continue
        if runs and runs[-1][-1] == index - 1:
            runs[-1].append(index)
        else:
            runs.append([index])

    print("%s in %s (base %s, %d slots, %d inherited)" % (args.cls, header, base, len(slots), base_slots))
    total = 0
    for run in runs:
        unit = unit_at(units, funcs[run[0]][0])
        members = []
        for index in run:
            address, name = funcs[index]
            members.append((address, name, owner(name)[1], by_address.get("%08x" % address)))
        group = all(m[0] in grouped for m in members)
        if Path(unit).stem == args.cls and not group:
            own_unit = unit
            members = [m for m in members if m[3] is not None and m[3][3]]
        inline = any(m[3] is not None and m[3][3] for m in members)
        if len(members) < 2 or not (inline or group):
            continue
        known = [k for k, m in enumerate(members) if m[3] is not None]
        keep = in_order_keep([members[k][3][0] for k in known])
        misplaced = {known[j] for j in range(len(known)) if j not in keep}
        flags = []
        for k, (address, name, short, decl) in enumerate(members):
            marks = []
            if k in misplaced:
                marks.append("MISPLACED")
            if decl is not None and not decl[3]:
                marks.append("NOT-INLINE")
            if decl is None and short != "??_G":
                marks.append("NO-DECL")
            flags.append(marks)
        problems = sum(1 for marks in flags if marks)
        total += problems
        print("-- %08x..%08x  %d functions in %s: %d misplaced, %d not inline, %d undeclared" % (
            members[0][0], members[-1][0], len(members), unit, len(misplaced),
            sum("NOT-INLINE" in f for f in flags), sum("NO-DECL" in f for f in flags)))
        if not problems and not args.verbose:
            continue
        for (address, name, short, decl), marks in zip(members, flags):
            slot = slot_of.get(address)
            kind = "" if slot is None else ("OVR" if slot < base_slots else "NEW")
            print("   %08x  %-45s %-6s slot %-4s %-3s %s" % (
                address, short, "L%d" % decl[0] if decl else "-", "-" if slot is None else slot, kind,
                " ".join(marks)))
    if own_unit:
        print("(runs in %s list header-inline functions only)" % own_unit)
    print("%s: %d flagged functions" % (args.cls, total))
    return 0


if __name__ == "__main__":
    sys.exit(main())
