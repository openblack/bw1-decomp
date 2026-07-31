#!/usr/bin/env python3
"""backport.py — propose config/<TARGET>/splits.txt + symbols.txt updates for
BW1W110 / BW1W100, derived from BW1W120's more complete file organization.

BW1W120 is the primary matching target: it has ~462 game-code source files
carved out of its splits.txt vs. ~169 (BW1W110) / ~183 (BW1W100). Roughly
93%+ of symbols are already named identically across all three versions (an
earlier bulk naming pass keyed off the Mac PPC symbol map) — only the
per-file *splits* (address-range -> source-file assignment) lag behind on
110/100.

This script does NOT touch any files by itself except in `apply` mode (and
even then, only the target version's splits.txt/symbols.txt — BW1W120 is
never written). `report`/`show`/`diff-file` are read-only.

Method
------
For every BW1W120 splits.txt game-code file not yet present (by name) in the
target's splits.txt, translate its `.text` / `.rdata` / `.rdata$r` / `.data`
ranges into the target's address space using ONLY mangled-name evidence:

  - Every symbol name inside the BW1W120 [start,end) range is looked up by
    exact name in the target's symbols.txt. Most already resolve (same bulk
    naming pass). The lowest/highest resolved target address bounds the
    range.
  - For a tighter, exact start/end: if the symbol *at the BW1W120 unit's own
    start* (resp. the first symbol of the *next* BW1W120 unit, for the end)
    is itself named in the target, use its exact target address — no
    guessing. Otherwise fall back to the lowest/highest matched address
    inside the range (an undershoot — safe, since it only leaves a few
    bytes at the edge unclaimed rather than risking an incorrect overlap).
  - Requires >=2 matches and strictly monotonic target addresses (in
    BW1W120 order) before trusting the range at all. Non-monotonic means
    the code was reordered/reorganized between versions (or dead-stripped)
    — flagged for manual attention, never guessed.

IMPORTANT — deliberately out of scope: `.bss` and `.CRT$XCU`. Both are
almost entirely unlabeled by individual symbol in *every* version (bss
variables and static-initializer table slivers aren't named individually),
so there is no name evidence to anchor on, and BW1W110/BW1W100 currently
have near-zero bss granularity anyway (0 and 23 of ~170-180 files, vs 331
of 462 in BW1W120). Address adjacency between neighboring files is NOT a
safe substitute anchor: link order can and does shift between game
versions, so a "neighboring file already split in target" does not
guarantee it is still adjacent to this one in that target. (This was tried
and produced silently wrong ranges — see git history of this file.) Treat
.bss/.CRT$XCU backporting as a separate follow-up problem.

Subcommands
-----------
  report <version>            JSON summary: counts per status.
  show <version> [--status S] Full per-file JSON (optionally filtered).
  diff-file <version> <file>  Detailed single-file report (for investigating
                               a 'manual'/'conflict' case by hand).
  apply <version> [--limit N] [--only file1,file2]
                               WRITE. Inserts splits.txt blocks (clean files
                               only, unless --only names a specific file) and
                               backports placeholder->named symbol renames
                               within the newly-added ranges. Idempotent;
                               skips files already present in target.
"""

import argparse
import bisect
import json
import re
import sys
from pathlib import Path

SELF_DIR = Path(__file__).resolve().parent
ROOT = SELF_DIR.parents[2]
SRC_VERSION = "BW1W120"
TARGET_VERSIONS = ["BW1W110", "BW1W100"]

# Sections with real per-symbol evidence to anchor on. .bss / .CRT$XCU are
# deliberately excluded — see module docstring.
PRIMARY_SECTIONS = {".text", ".rdata", ".rdata$r", ".data", ".data1"}

PLACEHOLDER_RE = re.compile(r"^(fn|sub|lbl|data|func)_[0-9A-Fa-f]+$")

SYM_LINE_RE = re.compile(
    r"^(?P<name>\S+)\s*=\s*\.(?P<sec>[\w$]+):0x(?P<addr>[0-9A-Fa-f]+);"
    r"\s*(?://\s*(?P<attrs>.*))?$"
)
SIZE_ATTR_RE = re.compile(r"\bsize:0x([0-9A-Fa-f]+)")

UNIT_HEADER_RE = re.compile(r"^(.+):\s*$")
SEC_LINE_RE = re.compile(
    r"^\s+(\S+)\s+start:0x([0-9A-Fa-f]+)\s+end:0x([0-9A-Fa-f]+)(.*)$"
)


