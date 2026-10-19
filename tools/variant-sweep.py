#!/usr/bin/env python3

"""Build source variants of one unit in parallel and score them against the target.

Every variant is compiled from a private copy of src/ with the unit's exact command
line, using a copy of the compiler whose c2.dll logs its inline decisions (the
objects are byte-identical to the real compiler's; see tools/c2-inline-log.py).
For each judged function the table shows:

  score    objdiff's match percent (relocations compared as data values)
  =        the code bytes equal the target's exactly (relocation fields masked)
  hash     a short hash of our code: variants with the same hash compiled the same
  calls    inline candidates c2 rejected in that function (calls left in the code)

Variant files are JSON, either a plain list (the tiebreak-probe.py format):

  [{"name": "ternary", "edits": [{"file": "src/...cpp", "old": "...", "new": "..."}]}]

or knobs, each a list of alternative options. The sweep builds every combination
(--mode product, default) or changes one knob at a time from the first options
(--mode single):

  {"knobs": [
     {"name": "level", "options": [
        {"label": "if", "edits": []},
        {"label": "ternary", "edits": [{"file": "src/Black/Tree.cpp", "old": "...", "new": "..."}]}]},
     {"name": "sway", "options": [...]}]}

The first option of a knob should normally be the current source (no edits).

Usage:
  python tools/variant-sweep.py --source src/Black/Tree.cpp -f "Tree::Draw" --variants knobs.json
  python tools/variant-sweep.py --source src/Black/Tree.cpp -f Draw@Tree -f DrawOutOfMap@Tree \\
      --variants knobs.json --mode single -j 16 --top 20

Builds go to build/probe-sweep/ (one private src/ copy per job).
"""

import argparse
import concurrent.futures as cf
import importlib.util
import itertools
import json
import os
import queue
import shutil
import subprocess
import sys
from pathlib import Path

sys.dont_write_bytecode = True

import c2_patch
import msvc_probe as mp
from decomp_common import ROOT

WORK = "build/probe-sweep"
OBJDIFF = Path(ROOT) / "build" / "tools" / ("objdiff-cli.exe" if os.name == "nt" else "objdiff-cli")

spec = importlib.util.spec_from_file_location("c2_inline_log", Path(__file__).with_name("c2-inline-log.py"))
inline_log = importlib.util.module_from_spec(spec)
spec.loader.exec_module(inline_log)


def load_variants(path, mode):
    """-> [(name, edits)], with the baseline (no edits) first."""
    data = json.loads(Path(path).read_text())
    if isinstance(data, list):
        return [("baseline", [])] + [(v["name"], v["edits"]) for v in data]
    knobs = data["knobs"]
    if mode == "single":
        variants = [("baseline", [])]
        for knob in knobs:
            for option in knob["options"][1:]:
                variants.append((f"{knob['name']}={option['label']}", option["edits"]))
        return variants
    variants = []
    for combo in itertools.product(*(knob["options"] for knob in knobs)):
        name = " ".join(f"{k['name']}={o['label']}" for k, o in zip(knobs, combo))
        edits = [e for option in combo for e in option["edits"]]
        variants.append((name if any(o["edits"] for o in combo) else f"baseline ({name})", edits))
    return variants


def prepare_compiler(unit):
    """A copy of the unit's compiler with the inline-logging c2.dll. Returns the cl.exe path."""
    argv, _, _ = mp.compile_command(unit)
    index = next(i for i, a in enumerate(argv) if os.path.basename(a).lower() == "cl.exe")
    compiler = Path(ROOT) / argv[index]
    cc = mp.make_workdir(f"{WORK}/cc")
    for path in compiler.parent.iterdir():
        if path.is_file() and path.name != "c2.dll":
            shutil.copy2(path, cc / path.name)
    c2_patch.patch_c2(Path(ROOT) / c2_patch.CLANG, compiler.parent / "c2.dll", cc / "c2.dll",
                      inline_log.HOOKS, inline_log.STRINGS)
    return index, str(cc / "cl.exe")


def matches(needle, name, demangled):
    return needle in name or needle in (demangled or "") or needle in inline_log.demangle(name)


def score(target, obj, needles):
    """objdiff match percent per needle (None when the function is missing)."""
    proc = subprocess.run([str(OBJDIFF), "diff", "-1", target, "-2", str(obj), "-c", "functionRelocDiffs=data_value",
                           "-o", "-", "--format", "json"], cwd=ROOT, capture_output=True)
    if proc.returncode:
        return {n: None for n in needles}
    symbols = json.loads(proc.stdout).get("right", {}).get("symbols", [])
    result = {}
    for needle in needles:
        found = [s for s in symbols if s.get("kind") == "SYMBOL_FUNCTION"
                 and matches(needle, s.get("name", ""), s.get("demangled_name"))]
        result[needle] = found[0].get("match_percent", 0.0) if len(found) == 1 else None
    return result


