#!/usr/bin/env python3
"""encyclopedia.py - assemble the function-classification ENCYCLOPEDIA from the fan-out's per-batch outputs.

The `classify-encyclopedia` workflow fans ~660 agents over every unbanked function and writes a per-batch
`batch_NNNN_out.json` (a list of {fn, klass, handler, summary, confidence}). This tool aggregates those
into one authoritative map + a human-readable report, so the whole decomp work-list is appraised in one
place and drives the phase-1 sweeps / phase-2 plan.

It is build-independent (only reads the JSON the agents wrote), so it can run while builds are going.

Outputs:
  Documentation/function_encyclopedia.json   - the full per-function map (machine-readable)
  Documentation/Function_Encyclopedia.md     - census + handler plan + per-class samples (human-readable)

Usage:
  python tools/encyclopedia.py                 # aggregate from the default classify dir, write both outputs
  python tools/encyclopedia.py --dir <path>    # custom classify dir (where batch_*_out.json live)
  python tools/encyclopedia.py --self-test
"""
import os, sys, json, glob
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
DEFAULT_DIR = os.path.join(ROOT, "cmake-build-presets", "objdiff", "_classify")

# Which handler each class routes to in the two-phase plan (for the report's roll-up).
PHASE = {
    "sweep-auto": "phase-1 (automated sweep)",
    "permute": "phase-1 (permuter)",
    "fanout-write-C": "phase-1 (LLM writes C)",
    "foldprop": "phase-1 (fold-propagate)",
    "phase2-defer": "phase-2 (clean-C + release md5)",
}


def aggregate(classify_dir=DEFAULT_DIR):
    """Read every batch_*_out.json in classify_dir and return (records, n_batches_found, n_expected).

    n_expected is inferred from the input batch_*.json count so gaps (failed agents) are visible."""
    out_files = sorted(glob.glob(os.path.join(classify_dir, "batch_*_out.json")))
    expected = len(glob.glob(os.path.join(classify_dir, "batch_*.json"))) - len(out_files)  # inputs minus outputs
    records = []
    for f in out_files:
        try:
            data = json.load(open(f, encoding="utf-8"))
        except (ValueError, OSError):
            continue
        if isinstance(data, list):
            records.extend(r for r in data if isinstance(r, dict) and r.get("fn"))
    return records, len(out_files), max(expected, 0)


def census(records):
    """Tally records by klass and by handler. Returns {by_klass, by_handler, total}."""
    from collections import Counter
    bk, bh = Counter(), Counter()
    for r in records:
        bk[r.get("klass", "UNKNOWN")] += 1
        bh[r.get("handler", "?")] += 1
    return {"by_klass": dict(bk.most_common()), "by_handler": dict(bh.most_common()), "total": len(records)}


def write_outputs(records, classify_dir=DEFAULT_DIR):
    """Write the machine-readable map + the human-readable report. Returns the census dict."""
    c = census(records)
    docs = os.path.join(ROOT, "Documentation")
    os.makedirs(docs, exist_ok=True)
    json.dump({"census": c, "functions": records},
              open(os.path.join(docs, "function_encyclopedia.json"), "w", encoding="utf-8"), indent=1)
    # markdown report
    L = ["# Function Classification Encyclopedia", "",
         "Authoritative appraisal of every UNBANKED function (stubs + near-misses), produced by the",
         "`classify-encyclopedia` fan-out. Drives the phase-1 sweeps and the phase-2 clean-C plan.", "",
         "**Total appraised: %d**" % c["total"], "", "## By class", "", "| class | count |", "|---|---|"]
    for k, v in c["by_klass"].items():
        L.append("| %s | %d |" % (k, v))
    L += ["", "## By handler (the work plan)", "", "| handler | phase | count |", "|---|---|---|"]
    for h, v in c["by_handler"].items():
        L.append("| %s | %s | %d |" % (h, PHASE.get(h, "?"), v))
    # a few samples per class (the "encyclopedia" flavour)
    L += ["", "## Samples per class", ""]
    from collections import defaultdict
    byk = defaultdict(list)
    for r in records:
        byk[r.get("klass", "UNKNOWN")].append(r)
    for k in c["by_klass"]:
        L.append("### %s" % k)
        for r in byk[k][:5]:
            L.append("- `%s` -> %s -- %s" % (r.get("fn", "?"), r.get("handler", "?"), r.get("summary", "")[:120]))
        L.append("")
    open(os.path.join(docs, "Function_Encyclopedia.md"), "w", encoding="utf-8").write("\n".join(L))
    return c


def _self_test():
    ok = True
    def chk(c, n):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n)
    recs = [{"fn": "A@B", "klass": "GETTER", "handler": "sweep-auto", "summary": "returns field 0x10"},
            {"fn": "C@D", "klass": "GETTER", "handler": "sweep-auto"},
            {"fn": "E@F", "klass": "INTRA_OBJ_CALL", "handler": "phase2-defer"}]
    c = census(recs)
    chk(c["total"] == 3, "census total")
    chk(c["by_klass"]["GETTER"] == 2 and c["by_klass"]["INTRA_OBJ_CALL"] == 1, "census by_klass")
    chk(c["by_handler"]["sweep-auto"] == 2, "census by_handler")
    chk(PHASE["phase2-defer"].startswith("phase-2"), "phase mapping")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1


if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a:
        sys.exit(_self_test())
    d = a[a.index("--dir") + 1] if "--dir" in a else DEFAULT_DIR
    records, found, missing = aggregate(d)
    if not records:
        print("no batch_*_out.json yet in", d, "(fan-out not finished?)")
        sys.exit(0)
    c = write_outputs(records, d)
    print("=== encyclopedia: %d functions appraised (%d batches, %d still missing) ===" % (c["total"], found, missing))
    print("by class :", c["by_klass"])
    print("by handler:", c["by_handler"])
    print("wrote Documentation/function_encyclopedia.json + Function_Encyclopedia.md")
