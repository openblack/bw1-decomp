#!/usr/bin/env python3
"""Git merge driver for config/**/symbols.txt: a three-way merge per symbol, not per line.

Enable once per clone with `python tools/setup-merge-drivers.py`; .gitattributes routes the
files here. Git then calls

    merge-symbols.py %O %A %B %L %P %S %X %Y

(base, ours, theirs, conflict-marker size, path, and the three labels) and expects the result in
%A, with exit status 0 when it is clean.

The merge key is the section and address of each primary symbol, plus the name for `alias` and
`type:label` lines (several can share an address), or the name for `extern` lines. For each key
the usual three-way rule applies: a side that left it unchanged takes the other side's version.
When both changed the same symbol, the attributes merge field by field (one side renames it,
the other marks it comdat). The output is in dtk's canonical order (tools/symbols_txt.py), so
the next split does not rewrite it, and a block either side moved merges like any other line.

Compiler-numbered labels (_$E<n>, _$S<n>, ?$S<n>@..., $L<n>) are renumbered by header changes
and regenerated from the compiled objects. Where both sides renumbered the same label, the
upstream side wins: %A during a rebase, cherry-pick, revert or `git am` (HEAD is the branch you
are replaying onto), %B during a merge of a commit in the upstream branch (`merge-symbols.upstream`,
default origin/main) and %A for other merges. MERGE_SYMBOLS_UPSTREAM
(ours/theirs) overrides. A label renumbered on one side gives way to a real change on the other.
After such a merge it prints the relabel passes to run after the next build.

Everything else both sides changed differently is a conflict: conflict markers around exactly
those symbols, at their place in the file, and exit status 1. So is a merge that would create an
overlap between two symbols neither side had, or give one non-local name to two symbols. A file
that does not parse falls back to `git merge-file` (exit status 1 even if that merges cleanly,
so the result is checked by hand).
"""

import argparse
import os
from pathlib import Path
import subprocess
import sys

sys.path.insert(0, str(Path(__file__).resolve().parent))
import symbols_txt  # noqa: E402


def git(*args):
    return subprocess.run(["git", *args], capture_output=True, text=True)


def git_path_exists(name):
    r = git("rev-parse", "--git-path", name)
    return r.returncode == 0 and Path(r.stdout.strip()).exists()


def is_ancestor(a, b):
    return git("merge-base", "--is-ancestor", a, b).returncode == 0


def upstream_side():
    """Which of %A ("ours") and %B ("theirs") is the upstream side of the operation running."""
    env = os.environ.get("MERGE_SYMBOLS_UPSTREAM", "").lower()
    if env in ("ours", "theirs"):
        return env, "MERGE_SYMBOLS_UPSTREAM"
    if git_path_exists("rebase-merge") or git_path_exists("rebase-apply"):
        return "ours", "rebase"
    # git merge does not write MERGE_HEAD until the merge has run, but names what it merges in
    # GIT_REFLOG_ACTION ("merge <commit>", "pull ...").
    action = os.environ.get("GIT_REFLOG_ACTION", "")
    if action.startswith(("merge", "pull")):
        words = action.split()
        merged = words[1] if words[0] == "merge" and len(words) > 1 else "FETCH_HEAD"
        ref = git("config", "merge-symbols.upstream").stdout.strip() or "origin/main"
        if git("rev-parse", "--verify", "-q", ref).returncode == 0:
            if git("rev-parse", "--verify", "-q", merged).returncode == 0 and is_ancestor(merged, ref):
                return "theirs", f"merge of {ref}"
            if is_ancestor("HEAD", ref):
                return "ours", f"merge into {ref}"
        return "ours", "merge"
    # Cherry-pick, revert, am, stash, merge-tree: HEAD is the branch being replayed onto.
    return "ours", "cherry-pick or other"


def version_of(path):
    parts = Path(path).as_posix().split("/")
    if len(parts) >= 3 and parts[0] == "config":
        module = parts[2] if len(parts) > 3 else None
        return parts[1], module
    return None, None