def symbols_path(v):
    return ROOT / "config" / v / "symbols.txt"


def splits_path(v):
    return ROOT / "config" / v / "splits.txt"


def is_placeholder(name):
    return bool(PLACEHOLDER_RE.match(name))


# --------------------------------------------------------------------------- #
# parsing                                                                     #
# --------------------------------------------------------------------------- #
def load_symbols(version):
    """-> (entries list, name->entry dict, sec->addr-sorted-entries dict)"""
    entries = []
    for line in symbols_path(version).read_text().splitlines():
        line = line.strip()
        if not line or line.startswith("#") or line.startswith("//"):
            continue
        m = SYM_LINE_RE.match(line)
        if not m:
            continue
        attrs = (m.group("attrs") or "").strip()
        sm = SIZE_ATTR_RE.search(attrs)
        entries.append(
            {
                "name": m.group("name"),
                "sec": "." + m.group("sec"),
                "addr": int(m.group("addr"), 16),
                "size": int(sm.group(1), 16) if sm else 0,
                "attrs": attrs,
                "raw": line,
            }
        )
    by_name = {}
    for e in entries:
        by_name.setdefault(e["name"], e)
    by_sec = {}
    for e in entries:
        by_sec.setdefault(e["sec"], []).append(e)
    for lst in by_sec.values():
        lst.sort(key=lambda e: e["addr"])
    return entries, by_name, by_sec


def load_splits(version):
    """-> ordered list of {name, secs: {sec: (start,end)}, is_lib}, in
    splits.txt declaration order (which tracks address order per section by
    project convention, but see the docstring — never assume adjacency is
    preserved *across versions*)."""
    units = []
    cur = None
    for raw in splits_path(version).read_text().splitlines():
        if not raw.strip():
            continue
        if raw == "Sections:":
            cur = None
            continue
        if not raw[0].isspace():
            m = UNIT_HEADER_RE.match(raw)
            if m:
                cur = {
                    "name": m.group(1),
                    "secs": {},
                    "is_lib": m.group(1).startswith("lib/"),
                }
                units.append(cur)
                continue
        if cur is not None:
            m2 = SEC_LINE_RE.match(raw)
            if m2:
                sec, s, e = m2.group(1), int(m2.group(2), 16), int(m2.group(3), 16)
                cur["secs"][sec] = (s, e)
    return units


# --------------------------------------------------------------------------- #
# core translation                                                            #
# --------------------------------------------------------------------------- #
class VersionData:
    def __init__(self, version):
        self.version = version
        self.units = load_splits(version)
        self.entries, self.by_name, self.by_sec = load_symbols(version)
        self.names_present = {u["name"] for u in self.units}
        self.game_units = [u for u in self.units if not u["is_lib"]]


def name_anchor(src, tgt, idx, sec, s, e):
    """Translate [s,e) via mangled-name lookup. Returns (matched pairs in
    BW1W120 order, precise_start_or_None, precise_end_or_None).

    Placeholder names (fn_/sub_/lbl_/data_/func_ + hex address) are excluded
    from consideration on the BW1W120 side. A placeholder can only ever
    "match" into tgt.by_name if the target has an unnamed symbol at the
    *exact same hex offset* as BW1W120's — since the two binaries have
    completely different, independently-linked layouts, this is a numeric
    coincidence, not name evidence (like matching two people because they
    both live at "123 Main St" in different cities). Found in practice: e.g.
    Black/CameraModeNew1.cpp had a real, coherent, monotonic run of 14 named
    vtable-func anchors, but got flagged 'conflict'/'reordered' because two
    coincidental fn_XXXXXXXX collisions (same literal hex offset in both
    versions, otherwise unrelated) pulled cand_start far below the true
    start and briefly broke monotonicity. Filtering these out is a stricter
    evidence requirement, not a loosened one."""
    syms_in_range = [x for x in src.by_sec.get(sec, []) if s <= x["addr"] < e]
    matched = [
        (x["name"], tgt.by_name[x["name"]]["addr"])
        for x in syms_in_range
        if x["name"] in tgt.by_name and not is_placeholder(x["name"])
    ]

    precise_start = None
    first_syms = [x for x in syms_in_range if x["addr"] == s]
    for x in first_syms:
        if x["name"] in tgt.by_name and not is_placeholder(x["name"]):
            precise_start = tgt.by_name[x["name"]]["addr"]
            break

    precise_end = None
    for nxt in src.game_units[idx + 1 :]:
        if sec in nxt["secs"]:
            ns, _ = nxt["secs"][sec]
            for x in src.by_sec.get(sec, []):
                if x["addr"] == ns and x["name"] in tgt.by_name and not is_placeholder(x["name"]):
                    precise_end = tgt.by_name[x["name"]]["addr"]
            break

    return matched, precise_start, precise_end


