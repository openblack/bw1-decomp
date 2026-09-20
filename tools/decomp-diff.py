#!/usr/bin/env python3

"""
Wrapper around objdiff-cli for agent-friendly diff output.

Two modes:
  Overview (default): List symbols in a unit with match status
  Diff (-d):          Show side-by-side instruction diff for a function

Usage:
  python tools/decomp-diff.py -u Abode -s nonmatching
  python tools/decomp-diff.py --source src/Black/Player.cpp --sections
  python tools/decomp-diff.py -u Packet --strict -d "GPacket::ProcessPacket"
  python tools/decomp-diff.py -u Abode --regex -d "Fixed::(CanBeSetOnFire|Get)"

LEFT is the original target, RIGHT the compiled object. --strict compares all
function relocations; the default explicitly uses data_value. --exact compares
complete mangled or demangled names (case-sensitive); --regex searches either
name (case-sensitive) and explicitly permits batch diffs. Default selection is
case-insensitive substring matching, but ambiguous -d selections are errors.
--sections aggregates actual section sizes by name, including BSS and COMDAT
fragments, with target-size-weighted objdiff scores. Unknown scores are N/A,
not zero, and weighted scores are not counts of physically matching bytes.
Missing symbol section membership is recovered from unique COFF name/offset
matches. Ambiguous symbols or unavailable/unsupported objects leave it as '?'.
"""

import argparse
import re
import sys
from typing import Any, Dict, List

sys.dont_write_bytecode = True

from decomp_common import resolve_unit, run_diff, symbol_section


def run_objdiff(unit: str, strict=False) -> Dict[str, Any]:
    """Compatibility entry point; shared callers should use run_diff."""
    return run_diff(unit, strict=strict)


def classify_symbol(sym: Dict[str, Any]) -> str:
    """Classify a symbol as 'function', 'object', or 'section'."""
    kind = sym.get("kind", "")
    if kind == "SYMBOL_FUNCTION":
        return "function"
    if kind == "SYMBOL_OBJECT":
        return "object"
    if kind == "SYMBOL_SECTION":
        return "section"
    # Fallback for external/relocation-only symbols (empty kind)
    if "instructions" in sym:
        return "function"
    if "data_diff" in sym:
        return "object"
    return "unknown"


def fuzzy_match(pattern: str, name: str) -> bool:
    """Case-insensitive substring match."""
    return pattern.lower() in name.lower()


def name_matches(pattern, sym, args):
    """Select by either original mangled name or full demangled name."""
    names = (sym.get("name", ""), sym.get("demangled_name") or sym.get("name", ""))
    if getattr(args, "exact", False):
        return pattern in names
    if getattr(args, "regex", False):
        return any(re.search(pattern, name) is not None for name in names)
    return any(fuzzy_match(pattern, name) for name in names)


def build_sections(data, args):
    """Aggregate each side independently by name; never zip COFF fragments.

    Scores come from target sections. If any nonempty target fragment lacks a
    score, the aggregate is N/A. Missing sizes display '-', distinct from zero.
    Compiled-only debug/directive sections are included. --section filters rows.
    """
    sides = []
    for side in ("left", "right"):
        totals = {}
        for section in data.get(side, {}).get("sections", []):
            row = totals.setdefault(section["name"], {"size": 0, "weighted": 0.0, "known": True})
            size = int(section.get("size", 0))
            row["size"] += size
            score = section.get("match_percent")
            if score is None and size:
                row["known"] = False
            elif score is not None:
                row["weighted"] += size * score
        sides.append(totals)
    left, right = sides
    print(f"{'SECTION':<16} {'TARGET':>10} {'COMPILED':>10} {'SCORE':>9}")
    print("-" * 48)
    for name in dict.fromkeys(list(left) + list(right)):
        if args.section and name != args.section:
            continue
        target, compiled = left.get(name), right.get(name)
        target_size = str(target["size"]) + "B" if target is not None else "-"
        compiled_size = str(compiled["size"]) + "B" if compiled is not None else "-"
        score = "N/A"
        if target and target["known"] and target["size"]:
            score = f"{target['weighted'] / target['size']:.2f}%"
        print(f"{name:<16} {target_size:>10} {compiled_size:>10} {score:>9}")


