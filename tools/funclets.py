#!/usr/bin/env python3
"""EH funclets ($L<n>, .text$x): every job the project does with them, in one tool.

  relabel  Rename the target's funclet labels and EH tables in symbols.txt after the compiled
           objects. A header change renumbers the funclets ($L<n>) and tables ($T<n>) of every /GX
           unit that includes it, and objdiff pairs these local labels by name, so the reports drop
           while the hashes pass. Run it for the configured version after ninja, then run ninja
           again.
             python tools/funclets.py relabel            # list the renames
             python tools/funclets.py relabel --apply    # rewrite symbols.txt
             python tools/funclets.py relabel --check    # exit 1 if any label is out of date
             python tools/funclets.py relabel --prefix LHMultiplayer/ --apply
  owners   Which split unit owns each funclet of the original image's .text$x [LO, HI) (default:
           all of it), from the EH tables, not from symbols.txt. Prints runs `start end unit`.
             python tools/funclets.py owners BW1W110 00896280 008963C8
             python tools/funclets.py owners BW1W110 --at 00896300   # the run holding one address
  holders  Give every funclet run in [LO, HI) an explicit `.text$x` line in splits.txt, for when a
           lib object claims its own funclets (see the libcmt-obj-matching skill).
             python tools/funclets.py holders BW1W110 00896280 008963C8 [--apply]

relabel pairs funclets through each function's EH tables (tools/ehtables.py), not by name. For a
function both objects define, its handler stub leads to the FuncInfo, whose unwind map lists one
action per state: the funclets, in state order. The handler is a $L label too. Handlers of the
same function, and funclets of the same function and state, pair when their bytes are the same,
relocated fields aside. So do the function's tables (the FuncInfo, its unwind map and its try-block
map), in that order, and the tables a function's code points at that no FuncInfo lists (the scope
table of an __except), by where the code refers to them. The target names it renames are $L and $T
labels and dtk's fn_/lbl_<address>.
A label already in the unit that a new name would duplicate moves to an unused number, and a
renamed label is scope:local.

owners attributes each funclet to the unit whose code registers its handler stub (`push stub`, or
`mov eax, stub; call __EH_prolog`): the stub itself, the unwind actions and the catch handlers its
FuncInfo lists. A funclet extends to the next funclet start. An owner in code not split into any
unit is carried by the nearest preceding unit that holds extracted bytes (neither a lib object
nor linked from source), printed as `unit (carried)`.
"""

import argparse
import bisect
import collections
from pathlib import Path
import re
import struct
import sys

sys.path.insert(0, str(Path(__file__).resolve().parent))
from decomp_binary import BinaryError, Coff  # noqa: E402
from decomp_common import ROOT, load_project, resolve_unit  # noqa: E402
import ehtables  # noqa: E402

LABEL = re.compile(r"^\$L\d+$")
TABLE = re.compile(r"^\$T\d+$")
NUMBERED = re.compile(r"^\$[LT]\d+$")
RENAMEABLE = re.compile(r"^(\$L\d+|fn_[0-9A-F]{8}|lbl_[0-9A-F]{8})$")
RENAMEABLE_TABLE = re.compile(r"^(\$T\d+|lbl_[0-9A-F]{8})$")
STORAGE_STATIC = 3
STORAGE_FUNCTION = 101  # /Zi's .bf/.lf/.ef markers, which sit inside a function
SYMBOL = re.compile(r"^(\S+) = \.([\w$]+):0x([0-9A-Fa-f]+);(.*)$")
IMAGE_BASE = 0x400000


# relabel ----------------------------------------------------------------------------------------


