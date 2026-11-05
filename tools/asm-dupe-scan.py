#!/usr/bin/env python3
"""Index matched target functions by literal asm signature; auto-match unmatched ones.

A large share of any unmatched half is duplicates in disguise: template
instantiations, inline expansions, vtable thunks, CRT/MFC wrappers whose target
body already appears verbatim (or near-verbatim) among functions we match. This
tool reads every unit's split target object, builds a signature index over all
target functions, and reports each unmatched function whose body equals a
matched function's body before any function-by-function work starts. Every
function it eats costs zero tokens.

A function's signature is its instruction bytes with relocated operands
blanked, plus its relocations as (offset, type, target) with targets resolved
to symbol names; references into the function itself (jump tables, local
labels) count as ("self", offset). Two signatures equal means objdiff-resolved
bytes equal. The shape tier keeps the bytes and relocation layout but reduces
each target to its kind (self / external / defined), so a body that calls the
same-shaped but differently named callee still matches.

Match status comes from the objdiff report: fuzzy_match_percent present means
objdiff compared both sides (100 = match, lower = nonmatching); absent with a
target address means missing; absent with address 0 means ours-only.

  scan              Unmatched functions whose target body equals a matched
                   function's body: exact twins first ("free wins"), then shape
                   twins. Select candidate units with --unit/--source/--prefix,
                   statuses with --status, sizes with --min-size.

  dupes             Duplicate clusters among target functions regardless of
                   match status: matching one member usually yields the rest.

Examples:
  python tools/asm-dupe-scan.py scan
  python tools/asm-dupe-scan.py scan --prefix runblack/Black/ --status missing --summary
  python tools/asm-dupe-scan.py dupes --min-count 3 --limit 20
  python tools/asm-dupe-scan.py scan --unit Abode --json
"""

import argparse
import collections
import json
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from decomp_binary import Coff  # noqa: E402
from decomp_common import ROOT, load_project, resolve_unit  # noqa: E402

STORAGE_STATIC = 3
FUNCTION_TYPE = 0x20
# Padding and labels dtk writes into split objects: never real functions.
PADDING = ("gap_", "pad_", "lbl_", "jumptable_")
STATUSES = ("missing", "nonmatch", "match", "extra", "unknown")


def load_statuses(report_path):
    """{unit: {name: (status, address, demangled)}} from a full objdiff report."""
    document = json.loads(Path(report_path).read_text(encoding="utf-8"))
    report = document.get("report", document)
    if "units" not in report:
        raise ValueError(f"{report_path}: expected a full objdiff report with a units array")
    statuses = {}
    for unit in report["units"]:
        functions = {}
        for function in unit.get("functions", []):
            name = function["name"]
            if name in functions:  # COMDAT duplicates keep the first entry
                continue
            percent = function.get("fuzzy_match_percent")
            if percent is not None:
                status = "match" if percent >= 100.0 else "nonmatch"
            elif function.get("address", "0") not in ("0", None):
                status = "missing"
            else:
                status = "extra"
            address = int(function.get("address") or 0)
            demangled = function.get("metadata", {}).get("demangled_name", "")
            functions[name] = (status, address, demangled)
        statuses[unit["name"]] = functions
    return statuses


def text_functions(coff):
    """(section, symbol, start, end) of every .text function definition, in order."""
    for sec in coff.sections:
        if sec.name != ".text":
            continue
        starts = sorted((sym for sym in coff.symbols.values()
                         if sym.section == sec.index and sym.type & FUNCTION_TYPE
                         and not (sym.storage == STORAGE_STATIC and sym.aux and sym.value == 0
                                  and sym.name == coff.section(sym.section).name)),
                        key=lambda sym: (sym.value, sym.index))
        for index, sym in enumerate(starts):
            start = sym.value
            end = starts[index + 1].value if index + 1 < len(starts) else sec.size
            if end > start:
                yield sec, sym, start, end


def named_symbol_at(coff, section_index, offset):
    """The named defined symbol exactly at offset, or None (section symbols and
    compiler-internal $ names do not count)."""
    for sym in coff.symbols.values():
        if sym.section == section_index and sym.value == offset and not sym.aux:
            if sym.name == coff.section(section_index).name or sym.name.startswith("$"):
                continue
            return sym
    return None


