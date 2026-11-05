#!/usr/bin/env python3
"""Turn tools/asm-dupe-scan.py output into worker batches for the dupe-harvest skill.

  plan    scan every unit, drop units no worker may touch (CRT libs, upstream
          zlib/jpeg/mpg123, Matching units), attach the twin's source location,
          and split the remaining units into N disjoint worker batches.
  show    print one batch as a worker brief (what to match, which twin to copy).
  pch     headers inside BlackPCH: workers must not edit them (coordinator only).
  clusters  unmatched duplicate clusters (no member matched yet): matching one
          member by hand makes the rest scan hits on the next wave.

Examples:
  python3 .claude/skills/dupe-harvest/harvest.py plan --workers 4
  python3 .claude/skills/dupe-harvest/harvest.py show 2
  python3 .claude/skills/dupe-harvest/harvest.py clusters --min-count 3
"""

import argparse
import collections
import contextlib
import io
import json
import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT / "tools"))
import importlib.util  # noqa: E402

spec = importlib.util.spec_from_file_location("asm_dupe_scan", ROOT / "tools" / "asm-dupe-scan.py")
scanner = importlib.util.module_from_spec(spec)
spec.loader.exec_module(scanner)

PLAN = ROOT / "build" / "dupe-harvest-plan.json"
# Units workers never edit: CRT (libcmt-obj-matching skill owns them) and upstream libraries.
EXCLUDE = re.compile(r"/lib/|/libcmt|/libcpmt|/zlib/|/jpeg/|/mpg123/")
GENERATED = ("scalar deleting destructor", "vector deleting destructor", "`vftable'",
             "_$E", "_$S", "?_G", "?_E")


KINDS = ("exact", "shape", "generated", "std", "init", "unnamed")


def kind_of(row):
    name = row["demangled"] or row["name"]
    if name.startswith("crt_xc") or "_$E" in name or "_$S" in name:
        return "init"
    if row["generated"]:
        return "generated"
    if re.match(r"(fn_|FUN_|data_|lbl_)", row["name"]):
        return "unnamed"
    if "std::" in name:
        return "std"
    return row["tier"]


def owner_class(row):
    key = method_key(row["demangled"] or "")
    if not key:
        return None
    cls = key.rpartition("::")[0]
    return None if "<>" in cls or "std" in cls else cls


def configured_version():
    text = (ROOT / "build.ninja").read_text(encoding="utf-8", errors="replace")
    match = re.search(r"--version (\S+)", text)
    return match.group(1) if match else "BW1W120"


def method_key(demangled):
    """'Class::Method' from a demangled name, or None."""
    head = demangled.split("(", 1)[0]
    head = re.sub(r"^.*?__(thiscall|cdecl|stdcall|fastcall)\s+", "", head)
    head = re.sub(r"<.*>", "<>", head)
    return head.strip() if "::" in head else None


def find_definition(demangled):
    """(path, line) of the twin's out-of-line or inline definition, best effort."""
    key = method_key(demangled)
    if not key or "<>" in key:
        return None
    cls, _, method = key.rpartition("::")
    cls = cls.rsplit("::", 1)[-1]
    if not re.match(r"^[A-Za-z_]\w*$", method) or not cls:
        return None
    out = subprocess.run(["grep", "-rnE", rf"\b{re.escape(cls)}::{re.escape(method)}\s*\(", "src", "include",
                          "--exclude-dir=c"], cwd=ROOT, capture_output=True, text=True).stdout.splitlines()
    out = [line for line in out if not line.split(":", 2)[2].lstrip().startswith("//")]
    if not out:
        out = subprocess.run(["grep", "-rnE", rf"\b{re.escape(method)}\s*\(", "src", "include",
                              "--include", f"{cls}.h"], cwd=ROOT, capture_output=True, text=True).stdout.splitlines()
    if not out:
        return None
    path, line, _ = out[0].split(":", 2)
    return f"{path}:{line}"


def scan_rows(report):
    project = scanner.load_project()
    statuses = scanner.load_statuses(report)
    with contextlib.redirect_stderr(io.StringIO()):
        functions, exact, shape = scanner.index_units(project, statuses, 1)
    args = argparse.Namespace(unit=None, source=None, prefix="", status=None, json=True,
                              summary=False, limit=0)
    buffer = io.StringIO()
    with contextlib.redirect_stdout(buffer):
        scanner.scan(args, project, functions, exact, shape)
    text = buffer.getvalue()
    rows = json.loads(text)["free_wins"] if text.startswith("{") else []
    return project, rows, functions, exact


