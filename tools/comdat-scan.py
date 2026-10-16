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

Examples:
  python tools/comdat-scan.py dump build/BW1W120/src/Black/GameThing.o
  python tools/comdat-scan.py where --unit WorshipSiteUpgrade
  python tools/comdat-scan.py where --complete --prefix runblack/Black/ --summary

Only external (storage class 2) function definitions are compared; per-unit statics
such as _$E initializers are numbered independently in each object and skipped.
"""

import argparse
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
    args = parser.parse_args()

    if args.command == "dump":
        for path in args.objects:
            dump(path, args.debug)
        return 0
    project = load_project()
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
