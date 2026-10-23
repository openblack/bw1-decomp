#!/usr/bin/env python3
"""Inspect MSVC 6 COMDATs: what an object emits and where the shipped image keeps it.

See docs/msvc6_comdat.md for the rules this tool helps to apply.

  dump OBJ...      List each section in emission order with its COMDAT selection
                   (ANY, LARGEST, NODUPLICATES, ...), the symbols defined in it, and
                   the weak externals (??_E -> ??_G defaults). Debug sections are
                   hidden unless --debug is given.

  where SELECTOR   For a unit's compiled object, list the functions the target object
                   does not contain and the unit whose .text range holds the copy the
                   image kept (from symbols.txt and splits.txt). These are objdiff's
                   "extra" functions. Select with --unit, --source, or --complete
                   (every unit with metadata.complete, optionally filtered by --prefix).

  order SELECTOR   Compare the emission order of a unit's compiled object with its target
                   object (docs/msvc6_pch.md): of the names both define, how many are in
                   target order (the longest such subsequence), for .text functions, .bss
                   symbols, RTTI type descriptors and .CRT$XCU initializers (named after
                   the data they initialise), and whether each registers the
                   std::ctype<unsigned short> guard. Select with --unit, --source or
                   --prefix; --base DIR reads the compiled objects from another build of
                   the same paths; --runs prints the .text order as runs of classes.

  initializers     For the statics several units initialise dynamically (header statics),
                   whether each target object holds them in .bss in reverse .CRT$XCU order,
                   as /Yu lays them out (docs/msvc6_pch.md), or not, as a compile without a
                   PCH may. Statics are matched across units by name, or by their
                   initializer's code where unnamed. Select with --prefix; --skip NAME leaves
                   a static out; --units lists each unit.

Examples:
  python tools/comdat-scan.py dump build/BW1W120/src/Black/GameThing.o
  python tools/comdat-scan.py where --unit WorshipSiteUpgrade
  python tools/comdat-scan.py where --complete --prefix runblack/Black/ --summary
  python tools/comdat-scan.py order --unit Abode --runs
  python tools/comdat-scan.py initializers --prefix runblack/Black/ --skip _EighthScale --skip _PI_OVER_2

Only external (storage class 2) function definitions are compared; per-unit statics
such as _$E initializers are numbered independently in each object and skipped.
"""

import argparse
import bisect
import hashlib
import collections
from pathlib import Path
import re
import struct
import sys

sys.path.insert(0, str(Path(__file__).resolve().parent))
from decomp_binary import Coff  # noqa: E402
from decomp_common import ROOT, load_project, resolve_unit  # noqa: E402

IMAGE_SCN_LNK_COMDAT = 0x1000
SELECTIONS = {1: "NODUPLICATES", 2: "ANY", 3: "SAME_SIZE", 4: "EXACT_MATCH", 5: "ASSOCIATIVE", 6: "LARGEST"}
STORAGE_EXTERNAL, STORAGE_STATIC, STORAGE_WEAK_EXTERNAL = 2, 3, 105


def section_selections(coff):
    """Map section index -> (selection, associated section) from the section symbols."""
    result = {}
    for sym in coff.symbols.values():
        if sym.section > 0 and sym.storage == STORAGE_STATIC and sym.aux and sym.value == 0 \
                and sym.name == coff.section(sym.section).name and sym.section not in result:
            number, = struct.unpack_from("<H", sym.aux[0], 12)
            result[sym.section] = (sym.aux[0][14], number)
    return result


def dump(path, debug=False):
    coff = Coff.read(path)
    selections = section_selections(coff)
    defined = collections.defaultdict(list)
    for sym in coff.symbols.values():
        if sym.section > 0 and not (sym.storage == STORAGE_STATIC and sym.aux):
            defined[sym.section].append(sym)
    print(f"== {path}")
    for sec in coff.sections:
        if sec.name.startswith(".debug") and not debug:
            continue
        kind = ""
        if sec.flags & IMAGE_SCN_LNK_COMDAT:
            selection, number = selections.get(sec.index, (0, 0))
            kind = "COMDAT " + SELECTIONS.get(selection, str(selection))
            if selection == 5:
                kind += f" -> [{number}]"
        print(f"  [{sec.index:3}] {sec.name:8} size={sec.size:#07x} {kind}")
        for sym in sorted(defined[sec.index], key=lambda s: s.value):
            print(f"          +{sym.value:#06x} {sym.name}" + (" (static)" if sym.storage == STORAGE_STATIC else ""))
    for sym in coff.symbols.values():
        if sym.section == 0 and sym.storage == STORAGE_WEAK_EXTERNAL and sym.aux:
            tag, = struct.unpack_from("<I", sym.aux[0], 0)
            print(f"  weak external {sym.name} -> default {coff.symbols[tag].name}")


