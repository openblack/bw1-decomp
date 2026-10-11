#!/usr/bin/env python3
"""Check changed sources against the game versions that cannot be linked locally.

CI builds BW1W100, BW1W110 and BW1W120, but only BW1W120 can be configured and linked here
(no other version's executable is split). The other versions are compiled with the BW1W120
Ninja command rewritten the way configure.py differs per version: /DBUILD_VERSION=<n>,
/DVERSION_<ver>, the MSVC 6.4 compiler and 1.00's /Gy on game code (see `for_version`; keep it
in step with configure.py). Objects go to build/decomp-versions/, removed on exit; nothing
else in the checkout is written. A missing MSVC compiler is downloaded with download_tool.py.

Examples:
  python tools/decomp-versions.py --list
  python tools/decomp-versions.py --since origin/main~5
  python tools/decomp-versions.py --linked
  python tools/decomp-versions.py --linked --all-linked --version BW1W100

Compile mode (default) compiles the changed sources and every consumer of a changed header
for BW1W100 and BW1W110 and reports compile failures.

--linked mode also checks that the change leaves each *linked* unit's object alone. A header
edit can alter a unit's object for 1.00/1.10 only (an include added to a shared header
changed Audio.cpp's BW1W100 object and broke that executable's hash while 1.20 passed).
It checks out the merge-base of --since in a temporary detached worktree, compiles the
selected linked units (Matching/MatchingFor in configure.py, evaluated per version)
there and here for every version, and compares non-debug sections, relocations and external
symbols like codegen-check.py. A reordered-only result still fails: for linked units the
COMDAT order is hashed; --ignore-comdat-order tolerates it. Source edits to a linked unit
are reported as differences too, which is expected.

Selection is --since's merge-base against HEAD plus working-tree changes. Exit status: 0 all
good, 1 compile failure or difference, 2 tool error.
"""

import argparse
import importlib.util
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys
import tempfile

sys.dont_write_bytecode = True
ROOT = Path(__file__).resolve().parent.parent
VERSIONS = ("BW1W100", "BW1W110", "BW1W120")
SCRATCH = ROOT / "build" / "decomp-versions"
# Evaluates configure.py's Matching/MatchingFor statuses for one version without generating
# anything, and writes the linked source paths (project.py's Object.completed) as JSON.
RUN_CONFIGURE = """
import json, runpy, sys
version, out = sys.argv[1:3]
sys.path.insert(0, ".")
import tools.project as project
def record(config):
    linked = [str(o.src_path).replace("\\\\", "/") for o in config.objects().values() if o.completed]
    json.dump(linked, open(out, "w"))
project.generate_build = record
sys.argv = ["configure.py", "--version", version, "--no-progress"]
runpy.run_path("configure.py", run_name="__main__")
"""
COMPILER = re.compile(r"build/compilers/(MSVC/[\d.]+)/")


def load_tool(name):
    spec = importlib.util.spec_from_file_location(name.replace("-", "_"), ROOT / "tools" / (name + ".py"))
    module = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = module
    spec.loader.exec_module(module)
    return module


verify = load_tool("decomp-verify")
codegen = load_tool("codegen-check")


def git(*argv, cwd=ROOT):
    return verify.capture(["git", *argv], cwd).strip()


def run(argv, cwd, label):
    result = subprocess.run(argv, cwd=cwd, capture_output=True, text=True, errors="replace")
    if result.returncode:
        raise RuntimeError(f"{label} failed in {cwd}:\n{(result.stderr or result.stdout).strip()[-1500:]}")
    return result.stdout


def for_version(command, version):
    """The BW1W120 compile command as configure.py would spell it for `version`."""
    if version == "BW1W120":
        return command
    command = command.replace("/DBUILD_VERSION=2", f"/DBUILD_VERSION={VERSIONS.index(version)}")
    command = command.replace("/DVERSION_BW1W120", "/DVERSION_" + version).replace("build/BW1W120/", f"build/{version}/")
    command = command.replace("MSVC/6.5", "MSVC/6.4")
    if version == "BW1W100" and " /G6 " in command and " /Gy " not in command:
        command = command.replace(" /G6 ", " /G6 /Gy ")
    return command


