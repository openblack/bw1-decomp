#!/usr/bin/env python3
"""Rename the target's initializer labels (_$E, _$S) in symbols.txt after the compiled objects.

cl numbers a unit's dynamic-initializer stubs and bodies (_$E) and their .CRT$XCU slots (_$S) in
one sequence, and a precompiled header shifts that sequence (docs/msvc6_pch.md). objdiff pairs
these local labels by name, so when the numbering changes, the labels in symbols.txt have to
follow. This pairs each target initializer with the compiled one by structure, not by name:
.CRT$XCU slots in order (the std::ctype guard's registration, recognised by its use of the
guard, apart), the stub's calls (body, atexit thunk) by position, and, where the two objects
initialise their statics in a different order, the static initialised or the code. Only target
names that are already such labels are renamed, and slots dtk left unnamed (lbl_<address>); a
label that would collide with a new name moves to an unused number.

Run it for the configured version after ninja has split the target and compiled the units, then
run ninja again to split with the new names:

  python tools/relabel-initializers.py            # list the renames
  python tools/relabel-initializers.py --apply    # rewrite symbols.txt
  python tools/relabel-initializers.py --unit Player --apply
"""

import argparse
import bisect
import collections
from pathlib import Path
import re
import sys

sys.path.insert(0, str(Path(__file__).resolve().parent))
from decomp_binary import Coff  # noqa: E402
from decomp_common import ROOT, load_project, resolve_unit  # noqa: E402

LABEL = re.compile(r"^_?\$[ES]\d+$")
# dtk's name for an unnamed address: a .CRT$XCU slot named so takes its compiled label.
AUTO_SLOT = re.compile(r"^lbl_[0-9A-F]{8}$")
CTYPE_GUARD = "ctype@G"
STORAGE_STATIC = 3
UNNAMED = ("fn_", "lbl_", "gap_", "pad_", "data_", "jumptable_", "crt_xc", "$", "_$", ".", "__real@", "??_C@")


class Initializers:
    """The .CRT$XCU entries of one object: (slot symbol index or None, stub symbol index)."""

    def __init__(self, path):
        self.coff = coff = Coff.read(path)
        self.symbols = coff.symbols
        self.defined = collections.defaultdict(list)
        for sym in self.symbols.values():
            if sym.section > 0 and not (sym.storage == STORAGE_STATIC and sym.name == coff.section(sym.section).name):
                self.defined[sym.section].append(sym)
        self.functions = {}
        for sec in coff.sections:
            if sec.name == ".text":
                starts = sorted((sym for sym in self.defined[sec.index] if sym.type & 0x20), key=lambda sym: sym.value)
                for index, sym in enumerate(starts):
                    end = starts[index + 1].value if index + 1 < len(starts) else sec.size
                    self.functions[sym.index] = (sec, sym.value, end)
        self.entries = []
        for sec in coff.sections:
            if sec.name == ".CRT$XCU":
                slots = {sym.value: sym.index for sym in self.defined[sec.index]}
                for reloc in sorted(sec.relocations, key=lambda r: r.offset):
                    self.entries.append((slots.get(reloc.offset), reloc.symbol_index))
        # Which occurrence of its name each symbol is, in section and offset (address) order.
        self.occurrence = {}
        self.count = collections.Counter()
        for sym in sorted(self.symbols.values(), key=lambda sym: (sym.section, sym.value, sym.index)):
            if sym.section > 0:
                self.occurrence[sym.index] = self.count[sym.name]
                self.count[sym.name] += 1

    def name(self, index):
        return self.symbols[index].name

    def relocations(self, index):
        sec, start, end = self.functions[index]
        return [r for r in sorted(sec.relocations, key=lambda r: r.offset) if start <= r.offset < end]

    def fields(self, index):
        """(offset in the function, width) of each relocated field."""
        sec, start, end = self.functions[index]
        return [(r.offset - start, r.width) for r in self.relocations(index)]

    def code(self, index):
        """A function's bytes with its relocations blanked."""
        sec, start, end = self.functions[index]
        data = bytearray(self.coff.bytes(sec.index, start, end - start))
        for offset, width in self.fields(index):
            data[offset:offset + width] = bytes(width)
        return bytes(data)

    def chain(self, index):
        """The stub and the functions it refers to (body, atexit thunk), in order."""
        if index not in self.functions:
            return []
        return [index] + [r.symbol_index for r in self.relocations(index) if r.symbol_index in self.functions]

    def guard(self, index):
        return any(CTYPE_GUARD in self.name(r.symbol_index) for f in self.chain(index) for r in self.relocations(f))

    def key(self, index):
        """The name of the first static of this object the initializer refers to (the one it
        initialises), or None where it is unnamed."""
        for f in self.chain(index):
            sec = self.functions[f][0]
            for reloc in self.relocations(f):
                target = self.symbols[reloc.symbol_index]
                if target.section <= 0 or self.coff.section(target.section).name not in (".bss", ".data"):
                    continue
                name = target.name
                if name == self.coff.section(target.section).name:
                    offset = self.coff.addend(sec.index, reloc) if reloc.width == 4 else 0
                    named = [s.name for s in self.defined[target.section] if s.value == offset]
                    name = named[0] if named else None
                return None if name is None or name.startswith(UNNAMED) else name
        return None