def functions(path):
    coff = Coff.read(path)
    names = []
    for sym in coff.symbols.values():
        if sym.section > 0 and sym.storage == STORAGE_EXTERNAL and coff.section(sym.section).name == ".text" \
                and sym.name not in names:
            names.append(sym.name)
    return names


def defined_names(path):
    """Every defined symbol name, including weak definitions dtk writes for weak-scope symbols."""
    return {sym.name for sym in Coff.read(path).symbols.values() if sym.section > 0}


class Image:
    """Function addresses and per-unit .text ranges of one module's configuration."""

    def __init__(self, config_dir):
        self.text = {}
        unit = None
        for line in (config_dir / "splits.txt").read_text(encoding="utf-8").splitlines():
            match = re.match(r"^(\S.*):$", line)
            if match:
                unit = match.group(1)
                continue
            match = re.match(r"\s+\.text\s+start:0x([0-9A-Fa-f]+) end:0x([0-9A-Fa-f]+)", line)
            if match and unit and unit != "Sections":
                self.text.setdefault(unit, (int(match.group(1), 16), int(match.group(2), 16)))
        self.order = [unit for unit, _ in sorted(self.text.items(), key=lambda item: item[1])]
        self.address = {}
        for line in (config_dir / "symbols.txt").read_text(encoding="utf-8").splitlines():
            match = re.match(r"(\S+) = \.text:0x([0-9A-Fa-f]+); // type:function", line)
            if match:
                self.address.setdefault(match.group(1), int(match.group(2), 16))

    def unit_at(self, address):
        for unit, (start, end) in self.text.items():
            if start <= address < end:
                return unit
        return None


def config_dir_for(unit_name, project):
    version = None
    for unit in project["units"]:
        match = re.match(r"build/([^/]+)/", unit.get("target_path", ""))
        if match:
            version = match.group(1)
            break
    base = ROOT / "config" / version
    module = unit_name.split("/", 1)[0]
    return base / module if (base / module / "symbols.txt").exists() else base


def where(units, project, summary, limit):
    images = {}
    totals = collections.Counter()
    keepers = collections.Counter()
    distinct = set()
    for entry in units:
        config_dir = config_dir_for(entry["name"], project)
        image = images.setdefault(config_dir, Image(config_dir))
        source = entry["metadata"]["source_path"]
        split_unit = source[len("src/"):] if source.startswith("src/") else source
        compiled = functions(ROOT / entry["base_path"])
        target = defined_names(ROOT / entry["target_path"])
        extra = [name for name in compiled if name not in target]
        kept = collections.Counter()
        rows = []
        for name in extra:
            address = image.address.get(name)
            keeper = image.unit_at(address) if address is not None else None
            position = "?"
            if keeper and split_unit in image.order:
                delta = image.order.index(keeper) - image.order.index(split_unit)
                position = "earlier" if delta < 0 else "later" if delta > 0 else "same"
            kept[keeper or "<not in symbols.txt>"] += 1
            totals[position] += 1
            if keeper:
                keepers[keeper] += 1
                distinct.add(name)
            rows.append((name, address, keeper, position))
        print(f"{entry['name']}: {len(compiled)} functions compiled, {len(compiled) - len(extra)} kept here, "
              f"{len(extra)} kept elsewhere")
        if summary:
            continue
        for keeper, count in kept.most_common():
            print(f"  {count:5}  {keeper}")
        for name, address, keeper, position in rows[:limit]:
            where_text = f"{address:#010x} {keeper} ({position})" if address is not None else "not in symbols.txt"
            print(f"    {name}  ->  {where_text}")
        if len(rows) > limit:
            print(f"    ... {len(rows) - limit} more (raise --limit)")
    copies = sum(keepers.values())
    print(f"\n{copies} copies kept in another unit ({len(distinct)} distinct functions); "
          f"position of the keeper in link order: {dict(totals)}")
    for keeper, count in keepers.most_common(10):
        print(f"  {count:5} ({100 * count / max(copies, 1):5.1f}%)  {keeper}")


