#!/usr/bin/env python3
"""Rename the target's initializer labels (_$E, _$S) in symbols.txt after the compiled objects.

cl numbers a unit's dynamic-initializer stubs and bodies (_$E) and their .CRT$XCU slots (_$S) in
one sequence, and a precompiled header shifts that sequence (docs/msvc6_pch.md). The numbers are
not in the binary: objdiff pairs these local labels by name, so the labels in symbols.txt follow
the compiled objects, and have to follow them again whenever the numbering changes.

This pairs each target initializer with the compiled one by structure, not by name. The
std::ctype guard's registration (recognised by its use of the guard) pairs with the compiled
one. The other .CRT$XCU entries pair in order, as both objects run their initializers in
declaration order, where they initialise the same named static or, failing a name on either
side, have the same code: the same bytes and the same named relocation targets. A unit whose
source is still incomplete compiles fewer initializers than the target holds; the entries it
does compile still pair, the earliest compatible ones first.

A split can still hold more than one original object, each ending in its own guard. Its
entries are then cut into one part per guard, and only the part holding the functions the
compiled object defines pairs with it (`--parts` lists the splits that need a new unit).

The target names renamed are the labels, the crt_xc_fn_<what>_<unit>_<address> placeholders and
dtk's fn_/lbl_<address>. A .CRT$XCU symbol that spans several slots is cut into one symbol per
slot, so that each slot can take its label. A label that would collide with a new name moves to
an unused number.

Run it for the configured version after ninja has split the target and compiled the units, then
run ninja again to split with the new names:

  python tools/relabel-initializers.py            # list the renames
  python tools/relabel-initializers.py --apply    # rewrite symbols.txt
  python tools/relabel-initializers.py --unit Player --apply
  python tools/relabel-initializers.py --parts    # splits holding more than one object
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
# Names that only stand in for a label: the crt_xc_fn_<what>_<unit>_<address> placeholders given
# to initializer stubs, bodies and the ctype guard's stub and atexit thunk, and dtk's fn_<address>.
PLACEHOLDER = re.compile(r"^(crt_xc_fn_\w+_[0-9A-F]{8}|fn_[0-9A-F]{8})$")
CTYPE_GUARD = "ctype@G"
STORAGE_STATIC = 3
COMDAT = 0x1000
SELECT_ANY = 2
UNNAMED = ("fn_", "lbl_", "gap_", "pad_", "data_", "jumptable_", "crt_xc", "$", "_$", ".", "__real@", "??_C@")
# Names that say nothing about what a relocation refers to. Constants (__real@, ??_C@) are
# named by their value, so they do.
ANONYMOUS = ("fn_", "lbl_", "gap_", "pad_", "data_", "jumptable_", "crt_xc", "$", "_$", ".")
SLOT = 4


def renameable(name):
    return bool(LABEL.match(name) or PLACEHOLDER.match(name))


class Initializers:
    """The .CRT$XCU entries of one object: (slot offset, slot symbol index or None, stub symbol
    index), in slot order."""

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
                    self.entries.append((reloc.offset, slots.get(reloc.offset), reloc.symbol_index))
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

    def targets(self, index):
        """Offset in the function -> the name of what the relocation there refers to, where that
        name says what it is."""
        sec, start, end = self.functions[index]
        named = {}
        for reloc in self.relocations(index):
            target = self.symbols[reloc.symbol_index]
            if target.section > 0 and target.name == self.coff.section(target.section).name:
                continue
            if not target.name.startswith(ANONYMOUS):
                named[reloc.offset - start] = target.name
        return named

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

    def own_functions(self):
        """The names of the functions this object defines itself: not the inline copies, whose
        COMDATs any object may define (IMAGE_COMDAT_SELECT_ANY)."""
        selection = {sym.section: sym.aux[0][14] for sym in self.symbols.values()
                     if sym.storage == STORAGE_STATIC and sym.aux and sym.section > 0
                     and sym.name == self.coff.section(sym.section).name}
        return {self.name(index) for index, (sec, _, _) in self.functions.items()
                if not sec.flags & COMDAT or selection.get(sec.index) != SELECT_ANY}


def same_code(target, t, compiled, c):
    """Whether two chains have the same shape and code. The compiled code is compared without
    its trailing padding, as a prefix of the target's (target sizes may include padding), and
    with every relocation field of either side blanked: dtk does not find every address. Where
    both sides name what a relocation refers to, the names have to agree."""
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
        names = target.targets(a)
        if any(names.get(offset, name) != name for offset, name in compiled.targets(b).items()):
            return False
    return True


def weight(target, t, compiled, c):
    """How strongly two entries pair: 3 for the same named static, 2 for the same code, 0 not;
    one more where the target's labels already are the compiled ones."""
    if len(target.chain(t[2])) != len(compiled.chain(c[2])):
        return 0
    a, b = target.key(t[2]), compiled.key(c[2])
    if a is not None and b is not None:
        score = 3 if a == b else 0
    else:
        score = 2 if same_code(target, t[2], compiled, c[2]) else 0
    if score and [target.name(f) for f in target.chain(t[2])] == [compiled.name(f) for f in compiled.chain(c[2])]:
        score += 1
    return score


