#!/usr/bin/env python3
"""Read-only inventory of strict-relocation mismatches.

`objdiff` can compare relocations leniently (`functionRelocDiffs=none`, the report
default) or strictly (`all`). Under the lenient default a function can show 100%
while a relocation points at a different symbol/addend than the target; those are
invisible in `report.json`. This tool lists, per unit, the functions that are 100%
under the lenient comparison but below 100% under the strict one ("reloc_only").

Read-only: queries existing objects through objdiff, never builds or edits.

Usage:
  python tools/decomp-strict.py --unit Abode
  python tools/decomp-strict.py --prefix runblack/Black --limit 50
  python tools/decomp-strict.py --all --json > strict.json
  python tools/decomp-strict.py --unit Abode --list
"""

import argparse
import json
import os
import subprocess
import sys

sys.dont_write_bytecode = True

from decomp_common import ROOT, load_project, resolve_unit

# The report default is the most lenient mode, so a function can read 100% there
# while a relocation points elsewhere. Compare it against the strict mode.
RELOC_MODE_LENIENT = "none"  # objdiff report default
RELOC_MODE_STRICT = "all"

CLI = os.environ.get(
    "OBJDIFF_CLI",
    str(ROOT / "build" / "tools" / ("objdiff-cli.exe" if os.name == "nt" else "objdiff-cli")))


def _diff(unit, mode):
    result = subprocess.run(
        [CLI, "diff", "-c", "functionRelocDiffs=" + mode, "-u", unit, "-o", "-", "--format", "json"],
        cwd=ROOT, capture_output=True)
    if result.returncode:
        raise RuntimeError("objdiff-cli error: " + result.stderr.decode("utf-8", errors="replace").strip())
    return json.loads(result.stdout)



def _function_matches(document):
    """{mangled name: match_percent} for left function symbols with a target."""
    out = {}
    for sym in document.get("left", {}).get("symbols", []):
        if sym.get("kind") != "SYMBOL_FUNCTION":
            continue
        if sym.get("target_symbol") is None:
            continue
        out[sym.get("name")] = float(sym.get("match_percent") or 0.0)
    return out


def strict_mismatches(lenient, strict):
    """Functions 100% under the lenient comparison but <100% under strict.

    Returns (reloc_only, strict_below): mangled names. `strict_below` is every
    function below 100% under strict; `reloc_only` is the subset that the lenient
    comparison scored 100%.
    """
    len_names = _function_matches(lenient)
    strict_names = _function_matches(strict)
    reloc_only = [n for n, lp in len_names.items()
                  if lp >= 100.0 and strict_names.get(n, 0.0) < 100.0]
    strict_below = [n for n, sp in strict_names.items() if sp < 100.0]
    return sorted(reloc_only), sorted(strict_below)


def scan(unit):
    lenient = _diff(unit, RELOC_MODE_LENIENT)
    strict = _diff(unit, RELOC_MODE_STRICT)
    return strict_mismatches(lenient, strict)


def main(argv=None):
    parser = argparse.ArgumentParser(
        description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    select = parser.add_mutually_exclusive_group()
    select.add_argument("--unit", help="one unit (exact name or unique basename)")
    select.add_argument("--prefix", help="scan units whose name starts with this prefix")
    select.add_argument("--all", action="store_true", help="scan every unit (slow)")
    parser.add_argument("--limit", type=int, default=0, help="cap units scanned (0 = all matched)")
    parser.add_argument("--list", action="store_true", help="also list the reloc-only names")
    parser.add_argument("--json", action="store_true", help="emit JSON {unit: {...}}")
    args = parser.parse_args(argv)

    names = [u["name"] for u in load_project()["units"]]
    if args.unit:
        names = [resolve_unit(unit=args.unit)["name"]]
    elif args.prefix:
        names = [n for n in names if n.startswith(args.prefix)]
    elif not args.all:
        names = [n for n in names if n.startswith("runblack/Black")]
    if args.limit:
        names = names[:args.limit]

    result = {}
    for name in names:
        try:
            reloc_only, strict_below = scan(name)
        except (OSError, RuntimeError, ValueError):
            continue
        if reloc_only or strict_below:
            result[name] = {"reloc_only": reloc_only, "strict_below": strict_below}

    if args.json:
        print(json.dumps(result, indent=2, sort_keys=True))
        return 0

    rows = sorted(((len(v["reloc_only"]), len(v["strict_below"]), k) for k, v in result.items()),
                  key=lambda r: (-r[0], -r[1], r[2]))
    print(f"{'reloc_only':>10} {'strict<100':>10}  unit")
    print("-" * 70)
    for reloc, below, unit in rows:
        print(f"{reloc:>10} {below:>10}  {unit}")
    total_reloc = sum(len(v["reloc_only"]) for v in result.values())
    total_below = sum(len(v["strict_below"]) for v in result.values())
    print(f"\n{len(rows)} units; {total_reloc} reloc-only, {total_below} strict<100 "
          f"(scanned {len(names)} units)")
    if args.list:
        for unit in sorted(result):
            for n in result[unit]["reloc_only"]:
                print(f"  {unit}::{n}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
