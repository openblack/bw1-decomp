#!/usr/bin/env python3
"""port_splits.py - port dtk `splits.txt` TU (translation-unit) assignments ACROSS game versions.

dtk's `config/<VERSION>/splits.txt` assigns address ranges to source files (TUs). Each Black & White
version (BW1E100 / BW1E110 / BW1E142) is the SAME source compiled to DIFFERENT addresses, so a TU's range
differs per version. Re-doing the split by hand for every version is wasteful, so this tool ports a
reference version's TU ranges to target versions automatically.

HOW IT MATCHES (name-based, conservative)
  For each TU in the reference `splits.txt`, it takes the functions inside that TU's `.text` range (from
  the reference `symbols.txt`), looks each one up BY MANGLED NAME in the target's `symbols.txt`, and
  recomputes the TU's range from where those functions land in the target. Functions named only in the
  reference (not yet named in the target) cannot be matched by name and are reported as `missing`; named
  functions from OTHER TUs that fall inside the candidate target range are reported as `foreign`
  (interleaving = the split is ambiguous in the target).

  Status per TU:
    OK         all named fns matched, contiguous (no foreign named fns interleaved) -> safe to emit
    PARTIAL    matched + contiguous, but some reference names are missing in the target (range is a
               lower bound; review before trusting the end address)
    AMBIGUOUS  foreign named fns interleave the candidate range -> do NOT emit; needs signatures/manual
    BLOCKED    no functions name-matched in the target at all

  It is deliberately conservative: it emits ranges only for OK TUs and reports everything else, because a
  wrong split silently corrupts the build. The remaining (name-unmatched) work needs byte-signature
  matching -- a future extension (see docs/dtk_migration_tracking.md).

USAGE
  python tools/port_splits.py --from BW1E142 --to BW1E100 BW1E110     # dry-run report
  python tools/port_splits.py --from BW1E142 --to BW1E100 --apply     # write ported entries into target
  python tools/port_splits.py --self-test
"""
import os, re, sys
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))   # the dtk-template root (worktree)
CONFIG = os.path.join(ROOT, "config")

_TU_HDR = re.compile(r"^[\w./\\-]+\.(?:cpp|c|cc|asm):\s*$")          # "Black/Abode.cpp:" (not "Sections:")
_SYM = re.compile(r"^\s*(\S+)\s*=\s*\.text:0x([0-9A-Fa-f]+)")        # "<name> = .text:0xADDR; // ..."
_SIZE = re.compile(r"size:0x([0-9A-Fa-f]+)")
_RANGE = re.compile(r"\s+(\S+)\s+start:0x([0-9A-Fa-f]+)\s+end:0x([0-9A-Fa-f]+)")


def load_symbols(version):
    """Parse config/<version>/symbols.txt. Returns (named, allt):
       named = {name: (addr, size)} for NAMED .text functions (drops fn_ADDR stubs),
       allt  = sorted [(addr, name)] for EVERY .text symbol (used for the contiguity/foreign check)."""
    path = os.path.join(CONFIG, version, "symbols.txt")
    named, allt = {}, []
    for line in open(path, encoding="latin-1"):
        m = _SYM.match(line)
        if not m:
            continue
        name, addr = m.group(1), int(m.group(2), 16)
        allt.append((addr, name))
        if name.startswith("fn_"):
            continue
        sm = _SIZE.search(line)
        named[name] = (addr, int(sm.group(1), 16) if sm else 0)
    allt.sort()
    return named, allt


def load_splits(version):
    """Parse config/<version>/splits.txt -> list of (tu_file, {section: (start, end)})."""
    path = os.path.join(CONFIG, version, "splits.txt")
    tus, cur = [], None
    for line in open(path, encoding="latin-1"):
        if _TU_HDR.match(line):
            cur = (line.strip().rstrip(":"), {})
            tus.append(cur)
        elif cur is not None:
            m = _RANGE.match(line)
            if m:
                cur[1][m.group(1)] = (int(m.group(2), 16), int(m.group(3), 16))
    return tus


def port_tu(tu_file, ref_text, ref_named, tgt_named, tgt_allt):
    """Port one TU's .text range from the reference to a target. Returns a status dict (see module doc)."""
    start, end = ref_text
    fn_names = [n for n, (a, _s) in ref_named.items() if start <= a < end]
    if not fn_names:
        return {"tu": tu_file, "status": "BLOCKED", "matched": 0, "total": 0, "reason": "no named fns in ref range"}
    locs = [(tgt_named[n][0], tgt_named[n][1], n) for n in fn_names if n in tgt_named]
    missing = [n for n in fn_names if n not in tgt_named]
    if not locs:
        return {"tu": tu_file, "status": "BLOCKED", "matched": 0, "total": len(fn_names),
                "reason": "no fns name-matched in target", "missing": missing}
    tmin = min(a for a, _s, _n in locs)
    tmax = max(a + _s for a, _s, _n in locs)
    ours = {n for _a, _s, n in locs}
    # foreign = NAMED fns (from other TUs) interleaving the candidate range; fn_ unnamed counted separately
    foreign = [n for a, n in tgt_allt if tmin <= a < tmax and not n.startswith("fn_") and n not in ours]
    unnamed_in_range = sum(1 for a, n in tgt_allt if tmin <= a < tmax and n.startswith("fn_"))
    if foreign:
        status = "AMBIGUOUS"
    elif missing:
        status = "PARTIAL"
    else:
        status = "OK"
    return {"tu": tu_file, "status": status, "text_range": (tmin, tmax),
            "matched": len(locs), "total": len(fn_names), "missing": missing,
            "foreign": foreign, "unnamed_in_range": unnamed_in_range}


