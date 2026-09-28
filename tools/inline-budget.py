#!/usr/bin/env python3

"""Tools for MSVC6 (c2.dll 8966) inline-budget mismatches. See docs/msvc6_inliner.md.

Subcommands:

  size      Exact IL size of one inline call, measured with the real compiler.
            Prints an integer, or "<=40 (free)" for callees that are never charged.

              python tools/inline-budget.py size --source src/Black/Object3D.cpp \\
                  --include "Lionhead/LH3DLib/development/LHMatrix.h" \\
                  --params "LHMatrix& m, float a" --call "m.RotateY(a)" --symbol "RotateY@LHMatrix"

  sim       Run the inliner's budget algorithm on a call tree and print the call
            sites that stay calls. Tree syntax: comma-separated names in source
            order, nested sites in parentheses. Sizes <= 40 are free.

              python tools/inline-budget.py sim --tree "G,C,P(S,T,R,X(I),R,S,T,X(I))" \\
                  --sizes G=50,C=81,P=194,S=129,T=81,R=223,X=68,I=125

  callsets  For each function, compare which calls to the named helpers remain
            in the target versus our object. A differing list is an inline-budget
            (or source-shape) difference, not a register or ordering one.

              python tools/inline-budget.py callsets --source src/Black/Object3D.cpp \\
                  --helpers SetIdentity,SetScale,PostTranslation,Translation,RotateY
              python tools/inline-budget.py callsets --all --target-only --helpers SetScale,RotateY

The budget rules (from docs/msvc6_inliner.md): a caller whose own IL is at most 500
gets 1000; callees of 40 or less are free; a larger callee is accepted only if it
fits in what remains, then charged; nested sites get remaining / count, where count
is the number of candidates at the parent level not yet processed, current included.
"""

import argparse
import concurrent.futures as cf
import os
import re
import sys
from pathlib import Path

sys.dont_write_bytecode = True

import msvc_probe as mp
from decomp_common import ROOT, load_project

WORK = "build/probe-inline"


def filler(n, name):
    body = "".join(f"p[{i}] = 0.0f; " for i in range(n))
    return f"struct {name} {{ static inline void Go(float* p) {{ {body}}} }};\n"


def size_probe(ctx, k, total, call, symbol):
    base, extra = divmod(total, k)
    parts, calls = "", ""
    for j in range(k):
        parts += filler(base + (1 if j < extra else 0), f"Fill{j}")
        calls += f"Fill{j}::Go(probe_p); "
    includes = "".join(f"#include <{inc}>\n" for inc in ctx["includes"])
    text = f"{includes}{parts}void ProbeCaller(float* probe_p, {ctx['params']}) {{ {calls}{call}; }}\n"
    tag = f"k{k}_n{total}_{abs(hash((call, text))) % 10**8}"
    src = f"{WORK}/{tag}.cpp"
    obj = f"{WORK}/{tag}.obj"
    (Path(ROOT) / src).write_text(text)
    ok, errors = mp.run_compile(mp.retarget(ctx["argv"], ctx["source"], src, obj))
    if not ok:
        raise RuntimeError("probe compile failed: " + "; ".join(errors[:3]))
    funcs = mp.functions(Path(ROOT) / obj)
    caller = mp.find(funcs, "ProbeCaller")
    targets = funcs[caller][1]
    if any("Fill" in t for t in targets):
        raise RuntimeError(f"filler not inlined at k={k}, n={total}; caller budget is not 1000")
    return not any(symbol in t for t in targets)


def exact_size(ctx, call, symbol, jobs):
    def search(k):
        lo, hi = 5 * k, (1000 - 13 * k) // 7
        if not size_probe(ctx, k, lo, call, symbol):
            return k, None
        if size_probe(ctx, k, hi, call, symbol):
            return k, "free"
        while lo < hi:
            mid = (lo + hi + 1) // 2
            if size_probe(ctx, k, mid, call, symbol):
                lo = mid
            else:
                hi = mid - 1
        return k, lo

    with cf.ThreadPoolExecutor(min(jobs, 7)) as ex:
        results = list(ex.map(search, range(1, 8)))
    if all(s == "free" for _, s in results):
        return "<=40 (free)"
    low, high = -10**9, 10**9
    for k, s in results:
        if s is None or s == "free":
            continue
        low = max(low, 1000 - 13 * k - 7 * (s + 1) + 1)
        high = min(high, 1000 - 13 * k - 7 * s)
    if low > high:
        return f"inconsistent ({low}..{high}); callee may have nested charged sites"
    return str(low) if low == high else f"{low}..{high}"


def cmd_size(args):
    unit = mp.unit_for(source=args.source, unit=args.unit)
    argv, source, _ = mp.compile_command(unit)
    (Path(ROOT) / WORK).mkdir(parents=True, exist_ok=True)
    ctx = dict(argv=argv, source=source, includes=args.include, params=args.params)
    print(exact_size(ctx, args.call, args.symbol, args.jobs))
    return 0