# std::ctype<unsigned short>::id's atexit registration and the flag guarding it in every unit.
CTYPE_GUARD = "?id@?$ctype@G@std@@$E"
CTYPE_GUARD_FLAG = "??_B?1???id@?$ctype@G@std@@$D@@9@51"
# Labels the target objects give unnamed code and data, and compiler-numbered locals.
UNNAMED = ("fn_", "crt_xc", "gap_", "pad_", "lbl_", "data_", "jumptable_", "$", "_$", ".", "??_C@", "__real@")


def in_order(target, compiled):
    """How many of the names both lists hold appear in target order: (in order, shared)."""
    position = {name: index for index, name in enumerate(compiled)}
    tails = []
    for index in (position[name] for name in target if name in position):
        slot = bisect.bisect_left(tails, index)
        tails[slot:slot + 1] = [index]
    return len(tails), sum(name in position for name in target)


def emission_order(path):
    """Names in emission order: .text functions, .bss symbols, RTTI, .CRT$XCU initializers."""
    coff = Coff.read(path)
    defined = collections.defaultdict(list)
    for sym in coff.symbols.values():
        if sym.section > 0 and not (sym.storage == STORAGE_STATIC and sym.name == coff.section(sym.section).name):
            defined[sym.section].append(sym)
    order = {"text": [], "bss": [], "rtti": [], "crt": []}
    function_at = {}
    guard = False
    for sec in coff.sections:
        for sym in sorted(defined[sec.index], key=lambda s: s.value):
            guard |= sym.name == CTYPE_GUARD
            if sec.name == ".text" and sym.type & 0x20:
                function_at[sym.index] = sec, sym
                if sym.storage == STORAGE_EXTERNAL and not sym.name.startswith(UNNAMED):
                    order["text"].append(sym.name)
            elif sec.name == ".bss" and not sym.name.startswith(UNNAMED):
                order["bss"].append(sym.name)
            elif sec.name == ".data" and sym.name.startswith("??_R0"):
                order["rtti"].append(sym.name)
        guard |= any(coff.symbols[r.symbol_index].name in (CTYPE_GUARD, CTYPE_GUARD_FLAG) for r in sec.relocations)

    def initialised(index, depth=0):
        """The first named symbol an initializer refers to, through its thunks."""
        if index not in function_at:
            return None
        sec, sym = function_at[index]
        ends = [s.value for s in defined[sec.index] if s.value > sym.value and s.type & 0x20]
        end = min(ends, default=sec.size)
        for reloc in sorted(sec.relocations, key=lambda r: r.offset):
            target = coff.symbols[reloc.symbol_index]
            name = target.name
            if not sym.value <= reloc.offset < end:
                continue
            if target.section > 0 and name == coff.section(target.section).name and reloc.width == 4:
                # cl refers to a unit's statics through their section: name the one at the addend.
                offset = coff.addend(sec.index, reloc)
                named = [s for s in defined[target.section] if s.value <= offset and not s.name.startswith("$")]
                name = max(named, key=lambda s: s.value).name if named else name
            if "ctype@G" in name:
                return "<ctype guard>"
            if name.startswith(("_$E", "fn_", "crt_xc", "??__E")) and depth < 3:
                found = initialised(reloc.symbol_index, depth + 1)
                if found or name.startswith("??__E"):
                    return found or name
            elif not name.startswith(UNNAMED + ("_atexit", "__imp", "??_7")):
                return name
        return None

    for sec in coff.sections:
        if sec.name == ".CRT$XCU":
            for reloc in sorted(sec.relocations, key=lambda r: r.offset):
                name = initialised(reloc.symbol_index)
                if name and name not in order["crt"]:
                    order["crt"].append(name)
    order["text"] = list(dict.fromkeys(order["text"]))
    return order, guard


def class_runs(names):
    """Function names as runs of their classes, with each scalar deleting destructor shown."""
    runs = []
    for name in names:
        match = re.match(r"\?\?_([GE])(\w+)@@", name)
        if match:
            runs.append([f"??_{match.group(1)}{match.group(2)}", 0])
            continue
        match = re.match(r"\?(?:\?[0-9A-Z]|[^?@]+@)(\?\$)?([^@]+)@", name)
        owner = (match.group(2) + ("<>" if match.group(1) else "")) if match else "-"
        if runs and runs[-1][0] == owner and runs[-1][1]:
            runs[-1][1] += 1
        else:
            runs.append([owner, 1])
    return " ".join(owner if not count else f"{owner}({count})" for owner, count in runs)


