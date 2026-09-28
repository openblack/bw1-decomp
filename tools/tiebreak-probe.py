#!/usr/bin/env python3

"""Screen source variants against the target, many compiles in parallel.

Two uses:

  1. Tie-break test (--dummies). Inserts 0..N unused locals before an anchor
     line and reports, per function, which counts match the target exactly.
     If some counts match and others do not, the residual is a compiler
     tie-break that depends on how much IL the inliner has already built in
     that function (MSVC6 x87 operand order is the known case). It is not a
     source-meaning difference: stop searching and decide between a fakematch
     and leaving the function nonmatching (see docs/msvc6_inliner.md).

  2. Variant screening (--variants FILE). FILE is JSON:
       [{"name": "cosf", "edits": [{"file": "src/...h", "old": "...", "new": "..."}]}, ...]
     Every variant is built from a private copy of src/, so header edits are
     safe to run in parallel. Output shows exact matches and a short hash per
     function; a variant whose hash equals the baseline's did not change the
     code at all and can be dropped from larger sweeps.

Usage:
  python tools/tiebreak-probe.py --source src/Black/Object3D.cpp \\
      -f "Create@Game3DObject@@SAPAV1@ABU" --dummies "LHPoint probe{i};" \\
      --anchor "\\t\\tGLandscape::ConvertMapCoordToLandscapePoint(coords, point);" --max 12
  python tools/tiebreak-probe.py --source src/Black/Object3D.cpp -f Create@Game3DObject \\
      --variants variants.json -j 16

Matching is exact code-byte equality with relocation fields masked, against the
extracted target object from objdiff.json. Probe builds go to build/probe-tiebreak/.
"""

import argparse
import concurrent.futures as cf
import json
import os
import queue
import shutil
import sys
from pathlib import Path

sys.dont_write_bytecode = True

import msvc_probe as mp
from decomp_common import ROOT

WORK = "build/probe-tiebreak"


def build_variant(index, name, edits, ctx):
    slot = ctx["slots"].get()
    work = mp.make_workdir(f"{WORK}/w{slot}", copy_src=True)
    rel_src = os.path.relpath(work, ROOT)
    originals = {}
    try:
        for edit in edits:
            path = work / edit["file"]
            if path not in originals:
                originals[path] = path.read_text(encoding="latin-1")
            current = path.read_text(encoding="latin-1")
            if edit["old"] not in current:
                return name, None, f"edit anchor not found in {edit['file']}"
            path.write_text(current.replace(edit["old"], edit["new"], 1), encoding="latin-1")
        obj = f"{rel_src}/v{index}.obj"
        argv = mp.retarget(ctx["argv"], ctx["source"], f"{rel_src}/{ctx['source']}", obj, src_root=rel_src)
        ok, errors = mp.run_compile(argv)
        if not ok:
            return name, None, "; ".join(errors[:2]) or "compile failed"
        funcs = mp.functions(Path(ROOT) / obj)
        row = {}
        for needle, tname in ctx["targets"].items():
            ours = [n for n in funcs if needle in n]
            if len(ours) != 1:
                row[needle] = ("?", "--------")
                continue
            data = funcs[ours[0]][0]
            row[needle] = ("MATCH" if mp.same_code(ctx["target_funcs"][tname][0], data) else "-", mp.digest(data))
        return name, row, None
    finally:
        for path, text in originals.items():
            path.write_text(text, encoding="latin-1")
        ctx["slots"].put(slot)


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--source", help="source file of the unit (e.g. src/Black/Object3D.cpp)")
    ap.add_argument("--unit", help="objdiff unit name instead of --source")
    ap.add_argument("-f", "--function", action="append", required=True,
                    help="substring of the mangled function name to judge (repeatable)")
    ap.add_argument("--dummies", help="declaration template for the tie-break test; {i} is the index")
    ap.add_argument("--anchor", help="insert the dummies before the first occurrence of this text")
    ap.add_argument("--max", type=int, default=12, help="largest dummy count to try (default 12)")
    ap.add_argument("--variants", help="JSON list of {name, edits:[{file, old, new}]}")
    ap.add_argument("-j", "--jobs", type=int, default=max(1, (os.cpu_count() or 2) // 2))
    args = ap.parse_args(argv)
    if bool(args.dummies) == bool(args.variants):
        ap.error("give exactly one of --dummies or --variants")
    if args.dummies and not args.anchor:
        ap.error("--dummies needs --anchor")

    shutil.rmtree(Path(ROOT) / WORK, ignore_errors=True)
    unit = mp.unit_for(source=args.source, unit=args.unit)
    argv_, source, _ = mp.compile_command(unit)
    target_funcs = mp.functions(Path(ROOT) / unit["target_path"])
    targets = {needle: mp.find(target_funcs, needle) for needle in args.function}
    slots = queue.Queue()
    for k in range(args.jobs):
        slots.put(k)
    ctx = dict(argv=argv_, source=source, target_funcs=target_funcs, targets=targets, slots=slots)

    if args.dummies:
        anchor = args.anchor.encode().decode("unicode_escape")
        variants = []
        for n in range(args.max + 1):
            decl = "".join(args.dummies.replace("{i}", str(i)) + "\n" for i in range(n))
            indent = anchor[: len(anchor) - len(anchor.lstrip("\t "))]
            decl = "".join(indent + line + "\n" for line in decl.splitlines())
            variants.append((f"dummies={n}", [{"file": source, "old": anchor, "new": decl + anchor}]))
    else:
        variants = [(v["name"], v["edits"]) for v in json.loads(Path(args.variants).read_text())]
        variants.insert(0, ("baseline", []))

    with cf.ThreadPoolExecutor(args.jobs) as ex:
        futures = [ex.submit(build_variant, i, name, edits, ctx) for i, (name, edits) in enumerate(variants)]
        results = [f.result() for f in futures]

    width = max(len(name) for name, _, _ in results)
    print(" " * width + "  " + "  ".join(f"{n[:24]:>24}" for n in args.function))
    for name, row, error in results:
        if error:
            print(f"{name:<{width}}  ERROR {error}")
            continue
        cells = [f"{row[n][0] + ' ' + row[n][1]:>24}" for n in args.function]
        print(f"{name:<{width}}  " + "  ".join(cells))
    return 0


if __name__ == "__main__":
    sys.exit(main())