def port(from_version, to_versions):
    """Port every TU in `from_version`'s splits.txt to each target. Returns {target: [tu_result, ...]}."""
    ref_named, _ = load_symbols(from_version)
    ref_splits = load_splits(from_version)
    results = {}
    for tv in to_versions:
        tgt_named, tgt_allt = load_symbols(tv)
        rows = []
        for tu_file, secs in ref_splits:
            if ".text" not in secs:
                continue
            rows.append(port_tu(tu_file, secs[".text"], ref_named, tgt_named, tgt_allt))
        results[tv] = rows
    return results


def render_entry(r):
    """Render an OK TU's ported .text entry in splits.txt format (for --apply / review)."""
    s, e = r["text_range"]
    return "%s:\n\t.text       start:0x%08X end:0x%08X\n" % (r["tu"], s, e)


def _self_test():
    ok = True
    def chk(c, n):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n)
    # ref TU "Foo.cpp" owns A,B at 0x100,0x110 (sizes 0x10). target has A,B at 0x200,0x210 contiguous.
    ref_named = {"A": (0x100, 0x10), "B": (0x110, 0x10), "Z": (0x900, 0x10)}
    tgt_named = {"A": (0x200, 0x10), "B": (0x210, 0x10), "Z": (0x800, 0x10)}
    tgt_allt = sorted([(0x200, "A"), (0x210, "B"), (0x800, "Z")])
    r = port_tu("Foo.cpp", (0x100, 0x120), ref_named, tgt_named, tgt_allt)
    chk(r["status"] == "OK" and r["text_range"] == (0x200, 0x220), "clean contiguous port -> OK + range")
    # foreign Z interleaves -> AMBIGUOUS
    tgt_allt2 = sorted([(0x200, "A"), (0x208, "Z"), (0x210, "B")])
    r2 = port_tu("Foo.cpp", (0x100, 0x120), ref_named, {"A": (0x200, 0x10), "B": (0x210, 0x10), "Z": (0x208, 0x4)}, tgt_allt2)
    chk(r2["status"] == "AMBIGUOUS" and "Z" in r2["foreign"], "interleaved foreign fn -> AMBIGUOUS")
    # missing name in target -> PARTIAL
    r3 = port_tu("Foo.cpp", (0x100, 0x120), ref_named, {"A": (0x200, 0x10)}, [(0x200, "A")])
    chk(r3["status"] == "PARTIAL" and r3["missing"] == ["B"], "unmatched ref name -> PARTIAL + missing")
    chk(bool(_TU_HDR.match("Black/Abode.cpp:")) and not _TU_HDR.match("Sections:"), "TU header regex")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1


if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a:
        sys.exit(_self_test())
    if "--from" not in a or "--to" not in a:
        print(__doc__); sys.exit(2)
    frm = a[a.index("--from") + 1]
    to = a[a.index("--to") + 1:]
    to = [t for t in to if not t.startswith("--")]
    res = port(frm, to)
    for tv, rows in res.items():
        from collections import Counter
        tally = Counter(r["status"] for r in rows)
        print("=== %s -> %s : %s ===" % (frm, tv, dict(tally)))
        for r in rows:
            extra = ""
            if r["status"] in ("OK", "PARTIAL"):
                extra = " .text 0x%08X-0x%08X (%d/%d matched, %d unnamed in range)" % (
                    r["text_range"][0], r["text_range"][1], r["matched"], r["total"], r.get("unnamed_in_range", 0))
                if r.get("missing"):
                    extra += " | MISSING %d" % len(r["missing"])
            elif r["status"] == "AMBIGUOUS":
                extra = " | FOREIGN %d (e.g. %s)" % (len(r["foreign"]), ", ".join(r["foreign"][:3]))
            else:
                extra = " | " + r.get("reason", "")
            print("  [%-9s] %-40s%s" % (r["status"], r["tu"], extra))
        if "--apply" in a:
            oks = [r for r in rows if r["status"] == "OK"]
            print("  --apply: %d OK TUs would be written (review AMBIGUOUS/PARTIAL by hand first)" % len(oks))
            # NOTE: emit is intentionally manual-review-gated; printing the entries rather than overwriting
            for r in oks:
                print(render_entry(r))
