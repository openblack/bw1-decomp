#!/usr/bin/env python3
"""Turn libobj_loop.jsonl (beside this script) into a grouped markdown review table.

Read-only. Groups the objects the loop could NOT match (skip / fail) by their
issue signature and by dependency cluster, so the complex backlog is reviewable
in batches rather than one-by-one. Run after `libobj.py loop` finishes.
"""
import json
import re
from collections import defaultdict
from pathlib import Path

SELF_DIR = Path(__file__).resolve().parent
ROOT = SELF_DIR.parents[2]
LOG = SELF_DIR / "libobj_loop.jsonl"
OUT = SELF_DIR / "libobj_review.md"


def load_log():
    rows = {}
    for line in LOG.read_text().splitlines():
        if not line.strip():
            continue
        e = json.loads(line)
        rows[e["obj"]] = e  # last entry per obj wins
    return rows


def fail_signature(e):
    """Bucket a failed object by why it failed."""
    syms = set()
    has_err = False
    for d in e.get("detail", []):
        for err in d.get("errors", []):
            has_err = True
            syms.add((err["kind"], err.get("symbol", "?")))
    if not has_err:
        return "sha-mismatch (alignment / dead-strip / non-linkable label)", None
    kinds = {k for k, _ in syms}
    if kinds == {"undefined_symbol"}:
        names = sorted({s for _, s in syms})
        return "undefined symbol (provider not in configure)", names
    if "split_within_symbol" in kinds:
        return "split-within-symbol (needs symbol resize)", sorted({s for _, s in syms})
    return "other link error", sorted({s for _, s in syms})


def skip_signature(e):
    flags = set(e.get("flags") or [])
    if e.get("verdict") == "blocked":
        return "blocked: needs provider object matched first", \
            tuple(sorted(e.get("needs_dependencies") or []))
    if "has_rdata_comdat" in flags:
        return "rdata __real@ comdat fold", None
    if "non_contiguous" in flags:
        return "non-contiguous placement", None
    if {"ambiguous_match", "not_found_in_110_or_142"} & flags:
        return "not uniquely locatable in 110/142", None
    if "undefined_externals" in flags:
        return "truly-undefined externals", None
    return f"manual ({','.join(sorted(flags)) or 'unclassified'})", None


def main():
    rows = load_log()
    matched = sorted(o for o, e in rows.items() if e["result"] == "matched")
    groups = defaultdict(list)        # signature -> [objs]
    dep_clusters = defaultdict(list)  # provider-set -> [objs]

    for obj, e in rows.items():
        if e["result"] == "matched":
            continue
        if e["result"] == "fail":
            sig, detail = fail_signature(e)
        elif e["result"] == "skip":
            sig, detail = skip_signature(e)
        else:
            sig, detail = "error", None
        groups[sig].append((obj, detail))
        if isinstance(detail, tuple) and detail:  # dependency cluster
            dep_clusters[detail].append(obj)

    lines = ["# LIBCMT object matching — review backlog", ""]
    lines.append(f"- **Matched (byte-exact, all 3 versions): {len(matched)}**")
    n_complex = sum(len(v) for v in groups.values())
    lines.append(f"- **Needs review: {n_complex}**")
    lines.append("")
    if matched:
        lines.append("## Matched (done)")
        lines.append(", ".join(matched))
        lines.append("")

    lines.append("## Complex — grouped by issue")
    lines.append("")
    lines.append("| Issue group | Count | Objects |")
    lines.append("|---|---|---|")
    for sig in sorted(groups, key=lambda s: -len(groups[s])):
        objs = sorted(o for o, _ in groups[sig])
        shown = ", ".join(objs[:18]) + (" …" if len(objs) > 18 else "")
        lines.append(f"| {sig} | {len(objs)} | {shown} |")
    lines.append("")

    if dep_clusters:
        lines.append("## Dependency clusters (match the provider, then the group)")
        lines.append("")
        lines.append("| Provider object(s) needed | Count | Blocked objects |")
        lines.append("|---|---|---|")
        for prov in sorted(dep_clusters, key=lambda p: -len(dep_clusters[p])):
            objs = sorted(set(dep_clusters[prov]))
            shown = ", ".join(objs[:18]) + (" …" if len(objs) > 18 else "")
            lines.append(f"| {', '.join(prov)} | {len(objs)} | {shown} |")
        lines.append("")

    OUT.write_text("\n".join(lines))
    print(f"wrote {OUT}")
    print(f"matched={len(matched)} complex={n_complex} groups={len(groups)}")


if __name__ == "__main__":
    main()