def plan(args):
    version = configured_version()
    report = args.report or f"build/{version}/report.json"
    project, rows, _, _ = scan_rows(report)
    sources = {u["name"]: u.get("metadata", {}).get("source_path", "") for u in project["units"]}
    objects = {u["name"]: u.get("base_path", "") for u in project["units"]}
    done = {u["name"] for u in project["units"] if u.get("metadata", {}).get("complete")}
    units = collections.defaultdict(list)
    skipped = collections.Counter()
    for row in rows:
        source = sources.get(row["unit"], "")
        if EXCLUDE.search(row["unit"]) or not source:
            skipped["excluded"] += 1
            continue
        if row["unit"] in done:
            skipped["matching-unit"] += 1
            continue
        twin = row["twins"][0]
        row["generated"] = any(g in (row["demangled"] or row["name"]) for g in GENERATED)
        row["twin_source"] = sources.get(twin["unit"], "")
        row["kind"] = kind_of(row)
        if row["kind"] not in args.kinds:
            skipped[row["kind"]] += 1
            continue
        if row["size"] < args.min_size:
            skipped["small"] += 1
            continue
        row["twin_def"] = None if row["generated"] else find_definition(twin["demangled"])
        units[row["unit"]].append(row)
    # Union units with the classes their candidates belong to: one worker owns a class's header.
    parent = {}

    def find(x):
        parent.setdefault(x, x)
        while parent[x] != x:
            parent[x] = parent[parent[x]]
            x = parent[x]
        return x

    for unit, rows_here in units.items():
        for row in rows_here:
            cls = owner_class(row)
            if cls:
                parent[find(("class", cls))] = find(("unit", unit))
        find(("unit", unit))
    groups = collections.defaultdict(list)
    for unit in units:
        groups[find(("unit", unit))].append(unit)
    batches = [{"worker": i, "units": [], "count": 0} for i in range(args.workers)]
    deferred = 0
    for group in sorted(groups.values(), key=lambda g: -sum(len(units[u]) for u in g)):
        size = sum(len(units[u]) for u in group)
        batch = min(batches, key=lambda b: b["count"])
        if batch["count"] and batch["count"] + size > args.max_per_worker:
            deferred += size
            continue
        for unit in group:
            batch["units"].append({"unit": unit, "source": sources[unit], "object": objects[unit],
                                   "candidates": units[unit]})
        batch["count"] += size
    PLAN.write_text(json.dumps({"version": version, "report": report, "batches": batches}, indent=1))
    total = sum(len(v) for v in units.values())
    print(f"{version}: {total} candidates in {len(units)} units -> {args.workers} batches "
          f"({deferred} left for a later wave); skipped {dict(skipped)}; plan at {PLAN.relative_to(ROOT)}")
    for batch in batches:
        print(f"  worker {batch['worker']}: {batch['count']} candidates, "
              f"{len(batch['units'])} units: {', '.join(u['unit'].rsplit('/', 1)[-1] for u in batch['units'])}")


def show(args):
    data = json.loads(PLAN.read_text())
    batch = data["batches"][args.worker]
    print(f"version {data['version']}; {batch['count']} candidates\n")
    for unit in batch["units"]:
        print(f"## {unit['unit']}  ({unit['source']}, object {unit['object']})")
        for row in sorted(unit["candidates"], key=lambda r: r["address"]):
            twin = row["twins"][0]
            kind = row["kind"]
            print(f"- [{kind}/{row['status']}] 0x{row['address']:08x} size {row['size']}: "
                  f"{row['demangled'] or row['name']}")
            print(f"    twin: {twin['demangled'] or twin['name']}  "
                  f"({twin['unit'].rsplit('/', 1)[-1]}, {row['twin_def'] or row['twin_source']})")
        print()


def clusters(args):
    version = configured_version()
    project = scanner.load_project()
    statuses = scanner.load_statuses(args.report or f"build/{version}/report.json")
    with contextlib.redirect_stderr(io.StringIO()):
        _, exact, shape = scanner.index_units(project, statuses, args.min_size)
    index = shape if args.shape else exact
    found = []
    for members in index.values():
        members = [m for m in members if not EXCLUDE.search(m.unit)]
        if len(members) < args.min_count or any(m.status == "match" for m in members):
            continue
        found.append(members)
    found.sort(key=lambda ms: -sum(m.size for m in ms))
    print(f"{len(found)} unmatched clusters of {args.min_count}+ (match one member, rerun plan)")
    for members in found[:args.limit]:
        print(f"\n{len(members)} x {members[0].size} bytes = {sum(m.size for m in members)}:")
        for m in members[:args.rows]:
            print(f"  {m.status:9} {m.unit.rsplit('/', 1)[-1]:32} 0x{m.address:08x} {m.label[:110]}")


def pch_headers():
    """Headers compiled into BlackPCH (no header deps: editing one leaves every game unit stale)."""
    version = configured_version()
    command = subprocess.run(["ninja", "-t", "commands", "-s", f"build/{version}/src/Black/Bonfire.o"],
                             cwd=ROOT, capture_output=True, text=True).stdout.split()
    keep = [a for a in command[:2]] + ["/nologo", "/E", "/TP"]
    for i, arg in enumerate(command):
        if arg in ("/I",) and i + 1 < len(command):
            keep += [arg, command[i + 1]]
        elif arg.startswith("/D"):
            keep.append(arg)
    out = subprocess.run(keep + ["src/Black/BlackPCH.h"], cwd=ROOT, capture_output=True, text=True,
                         errors="replace").stdout
    names = {m.group(1).replace("\\\\", "/").replace("\\", "/")
             for m in re.finditer(r'^#line \d+ "([^"]+)"', out, re.M)}
    return sorted(n for n in names if "compilers" not in n and (n.startswith("src") or n.startswith("include")))


def main():
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    sub = parser.add_subparsers(dest="command", required=True)
    sub.add_parser("pch")
    p = sub.add_parser("plan")
    p.add_argument("--workers", type=int, default=4)
    p.add_argument("--max-per-worker", type=int, default=80, help="candidates per batch; rest wait")
    p.add_argument("--kinds", nargs="+", default=["exact", "shape", "generated", "std"], choices=KINDS)
    p.add_argument("--min-size", type=int, default=1)
    p.add_argument("--report")
    p = sub.add_parser("show")
    p.add_argument("worker", type=int)
    p = sub.add_parser("clusters")
    p.add_argument("--min-count", type=int, default=3)
    p.add_argument("--min-size", type=int, default=16)
    p.add_argument("--shape", action="store_true")
    p.add_argument("--limit", type=int, default=25)
    p.add_argument("--rows", type=int, default=6)
    p.add_argument("--report")
    args = parser.parse_args()
    if args.command == "pch":
        print("\n".join(pch_headers()))
        return
    {"plan": plan, "show": show, "clusters": clusters}[args.command](args)


if __name__ == "__main__":
    main()