def align(target, t_list, compiled, c_list):
    """The order-preserving pairing of the two lists with the largest total weight, taking the
    earliest compatible entries where several pairings are as good. An entry left over on both
    sides that is compatible with only the other then pairs out of order."""
    n, m = len(t_list), len(c_list)
    w = [[weight(target, t, compiled, c) for c in c_list] for t in t_list]
    best = [[0] * (m + 1) for _ in range(n + 1)]
    for i in reversed(range(n)):
        for j in reversed(range(m)):
            best[i][j] = max(best[i + 1][j], best[i][j + 1], best[i + 1][j + 1] + w[i][j] if w[i][j] else 0)
    pairs, i, j = [], 0, 0
    while i < n and j < m:
        if w[i][j] and best[i][j] == best[i + 1][j + 1] + w[i][j]:
            pairs.append((i, j))
            i, j = i + 1, j + 1
        elif best[i][j] == best[i + 1][j]:
            i += 1
        else:
            j += 1
    left_t = [i for i in range(n) if i not in {p[0] for p in pairs}]
    left_c = [j for j in range(m) if j not in {p[1] for p in pairs}]
    for i in left_t:
        fits = [j for j in left_c if w[i][j]]
        if len(fits) == 1 and [k for k in left_t if w[k][fits[0]]] == [i]:
            pairs.append((i, fits[0]))
    return [(t_list[i], c_list[j]) for i, j in pairs]


def parts(target):
    """The target's entries cut after each ctype guard (one part per original object), with the
    end of each part's guard in .text; None where the guards' slots and code disagree on order."""
    guards = [k for k, entry in enumerate(target.entries) if target.guard(entry[2])]
    ends = []
    for k in guards:
        chain = target.chain(target.entries[k][2])
        ends.append(max((target.functions[f][0].index, target.functions[f][2]) for f in chain))
    if ends != sorted(ends):
        return None
    cut, start = [], 0
    for k, end in zip(guards, ends):
        cut.append((target.entries[start:k + 1], end))
        start = k + 1
    if start < len(target.entries):
        cut.append((target.entries[start:], None))
    return cut


def own_part(target, compiled):
    """The target entries of the object the compiled one is: all of them, unless the split holds
    more guards than the compiled object. Then the part whose code defines the most functions
    the compiled object defines too; None where no part does, or two do equally."""
    t_guards = sum(target.guard(entry[2]) for entry in target.entries)
    c_guards = sum(compiled.guard(entry[2]) for entry in compiled.entries)
    if t_guards <= max(c_guards, 1):
        return target.entries
    cut = parts(target)
    if cut is None or c_guards != 1:
        return None
    names = compiled.own_functions()
    ends = [end for _, end in cut if end is not None]
    votes = collections.Counter()
    for index, (sec, start, _) in target.functions.items():
        if target.name(index) in names and not LABEL.match(target.name(index)):
            votes[bisect.bisect_left(ends, (sec.index, start + 1))] += 1
    ranked = votes.most_common(2)
    if not ranked or ranked[0][1] == 0 or (len(ranked) > 1 and ranked[1][1] == ranked[0][1]):
        return None
    part = ranked[0][0]
    return cut[part][0] if part < len(cut) else None


def pair(target, compiled):
    """(target entry, compiled entry) for the initializers of a unit: the ctype guards in order
    where both objects have as many, the others aligned in order."""
    entries = own_part(target, compiled)
    if entries is None:
        return []
    t_guard = [e for e in entries if target.guard(e[2])]
    c_guard = [e for e in compiled.entries if compiled.guard(e[2])]
    t_rest = [e for e in entries if not target.guard(e[2])]
    c_rest = [e for e in compiled.entries if not compiled.guard(e[2])]
    pairs = list(zip(t_guard, c_guard)) if len(t_guard) == len(c_guard) else []
    return pairs + align(target, t_rest, compiled, c_rest)