class Funclets:
    """The EH funclets of each function of one object, by function name."""

    def __init__(self, path):
        self.coff = coff = Coff.read(path)
        self.defined = collections.defaultdict(list)  # section -> [(value, name)]
        for sym in coff.symbols.values():
            if sym.section > 0 and sym.storage != STORAGE_FUNCTION and not (
                    sym.storage == STORAGE_STATIC and sym.name == coff.section(sym.section).name):
                self.defined[sym.section].append((sym.value, sym.name))
        for entries in self.defined.values():
            entries.sort()
        self.where = {}
        for section, entries in self.defined.items():
            for value, name in entries:
                self.where.setdefault(name, (section, value))
        self.reader = ehtables.CoffReader(coff)
        self.relocs = self.reader.relocs

    def end(self, section, value):
        entries = self.defined[section]
        i = bisect.bisect_right(entries, (value, "￿"))
        return entries[i][0] if i < len(entries) else self.coff.section(section).size

    def name_at(self, section, value):
        for v, name in self.defined[section]:
            if v == value and not name.startswith("."):
                return name
        return None

    def code(self, section, value, size=None):
        """A funclet's bytes (or `size` bytes of a table) with its relocated fields zeroed."""
        end = self.end(section, value) if size is None else value + size
        data = bytearray(self.reader.code((section, value), end - value))
        for offset in self.relocs[section]:
            if value <= offset < end:
                data[offset - value:offset - value + 4] = bytes(4)
        return bytes(data)

    def funcinfo(self, function):
        """(handler, FuncInfo) of `function`, or None without EH tables."""
        if function not in self.where:
            return None
        section, value = self.where[function]
        for offset in sorted(self.relocs[section]):
            if not value <= offset < self.end(section, value):
                continue
            handler = self.reader.ptr((section, offset))
            if not handler:
                continue
            info = ehtables.stub_funcinfo(self.reader, handler)
            funcinfo = info and ehtables.read_funcinfo(self.reader, info, catches=False)
            if funcinfo:
                return handler, funcinfo
        return None

    def of(self, function):
        """[handler, then the action of each unwind state] as (section, offset, name) or None, or
        None without EH tables."""
        found = self.funcinfo(function)
        if not found:
            return None
        handler, funcinfo = found
        out = [(*handler, self.name_at(*handler))]
        for action in funcinfo.actions:
            out.append(action and (*action, self.name_at(*action)))
        return out

    def tables(self, function):
        """The FuncInfo, unwind map and try-block map of `function` as (section, offset, size,
        name), or None without EH tables."""
        found = self.funcinfo(function)
        if not found:
            return None
        return [(*loc, size, self.name_at(*loc)) for loc, size in found[1].tables()]

    def referenced_tables(self, function):
        """The $T<n> tables `function`'s code points at (the scope table of an __except, which no
        FuncInfo lists), as (offset in the function, section, offset, size, name), in code order."""
        if function not in self.where:
            return []
        section, value = self.where[function]
        starts = sorted(sym.value for sym in self.coff.symbols.values()
                        if sym.section == section and sym.type & 0x20 and sym.value > value)
        end = starts[0] if starts else self.coff.section(section).size
        out = []
        for offset in sorted(self.relocs[section]):
            if not value <= offset < end:
                continue
            sym = self.coff.symbols[self.relocs[section][offset].symbol_index]
            if sym.section > 0 and sym.storage == STORAGE_STATIC and RENAMEABLE_TABLE.match(sym.name):
                size = self.end(sym.section, sym.value) - sym.value
                out.append((offset - value, sym.section, sym.value, size, sym.name))
        return out


def renames(target, compiled):
    """{target funclet or table name: compiled name} for the pairs that agree."""
    found = collections.defaultdict(set)
    for function in target.where:
        if function.startswith(("$", ".")):
            continue
        theirs = {c[0]: c for c in compiled.referenced_tables(function)}
        for t in target.referenced_tables(function):
            c = theirs.get(t[0])
            if c is None or t[3] < c[3] or not TABLE.match(c[4]):
                continue
            if target.code(t[1], t[2], c[3]) == compiled.code(c[1], c[2], c[3]):
                found[t[4]].add(c[4])
        ours, theirs = target.of(function), compiled.of(function)
        if not ours or not theirs or len(ours) != len(theirs):
            continue
        for t, c in zip(ours, theirs):
            if not t or not c or not t[2] or not c[2]:
                continue
            if not RENAMEABLE.match(t[2]) or not LABEL.match(c[2]):
                continue
            if target.code(t[0], t[1]) == compiled.code(c[0], c[1]):
                found[t[2]].add(c[2])
        ours, theirs = target.tables(function), compiled.tables(function)
        if not ours or not theirs or len(ours) != len(theirs):
            continue
        for t, c in zip(ours, theirs):
            if not t[3] or not c[3] or t[2] != c[2]:
                continue
            if not RENAMEABLE_TABLE.match(t[3]) or not TABLE.match(c[3]):
                continue
            if target.code(t[0], t[1], t[2]) == compiled.code(c[0], c[1], c[2]):
                found[t[3]].add(c[3])
    pairs = {t: c.pop() for t, c in found.items() if len(c) == 1}
    if len(set(pairs.values())) != len(pairs):
        return None
    return pairs


def read_ranges(path):
    ranges, unit = collections.defaultdict(list), None
    for line in open(path):
        if line and not line[0].isspace() and line.rstrip().endswith(":"):
            unit = line.strip()[:-1]
        match = re.match(r"\s+[\w.$]+\s+start:0x([0-9A-Fa-f]+) end:0x([0-9A-Fa-f]+)", line)
        if match and unit:
            ranges[unit].append((int(match.group(1), 16), int(match.group(2), 16)))
    return ranges