def reference_key(coff, sec, sym, start, end, reloc):
    """A relocation target reduced to a comparable key: the referenced symbol's
    name plus addend, ("self", offset) inside this function, or an external."""
    target = coff.symbols[reloc.symbol_index]
    addend = coff.addend(sec.index, reloc) if reloc.width == 4 else 0
    if reloc.symbol_index == sym.index:
        return ("self", addend)
    if target.section > 0 and target.storage == STORAGE_STATIC and target.aux and target.value == 0 \
            and target.name == coff.section(target.section).name:
        named = named_symbol_at(coff, target.section, addend)
        if named is not None:
            if named.section == sec.index and start <= named.value < end:
                return ("self", named.value - start)
            return (named.name, addend - named.value)
        return ("sec", coff.section(target.section).name, addend)
    if target.section == sec.index and start <= target.value < end:
        return ("self", target.value - start)
    if target.section == 0:
        return ("ext", target.name, addend)
    return (target.name, addend)


SHAPE = {"self": "self", "ext": "ext", "sec": "sec"}


def reference_shape(key):
    return SHAPE.get(key[0], "def")


class Function:
    __slots__ = ("unit", "name", "demangled", "status", "address", "size", "masked", "refs")

    def __init__(self, unit, name, demangled, status, address, size, masked, refs):
        self.unit = unit
        self.name = name
        self.demangled = demangled
        self.status = status
        self.address = address
        self.size = size
        self.masked = masked
        self.refs = refs

    @property
    def exact(self):
        return (self.masked, self.refs)

    @property
    def shape(self):
        return (self.masked, tuple((offset, kind, reference_shape(key))
                                   for offset, kind, key in self.refs))

    @property
    def label(self):
        return self.demangled or self.name


def function_of(coff, entry, unit_statuses):
    """Every target .text function of one unit with its signature and status."""
    for sec, sym, start, end in text_functions(coff):
        name = sym.name
        if name.startswith(PADDING):
            continue
        size = end - start
        code = bytearray(coff.bytes(sec.index, start, size))
        refs = []
        for reloc in sorted(sec.relocations, key=lambda r: r.offset):
            if not start <= reloc.offset < end:
                continue
            hole = reloc.offset - start
            code[hole:hole + reloc.width] = bytes(reloc.width)
            refs.append((hole, reloc.type, reference_key(coff, sec, sym, start, end, reloc)))
        status, address, demangled = unit_statuses.get(name, ("unknown", 0, ""))
        yield Function(entry["name"], name, demangled, status, address, size, bytes(code), tuple(refs))


def index_units(project, statuses, min_size, verbose=True):
    """All target functions plus their exact and shape signature indexes."""
    exact = collections.defaultdict(list)
    shape = collections.defaultdict(list)
    functions = []
    counts = collections.Counter()
    skipped = []
    for entry in project["units"]:
        path = ROOT / entry.get("target_path", "")
        if not path.is_file():
            skipped.append(entry["name"])
            continue
        unit_statuses = statuses.get(entry["name"], {})
        for function in function_of(Coff.read(path), entry, unit_statuses):
            if function.size < min_size:
                continue
            functions.append(function)
            exact[function.exact].append(function)
            shape[function.shape].append(function)
            counts[function.status] += 1
    if verbose:
        print(f"indexed {sum(counts.values())} target functions "
              f"({dict(counts)}); {len(exact)} distinct bodies; "
              f"{len(skipped)} units without target objects", file=sys.stderr)
    return functions, exact, shape


def select_units(args, project):
    if args.unit or args.source:
        return [resolve_unit(unit=args.unit, source=args.source)]
    return [entry for entry in project["units"] if entry["name"].startswith(args.prefix)]


def twins_of(function, exact, shape):
    """Matched functions sharing this function's body, exact tier first."""
    return ([other for other in exact.get(function.exact, [])
             if other.status == "match" and other is not function],
            [other for other in shape.get(function.shape, [])
             if other.status == "match" and other is not function])


def describe(function):
    where = f"{function.unit} 0x{function.address:08x}" if function.address else function.unit
    return f"{where} {function.label}"


def print_wins(title, wins, summary, limit):
    eaten = sum(candidate.size for candidate, _ in wins)
    print(f"\n== {title}: {len(wins)} functions, {eaten} bytes")
    if not wins:
        return
    by_unit = collections.defaultdict(list)
    for candidate, twins in wins:
        by_unit[candidate.unit].append((candidate, twins))
    for unit in sorted(by_unit, key=lambda u: -sum(c.size for c, _ in by_unit[u])):
        rows = sorted(by_unit[unit], key=lambda row: -row[0].size)
        print(f"\n{unit} ({len(rows)} functions, {sum(c.size for c, _ in rows)} bytes):")
        if summary:
            continue
        for candidate, twins in rows[:limit]:
            twin = twins[0]
            more = f" (+{len(twins) - 1} copies)" if len(twins) > 1 else ""
            print(f"  {candidate.size:6}  {candidate.name}")
            print(f"         == {describe(twin)} [{twin.status}]{more}")