def same_code(target, t, compiled, c):
    """Whether two chains have the same shape and code. The compiled code is compared without
    its trailing padding, as a prefix of the target's (target sizes may include padding), and
    with every relocation field of either side blanked: dtk does not find every address."""
    tc, cc = target.chain(t), compiled.chain(c)
    if len(tc) != len(cc):
        return False
    for a, b in zip(tc, cc):
        code = bytearray(compiled.code(b).rstrip(b"\x90\xcc"))
        mine = bytearray(target.code(a)[:len(code)])
        for start, width in compiled.fields(b) + target.fields(a):
            mine[start:start + width] = bytes(len(mine[start:start + width]))
            code[start:start + width] = bytes(len(code[start:start + width]))
        if mine != code:
            return False
    return True


def pair(target, compiled):
    """(target entry, compiled entry) for the initializers of a unit. The ctype guard's entries
    pair in order; the others pair in .CRT$XCU order where every pair initialises the same named
    static or has the same code, and otherwise each target entry takes the first unpaired
    compiled entry that does."""
    t_guard = [e for e in target.entries if target.guard(e[1])]
    c_guard = [e for e in compiled.entries if compiled.guard(e[1])]
    t_rest = [e for e in target.entries if not target.guard(e[1])]
    c_rest = [e for e in compiled.entries if not compiled.guard(e[1])]
    pairs = list(zip(t_guard, c_guard))

    def match(t, c):
        if len(target.chain(t[1])) != len(compiled.chain(c[1])):
            return False
        a, b = target.key(t[1]), compiled.key(c[1])
        if a is not None and b is not None:
            return a == b
        return same_code(target, t[1], compiled, c[1])

    if len(t_rest) == len(c_rest) and all(match(t, c) for t, c in zip(t_rest, c_rest)):
        return pairs + list(zip(t_rest, c_rest))
    used = set()
    for t in t_rest:
        for j, c in enumerate(c_rest):
            if j not in used and match(t, c):
                pairs.append((t, c))
                used.add(j)
                break
    return pairs


def renames(target, compiled):
    """Target symbol index -> compiled label, for the paired initializers."""
    found = collections.defaultdict(set)
    for (t_slot, t_stub), (c_slot, c_stub) in pair(target, compiled):
        if t_slot is not None and c_slot is not None and LABEL.match(compiled.name(c_slot)):
            if LABEL.match(target.name(t_slot)) or AUTO_SLOT.match(target.name(t_slot)):
                found[t_slot].add(compiled.name(c_slot))
        for a, b in zip(target.chain(t_stub), compiled.chain(c_stub)):
            if LABEL.match(target.name(a)) and LABEL.match(compiled.name(b)):
                found[a].add(compiled.name(b))
    return {index: names.pop() for index, names in found.items() if len(names) == 1}