def order(units, base, runs):
    print(f"{'unit':40} {'.text':>11} {'.bss':>7} {'RTTI':>7} {'CRT':>7}  ctype guard (target/ours)")
    for entry in units:
        compiled_path = ROOT / entry["base_path"]
        if base:
            compiled_path = Path(base) / Path(entry["base_path"]).name
        if not compiled_path.is_file():
            continue
        target, target_guard = emission_order(ROOT / entry["target_path"])
        compiled, guard = emission_order(compiled_path)
        cells = [f"{a}/{b}" for a, b in (in_order(target[k], compiled[k]) for k in ("text", "bss", "rtti", "crt"))]
        print(f"{entry['name'].rsplit('/', 1)[-1]:40} {cells[0]:>11} {cells[1]:>7} {cells[2]:>7} {cells[3]:>7}  "
              f"{'yes' if target_guard else 'no'}/{'yes' if guard else 'no'}")
        if runs:
            print("  target:   " + class_runs(target["text"]))
            print("  compiled: " + class_runs(compiled["text"]))


def crt_statics(coff):
    """(.bss offset, symbol name at it, initializer signature) of each static the .CRT$XCU
    initializers store to, in .CRT$XCU order. The signature is the initializer's code with
    its relocations blanked, plus what it refers to besides .bss (constants by value)."""
    symbols = coff.symbols
    defined = collections.defaultdict(list)
    for sym in symbols.values():
        if sym.section > 0 and not (sym.storage == STORAGE_STATIC and sym.name == coff.section(sym.section).name):
            defined[sym.section].append(sym)
    functions = {}
    for sec in coff.sections:
        if sec.name == ".text":
            starts = sorted((sym for sym in defined[sec.index] if sym.type & 0x20), key=lambda sym: sym.value)
            for index, sym in enumerate(starts):
                end = starts[index + 1].value if index + 1 < len(starts) else sec.size
                functions[sym.index] = (sec, sym, end)
    bss = {sec.index for sec in coff.sections if sec.name == ".bss" and not sec.flags & IMAGE_SCN_LNK_COMDAT}

    def store(index, depth=0):
        if index not in functions:
            return None
        sec, sym, end = functions[index]
        relocations = [r for r in sorted(sec.relocations, key=lambda r: r.offset) if sym.value <= r.offset < end]
        for reloc in relocations:
            target = symbols[reloc.symbol_index]
            if "ctype@G" in target.name:
                return "guard"
            if target.section in bss:
                base = 0 if target.name == coff.section(target.section).name else target.value
                offset = base + (coff.addend(sec.index, reloc) if reloc.width == 4 else 0)
                named = [s.name for s in defined[target.section] if s.value == offset and not s.name.startswith("$")]
                code = bytearray(coff.bytes(sec.index, sym.value, end - sym.value))
                refers = []
                for other in relocations:
                    start = other.offset - sym.value
                    code[start:start + other.width] = bytes(other.width)
                    referred = symbols[other.symbol_index]
                    if referred.section in bss:
                        continue
                    if referred.section > 0 and coff.section(referred.section).name.startswith(".rdata"):
                        value = referred.value
                        if referred.name == coff.section(referred.section).name:
                            value = coff.addend(sec.index, other)
                        refers.append(coff.bytes(referred.section, value, 4).hex())
                    else:
                        refers.append(referred.name)
                signature = hashlib.md5(bytes(code).rstrip(b"\x90\xcc") + repr(refers).encode()).hexdigest()
                return offset, named[0] if named else None, signature
            if reloc.symbol_index in functions and depth < 3:
                found = store(reloc.symbol_index, depth + 1)
                if found:
                    return found
        return None

    statics = []
    for sec in coff.sections:
        if sec.name == ".CRT$XCU":
            for reloc in sorted(sec.relocations, key=lambda r: r.offset):
                found = store(reloc.symbol_index)
                if found and found != "guard" and found[0] not in [s[0] for s in statics]:
                    statics.append(found)
    return statics