def find_overlap(tgt_occ, sec, s, e):
    for os_, oe_, name in tgt_occ.get(sec, []):
        if os_ < e and s < oe_:
            return name
    return None


def build_occupancy(tgt):
    occ = {}
    for u in tgt.units:
        for sec, (s, e) in u["secs"].items():
            occ.setdefault(sec, []).append((s, e, u["name"]))
    for lst in occ.values():
        lst.sort()
    return occ


def bisects_symbol(tgt, sec, addr):
    """True if `addr` falls strictly inside an existing target symbol's
    [addr, addr+size) — i.e. placing a split boundary there would slice a
    real symbol in half, which dtk rejects ('ends within symbol ...'). Only
    checked against symbols with a known size; zero-size/unsized entries
    can't be validated this way and are skipped."""
    syms = tgt.by_sec.get(sec, [])
    addrs = [x["addr"] for x in syms]
    i = bisect.bisect_right(addrs, addr) - 1
    while i >= 0:
        x = syms[i]
        if x["addr"] + x.get("size", 0) <= addr:
            break
        if x["size"] and x["addr"] < addr < x["addr"] + x["size"]:
            return x["name"]
        i -= 1
    return None


def analyze_file(src, tgt, idx, tgt_occ):
    u = src.game_units[idx]
    entry = {"file": u["name"], "sections": {}}
    statuses = []
    for sec, (s, e) in u["secs"].items():
        if sec not in PRIMARY_SECTIONS:
            continue
        sr = {"src_start": s, "src_end": e}
        matched, precise_start, precise_end = name_anchor(src, tgt, idx, sec, s, e)
        addrs = [a for _, a in matched]
        sr["n_symbols"] = e and sum(1 for x in src.by_sec.get(sec, []) if s <= x["addr"] < e)
        sr["n_matched"] = len(matched)
        sr["precise_start"] = precise_start
        sr["precise_end"] = precise_end

        monotonic = all(addrs[i] < addrs[i + 1] for i in range(len(addrs) - 1))
        sr["monotonic"] = monotonic

        cand_start = precise_start if precise_start is not None else (addrs[0] if addrs else None)
        cand_end = precise_end if precise_end is not None else (addrs[-1] if addrs else None)
        sr["cand_start"] = cand_start
        sr["cand_end"] = cand_end
        sr["exact"] = precise_start is not None and precise_end is not None

        # A single mismatched/stray name match (duplicate short body, stale
        # rename, etc.) can badly skew a min/max-of-matched fallback boundary
        # — this happened in practice (see git history) and silently produced
        # an overlapping range. When we don't have both exact edges (i.e. we
        # are trusting the min/max of a handful of matches rather than a
        # literal boundary-symbol translation), require more evidence and a
        # tight size match vs. the BW1W120 range (same source, same
        # compiler/flags -> sizes should be close) before ever calling it
        # 'clean'. `exact` ranges are a real translation, not a guess, so
        # they're trusted without a size check.
        size_ok = True
        if not sr["exact"] and cand_start is not None and cand_end is not None:
            src_len = e - s
            tgt_len = cand_end - cand_start
            size_ok = (
                len(matched) >= 4
                and src_len > 0
                and 0.6 <= (tgt_len / src_len) <= 1.6
            )
        sr["size_ok"] = size_ok

        bisected = None
        if cand_start is not None and cand_end is not None:
            bisected = bisects_symbol(tgt, sec, cand_start) or bisects_symbol(tgt, sec, cand_end)
        sr["bisects_symbol"] = bisected

        # A non-exact (fallback min/max-of-matched) boundary is just wherever
        # some matched symbol happens to sit — dtk requires split boundaries
        # to be 4-byte aligned (its own default unit alignment), but a real
        # function's address has no such guarantee, especially when it isn't
        # actually the file's first/last symbol (most of the file's symbols
        # went unmatched, so the fallback undershoots further than usual).
        # Found in practice: Black/GameOSFile.cpp's fallback cand_start
        # landed exactly on `?LoadInstance@GameOSFile@@...` at 0x557265 (odd
        # address — packed with zero padding after the previous function),
        # 9% symbol match rate in range, and dtk rejected it at the SPLIT
        # step ("Invalid alignment for split ... expected 4"). `exact`
        # boundaries (precise_start/precise_end, taken from a literal
        # boundary-symbol translation) are trusted regardless — if that's
        # really where the linker put the next file, that's the boundary,
        # aligned or not.
        misaligned = False
        if not sr["exact"] and cand_start is not None and cand_end is not None:
            misaligned = (cand_start % 4 != 0) or (cand_end % 4 != 0)
        sr["misaligned"] = misaligned

        if len(matched) < 2 or cand_start is None or cand_end is None or cand_start >= cand_end:
            sr["status"] = "no_anchor"
        elif not monotonic:
            sr["status"] = "reordered"
        elif not size_ok or bisected or misaligned:
            sr["status"] = "conflict"
        else:
            overlap = find_overlap(tgt_occ, sec, cand_start, cand_end)
            sr["overlaps_existing"] = overlap
            sr["status"] = "subdivide" if overlap else "clean"

        entry["sections"][sec] = sr
        statuses.append(sr["status"])

    if not statuses:
        entry["status"] = "empty"
    elif all(st == "clean" for st in statuses):
        entry["status"] = "clean"
    elif any(st == "reordered" for st in statuses):
        entry["status"] = "reordered"
    elif any(st == "conflict" for st in statuses):
        entry["status"] = "conflict" if all(st in ("clean", "conflict") for st in statuses) else "mixed"
    elif any(st == "subdivide" for st in statuses):
        entry["status"] = "subdivide" if all(st in ("clean", "subdivide") for st in statuses) else "mixed"
    elif any(st == "no_anchor" for st in statuses):
        entry["status"] = "no_anchor" if all(st == "no_anchor" for st in statuses) else "mixed"
    else:
        entry["status"] = "mixed"
    return entry