def scan(args, project, functions, exact, shape):
    units = {entry["name"] for entry in select_units(args, project)}
    wanted = set(args.status) if args.status else {"missing", "nonmatch"}
    candidates = [f for f in functions if f.unit in units and f.status in wanted]
    if not candidates:
        print("no candidate functions for the selected units and statuses")
        return
    exact_wins, shape_wins = [], []
    for candidate in candidates:
        exact_twins, shape_twins = twins_of(candidate, exact, shape)
        if exact_twins:
            exact_wins.append((candidate, exact_twins))
        elif shape_twins:
            shape_wins.append((candidate, shape_twins))
    if args.json:
        rows = [{
            "unit": candidate.unit, "name": candidate.name, "demangled": candidate.demangled,
            "status": candidate.status, "address": candidate.address, "size": candidate.size,
            "tier": "exact" if tier is exact_wins else "shape",
            "twins": [{"unit": t.unit, "name": t.name, "demangled": t.demangled,
                       "address": t.address, "size": t.size} for t in twins],
        } for tier in (exact_wins, shape_wins) for candidate, twins in tier]
        print(json.dumps({"free_wins": rows}, indent=1))
        return
    print_wins("free wins (exact body)", exact_wins, args.summary, args.limit)
    print_wins("free wins (same body, other names)", shape_wins, args.summary, args.limit)
    total = sum(f.size for f in candidates)
    eaten = sum(c.size for c, _ in exact_wins) + sum(c.size for c, _ in shape_wins)
    print(f"\ncandidates: {len(candidates)} functions, {total} bytes; "
          f"auto-matched: {len(exact_wins) + len(shape_wins)} functions, {eaten} bytes")


def dupes(args, project, functions, exact, shape):
    index = shape if args.shape else exact
    clusters = [members for members in index.values() if len(members) >= args.min_count]
    clusters.sort(key=lambda members: -sum(m.size for m in members))
    print(f"{len(clusters)} clusters of {args.min_count}+ identical bodies "
          f"({'shape' if args.shape else 'exact'} tier)")
    for members in clusters[:args.limit]:
        statuses_here = collections.Counter(m.status for m in members)
        print(f"\n{len(members)} copies, {members[0].size} bytes each, "
              f"{sum(m.size for m in members)} total ({dict(statuses_here)}):")
        shown = sorted(members, key=lambda m: (m.status != "match", m.unit))[:args.rows]
        for member in shown:
            print(f"  {member.status:9} {member.unit.rsplit('/', 1)[-1]:40} {member.name}")
        if len(members) > args.rows:
            print(f"  ... {len(members) - args.rows} more")


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    commands = parser.add_subparsers(dest="command", required=True)
    p_scan = commands.add_parser("scan", help="unmatched functions identical to matched ones")
    p_scan.add_argument("--unit", help="candidate unit (exact name or unique basename)")
    p_scan.add_argument("--source", help="candidate unit by source path")
    p_scan.add_argument("--prefix", default="", help="candidate units with this name prefix")
    p_scan.add_argument("--status", action="append", choices=STATUSES,
                        help="candidate statuses (repeatable; default missing and nonmatch)")
    p_scan.add_argument("--min-size", type=int, default=1, help="smallest candidate body in bytes")
    p_scan.add_argument("--summary", action="store_true", help="per-unit counts only")
    p_scan.add_argument("--limit", type=int, default=30, help="rows listed per unit")
    p_scan.add_argument("--json", action="store_true", help="machine-readable output")
    p_scan.add_argument("--report", default="build/BW1W120/report.json", help="objdiff report to read")
    p_dupes = commands.add_parser("dupes", help="duplicate clusters among target functions")
    p_dupes.add_argument("--min-count", type=int, default=2, help="smallest cluster to list")
    p_dupes.add_argument("--shape", action="store_true", help="shape tier (names ignored)")
    p_dupes.add_argument("--limit", type=int, default=30, help="clusters listed")
    p_dupes.add_argument("--rows", type=int, default=12, help="members listed per cluster")
    p_dupes.add_argument("--min-size", type=int, default=1, help="smallest body in bytes")
    p_dupes.add_argument("--report", default="build/BW1W120/report.json", help="objdiff report to read")
    args = parser.parse_args(argv)

    project = load_project()
    statuses = load_statuses(args.report)
    functions, exact, shape = index_units(project, statuses, args.min_size)
    if args.command == "scan":
        scan(args, project, functions, exact, shape)
    else:
        dupes(args, project, functions, exact, shape)
    return 0


if __name__ == "__main__":
    sys.exit(main())