def build_overview(data: Dict[str, Any], args) -> None:
    """Print overview of all symbols in a unit."""
    left_syms = data.get("left", {}).get("symbols", [])
    right_syms = data.get("right", {}).get("symbols", [])
    left_sections = data.get("left", {}).get("sections", [])
    right_sections = data.get("right", {}).get("sections", [])

    rows = []

    # Process left (original/target) symbols
    for i, sym in enumerate(left_syms):
        if args.search and not name_matches(args.search, sym, args):
            continue
        sym_type = classify_symbol(sym)
        # Skip section symbols and external references
        if sym_type in ("section", "unknown"):
            continue
        # Skip symbols without size
        size = int(sym.get("size", "0"))
        if size == 0:
            continue

        name = sym.get("demangled_name", sym.get("name", "?"))
        section = symbol_section(sym, left_sections)
        ts = sym.get("target_symbol")
        mp = sym.get("match_percent")

        if ts is None:
            status = "missing"
            match_str = "-"
        elif mp is not None and mp >= 100.0:
            status = "match"
            match_str = f"{mp:.1f}%"
        elif mp is not None:
            status = "nonmatching"
            match_str = f"{mp:.1f}%"
        else:
            status = "missing"
            match_str = "-"

        rows.append((status, match_str, size, section, sym_type, name, "left"))

    # Process right (decomp/base) symbols that aren't targeted (extra)
    for i, sym in enumerate(right_syms):
        if args.search and not name_matches(args.search, sym, args):
            continue
        if sym.get("target_symbol") is not None:
            continue  # Already covered via left side
        sym_type = classify_symbol(sym)
        if sym_type in ("section", "unknown"):
            continue
        size = int(sym.get("size", "0"))
        if size == 0:
            continue
        name = sym.get("demangled_name", sym.get("name", "?"))
        section = symbol_section(sym, right_sections)
        rows.append(("extra", "-", size, section, sym_type, name, "right"))

    # Apply filters
    if args.type:
        types = set(t.strip() for t in args.type.split(","))
        rows = [r for r in rows if r[4] in types]

    if args.status:
        statuses = set(s.strip() for s in args.status.split(","))
        rows = [r for r in rows if r[0] in statuses]

    if args.section:
        rows = [r for r in rows if r[3] == args.section]

    if not rows:
        print("No symbols match the given filters.")
        return

    # Print header
    print(f"{'STATUS':<10} {'MATCH':>7}  {'SIZE':>6}  {'SECTION':<10} {'NAME'}")
    print("-" * 80)
    for status, match_str, size, section, sym_type, name, side in rows:
        print(f"{status:<10} {match_str:>7}  {size:>5}B  {section:<10} {name}")