def read_ranges(path):
    ranges, unit = collections.defaultdict(list), None
    for line in open(path):
        if line and not line[0].isspace() and line.rstrip().endswith(":"):
            unit = line.strip()[:-1]
        match = re.match(r"\s+(\S+)\s+start:0x([0-9A-Fa-f]+) end:0x([0-9A-Fa-f]+)", line)
        if match and unit:
            ranges[unit].append((int(match.group(2), 16), int(match.group(3), 16)))
    return ranges


def relabel(config, units, apply):
    ranges = read_ranges(config / "splits.txt")
    path = config / "symbols.txt"
    lines = path.read_text().split("\n")
    entries = []
    for i, line in enumerate(lines):
        match = re.match(r"^(\S+) = \.[\w$]+:0x([0-9A-Fa-f]+);", line)
        if match:
            entries.append((int(match.group(2), 16), i, match.group(1)))
    entries.sort()
    starts = [address for address, _, _ in entries]
    total = 0
    for unit in units:
        split = unit["metadata"]["source_path"].removeprefix("src/")
        target_path, base_path = ROOT / unit["target_path"], ROOT / unit["base_path"]
        if split not in ranges or not target_path.is_file() or not base_path.is_file():
            continue
        lines_of = collections.defaultdict(list)  # name -> its lines in the unit, in address order
        for lo, hi in sorted(ranges[split]):
            for _, i, name in entries[bisect.bisect_left(starts, lo):bisect.bisect_left(starts, hi)]:
                lines_of[name].append(i)
        target, compiled = Initializers(target_path), Initializers(base_path)
        found = renames(target, compiled)
        if any(target.count[target.name(index)] != len(lines_of[target.name(index)]) for index in found):
            print(f"{split}: the target object is older than symbols.txt; run ninja first", file=sys.stderr)
            continue
        new_name = {lines_of[target.name(index)][target.occurrence[index]]: new
                    for index, new in found.items() if target.name(index) != new}
        if not new_name:
            continue
        # A label already in the unit that a new name would duplicate moves to an unused number.
        names = [n for n in lines_of if LABEL.match(n)] + list(new_name.values())
        names += [compiled.name(i) for i in compiled.symbols if LABEL.match(compiled.name(i))]
        fresh = max((int(n.lstrip("_$ES")) for n in names), default=0) + 1
        taken = set(new_name.values())
        for name in sorted(lines_of, key=lambda n: lines_of[n][0]):
            for i in lines_of[name]:
                if name in taken and i not in new_name:
                    new_name[i] = re.sub(r"\d+$", str(fresh), name)
                    fresh += 1
        for i in sorted(new_name):
            old = lines[i].split(" = ", 1)[0]
            lines[i] = new_name[i] + lines[i][len(old):]
            if "scope:" not in lines[i]:
                # A label is local to its unit; dtk renames a repeated global name.
                lines[i] += " scope:local"
            print(f"{split}: {old} -> {new_name[i]}")
        total += len(new_name)
    if apply and total:
        path.write_text("\n".join(lines))
    return total


def main():
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    selector = parser.add_mutually_exclusive_group()
    selector.add_argument("--unit", help="one unit (exact name or unique basename)")
    selector.add_argument("--prefix", default="", help="units whose name starts with this prefix")
    parser.add_argument("--apply", action="store_true", help="rewrite symbols.txt (default: list the renames)")
    args = parser.parse_args()
    project = load_project()
    if args.unit:
        units = [resolve_unit(unit=args.unit)]
    else:
        units = [u for u in project["units"] if u["name"].startswith(args.prefix)
                 and u.get("target_path") and u.get("base_path") and u.get("metadata", {}).get("source_path")]
    by_config = collections.defaultdict(list)
    for unit in units:
        parts = Path(unit["target_path"]).parts
        # build/<version>/obj/... or build/<version>/<module>/obj/...
        config = ROOT / "config" / parts[1] if parts[2] == "obj" else ROOT / "config" / parts[1] / parts[2]
        by_config[config].append(unit)
    total = 0
    for config, members in sorted(by_config.items()):
        if (config / "symbols.txt").is_file() and (config / "splits.txt").is_file():
            total += relabel(config, members, args.apply)
    print(f"{total} labels {'renamed' if args.apply else 'to rename'}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