def run_report(target_version):
    src = VersionData(SRC_VERSION)
    tgt = VersionData(target_version)
    tgt_occ = build_occupancy(tgt)
    results = []
    for idx, u in enumerate(src.game_units):
        if u["name"] in tgt.names_present:
            continue
        results.append(analyze_file(src, tgt, idx, tgt_occ))
    return results


def summarize(results):
    from collections import Counter

    c = Counter(r["status"] for r in results)
    return dict(c)


# --------------------------------------------------------------------------- #
# apply                                                                       #
# --------------------------------------------------------------------------- #
def format_split_block(name, sections):
    lines = [f"{name}:"]
    for sec, (s, e) in sections:
        lines.append(f"\t{sec:<11} start:0x{s:08X} end:0x{e:08X}")
    return "\n".join(lines) + "\n"


def insert_at_end(text, block):
    return text.rstrip("\n") + "\n\n" + block


def run_apply(target_version, limit, only, partial=True):
    """Adds a splits.txt block per queued file using only its individually
    'clean' sections (partial=True, the default): a file with .text clean but
    .data no_anchor still gets its .text backported, leaving .data for a
    later pass. Pass partial=False to require every section in the file be
    clean (used by --only for a fully-manual, all-or-nothing add).

    'clean' in the per-file report is only checked against splits.txt as it
    stood at report time. Two *newly proposed* ranges in the same batch can
    still collide with each other (this happened in practice — see git
    history), so acceptance here is greedy or by increasing start address,
    per section, against a running occupancy map seeded from the real
    pre-existing splits."""
    src = VersionData(SRC_VERSION)
    tgt = VersionData(target_version)
    results = run_report(target_version)
    if only:
        queue = [r for r in results if r["file"] in only]
    else:
        queue = [r for r in results if any(sr["status"] == "clean" for sr in r["sections"].values())]
    if limit:
        queue = queue[:limit]

    occ = build_occupancy(tgt)

    candidates = []  # (sec, start, end, file)
    for r in queue:
        for sec, sr in r["sections"].items():
            if sr["status"] == "clean":
                candidates.append((sec, sr["cand_start"], sr["cand_end"], r["file"]))
            elif not partial:
                candidates = [c for c in candidates if c[3] != r["file"]]
    candidates.sort(key=lambda c: (c[0], c[1]))

    accepted_by_file = {}
    skipped = []
    for sec, s, e, name in candidates:
        overlap = find_overlap(occ, sec, s, e)
        if overlap:
            skipped.append({"file": name, "section": sec, "reason": f"collides with '{overlap}' (batch or pre-existing)"})
            continue
        occ.setdefault(sec, []).append((s, e, name))
        occ[sec].sort()
        accepted_by_file.setdefault(name, []).append((sec, (s, e)))

    if not partial:
        # all-or-nothing: drop files where some section got skipped
        wanted_secs = {r["file"]: {sec for sec, sr in r["sections"].items() if sr["status"] == "clean"} for r in queue}
        accepted_by_file = {
            f: secs for f, secs in accepted_by_file.items() if len(secs) == len(wanted_secs.get(f, secs))
        }

    splits_text = splits_path(target_version).read_text()
    applied = []
    applied_sections = {}
    for name, sections in accepted_by_file.items():
        sections.sort(key=lambda x: x[1][0])
        block = format_split_block(name, sections)
        splits_text = insert_at_end(splits_text, block)
        applied.append(name)
        applied_sections[name] = [sec for sec, _ in sections]

    splits_path(target_version).write_text(splits_text)

    # symbol backport: within each newly-added range, rename target
    # placeholders to the BW1W120 name at the same position, when the
    # symbol counts on both sides agree exactly (safe positional pairing).
    renamed = []
    if applied:
        _, tgt_by_name, tgt_by_sec = load_symbols(target_version)
        for r in queue:
            if r["file"] not in applied:
                continue
            for sec in applied_sections[r["file"]]:
                sr = r["sections"][sec]
                s, e = sr["src_start"], sr["src_end"]
                ts, te = sr["cand_start"], sr["cand_end"]
                src_syms = [x for x in src.by_sec.get(sec, []) if s <= x["addr"] < e]
                tgt_syms = [x for x in tgt_by_sec.get(sec, []) if ts <= x["addr"] < te]
                if len(src_syms) != len(tgt_syms) or not src_syms:
                    continue
                for sx, tx in zip(src_syms, tgt_syms):
                    if tx["addr"] != 0 and is_placeholder(tx["name"]) and not is_placeholder(sx["name"]):
                        renamed.append({"file": r["file"], "from": tx["name"], "to": sx["name"], "addr": tx["addr"]})

    if renamed:
        lines = symbols_path(target_version).read_text().splitlines()
        rename_map = {r["from"]: r["to"] for r in renamed}
        out_lines = []
        for line in lines:
            m = SYM_LINE_RE.match(line.strip())
            if m and m.group("name") in rename_map:
                new_name = rename_map[m.group("name")]
                line = line.replace(m.group("name"), new_name, 1)
            out_lines.append(line)
        symbols_path(target_version).write_text("\n".join(out_lines) + "\n")

    return {"applied": applied, "skipped": skipped, "renamed": renamed, "count": len(applied)}