def render_instruction(
    inst_entry: Dict[str, Any],
    all_syms: List[Dict[str, Any]],
    is_diff: bool = False,
) -> str:
    """Build instruction text from parts, wrapping diffing args in {}."""
    inst = inst_entry.get("instruction", {})
    parts = inst.get("parts", [])
    arg_diffs = inst_entry.get("arg_diff", [])

    text_parts = []
    arg_idx = 0  # Index into arg_diff array

    for part in parts:
        if "opcode" in part:
            text_parts.append(part["opcode"]["mnemonic"])
            text_parts.append(" ")
        elif "arg" in part:
            arg = part["arg"]
            # Extract the value
            if "opaque" in arg:
                val = str(arg["opaque"])
            elif "signed" in arg:
                val = str(arg["signed"])
                try:
                    n = int(val)
                    if n < 0:
                        val = f"-0x{-n:x}"
                    elif n > 9:
                        val = f"0x{n:x}"
                except ValueError:
                    pass
            elif "unsigned" in arg:
                val = str(arg["unsigned"])
                try:
                    n = int(val)
                    if n > 9:
                        val = f"0x{n:x}"
                except ValueError:
                    pass
            elif "branch_dest" in arg:
                val = f"0x{int(arg['branch_dest']):x}"
            elif "reloc" in arg:
                # Resolve relocation target from instruction.relocation
                reloc_info = inst.get("relocation", {})
                ts = reloc_info.get("target_symbol")
                if ts is not None and 0 <= ts < len(all_syms):
                    target_sym = all_syms[ts]
                    val = target_sym.get("demangled_name", target_sym.get("name", "?"))
                else:
                    val = "?"
                # Protobuf JSON encodes the signed int64 addend as a decimal
                # string and omits zero. Keep it inside the diff braces.
                addend = int(reloc_info.get("addend", 0))
                if addend:
                    val += ("+" if addend > 0 else "-") + f"0x{abs(addend):x}"
            else:
                val = str(arg)

            # Check if this arg has a diff
            has_diff = False
            if is_diff and arg_idx < len(arg_diffs):
                if arg_diffs[arg_idx].get("diff_index") is not None:
                    has_diff = True
            arg_idx += 1

            if has_diff:
                text_parts.append("{" + val + "}")
            else:
                text_parts.append(val)
        elif "separator" in part:
            text_parts.append(", ")
        elif "basic" in part:
            text_parts.append(part["basic"])

    return "".join(text_parts).rstrip()


def build_diff(data: Dict[str, Any], symbol_name: str, args) -> None:
    """Select function pairs; only explicit regex selection allows batches."""
    left_syms = data.get("left", {}).get("symbols", [])
    right_syms = data.get("right", {}).get("symbols", [])
    pairs = []
    paired_right = set()
    for sym in left_syms:
        ts = sym.get("target_symbol")
        right = right_syms[ts] if ts is not None and 0 <= ts < len(right_syms) else None
        if right is not None:
            paired_right.add(ts)
        if classify_symbol(sym) == "function" and (
            name_matches(symbol_name, sym, args) or
            (right is not None and name_matches(symbol_name, right, args))
        ):
            pairs.append((sym, right))
    for i, sym in enumerate(right_syms):
        if i not in paired_right and classify_symbol(sym) == "function" and name_matches(symbol_name, sym, args):
            ts = sym.get("target_symbol")
            left = left_syms[ts] if ts is not None and 0 <= ts < len(left_syms) else None
            if not any(pair[0] is left for pair in pairs) or left is None:
                pairs.append((left, sym))
    if not pairs:
        raise ValueError(f"Function not found: {symbol_name}")
    if len(pairs) > 1 and not getattr(args, "regex", False):
        names = [(left or right).get("demangled_name", (left or right).get("name", "?"))
                 for left, right in pairs]
        raise ValueError("Ambiguous function selection; use --exact with a full name or --regex for a batch:\n  "
                         + "\n  ".join(names))
    for i, (left, right) in enumerate(pairs):
        if i:
            print()
        render_diff_pair(left, right, left_syms, right_syms, args)