def relabel(config, units, apply, verbose=True):
    ranges = read_ranges(config / "splits.txt")
    path = config / "symbols.txt"
    lines = path.read_text().split("\n")
    entries = []
    for i, line in enumerate(lines):
        match = SYMBOL.match(line)
        if match:
            entries.append((int(match.group(3), 16), i, match.group(1)))
    entries.sort()
    starts = [address for address, _, _ in entries]
    new_name = {}
    for unit in units:
        split = unit["metadata"]["source_path"].removeprefix("src/")
        if split not in ranges:
            # A module can split a shared source under its own directory
            # (LHAudio's LHAudio/LHFile/ver3.0/LHFile.cpp): name it after the target object.
            parts = Path(unit["target_path"]).parts
            split = "/".join(parts[parts.index("obj") + 1:])[: -len(".o")] + Path(split).suffix
        target_path, base_path = ROOT / unit["target_path"], ROOT / unit["base_path"]
        if split not in ranges or not target_path.is_file() or not base_path.is_file():
            continue
        lines_of = collections.defaultdict(list)
        for lo, hi in sorted(ranges[split]):
            for _, i, name in entries[bisect.bisect_left(starts, lo):bisect.bisect_left(starts, hi)]:
                lines_of[name].append(i)
        try:
            target, compiled = Funclets(target_path), Funclets(base_path)
            pairs = renames(target, compiled)
        except BinaryError as exc:
            print(f"{split}: {exc}", file=sys.stderr)
            continue
        if pairs is None:
            print(f"{split}: two target funclets pair with one compiled funclet; skipped", file=sys.stderr)
            continue
        pairs = {t: c for t, c in pairs.items() if t != c}
        if not pairs:
            continue
        if any(len(lines_of[t]) != 1 for t in pairs):
            print(f"{split}: the target object is older than symbols.txt; run ninja first", file=sys.stderr)
            continue
        # A label already in the unit that a new name would duplicate moves to an unused number.
        taken = set(pairs.values())
        numbers = [int(n[2:]) for n in list(lines_of) + list(compiled.where) if NUMBERED.match(n)]
        fresh = max(numbers, default=0) + 1
        for name in sorted(lines_of, key=lambda n: lines_of[n][0]):
            if name in taken and name not in pairs:
                for i in lines_of[name]:
                    new_name[i] = f"{name[:2]}{fresh}"
                    fresh += 1
        for t, c in pairs.items():
            new_name[lines_of[t][0]] = c
        if verbose:
            for t, c in sorted(pairs.items()):
                print(f"{split}: {t} -> {c}")
    if apply and new_name:
        for i in sorted(new_name):
            old = lines[i].split(" = ", 1)[0]
            lines[i] = new_name[i] + lines[i][len(old):]
            if "scope:" not in lines[i]:
                # A label is local to its unit; dtk renames a repeated global name.
                lines[i] += " scope:local"
        path.write_text("\n".join(lines))
    return len(new_name)


def cmd_relabel(args):
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
            total += relabel(config, members, args.apply, verbose=not args.quiet)
    print(f"{total} labels {'renamed' if args.apply else 'to rename'}")
    return 1 if args.check and total else 0


# owners / holders -------------------------------------------------------------------------------


def image_of(version):
    found = sorted((ROOT / "orig" / version).glob("*-decrypted.exe"))
    if len(found) != 1:
        sys.exit(f"orig/{version}: expected one *-decrypted.exe, found {len(found)}")
    return found[0].read_bytes()


def image_ranges(version, exe):
    """.text, .text$x and the whole image as [start, end) VAs: the PE section table, and the
    sub-section header at the top of splits.txt for .text$x."""
    pe = struct.unpack_from("<I", exe, 0x3C)[0]
    count = struct.unpack_from("<H", exe, pe + 6)[0]
    table = pe + 24 + struct.unpack_from("<H", exe, pe + 20)[0]
    sections = {}
    for i in range(count):
        name = exe[table + i * 40:table + i * 40 + 8].rstrip(b"\0").decode(errors="replace")
        size, rva = struct.unpack_from("<II", exe, table + i * 40 + 8)
        sections.setdefault(name, (IMAGE_BASE + rva, IMAGE_BASE + rva + size))
    header, inside = {}, False
    for line in (ROOT / "config" / version / "splits.txt").read_text().splitlines():
        if line.startswith("Sections:"):
            inside = True
            continue
        if inside and not line.startswith("\t"):
            break
        match = re.match(r"\t(\S+)\s+type:\S+\s+vaddr:0x([0-9A-Fa-f]+)\s+end:0x([0-9A-Fa-f]+)", line)
        if match:
            header[match.group(1)] = (int(match.group(2), 16), int(match.group(3), 16))
    funclets = header[".text$x"]
    return {
        ".text": (sections[".text"][0], funclets[0]),
        ".text$x": funclets,
        "image": (min(a for a, _ in sections.values()), max(b for _, b in sections.values())),
    }