def build(index, name, edits, ctx):
    slot = ctx["slots"].get()
    work = mp.make_workdir(f"{WORK}/w{slot}", copy_src=True)
    rel = os.path.relpath(work, ROOT)
    originals = {}
    try:
        for edit in edits:
            path = work / edit["file"]
            if path not in originals:
                originals[path] = path.read_bytes()
            current = path.read_bytes().decode("latin-1")
            if edit["old"] not in current:
                return dict(name=name, error=f"edit anchor not found in {edit['file']}")
            path.write_bytes(current.replace(edit["old"], edit["new"], 1).encode("latin-1"))
        obj = f"{rel}/v{index}.obj"
        cmd = mp.retarget(ctx["argv"], ctx["source"], f"{rel}/{ctx['source']}", obj, src_root=rel)
        cmd[ctx["cl_index"]] = ctx["cl"]
        proc = subprocess.run(cmd, cwd=ROOT, capture_output=True, text=True, errors="replace")
        log = (proc.stdout + proc.stderr).replace("\r", "")
        if proc.returncode:
            errors = [l for l in log.splitlines() if " error " in l or "fatal error" in l]
            return dict(name=name, error="; ".join(errors[:2]) or "compile failed")
        funcs = mp.functions(Path(ROOT) / obj)
        scores = score(ctx["target"], Path(ROOT) / obj, ctx["needles"])
        decisions = inline_log.parse_log(log)
        row = {}
        for needle in ctx["needles"]:
            ours = [n for n in funcs if matches(needle, n, None)]
            code = funcs[ours[0]][0] if len(ours) == 1 else None
            target = ctx["targets"].get(needle)
            exact = code is not None and target is not None and mp.same_code(ctx["target_funcs"][target][0], code)
            calls = None
            for func in decisions:
                if matches(needle, func.name, None):
                    calls = sorted({inline_log.demangle(s.name) for s in func.all_sites if s.decision != "inlined"})
                    break
            row[needle] = dict(score=scores.get(needle), exact=exact,
                               hash=mp.digest(code) if code is not None else "--------", calls=calls)
        return dict(name=name, row=row)
    finally:
        for path, data in originals.items():
            path.write_bytes(data)
        ctx["slots"].put(slot)


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--source", help="source file of the unit (e.g. src/Black/Tree.cpp)")
    ap.add_argument("--unit", help="objdiff unit name instead of --source")
    ap.add_argument("-f", "--function", action="append", required=True,
                    help="substring of the mangled or demangled function name to judge (repeatable)")
    ap.add_argument("--variants", required=True, help="JSON variants list or knobs (see above)")
    ap.add_argument("--mode", choices=("product", "single"), default="product",
                    help="knobs: every combination (default) or one knob at a time")
    ap.add_argument("-j", "--jobs", type=int, default=os.cpu_count() or 2)
    ap.add_argument("--top", type=int, help="show only the best N variants (by the first function's score)")
    args = ap.parse_args(argv)

    try:
        unit = mp.unit_for(source=args.source, unit=args.unit)
        variants = load_variants(args.variants, args.mode)
        shutil.rmtree(Path(ROOT) / WORK, ignore_errors=True)
        cl_index, cl = prepare_compiler(unit)
    except (OSError, ValueError, KeyError, RuntimeError, subprocess.CalledProcessError) as exc:
        print(f"error: {exc}", file=sys.stderr)
        return 1

    argv_, source, _ = mp.compile_command(unit)
    target_funcs = mp.functions(Path(ROOT) / unit["target_path"])
    targets = {}
    for needle in args.function:
        found = [n for n in target_funcs if matches(needle, n, None)]
        if len(found) == 1:
            targets[needle] = found[0]
    jobs = max(1, min(args.jobs, len(variants)))
    slots = queue.Queue()
    for k in range(jobs):
        slots.put(k)
    ctx = dict(argv=argv_, source=source, cl=cl, cl_index=cl_index, target=unit["target_path"],
               target_funcs=target_funcs, targets=targets, needles=args.function, slots=slots)
    print(f"{len(variants)} variants, {jobs} jobs", file=sys.stderr)
    with cf.ThreadPoolExecutor(jobs) as ex:
        results = list(ex.map(lambda item: build(item[0], *item[1], ctx), enumerate(variants)))

    first = args.function[0]
    ok = [r for r in results if "row" in r]
    ok.sort(key=lambda r: -(r["row"][first]["score"] or -1))
    if args.top:
        ok = ok[:args.top]
    width = min(70, max(len(r["name"]) for r in results))
    for needle in args.function:
        print(f"== {needle}")
        for r in ok:
            cell = r["row"][needle]
            score_text = "  ----" if cell["score"] is None else f"{cell['score']:6.2f}"
            calls = "?" if cell["calls"] is None else (", ".join(cell["calls"]) or "-")
            print(f"{score_text} {'=' if cell['exact'] else ' '} {cell['hash']}  {r['name'][:width]:<{width}}  calls: {calls}")
    for r in results:
        if "error" in r:
            print(f"ERROR {r['name']}: {r['error']}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