class Tree:
    """A checkout whose BW1W120 build.ninja describes the compile commands."""

    def __init__(self, path, args):
        self.path = Path(path)
        self.args = args
        self.by_source = None

    @classmethod
    def base_worktree(cls, path, sha, args):
        """Detached worktree of `sha`, configured for BW1W120 with this checkout's tools."""
        git("worktree", "add", "--detach", str(path), sha)
        (path / "build").mkdir(exist_ok=True)
        for name in ("tools", "compilers"):
            (path / "build" / name).symlink_to(ROOT / "build" / name)
        if (ROOT / "orig").exists():
            (path / "orig").symlink_to(ROOT / "orig")
        # Source compile edges exist only once dtk's split config does; its contents do not
        # change the compile commands.
        (path / "build" / "BW1W120").mkdir()
        (path / "build" / "BW1W120" / "config.json").symlink_to(ROOT / "build" / "BW1W120" / "config.json")
        run([sys.executable, "configure.py", "--no-progress"], path, "configure.py")
        return cls(path, args)

    def bind(self, place):
        """Point place/src and place/include at this tree (place also links the shared tools)."""
        place.mkdir(parents=True, exist_ok=True)
        for name in ("src", "include"):
            link = place / name
            link.unlink(missing_ok=True)
            link.symlink_to(self.path / name)
        for name in ("orig", "build/tools", "build/compilers"):
            link = place / name
            if not link.is_symlink() and (ROOT / name).exists():
                link.parent.mkdir(parents=True, exist_ok=True)
                link.symlink_to(ROOT / name)

    def records(self):
        """BW1W120 compdb records by source path relative to the tree."""
        if self.by_source is None:
            records = json.loads(run([self.args.ninja, "-t", "compdb", "cl"], self.path, "ninja -t compdb"))
            self.by_source = {os.path.relpath(Path(r["directory"]) / r["file"], self.path).replace("\\", "/"): r
                              for r in records}
        return self.by_source


def linked_sources(version, workdir):
    """Sources this checkout's configure.py links for `version` (Matching or MatchingFor)."""
    out = workdir / (version + "-linked.json")
    run([sys.executable, "-c", RUN_CONFIGURE, version, str(out)], ROOT, "configure.py")
    return set(json.loads(out.read_text()))


def ensure_compilers(records):
    """Fetch any MSVC version the commands name but build/compilers lacks."""
    needed = sorted({m[1] for record in records for m in COMPILER.finditer(record["command"])})
    for name in needed:
        target = ROOT / "build" / "compilers" / name
        if not (target / "cl.exe").is_file():
            tag = name.split("/")[1]
            print(f"Fetching {name} ...", flush=True)
            run([sys.executable, "tools/download_tool.py", "compilers_msvc", "--tag", tag, f"build/compilers/{name}"],
                ROOT, "download_tool.py")


def project_includes(scanner, path, roots, cache):
    """Repository files `path` includes directly. System and compiler headers are ignored."""
    key = (path, roots)
    if key not in cache:
        found = set()
        for kind, operand in scanner.directives(path):
            match = re.fullmatch(r'"([^"\r\n]+)"|<([^>\r\n]+)>', operand.strip())
            if not match or kind == "include_next":
                continue
            name = (match[1] or match[2]).replace("\\", "/")
            candidates = ([path.parent] if match[1] else []) + list(roots)
            for directory in candidates:
                target = verify.canonical(name, directory)
                if target.is_file() and not target.is_relative_to(ROOT / "build"):
                    found.add(target)
                    break
        cache[key] = found
    return cache[key]


