#!/usr/bin/env python3
"""feed_crt_labels.py - feed the object-anchoring detector's findings into symbols.txt.

detect_crt.py finds CRT functions in the binary's .text (object-anchoring + reloc-masked sigs) and writes
docs/port-banks/crt_detected.txt. Many of those functions are UNLABELED in symbols.txt -> scale_crt drops
their objects as "symbol-missing". This tool adds the genuinely-new labels (name AND address both free)
so scale_crt can then map + link those CRT objects. The detection->label->link pipeline.

Skips: names already in symbols.txt (already labeled) and addresses already labeled (COMDAT folds /
conflicts) -- those are left for manual review, never silently overwritten.

Usage:
  python3 tools/feed_crt_labels.py            # dry-run: report new labels, write staging file
  python3 tools/feed_crt_labels.py --apply    # append the new labels to symbols.txt (run when build is free)
Then: python3 configure.py -v BW1E142  &&  python3 tools/scale_crt.py   (re-map + link the now-labeled objs)
"""
import os, re, sys
DTK = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
VERSION = os.environ.get("BW1_VERSION", "BW1E142")
SYMS = os.path.join(DTK, "config", VERSION, "symbols.txt")
DET = os.path.join(DTK, "docs", "port-banks", "crt_detected.txt")
STAGE = os.path.join(DTK, "docs", "port-banks", "crt_new_symbols.txt")

def load_syms():
    names, addrs = set(), {}
    for line in open(SYMS, encoding="latin-1"):
        m = re.match(r"\s*(\S+)\s*=\s*\.text:0x([0-9A-Fa-f]+)", line)
        if m:
            names.add(m.group(1)); addrs[int(m.group(2), 16)] = m.group(1)
        else:
            m2 = re.match(r"\s*(\S+)\s*=", line)
            if m2: names.add(m2.group(1))
    return names, addrs

def new_labels():
    names, addrs = load_syms()
    new, dupname, clash = [], 0, 0
    for line in open(DET, encoding="latin-1"):
        m = re.match(r"\s*(\S+)\s*=\s*\.text:0x([0-9A-Fa-f]+)", line)
        if not m: continue
        nm, a = m.group(1), int(m.group(2), 16)
        if nm in names: dupname += 1; continue
        if a in addrs: clash += 1; continue
        new.append((a, nm))
    new.sort()
    return new, dupname, clash

def main():
    apply = "--apply" in sys.argv[1:]
    new, dupname, clash = new_labels()
    lines = ["%s = .text:0x%08X; // type:function scope:global # detect_crt\n" % (nm, a) for a, nm in new]
    open(STAGE, "w", encoding="latin-1").write("".join(lines))
    print("new labels: %d  (skipped: %d dup-name, %d addr-already-labeled)" % (len(new), dupname, clash))
    print("staging written:", os.path.relpath(STAGE, DTK))
    if apply:
        with open(SYMS, "a", encoding="latin-1") as f:
            f.write("\n# --- CRT labels recovered by detect_crt.py ---\n")
            f.write("".join(lines))
        print("APPLIED: appended %d labels to %s" % (len(new), os.path.relpath(SYMS, DTK)))
        print("next: python3 configure.py -v %s && python3 tools/scale_crt.py" % VERSION)
    else:
        print("(dry-run; re-run with --apply when the build is free)")

if __name__ == "__main__":
    main()