def parse_tree(text):
    pos = 0

    def parse_list():
        nonlocal pos
        nodes = []
        while pos < len(text):
            m = re.match(r"\s*([A-Za-z_][A-Za-z0-9_#]*)\s*", text[pos:])
            if not m:
                raise ValueError(f"bad tree near {text[pos:]!r}")
            pos += m.end()
            kids = []
            if pos < len(text) and text[pos] == "(":
                pos += 1
                kids = parse_list()
                if pos >= len(text) or text[pos] != ")":
                    raise ValueError("unbalanced parentheses")
                pos += 1
            nodes.append((m.group(1), kids))
            while pos < len(text) and text[pos] == " ":
                pos += 1
            if pos < len(text) and text[pos] == ",":
                pos += 1
                continue
            break
        return nodes

    nodes = parse_list()
    if pos != len(text):
        raise ValueError(f"trailing text {text[pos:]!r}")
    return nodes


def simulate(nodes, budget, sizes, trace, depth=0):
    remaining = budget
    count = len(nodes)
    for name, kids in nodes:
        size = sizes[name.split("#")[0]]
        if remaining < size and size > 40:
            trace.append((depth, name, "CALL", remaining))
            count -= 1
            continue
        if size > 40:
            remaining -= size
        trace.append((depth, name, "inline", remaining))
        if kids:
            used = simulate(kids, remaining // count, sizes, trace, depth + 1)
            remaining -= used
        count -= 1
    return budget - remaining


def cmd_sim(args):
    sizes = {}
    for item in args.sizes.split(","):
        key, value = item.split("=")
        sizes[key.strip()] = int(value)
    trace = []
    simulate(parse_tree(args.tree), args.budget, sizes, trace)
    for depth, name, what, remaining in trace:
        print(f"{'  ' * depth}{name:<12} {what:<6} remaining={remaining}")
    print("calls:", ", ".join(name for _, name, what, _ in trace if what == "CALL") or "(none)")
    return 0


def cmd_callsets(args):
    helpers = [h for h in args.helpers.split(",") if h]
    units = load_project()["units"]
    if not args.all:
        units = [mp.unit_for(source=args.source, unit=args.unit)]
    shown = 0
    for unit in units:
        target_path = Path(ROOT) / unit.get("target_path", "")
        base_path = Path(ROOT) / unit.get("base_path", "")
        if not target_path.is_file():
            continue
        target = mp.functions(target_path)
        ours = mp.functions(base_path) if base_path.is_file() and not args.target_only else {}

        def keep(calls):
            return [c for c in calls if any(h in c for h in helpers)]

        for name, (_, tcalls) in target.items():
            t = keep(tcalls)
            o = keep(ours[name][1]) if name in ours else None
            if not t and not o:
                continue
            if args.target_only:
                print(f"{unit['name'].rsplit('/', 1)[-1]:<20} {name[:70]}\n    T: {short(t)}")
            elif o is None:
                continue
            elif t != o or args.show_all:
                mark = "OK" if t == o else "XX"
                print(f"{mark} {unit['name'].rsplit('/', 1)[-1]:<20} {name[:70]}\n    T: {short(t)}\n    O: {short(o)}")
            shown += 1
    if not shown:
        print("no functions call the given helpers")
    return 0


def short(calls):
    return [re.sub(r"^\?+", "", c).split("@")[0] for c in calls]


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    sub = ap.add_subparsers(dest="cmd", required=True)

    s = sub.add_parser("size", help="exact IL size of one inline call")
    s.add_argument("--source", help="unit source whose compile flags to use")
    s.add_argument("--unit", help="unit name whose compile flags to use")
    s.add_argument("--include", action="append", default=[], help="header to #include <...> (repeatable)")
    s.add_argument("--params", required=True, help="caller parameters the call expression needs")
    s.add_argument("--call", required=True, help="the call expression, e.g. m.RotateY(a)")
    s.add_argument("--symbol", required=True, help="substring of the callee's mangled name")
    s.add_argument("-j", "--jobs", type=int, default=7)
    s.set_defaults(func=cmd_size)

    s = sub.add_parser("sim", help="simulate the inliner on a call tree")
    s.add_argument("--tree", required=True)
    s.add_argument("--sizes", required=True, help="NAME=size,... (use NAME#2 in the tree for repeats)")
    s.add_argument("--budget", type=int, default=1000)
    s.set_defaults(func=cmd_sim)

    s = sub.add_parser("callsets", help="compare remaining helper calls, target vs ours")
    s.add_argument("--source")
    s.add_argument("--unit")
    s.add_argument("--all", action="store_true", help="scan every unit in objdiff.json")
    s.add_argument("--target-only", action="store_true", help="list target call sets only (works for unbuilt units)")
    s.add_argument("--show-all", action="store_true", help="also list functions whose call sets agree")
    s.add_argument("--helpers", required=True, help="comma-separated substrings of helper names")
    s.set_defaults(func=cmd_callsets)

    args = ap.parse_args(argv)
    return args.func(args)


if __name__ == "__main__":
    sys.exit(main())