def text_units(version):
    units, current = [], None
    for line in open(ROOT / "config" / version / "splits.txt"):
        if not line.startswith("\t") and line.strip().endswith(":"):
            current = line.strip()[:-1]
        elif line.startswith("\t") and current and current != "Sections":
            match = re.match(r"\t\.text\s+start:0x([0-9A-Fa-f]+)\s+end:0x([0-9A-Fa-f]+)", line)
            if match:
                units.append((int(match.group(1), 16), int(match.group(2), 16), current))
    return sorted(units)


def linked_from_source(version):
    """Units this version links from source: they cannot hold extracted bytes."""
    config = (ROOT / "configure.py").read_text()
    out = set()
    pattern = r'\b(?:Object|GameCodeObject|IntelObject)\((Matching|MatchingFor\([^)]*\)|NonMatching|Equivalent)\s*,\s*"([^"]+)"'
    for match in re.finditer(pattern, config):
        status, name = match.group(1), match.group(2)
        if status == "Matching" or (status.startswith("MatchingFor") and f'"{version}"' in status):
            out.add(name)
    return out


def owners(version, lo=None, hi=None):
    """(runs, starts): runs of consecutive funclets with one owning unit as [start, end, unit], and
    {funclet start: (owner VA or None, kind)}."""
    exe = image_of(version)
    ranges = image_ranges(version, exe)
    x0, x1 = ranges[".text$x"]
    lo, hi = x0 if lo is None else lo, x1 if hi is None else hi
    reader = ehtables.ImageReader(lambda va, n: exe[va - IMAGE_BASE:va - IMAGE_BASE + n])
    units, linked = text_units(version), linked_from_source(version)

    def carrier_of(va):
        best = None
        for s, _, name in units:
            if s > va:
                break
            if name.startswith("lib/") or "/lib/" in name or name in linked:
                continue
            best = name
        return best

    def unit_of(va):
        for s, e, name in units:
            if s <= va < e:
                return name
        carrier = carrier_of(va)
        return f"{carrier} (carried)" if carrier else "(unsplit)"

    # owners register the stub with `push stub` (68 imm32) or `mov eax, stub; call __EH_prolog`
    pushes = {}
    t0, t1 = ranges[".text"]
    for i in range(t0 - IMAGE_BASE, t1 - IMAGE_BASE - 9):
        if exe[i] == ehtables.PUSH or (exe[i] == ehtables.MOV_EAX and exe[i + 5] == ehtables.CALL):
            pushes.setdefault(struct.unpack_from("<I", exe, i + 1)[0], []).append(i + IMAGE_BASE)
    image_lo, image_hi = ranges["image"]
    owner_of = {}  # funclet start -> (owner VA, kind)
    for stub in range(max(lo, x0), min(hi, x1) - 9):
        info = ehtables.stub_funcinfo(reader, stub)
        if info is None or not image_lo <= info < image_hi - 4:
            continue
        funcinfo = ehtables.read_funcinfo(reader, info)
        if funcinfo is None:
            continue
        owner = pushes.get(stub, [None])[0]
        owner_of[stub] = (owner, "thunk")
        for action in funcinfo.actions:
            if action and lo <= action < hi:
                owner_of.setdefault(action, (owner, "unwind"))
        for block in funcinfo.blocks:
            for handler in block.handlers:
                if handler and lo <= handler < hi:
                    owner_of.setdefault(handler, (owner, "catch"))
    starts = sorted(owner_of)
    runs = []
    for j, start in enumerate(starts):
        end = starts[j + 1] if j + 1 < len(starts) else hi
        owner = owner_of[start][0]
        unit = unit_of(owner) if owner else "(no owner)"
        if runs and runs[-1][2] == unit and runs[-1][1] == start:
            runs[-1][1] = end
        else:
            runs.append([start, end, unit])
    if starts and starts[0] > lo:
        runs.insert(0, [lo, starts[0], "(unattributed lead-in)"])
    return runs, owner_of