def initializers(units, skip, list_units):
    found = {unit["name"]: crt_statics(Coff.read(ROOT / unit["target_path"]))
             for unit in units if (ROOT / unit["target_path"]).is_file()}
    counts = collections.Counter(name for statics in found.values() for _, name, _ in statics if name)
    shared = {name for name, count in counts.items()
              if count >= 3 and name.startswith("_") and not name.startswith(("_?", "_$")) and name not in skip}
    by_signature = collections.defaultdict(set)
    for statics in found.values():
        for _, name, signature in statics:
            if name in shared:
                by_signature[signature].add(name)
    named = {signature: names.pop() for signature, names in by_signature.items() if len(names) == 1}
    reverse, other = [], []
    for unit, statics in found.items():
        kept = []
        for offset, name, signature in statics:
            key = name if name in shared else named.get(signature)
            if key and key not in [k for _, k in kept]:
                kept.append((offset, key))
        if len(kept) < 2:
            continue
        reversed_order = all(a > b for (a, _), (b, _) in zip(kept, kept[1:]))
        (reverse if reversed_order else other).append(unit.rsplit("/", 1)[-1])
        if list_units:
            print(f"{unit.rsplit('/', 1)[-1]:32} {'reverse' if reversed_order else 'not reverse':12} "
                  + " ".join(f"{key}@{offset:#x}" for offset, key in kept))
    print(f"{len(reverse)} of {len(reverse) + len(other)} units hold their shared initialised statics in reverse "
          f".CRT$XCU order; not: {', '.join(sorted(other, key=str.lower)) or '-'}")


def main():
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    sub = parser.add_subparsers(dest="command", required=True)
    p_dump = sub.add_parser("dump", help="list sections, COMDAT selections and symbols of COFF objects")
    p_dump.add_argument("objects", nargs="+")
    p_dump.add_argument("--debug", action="store_true", help="also list .debug$* sections")
    p_where = sub.add_parser("where", help="locate the image's copies of a unit's extra functions")
    selector = p_where.add_mutually_exclusive_group(required=True)
    selector.add_argument("--unit")
    selector.add_argument("--source")
    selector.add_argument("--complete", action="store_true", help="every unit with metadata.complete")
    p_where.add_argument("--prefix", default="", help="with --complete: only unit names with this prefix")
    p_where.add_argument("--summary", action="store_true", help="one line per unit plus totals")
    p_where.add_argument("--limit", type=int, default=40, help="functions listed per unit")
    p_order = sub.add_parser("order", help="compare a unit's emission order with its target object")
    selector = p_order.add_mutually_exclusive_group(required=True)
    selector.add_argument("--unit")
    selector.add_argument("--source")
    selector.add_argument("--prefix", help="every unit whose name starts with this prefix")
    p_order.add_argument("--base", help="directory holding the compiled objects instead of their base_path")
    p_order.add_argument("--runs", action="store_true", help="print the .text order as runs of classes")
    p_init = sub.add_parser("initializers", help="whether targets hold initialised statics in reverse .CRT$XCU order")
    p_init.add_argument("--prefix", default="", help="unit names with this prefix")
    p_init.add_argument("--skip", action="append", default=[], help="leave out a static (repeatable)")
    p_init.add_argument("--units", action="store_true", help="list each unit")
    args = parser.parse_args()

    if args.command == "dump":
        for path in args.objects:
            dump(path, args.debug)
        return 0
    project = load_project()
    if args.command == "initializers":
        units = [unit for unit in project["units"] if unit["name"].startswith(args.prefix) and unit.get("target_path")]
        initializers(units, set(args.skip), args.units)
        return 0
    if args.command == "order":
        if args.prefix:
            units = [unit for unit in project["units"] if unit["name"].startswith(args.prefix)
                     and unit.get("base_path") and unit.get("target_path")]
        else:
            units = [resolve_unit(unit=args.unit, source=args.source)]
        order(units, args.base, args.runs)
        return 0
    if args.complete:
        units = [unit for unit in project["units"]
                 if unit.get("metadata", {}).get("complete") and unit["name"].startswith(args.prefix)]
    else:
        units = [resolve_unit(unit=args.unit, source=args.source)]
    missing = [unit["name"] for unit in units
               if not (ROOT / unit.get("base_path", "")).is_file() or not (ROOT / unit["target_path"]).is_file()]
    if missing:
        print("missing objects (run ninja first): " + ", ".join(missing), file=sys.stderr)
        return 1
    where(units, project, args.summary, args.limit)
    return 0


if __name__ == "__main__":
    sys.exit(main())