def relabel_hint(path, result):
    version, module = version_of(path)
    v = version or "<version>"
    prefix = f" --prefix {module}/" if module else " --prefix runblack/"
    steps = [f"python configure.py -v {v}", "ninja"]
    if "initializer" in result.label_kinds:
        steps.append(f"python tools/relabel-initializers.py{prefix} --apply")
    if "funclet" in result.label_kinds:
        steps.append(f"python tools/funclets.py relabel{prefix} --apply")
    if len(steps) == 2:
        steps.append(f"python tools/relabel-initializers.py{prefix} --apply")
        steps.append(f"python tools/funclets.py relabel{prefix} --apply")
    steps.append("ninja")
    return " && ".join(steps)


def fallback(base, ours, theirs, marker_size, labels):
    cmd = ["git", "merge-file", f"--marker-size={marker_size}"]
    for label in labels:
        cmd += ["-L", label]
    cmd += [ours, base, theirs]
    r = subprocess.run(cmd)
    return r.returncode if r.returncode > 0 else 1


def main(argv=None):
    p = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    p.add_argument("base")
    p.add_argument("ours", help="also the output")
    p.add_argument("theirs")
    p.add_argument("marker_size", nargs="?", type=int, default=7)
    p.add_argument("path", nargs="?", default="")
    p.add_argument("labels", nargs="*", help="labels for ancestor, ours, theirs (%%S %%X %%Y)")
    p.add_argument("--upstream", choices=("ours", "theirs"), help="override the upstream side")
    p.add_argument("--diff3", action="store_true", help="include the base in conflict blocks")
    args = p.parse_args(argv)

    path = args.path or args.ours
    base_label, ours_label, theirs_label = (args.labels + ["", "", ""])[:3] if args.labels else ("base", "ours", "theirs")
    # git passes %S %X %Y as ancestor, ours, theirs.
    marker_labels = (ours_label or "ours", base_label or "base", theirs_label or "theirs")
    if args.upstream:
        upstream, why = args.upstream, "--upstream"
    else:
        upstream, why = upstream_side()
    diff3 = args.diff3 or git("config", "merge.conflictStyle").stdout.strip() in ("diff3", "zdiff3")

    read = lambda f: Path(f).read_bytes().decode("utf-8", "surrogateescape")  # noqa: E731
    try:
        result = symbols_txt.merge(read(args.base), read(args.ours), read(args.theirs), upstream=upstream,
                                   labels=marker_labels, marker_size=args.marker_size, diff3=diff3)
    except (symbols_txt.ParseError, AssertionError) as e:
        print(f"merge-symbols: {path}: {e}; falling back to git merge-file", file=sys.stderr)
        return fallback(args.base, args.ours, args.theirs, args.marker_size,
                        (marker_labels[0], marker_labels[1], marker_labels[2]))

    Path(args.ours).write_bytes(result.text.encode("utf-8", "surrogateescape"))
    if result.labels_from_upstream or result.labels_both_sides:
        side = "%A (HEAD)" if upstream == "ours" else "%B (the merged branch)"
        if result.labels_from_upstream:
            what = (f"both sides renumbered {len(result.labels_from_upstream)} compiler label(s); "
                    f"took the upstream side {side} ({why})")
        else:
            what = "both sides renumbered compiler labels"
        print(f"merge-symbols: {path}: {what}. Once merged, regenerate them:\n"
              f"    {relabel_hint(path, result)}", file=sys.stderr)
    if not result.clean:
        print(f"merge-symbols: {path}: {len(result.conflicts)} symbol(s) in conflict:", file=sys.stderr)
        for key, reason in result.conflicts[:20]:
            print(f"    {symbols_txt.describe_key(key)}: {reason}", file=sys.stderr)
        if len(result.conflicts) > 20:
            print(f"    ... and {len(result.conflicts) - 20} more", file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