def cmd_owners(args):
    if args.at is not None:
        if args.lo is not None:
            sys.exit("give either --at or LO HI")
        runs, _ = owners(args.version)
        found = [run for run in runs if run[0] <= args.at < run[1]]
        if not found:
            sys.exit(f"{args.at:08X} is not in {args.version}'s .text$x")
        start, end, unit = found[0]
        print(f"{start:08X} {end:08X} {unit}")
        return 0
    runs, owner_of = owners(args.version, args.lo, args.hi)
    for start, end, unit in runs:
        print(f"{start:08X} {end:08X} {unit}")
    if args.verbose:
        for start in sorted(owner_of):
            owner, kind = owner_of[start]
            print(f"   {start:08X} {kind:6s} owner={owner and hex(owner)}")
    return 0


def cmd_holders(args):
    runs, _ = owners(args.version, args.lo, args.hi)
    # lead-in -> the following run; unsplit or no owner -> the preceding run
    merged = []
    for start, end, unit in runs:
        unit = unit.replace(" (carried)", "")
        if unit.startswith("("):
            if merged and not unit.startswith("(unattributed lead-in"):
                merged[-1][1] = end
                continue
            merged.append([start, end, None])
            continue
        if merged and merged[-1][2] is None:
            merged[-1][1], merged[-1][2] = end, unit
            continue
        if merged and merged[-1][2] == unit and merged[-1][1] == start:
            merged[-1][1] = end
            continue
        merged.append([start, end, unit])
    if merged and merged[-1][2] is None:
        sys.exit("trailing run has no named holder")
    seen = {}
    for start, _, unit in merged:
        if unit in seen:
            sys.exit(f"{unit} would hold two separate .text$x runs ({seen[unit]:08X}, {start:08X}); split by hand")
        seen[unit] = start
    path = ROOT / "config" / args.version / "splits.txt"
    text = path.read_text()
    for start, end, unit in merged:
        line = f"\t.text$x     start:0x{start:08X} end:0x{end:08X} align:{4 if start % 4 == 0 else 1}"
        print(f"{start:08X}-{end:08X} {unit}")
        match = re.search(rf"^{re.escape(unit)}:\n((?:\t.*\n)*)", text, re.M)
        if not match:
            sys.exit(f"no splits block for {unit}")
        block = match.group(0)
        if re.search(r"^\t\.text\$x\s", block, re.M):
            new = re.sub(r"^\t\.text\$x\s[^\n]*", line, block, count=1, flags=re.M)
        else:
            # keep section order: .text$x right after .text
            new = re.sub(r"(^\t\.text\s[^\n]*\n)", lambda m: m.group(1) + line + "\n", block, count=1, flags=re.M)
            if new == block:
                new = block.rstrip("\n") + "\n" + line + "\n"
        text = text.replace(block, new, 1)
    if args.apply:
        path.write_text(text)
        print(f"applied to {path}")
    return 0


def main():
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    sub = parser.add_subparsers(dest="command", required=True)
    p = sub.add_parser("relabel", help="rename the target's $L labels after the compiled objects")
    selector = p.add_mutually_exclusive_group()
    selector.add_argument("--unit", help="one unit (exact name or unique basename)")
    selector.add_argument("--prefix", default="", help="units whose name starts with this prefix")
    mode = p.add_mutually_exclusive_group()
    mode.add_argument("--apply", action="store_true", help="rewrite symbols.txt (default: list the renames)")
    mode.add_argument("--check", action="store_true", help="exit 1 if any label is out of date")
    p.add_argument("--quiet", action="store_true", help="print only the total")
    p.set_defaults(run=cmd_relabel)
    hexaddr = lambda s: int(s, 16)  # noqa: E731
    for name, run, text in (("owners", cmd_owners, "which unit owns each .text$x funclet"),
                            ("holders", cmd_holders, "write .text$x holder lines into splits.txt")):
        p = sub.add_parser(name, help=text)
        p.add_argument("version")
        p.add_argument("lo", type=hexaddr, nargs="?", help="start VA (hex; default: .text$x start)")
        p.add_argument("hi", type=hexaddr, nargs="?", help="end VA (hex; default: .text$x end)")
        if name == "owners":
            p.add_argument("--at", type=hexaddr, help="print only the funclet run that contains this VA (hex)")
            p.add_argument("--verbose", action="store_true", help="also list every funclet start")
        else:
            p.add_argument("--apply", action="store_true", help="rewrite splits.txt")
        p.set_defaults(run=run)
    args = parser.parse_args()
    return args.run(args)


if __name__ == "__main__":
    sys.exit(main())
