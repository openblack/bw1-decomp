#!/usr/bin/env python3
"""Read-only inventory of `missing` (declared-but-undefined) functions.

`objdiff` marks a target symbol `missing` when it exists in the original object but
not in ours: our source declares it (or the class does) but never defines it. These
functions do not appear in `build/<ver>/report.json`, which only covers functions we
emit, so this tool is the aggregate inventory for that vein.

Read-only: it queries existing objects through objdiff and never builds or edits
anything. Compiler/CRT/RTTI/data symbols are filtered out, leaving source functions.

Usage:
  python tools/decomp-missing.py --unit Abode
  python tools/decomp-missing.py --prefix runblack/Black --limit 50
  python tools/decomp-missing.py --all --json > missing.json
"""

import argparse
import json
import sys

sys.dont_write_bytecode = True

from decomp_common import load_project, resolve_unit, run_diff

# Symbols the compiler/CRT/RTTI emit that are never source functions we can write.
NOISE_PREFIXES = ("??_R", "??_7", "??_C", "??_E", "??_B", "??_8", "_$E", "_$S",
                  "$S", "crt_", "gap_", "pad_", "lbl_", "__real@", "__imp_", "?$")


def is_noise(name: str) -> bool:
    return name.startswith(NOISE_PREFIXES)


def missing_symbols(document: dict) -> list:
    """Missing (declared-but-undefined) function names from an objdiff document.

    A left-side function with no `target_symbol` is present in the target but absent
    from our build. Compiler/CRT/RTTI/data names are filtered out.
    """
    out = []
    for sym in document.get("left", {}).get("symbols", []):
        if sym.get("kind") != "SYMBOL_FUNCTION":
            continue
        if sym.get("target_symbol") is not None:
            continue
        name = sym.get("name", "")
        if is_noise(name):
            continue
        out.append(sym.get("demangled_name") or name)
    return out


def inventory(units):
    """{unit: [missing function names]} for units that have any."""
    totals = {}
    for name in units:
        try:
            functions = missing_symbols(run_diff(name))
        except (OSError, RuntimeError, ValueError):
            continue
        if functions:
            totals[name] = functions
    return totals


def main(argv=None):
    parser = argparse.ArgumentParser(
        description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    select = parser.add_mutually_exclusive_group()
    select.add_argument("--unit", help="one unit (exact name or unique basename)")
    select.add_argument("--prefix", help="scan units whose name starts with this prefix")
    select.add_argument("--all", action="store_true", help="scan every unit (slow)")
    parser.add_argument("--limit", type=int, default=0, help="cap units scanned (0 = all matched)")
    parser.add_argument("--json", action="store_true", help="emit JSON {unit: [functions]}")
    args = parser.parse_args(argv)

    names = [u["name"] for u in load_project()["units"]]
    if args.unit:
        names = [resolve_unit(unit=args.unit)["name"]]
    elif args.prefix:
        names = [n for n in names if n.startswith(args.prefix)]
    elif not args.all:
        names = [n for n in names if n.startswith("runblack/Black")]  # richest vein
    if args.limit:
        names = names[:args.limit]

    totals = inventory(names)
    if args.json:
        print(json.dumps(totals, indent=2, sort_keys=True))
        return 0

    rows = sorted(((len(v), k) for k, v in totals.items()), key=lambda r: (-r[0], r[1]))
    print(f"{'missing':>8}  unit")
    print("-" * 70)
    for count, unit in rows:
        print(f"{count:>8}  {unit}")
    total = sum(len(v) for v in totals.values())
    print(f"\n{len(rows)} units with missing functions; {total} functions "
          f"(scanned {len(names)} units)")
    return 0


if __name__ == "__main__":
    sys.exit(main())