def renames(target, compiled):
    """(target symbol index -> compiled label, target slot offset -> compiled slot label) for the
    paired initializers."""
    found = collections.defaultdict(set)
    slots = {}
    for (t_offset, _, t_stub), (_, c_slot, c_stub) in pair(target, compiled):
        if c_slot is not None and LABEL.match(compiled.name(c_slot)):
            slots[t_offset] = compiled.name(c_slot)
        for a, b in zip(target.chain(t_stub), compiled.chain(c_stub)):
            if renameable(target.name(a)) and LABEL.match(compiled.name(b)):
                found[a].add(compiled.name(b))
    return {index: names.pop() for index, names in found.items() if len(names) == 1}, slots


def read_ranges(path, section=r"[\w.$]+"):
    ranges, unit = collections.defaultdict(list), None
    for line in open(path):
        if line and not line[0].isspace() and line.rstrip().endswith(":"):
            unit = line.strip()[:-1]
        match = re.match(r"\s+(" + section + r")\s+start:0x([0-9A-Fa-f]+) end:0x([0-9A-Fa-f]+)", line)
        if match and unit:
            ranges[unit].append((int(match.group(2), 16), int(match.group(3), 16)))
    return ranges


SYMBOL = re.compile(r"^(\S+) = \.([\w$]+):0x([0-9A-Fa-f]+);(.*)$")


def slot_lines(lines, entries, xcu, slots):
    """The .CRT$XCU symbol lines of a unit whose slots (address -> label) take a label: a
    symbol that spans one of them is cut into one symbol per slot, and a slot no symbol covers
    gets one. Returns ({line index: [lines replacing it]}, {line index: [lines to add after it]},
    {line index: label} for the symbols that already have their label)."""
    start, end = xcu
    found = []
    for address, i, name in entries[bisect.bisect_left([a for a, _, _ in entries], start):]:
        if address >= end:
            break
        match = SYMBOL.match(lines[i])
        size = re.search(r"size:0x([0-9A-Fa-f]+)", match.group(4))
        found.append((address, int(size.group(1), 16) if size else SLOT, i, name, match.group(2)))
    replaced, added, kept = {}, collections.defaultdict(list), {}
    covered = set()
    for address, size, i, name, section in found:
        inside = [a for a in range(address, address + size, SLOT) if a in slots]
        covered.update(inside)
        if not inside:
            continue
        if size == SLOT and slots[address] == name:
            kept[i] = name
            continue
        if size % SLOT or not (renameable(name) or AUTO_SLOT.match(name)):
            continue
        new = []
        for a in range(address, address + size, SLOT):
            mine = a == address and (not LABEL.match(name) or name not in slots.values())
            label = slots.get(a) or (name if mine else f"lbl_{a:08X}")
            new.append(slot_line(label, section, a))
        replaced[i] = new
    for a in sorted(set(slots) - covered):
        before = [f for f in found if f[0] < a]
        if before:
            added[before[-1][2]].append(slot_line(slots[a], before[-1][4], a))
    return replaced, added, kept


def slot_line(label, section, address):
    scope = " scope:local" if LABEL.match(label) else ""
    return f"{label} = .{section}:0x{address:08X}; // type:object size:0x{SLOT:X}{scope}"