def select_consumers(edges, changed):
    """Edges whose source changed or whose project-header closure reaches a changed header.

    Narrower than decomp-verify's selection, which falls back to every unit whenever
    a compiler header has an unresolved include; here only repository headers count.
    """
    sources = {p for p in changed if p.suffix.lower() in verify.SOURCE_SUFFIXES}
    headers = {p for p in changed if p.suffix.lower() in verify.HEADER_SUFFIXES}
    deleted = sorted(p for p in headers if not p.exists())
    scanner, cache, selected = verify.IncludeScanner(ROOT, headers), {}, []
    for edge in edges:
        if edge.source in sources:
            edge.reasons.append("changed source")
        if deleted:
            edge.reasons.append("conservative: deleted header " + deleted[0].name)
        elif headers:
            seen, pending = set(), [edge.source]
            pending += [verify.canonical(f, edge.directory) for f in edge.forced]
            while pending:
                path = pending.pop()
                if path in seen or not path.is_file():
                    continue
                seen.add(path)
                pending.extend(project_includes(scanner, path, edge.roots, cache))
            hit = sorted(seen & headers)
            if hit:
                edge.reasons.append("includes changed header " + os.path.relpath(hit[0], ROOT).replace("\\", "/")
                                    + (f" (+{len(hit) - 1})" if len(hit) > 1 else ""))
        if edge.reasons:
            selected.append(edge)
    return selected


def select(args):
    """Relative source paths affected by the change, mapped to the reasons they were picked."""
    ref = git("rev-parse", "--verify", "--end-of-options", args.since + "^{commit}")
    base = git("merge-base", ref, "HEAD")
    changed = verify.changed_paths(ROOT, base)
    records = json.loads(verify.capture([args.ninja, "-t", "compdb", "cl"], ROOT))
    edges = verify.compile_edges(records, ROOT)
    known = {e.source for e in edges}
    for path in sorted(p for p in changed if p.suffix.lower() in verify.SOURCE_SUFFIXES and p not in known):
        print("warning: changed source is not a configured compile unit: " + os.path.relpath(path, ROOT), file=sys.stderr)
    if args.sources_only:
        changed = {p for p in changed if p.suffix.lower() in verify.SOURCE_SUFFIXES}
    selected = select_consumers(edges, changed)
    return base, {os.path.relpath(e.source, ROOT).replace("\\", "/"): e.reasons for e in selected}


def compile_set(tree, version, sources, outdir, place):
    """{relative source: (object path or None, errors)} using the version's own commands.

    The compiler's output depends on the absolute path it runs from (COMDAT order moves
    with it), so every tree is compiled from the same directory `place`, whose src/include
    links are pointed at the tree for the duration.
    """
    by_source = tree.records()
    chosen = [dict(by_source[s], command=for_version(by_source[s]["command"], version), directory=str(place))
              for s in sorted(sources) if s in by_source]
    if not chosen:
        return {}
    tree.bind(place)
    edges = verify.compile_edges(chosen, place)
    ensure_compilers(chosen)
    results = codegen.compile_all(verify, edges, outdir)
    return {os.path.relpath(source, place).replace("\\", "/"): (obj, errors) for source, obj, errors in results}


def report_failures(version, results, failures):
    for source, (obj, errors) in sorted(results.items()):
        if obj is None:
            failures.append((version, source))
            print(f"{version}  {source:<60} COMPILE FAILED")
            for line in errors[:5]:
                print("    " + line)


def compile_mode(args, ours, sources, workdir):
    failures, total = [], 0
    for version in args.version:
        results = compile_set(ours, version, sources, workdir / "ours" / version, workdir / "cwd")
        total += len(results)
        report_failures(version, results, failures)
        print(f"{version}: {len(results)} units, {sum(1 for o, _ in results.values() if o is None)} failed", flush=True)
    return failures, total


def classify(ref, new, ignore_order):
    if not codegen.compare_objects(ref, new, False):
        return "IDENTICAL", []
    if not codegen.compare_objects(ref, new, True):
        return "SAME-SECTIONS-REORDERED", [] if ignore_order else ["COMDAT/section order differs"]
    return "DIFFERENT", codegen.compare_objects(ref, new, True)


