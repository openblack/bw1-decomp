#!/usr/bin/env python3
"""Prove that a source edit leaves compiled objects unchanged.

For readability passes (renames, constants, comment removal, formatting) that must not
change code generation. `snapshot` compiles the selected sources with their exact Ninja
compiler commands into a private directory; `compare` recompiles them and compares each
object with its snapshot. Neither touches Ninja's or objdiff's objects.

Compared: section names, sizes and contents (debug sections ignored), relocations
(offset, type, target name) and the set of external symbols. Compiler-numbered local
names ($L123, $T45, $S6, _$E7, $name$8) are normalised because any edit renumbers them.

  python tools/codegen-check.py snapshot NAME --source src/Black/Game.cpp [--source ...]
  python tools/codegen-check.py snapshot NAME --changed      # sources of changed files + header consumers
  python tools/codegen-check.py compare NAME [--ignore-comdat-order]

Snapshot before editing; `compare` exits non-zero on any difference. COMDAT section order
(RTTI, inline functions) is sensitive to unrelated header contents and even the source
path; `--ignore-comdat-order` compares sections as a multiset. A changed order only matters
for linked (Matching) units, which the executable hashes check.
"""

import argparse
from collections import Counter
from concurrent.futures import ThreadPoolExecutor
import hashlib
import importlib.util
import json
import os
from pathlib import Path
import re
import shlex
import struct
import subprocess
import sys

sys.dont_write_bytecode = True
ROOT = Path(__file__).resolve().parent.parent
LOCAL = re.compile(r"^\$[LSTE]\d+$|_\$[ES]\d+$|^\$\w+\$\d+$")


def load_verify():
    spec = importlib.util.spec_from_file_location("decomp_verify", ROOT / "tools" / "decomp-verify.py")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def select(verify, args):
    records = json.loads(verify.capture(["ninja", "-t", "compdb", "cl"], ROOT))
    edges = verify.compile_edges(records, ROOT)
    if args.changed:
        selected, _, problems = verify.select_edges(edges, ROOT, changed=verify.changed_paths(ROOT))
        for problem in problems:
            print(problem, file=sys.stderr)
        return selected
    wanted = {verify.canonical(path, ROOT) for path in args.source}
    selected = [edge for edge in edges if edge.source in wanted]
    missing = wanted - {edge.source for edge in selected}
    if missing:
        raise SystemExit("No compile edge for: " + ", ".join(str(p) for p in sorted(missing)))
    return selected


def redirected(verify, edge, outdir):
    """The edge's exact command with /Fo and /Fd pointing into outdir."""
    digest = hashlib.md5(str(edge.output).encode()).hexdigest()[:8]
    obj = outdir / (edge.output.stem + "-" + digest + ".o")
    words = []
    for word in verify.command_words(edge.command):
        if word.startswith(("/Fo", "-Fo")):
            word = "/Fo" + str(obj)
        elif word.startswith(("/Fd", "-Fd")):
            word = "/Fd" + str(obj) + ".pdb"
        words.append(word)
    return obj, words


def compile_all(verify, edges, outdir):
    outdir.mkdir(parents=True, exist_ok=True)

    def one(edge):
        obj, words = redirected(verify, edge, outdir)
        argv = words if os.name == "nt" else ["/bin/sh", "-c", " ".join(shlex.quote(w) for w in words)]
        result = subprocess.run(argv, cwd=edge.directory, capture_output=True, text=True, errors="replace")
        errors = [line for line in (result.stdout + result.stderr).splitlines() if "error" in line]
        return str(edge.source), (str(obj) if result.returncode == 0 else None), errors

    with ThreadPoolExecutor(max_workers=os.cpu_count() or 4) as pool:
        return list(pool.map(one, edges))