# --------------------------------------------------------------------------- #
# CLI                                                                         #
# --------------------------------------------------------------------------- #
def main(argv=None):
    p = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    sub = p.add_subparsers(dest="cmd", required=True)

    pr = sub.add_parser("report")
    pr.add_argument("version", choices=TARGET_VERSIONS)

    ps = sub.add_parser("show")
    ps.add_argument("version", choices=TARGET_VERSIONS)
    ps.add_argument("--status", default=None)

    pd = sub.add_parser("diff-file")
    pd.add_argument("version", choices=TARGET_VERSIONS)
    pd.add_argument("file")

    pa = sub.add_parser("apply")
    pa.add_argument("version", choices=TARGET_VERSIONS)
    pa.add_argument("--limit", type=int, default=None)
    pa.add_argument("--only", default=None)

    args = p.parse_args(argv)

    if args.cmd == "report":
        results = run_report(args.version)
        print(json.dumps({"summary": summarize(results), "total": len(results)}, indent=2))
    elif args.cmd == "show":
        results = run_report(args.version)
        if args.status:
            results = [r for r in results if r["status"] == args.status]
        print(json.dumps(results, indent=2))
    elif args.cmd == "diff-file":
        results = run_report(args.version)
        match = [r for r in results if r["file"] == args.file]
        print(json.dumps(match, indent=2))
    elif args.cmd == "apply":
        only = set(args.only.split(",")) if args.only else None
        out = run_apply(args.version, args.limit, only)
        print(json.dumps(out, indent=2))


if __name__ == "__main__":
    sys.exit(main())