def relabel(config, units, apply, verbose=True):
    ranges = read_ranges(config / "splits.txt")
    xcus = read_ranges(config / "splits.txt", r"\.CRT\$XCU")
    path = config / "symbols.txt"
    lines = path.read_text().split("\n")
    entries = []
    for i, line in enumerate(lines):
        match = SYMBOL.match(line)
        if match:
            entries.append((int(match.group(3), 16), i, match.group(1)))
    entries.sort()
    starts = [address for address, _, _ in entries]
    total = 0
    replaced, added = {}, collections.defaultdict(list)
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
        found, slots = renames(target, compiled)
        if any(target.count[target.name(index)] != len(lines_of[target.name(index)]) for index in found):
            print(f"{split}: the target object is older than symbols.txt; run ninja first", file=sys.stderr)
            continue
        assigned = {lines_of[target.name(index)][target.occurrence[index]]: new for index, new in found.items()}
        new_name = {i: new for i, new in assigned.items() if lines[i].split(" = ", 1)[0] != new}
        slot_new, slot_add = {}, {}
        if slots and split in xcus and len(xcus[split]) == 1:
            start = xcus[split][0][0]
            # The target's .CRT$XCU starts at the split's start; its named slots say so.
            known = {name: [a for a, _, n in entries if n == name] for name in
                     {target.name(slot) for _, slot, _ in target.entries if slot is not None}}
            if all(start + target.symbols[slot].value in known[target.name(slot)]
                   for _, slot, _ in target.entries if slot is not None and known[target.name(slot)]):
                slot_new, slot_add, kept = slot_lines(lines, entries, xcus[split][0],
                                                      {start + offset: name for offset, name in slots.items()})
                assigned.update(kept)
            else:
                print(f"{split}: .CRT$XCU does not start at the split's start", file=sys.stderr)
        if not new_name and not slot_new and not slot_add:
            continue
        # A label already in the unit that a new name would duplicate moves to an unused number.
        taken = set(assigned.values()) | {SYMBOL.match(text).group(1) for new in list(slot_new.values()) +
                                          list(slot_add.values()) for text in new}
        taken = {name for name in taken if LABEL.match(name)}
        names = [n for n in lines_of if LABEL.match(n)] + list(taken)
        names += [compiled.name(i) for i in compiled.symbols if LABEL.match(compiled.name(i))]
        fresh = max((int(n.lstrip("_$ES")) for n in names), default=0) + 1
        for name in sorted(lines_of, key=lambda n: lines_of[n][0]):
            for i in lines_of[name]:
                if name in taken and i not in assigned and i not in slot_new:
                    new_name[i] = re.sub(r"\d+$", str(fresh), name)
                    fresh += 1
        for i in sorted(new_name):
            old = lines[i].split(" = ", 1)[0]
            lines[i] = new_name[i] + lines[i][len(old):]
            if "scope:" not in lines[i]:
                # A label is local to its unit; dtk renames a repeated global name.
                lines[i] += " scope:local"
            if verbose:
                print(f"{split}: {old} -> {new_name[i]}")
        for i, new in slot_new.items():
            if verbose:
                print(f"{split}: {lines[i].split(' = ', 1)[0]} -> {', '.join(t.split(' = ', 1)[0] for t in new)}")
        for i, new in slot_add.items():
            if verbose:
                print(f"{split}: + {', '.join(t.split(' = ', 1)[0] for t in new)}")
        replaced.update(slot_new)
        for i, new in slot_add.items():
            added[i].extend(new)
        total += len(new_name) + sum(len(new) for new in slot_new.values()) + sum(len(new) for new in slot_add.values())
    if apply and total:
        out = []
        for i, line in enumerate(lines):
            out.extend(replaced.get(i, [line]))
            out.extend(added.get(i, []))
        path.write_text("\n".join(out))
    return total


def list_parts(config, units):
    """Print each split whose target holds more ctype guards than its compiled object."""
    for unit in units:
        split = unit["metadata"]["source_path"].removeprefix("src/")
        target_path, base_path = ROOT / unit["target_path"], ROOT / unit["base_path"]
        if not target_path.is_file() or not base_path.is_file():
            continue
        target, compiled = Initializers(target_path), Initializers(base_path)
        t_guards = sum(target.guard(entry[2]) for entry in target.entries)
        c_guards = sum(compiled.guard(entry[2]) for entry in compiled.entries)
        if t_guards <= max(c_guards, 1):
            continue
        cut = parts(target)
        own = own_part(target, compiled)
        print(f"{split}: {t_guards} objects")
        for entries, end in cut or []:
            names = [target.name(e[2]) for e in entries]
            mark = "*" if own is not None and entries == own else " "
            where = f".text end 0x{end[1]:X}" if end else "no guard"
            print(f"  {mark} {where}: {len(entries)} initializers: {', '.join(names)}")


def main():
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    selector = parser.add_mutually_exclusive_group()
    selector.add_argument("--unit", help="one unit (exact name or unique basename)")
    selector.add_argument("--prefix", default="", help="units whose name starts with this prefix")
    parser.add_argument("--apply", action="store_true", help="rewrite symbols.txt (default: list the renames)")
    parser.add_argument("--parts", action="store_true", help="list the splits that hold more than one object")
    parser.add_argument("--quiet", action="store_true", help="print only the totals")
    args = parser.parse_args()
    project = load_project()
    if args.unit:
        units = [resolve_unit(unit=args.unit)]
    else:
        units = [u for u in project["units"] if u["name"].startswith(args.prefix)
                 and u.get("target_path") and u.get("base_path") and u.get("metadata", {}).get("source_path")]
    by_config = collections.defaultdict(list)
    for unit in units:
        parts_ = Path(unit["target_path"]).parts
        # build/<version>/obj/... or build/<version>/<module>/obj/...
        config = ROOT / "config" / parts_[1] if parts_[2] == "obj" else ROOT / "config" / parts_[1] / parts_[2]
        by_config[config].append(unit)
    total = 0
    for config, members in sorted(by_config.items()):
        if (config / "symbols.txt").is_file() and (config / "splits.txt").is_file():
            if args.parts:
                list_parts(config, members)
            else:
                total += relabel(config, members, args.apply, verbose=not args.quiet)
    if not args.parts:
        print(f"{total} labels {'renamed' if args.apply else 'to rename'}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
