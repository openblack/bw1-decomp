"""Differential testing of a unit's built object against the original BW1W120 code.

Runs the original machine code and our compiled function side by side in an x86 emulator
(Unicorn) on the same random program states and compares everything a caller can observe.
See docs/differential_testing.md.

Usage:
  python tools/difftest GestureSystemMatch
  python tools/difftest GestureSystem --only RemoveNonKeyPoints --trials 2000
  python tools/difftest --controls --trials 2000
"""

import argparse
from concurrent.futures import ProcessPoolExecutor
import importlib.util
import json
import os
from pathlib import Path
import shutil
import sys

sys.dont_write_bytecode = True
sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
if not all(importlib.util.find_spec(m) for m in ("unicorn", "capstone")):
    sys.exit("tools/difftest needs unicorn and capstone: pip install unicorn capstone")

import compare as cmp
import gesture
import runner
from decomp_common import ROOT, resolve_unit

SUITES = [gesture]
CASES = [case for suite in SUITES for case in suite.CASES]
CONTROLS = [control for suite in SUITES for control in suite.CONTROLS]
INITIALIZERS = {case.name: suite.INITIALIZERS for suite in SUITES for case in suite.CASES}
MAX_MISSED = 12  # missed instructions listed per version


def print_first(result, width):
    for kind, record in result["first"].items():
        print(f"      first {kind}: {json.dumps(record)[:width]}")


def print_result(status, result):
    counts = [f"{c} {result[c]}" for c in cmp.CLASSES if result[c]]
    if result["both_stopped_identically"]:
        counts.append(f"both faulted or hung identically {result['both_stopped_identically']}")
    counts = ", ".join(counts)
    cov = result["coverage"]
    print(f"{status:4}  {result['name']:48} {result['pass']}/{result['trials']} agree"
          f"{' (' + counts + ')' if counts else ''}"
          f"{', max ulp ' + str(result['max_ulp']) if result['max_ulp'] else ''}"
          f"  coverage orig {cov['orig']['covered']}/{cov['orig']['total']}"
          f" ours {cov['ours']['covered']}/{cov['ours']['total']}  {result['seconds']}s")
    for side in ("orig", "ours"):
        missed = cov[side]["missed"]
        if missed:
            more = f" ... {len(missed)} in all" if len(missed) > MAX_MISSED else ""
            print(f"      missed {side}: {' '.join(missed[:MAX_MISSED])}{more}")
    print_first(result, 800)
    sys.stdout.flush()


def run_cases(args):
    unit = resolve_unit(unit=args.unit)["name"]
    cases = [c for c in CASES if resolve_unit(unit=c.unit)["name"] == unit
             and (not args.only or args.only in c.name)]
    if not cases:
        sys.exit(f"no difftest cases for {unit}" + (f" matching {args.only!r}" if args.only else ""))
    failed = False
    # Each case has its own emulator, so cases run in parallel; results print in case order.
    with ProcessPoolExecutor(min(len(cases), os.cpu_count() or 1)) as pool:
        futures = [pool.submit(runner.run_case, case, args.trials, args.seed, obj=args.object,
                               initializers=INITIALIZERS[case.name], own_callees=args.own_callees)
                   for case in cases]
        for case, future in zip(cases, futures):
            result = future.result()
            if "skipped" in result:
                print(f"SKIP  {case.name:48} {result['skipped']}", flush=True)
                failed = True
                continue
            failed |= result["gating_failures"] > 0
            print_result("FAIL" if result["gating_failures"] else "PASS", result)
    return failed


def run_controls(args):
    shutil.rmtree(ROOT / args.workdir, ignore_errors=True)
    failed = False
    for control in CONTROLS:
        if args.only and args.only not in control.label:
            continue
        case = next(c for c in CASES if c.name == control.case)
        obj = runner.compile_mutant(case.unit, control.edit, args.workdir) if control.edit else None
        result = runner.run_case(case, args.trials, args.seed, obj=obj,
                                 initializers=INITIALIZERS[case.name], patch=control.patch)
        caught = result["gating_failures"] > 0
        ok = caught == control.expect_fail
        failed |= not ok
        print(f"{'OK' if ok else 'BAD':4}  {control.label}\n      expected "
              f"{'FAIL' if control.expect_fail else 'PASS'}: {result['gating_failures']}/"
              f"{result['trials']} trials differ", flush=True)
        print_first(result, 600)
    return failed


def main(argv=None):
    ap = argparse.ArgumentParser(prog="python tools/difftest", description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("unit", nargs="?", help="objdiff unit name or unique basename")
    ap.add_argument("--only", help="test only cases (or controls) whose name contains this")
    ap.add_argument("--trials", type=int, default=10000, help="trials per function (default 10000)")
    ap.add_argument("--seed", type=int, default=1234)
    ap.add_argument("--own-callees", action="store_true",
                    help="callees defined in the same object run our code too, not the original")
    ap.add_argument("--object", help="test this object instead of the unit's build output")
    ap.add_argument("--controls", action="store_true",
                    help="run the negative controls instead of a unit's cases")
    ap.add_argument("--workdir", default="build/probe-difftest",
                    help="where --controls compiles mutants (default build/probe-difftest)")
    args = ap.parse_args(argv)
    if bool(args.unit) == args.controls:
        ap.error("give a unit, or --controls")
    return 1 if (run_controls(args) if args.controls else run_cases(args)) else 0


if __name__ == "__main__":
    sys.exit(main())