def parse(path):
    data = Path(path).read_bytes()
    nsec = struct.unpack_from("<H", data, 2)[0]
    symptr, nsym = struct.unpack_from("<II", data, 8)
    strtab = symptr + 18 * nsym

    def name(index):
        raw = data[symptr + 18 * index:symptr + 18 * index + 8]
        if raw[:4] == b"\0\0\0\0":
            offset = strtab + struct.unpack_from("<I", raw, 4)[0]
            return data[offset:data.index(b"\0", offset)].decode("latin1")
        return raw.rstrip(b"\0").decode("latin1")

    def norm(text):
        return "$LOCAL" if LOCAL.search(text) else text

    sections = []
    for i in range(nsec):
        header = 20 + 40 * i
        sec_name = data[header:header + 8].rstrip(b"\0").decode("latin1")
        size, rawptr, relptr, _, nrel = struct.unpack_from("<IIIIH", data, header + 16)
        if sec_name.startswith(".debug"):
            continue
        contents = data[rawptr:rawptr + size] if rawptr else size
        relocs = tuple((struct.unpack_from("<I", data, relptr + 10 * k)[0],
                        struct.unpack_from("<H", data, relptr + 10 * k + 8)[0],
                        norm(name(struct.unpack_from("<I", data, relptr + 10 * k + 4)[0])))
                       for k in range(nrel))
        sections.append((sec_name, contents, relocs))
    externals = set()
    i = 0
    while i < nsym:
        entry = symptr + 18 * i
        section, storage, aux = struct.unpack_from("<h", data, entry + 12)[0], data[entry + 16], data[entry + 17]
        sym = name(i)
        if storage == 2 and not LOCAL.search(sym):
            externals.add((sym, section > 0))
        i += 1 + aux
    return sections, externals


def describe(section):
    sec_name, contents, relocs = section
    return "%s (%s bytes, %d relocs)" % (sec_name, contents if isinstance(contents, int) else len(contents), len(relocs))


def compare_objects(ref, new, ignore_order):
    ref_sections, ref_ext = parse(ref)
    new_sections, new_ext = parse(new)
    problems = ["symbol lost: %s" % s for s, _ in sorted(ref_ext - new_ext)]
    problems += ["symbol new: %s" % s for s, _ in sorted(new_ext - ref_ext)]
    if ignore_order:
        only_ref = Counter(ref_sections) - Counter(new_sections)
        only_new = Counter(new_sections) - Counter(ref_sections)
        problems += ["only before: " + describe(s) for s in only_ref]
        problems += ["only after: " + describe(s) for s in only_new]
        return problems
    if len(ref_sections) != len(new_sections):
        problems.append("section count %d -> %d" % (len(ref_sections), len(new_sections)))
    for before, after in zip(ref_sections, new_sections):
        if before != after:
            problems.append("differs: %s -> %s" % (describe(before), describe(after)))
            if before[0] == after[0] and before[1] == after[1]:
                changed = [pair for pair in zip(before[2], after[2]) if pair[0] != pair[1]][:3]
                problems.append("  relocations: %s" % changed)
            break
    return problems


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    sub = parser.add_subparsers(dest="mode", required=True)
    snap = sub.add_parser("snapshot", help="compile the selection into build/codegen-check/NAME/ref")
    snap.add_argument("name")
    group = snap.add_mutually_exclusive_group(required=True)
    group.add_argument("--source", action="append", default=[], help="configured source path (repeatable)")
    group.add_argument("--changed", action="store_true", help="changed sources and every consumer of changed headers")
    cmp = sub.add_parser("compare", help="recompile the snapshot's sources and compare")
    cmp.add_argument("name")
    cmp.add_argument("--ignore-comdat-order", action="store_true", help="compare sections as a multiset")
    args = parser.parse_args(argv)

    verify = load_verify()
    base = ROOT / "build" / "codegen-check" / args.name
    manifest = base / "manifest.json"
    if args.mode == "snapshot":
        edges = select(verify, args)
        results = compile_all(verify, edges, base / "ref")
        failed = [r for r in results if r[1] is None]
        for source, _, errors in failed:
            print("COMPILE FAILED %s\n  %s" % (source, "\n  ".join(errors[:5])))
        manifest.write_text(json.dumps({source: obj for source, obj, _ in results if obj}, indent=1))
        print("snapshot %s: %d objects" % (args.name, len(results) - len(failed)))
        return 1 if failed else 0

    if not manifest.is_file():
        raise SystemExit("No snapshot named %r; run `snapshot` before editing." % args.name)
    reference = json.loads(manifest.read_text())
    edges = [e for e in verify.compile_edges(json.loads(verify.capture(["ninja", "-t", "compdb", "cl"], ROOT)), ROOT)
             if str(e.source) in reference]
    bad = False
    for source, obj, errors in compile_all(verify, edges, base / "new"):
        label = os.path.relpath(source, ROOT)
        if obj is None:
            bad = True
            print("%-60s COMPILE FAILED\n  %s" % (label, "\n  ".join(errors[:5])))
            continue
        problems = compare_objects(reference[source], obj, args.ignore_comdat_order)
        print("%-60s %s" % (label, "identical" if not problems else "DIFFERS"))
        for problem in problems[:12]:
            print("  " + problem)
        bad |= bool(problems)
    return 1 if bad else 0


if __name__ == "__main__":
    sys.exit(main())