def linked_mode(args, ours, sources, workdir):
    base_sha = git("merge-base", git("rev-parse", "--verify", "--end-of-options", args.since + "^{commit}"), "HEAD")
    base = Tree.base_worktree(workdir / "base", base_sha, args)
    print(f"Base worktree: {base_sha[:12]} (merge-base of {args.since} and HEAD)", flush=True)
    failures, compared = [], 0
    for version in args.version:
        linked = linked_sources(version, workdir)
        wanted = {s for s in linked if s in ours.records() and (args.all_linked or s in sources)}
        missing = sorted(s for s in wanted if s not in base.records())
        wanted -= set(missing)
        for source in missing:
            print(f"{version}  {source:<60} new (not in base), skipped")
        ours_obj = compile_set(ours, version, wanted, workdir / "ours" / version, workdir / "cwd")
        base_obj = compile_set(base, version, wanted, workdir / "base-obj" / version, workdir / "cwd")
        report_failures(version + " (ours)", ours_obj, failures)
        report_failures(version + " (base)", base_obj, failures)
        counts = {}
        for source in sorted(wanted):
            (new, _), (ref, _) = ours_obj.get(source, (None, None)), base_obj.get(source, (None, None))
            if not new or not ref:
                continue
            status, problems = classify(ref, new, args.ignore_comdat_order)
            counts[status] = counts.get(status, 0) + 1
            compared += 1
            if status != "IDENTICAL":
                print(f"{version}  {source:<60} {status}")
                for problem in codegen.compare_objects(ref, new, args.ignore_comdat_order)[:6]:
                    print("    " + problem)
            if problems:
                failures.append((version, source))
        print(f"{version}: {len(wanted)} linked units; "
              + (", ".join(f"{n} {k}" for k, n in sorted(counts.items())) or "nothing compared"), flush=True)
    return failures, compared


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("--since", metavar="REF", default="origin/main",
                        help="base ref; its merge-base with HEAD plus working-tree changes are checked (default origin/main)")
    parser.add_argument("--linked", action="store_true",
                        help="compare linked units' objects against a worktree of the base (default: only compile)")
    parser.add_argument("--all-linked", action="store_true",
                        help="with --linked, compare every linked unit, not only those the change reaches")
    parser.add_argument("--sources-only", action="store_true",
                        help="ignore changed headers: select only changed source files, not their consumers")
    parser.add_argument("--version", action="append", choices=VERSIONS,
                        help="version to check (repeatable; default BW1W100 BW1W110, all three with --linked)")
    parser.add_argument("--ignore-comdat-order", action="store_true",
                        help="with --linked, accept a unit whose sections differ only in order")
    parser.add_argument("--list", action="store_true", help="print the selection and exit without compiling")
    parser.add_argument("--keep", action="store_true", help="keep the scratch directory (and base worktree)")
    parser.add_argument("--ninja", default="ninja.exe" if os.name == "nt" else "ninja")
    args = parser.parse_args(argv)
    if args.all_linked and not args.linked:
        parser.error("--all-linked requires --linked")
    if args.ignore_comdat_order and not args.linked:
        parser.error("--ignore-comdat-order requires --linked")
    if not args.version:
        args.version = list(VERSIONS if args.linked else VERSIONS[:2])
    if args.linked and os.name == "nt":
        raise RuntimeError("--linked links tools into a worktree with symlinks; run it from WSL or a POSIX host.")

    base, selection = select(args)
    print(f"Changed vs {base[:12]}: {len(selection)} source units selected")
    if args.list:
        for source, reasons in sorted(selection.items()):
            print(f"  {source} [{'; '.join(reasons)}]")
        return 0
    if not selection and not args.all_linked:
        return 0

    SCRATCH.mkdir(parents=True, exist_ok=True)
    workdir = Path(tempfile.mkdtemp(prefix="run-", dir=SCRATCH))
    worktree = workdir / "base"
    try:
        ours = Tree(ROOT, args)
        failures, total = (linked_mode if args.linked else compile_mode)(args, ours, selection, workdir)
    finally:
        if args.keep:
            print(f"Kept {workdir}")
        else:
            if worktree.exists():
                subprocess.run(["git", "worktree", "remove", "--force", str(worktree)], cwd=ROOT, capture_output=True)
            shutil.rmtree(workdir, ignore_errors=True)
            subprocess.run(["git", "worktree", "prune"], cwd=ROOT, capture_output=True)
    verb = "compared" if args.linked else "compiled"
    print(f"{total} units {verb}; {len(failures)} failing" if failures else f"{total} units {verb}; all good")
    return 1 if failures else 0


if __name__ == "__main__":
    try:
        sys.exit(main())
    except (RuntimeError, OSError, ValueError, KeyError) as error:
        print(f"ERROR: {error}", file=sys.stderr)
        sys.exit(2)