def render_diff_pair(left_sym, right_sym, left_syms, right_syms, args):
    """Render one already-selected target/compiled function pair."""
    # Header
    display_name = (left_sym or right_sym).get(
        "demangled_name", (left_sym or right_sym).get("name", "?")
    )
    mp = (left_sym or right_sym).get("match_percent")
    size = int((left_sym or right_sym).get("size", "0"))

    left_insts = (left_sym or {}).get("instructions", [])
    right_insts = (right_sym or {}).get("instructions", [])
    n_insts = max(len(left_insts), len(right_insts))

    mp_str = f"{mp:.1f}%" if mp is not None else "N/A"
    print(f"{display_name}: {mp_str} match ({size}B, {n_insts} instructions)")
    print()

    if n_insts == 0:
        print("(no instructions to diff)")
        return

    # Parse range filter
    range_start = 0
    range_end = float("inf")
    if args.range:
        range_start, range_end = parse_range(args.range)

    context = args.context
    no_collapse = args.no_collapse

    # Build rows
    rows = []
    for i in range(n_insts):
        li = left_insts[i] if i < len(left_insts) else {}
        ri = right_insts[i] if i < len(right_insts) else {}

        l_inst = li.get("instruction", {})
        r_inst = ri.get("instruction", {})

        # Address zero is omitted by protobuf JSON, even for real instructions.
        l_addr = l_inst.get("address", 0) if l_inst else None
        r_addr = r_inst.get("address", 0) if r_inst else None

        # Use the first available address for offset display
        addr_str = ""
        if l_addr is not None:
            addr_str = f"{int(l_addr):x}"
        elif r_addr is not None:
            addr_str = f"{int(r_addr):x}"

        l_text = render_instruction(li, left_syms, is_diff=True) if li else ""
        r_text = render_instruction(ri, right_syms, is_diff=True) if ri else ""

        l_kind = li.get("diff_kind", "")
        r_kind = ri.get("diff_kind", "")

        # Determine diff marker
        kind = l_kind or r_kind
        if kind == "":
            marker = " "
        elif kind in ("DIFF_ARG_MISMATCH", "DIFF_OP_MISMATCH"):
            marker = "~"
        elif kind == "DIFF_REPLACE":
            marker = "|"
        elif kind == "DIFF_INSERT":
            marker = ">"
        elif kind == "DIFF_DELETE":
            marker = "<"
        else:
            marker = "?"

        is_match = (marker == " ")
        offset_int = int(l_addr) if l_addr is not None else (int(r_addr) if r_addr is not None else 0)
        rows.append((addr_str, marker, l_text, r_text, is_match, offset_int))

    # Apply range filter
    if args.range:
        rows = [r for r in rows if range_start <= r[5] <= range_end]

    if not rows:
        print("No instructions in the specified range.")
        return

    # Determine column widths
    max_left = max((len(r[2]) for r in rows), default=20)
    max_left = max(max_left, 4)  # minimum width
    max_left = min(max_left, 50)  # cap width

    # Print with collapsing
    print(f" {'OFFSET':>6} | {'LEFT':<{max_left}} | RIGHT")
    print("-" * (10 + max_left + 30))

    if no_collapse:
        for addr_str, marker, l_text, r_text, is_match, _ in rows:
            print(f"{marker}{addr_str:>6} | {l_text:<{max_left}} | {r_text}")
        return

    # Collapse matching runs
    i = 0
    while i < len(rows):
        addr_str, marker, l_text, r_text, is_match, _ = rows[i]

        if not is_match:
            print(f"{marker}{addr_str:>6} | {l_text:<{max_left}} | {r_text}")
            i += 1
            continue

        # Count consecutive matches
        run_start = i
        while i < len(rows) and rows[i][4]:
            i += 1
        run_len = i - run_start

        if run_len <= context * 2 + 1:
            # Short run: print all
            for j in range(run_start, run_start + run_len):
                a, m, lt, rt, _, _ = rows[j]
                print(f"{m}{a:>6} | {lt:<{max_left}} | {rt}")
        else:
            # Print leading context
            for j in range(run_start, run_start + context):
                a, m, lt, rt, _, _ = rows[j]
                print(f"{m}{a:>6} | {lt:<{max_left}} | {rt}")
            # Collapse middle
            collapsed = run_len - context * 2
            print(f"       ... {collapsed} matching instructions ...")
            # Print trailing context
            for j in range(run_start + run_len - context, run_start + run_len):
                a, m, lt, rt, _, _ = rows[j]
                print(f"{m}{a:>6} | {lt:<{max_left}} | {rt}")


def parse_range(value):
    """Inclusive hexadecimal range: START, START-, or START-END."""
    if not re.fullmatch(r"(?:0[xX])?[0-9a-fA-F]+(?:-(?:(?:0[xX])?[0-9a-fA-F]+)?)?", value):
        raise ValueError("Invalid range; expected hexadecimal START, START-, or START-END")
    start, separator, end = value.partition("-")
    start = int(start, 16)
    end = int(end, 16) if separator and end else float("inf")
    if end < start:
        raise ValueError("Invalid range: end must be greater than or equal to start")
    return start, end


def main(argv=None):
    parser = argparse.ArgumentParser(
        description="Agent-friendly objdiff wrapper for decomp projects",
        epilog=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter,
    )
    selector = parser.add_mutually_exclusive_group(required=True)
    selector.add_argument(
        "-u", "--unit", help="Exact full unit name or unique basename (e.g. Abode)"
    )
    selector.add_argument("--source", help="Source path from metadata.source_path; relative to project root or absolute")
    parser.add_argument(
        "-d", "--diff", metavar="SYMBOL", help="Function name selector; --regex explicitly permits multiple functions"
    )
    parser.add_argument("--strict", action="store_true", help="Compare all function relocations (default: data_value)")
    parser.add_argument("--sections", action="store_true", help="Show actual section sizes and target-weighted scores, including BSS")
    names = parser.add_mutually_exclusive_group()
    names.add_argument("--exact", action="store_true", help="Match complete mangled/demangled names for --search or -d")
    names.add_argument("--regex", action="store_true", help="Use case-sensitive regex for --search or -d (batch diff)")

    # Overview filters
    parser.add_argument(
        "-t",
        "--type",
        help="Filter by type: function, object (comma-separated)",
    )
    parser.add_argument(
        "-s",
        "--status",
        help="Filter by status: missing, match, nonmatching, extra (comma-separated; matching is an alias)",
    )
    parser.add_argument("--section", help="Filter by section name (e.g. .text)")
    parser.add_argument(
        "--search", help="Overview name selector (default: case-insensitive substring)"
    )

    # Diff options
    parser.add_argument(
        "-C",
        "--context",
        type=int,
        default=3,
        help="Context lines around mismatches (default: 3)",
    )
    parser.add_argument(
        "--range", help="Only show instruction offset range (hex, e.g. 100-200)"
    )
    parser.add_argument(
        "--no-collapse",
        action="store_true",
        help="Don't collapse matching instruction runs",
    )

    args = parser.parse_args(argv)
    if args.context < 0:
        parser.error("--context must be nonnegative")
    if args.sections and (args.diff or args.search or args.type or args.status):
        parser.error("--sections supports --section, but not symbol filters or -d")
    if args.diff and (args.search or args.type or args.status or args.section):
        parser.error("-d cannot be combined with overview filters")
    if (args.exact or args.regex) and not (args.diff or args.search):
        parser.error("--exact/--regex requires -d or --search")
    if not args.diff and (args.range or args.no_collapse or args.context != 3):
        parser.error("--range, --no-collapse and --context require -d")
    for field, allowed in (("type", {"function", "object"}),
                           ("status", {"missing", "match", "matching", "nonmatching", "extra"})):
        value = getattr(args, field)
        if value is not None:
            values = [part.strip() for part in value.split(",")]
            if any(part not in allowed for part in values):
                parser.error(f"Invalid --{field}; choose from {', '.join(sorted(allowed))}")
            setattr(args, field, ",".join("match" if part == "matching" else part for part in values))
    try:
        if args.range:
            parse_range(args.range)
        if args.regex:
            re.compile(args.diff or args.search)
    except (ValueError, re.error) as error:
        parser.error(str(error))
    try:
        unit = resolve_unit(unit=args.unit, source=args.source)
        data = run_objdiff(unit["name"], strict=args.strict)
        if args.sections:
            build_sections(data, args)
        elif args.diff:
            build_diff(data, args.diff, args)
        else:
            build_overview(data, args)
    except (OSError, ValueError, RuntimeError) as error:
        print(f"error: {error}", file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
