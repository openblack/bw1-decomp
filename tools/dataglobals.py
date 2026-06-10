#!/usr/bin/env python3
"""dataglobals.py - discover & NAME unnamed .data globals (so functions that touch them can be decompiled).

WHY
---
Many functions read/write a `.data` slot the reassembly left unnamed, emitting an operand of the
form `mov [data_bytes + 0xOFF], ...`. Without a real symbol for that slot, the decompiled C has no
name to reference, so the whole function stays a near-miss (for example the entire `Destroy@<Box>`
singleton-null family is blocked this way - it nulls a global it cannot name).

WHAT IT DOES
------------
It scans every asm reference to such a `data_bytes + 0xOFF` slot, groups the references by offset,
and INFERS a proposed C name for each global from the classes whose methods touch it: the dominant
referencing class wins, so a slot touched mostly by `Foo`'s methods becomes `g_Foo`. The common
shape is a per-class singleton at offset X, set by `Create@<Class>` and nulled by `Destroy@<Class>`
(though this tool only uses the dominant-class heuristic; it does NOT verify Create/Destroy exist -
see `_infer_name`). The output is a proposed symbol plus the evidence (the referencing functions),
ready to paste into the `.data` definitions and a header as `extern "C" <T> g_<Class>;`.

OUTPUT
------
The default listing prints at most the top 40 globals by reference count (the full count is stated
in the trailing summary line). Use the `of` subcommand to dump every referencing function for one
specific offset.

Usage:
  python tools/dataglobals.py [--min-refs N]   # list unnamed .data globals + inferred names (top 40)
  python tools/dataglobals.py of 0xOFFSET      # who references this slot (full evidence list)
  python tools/dataglobals.py --self-test
"""
import os, re, sys, glob, collections
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

# Matches an unnamed .data slot operand `[data_bytes + 0xOFF]` and captures the hex offset.
# Hex is accepted in either case (the reassembly emits lowercase, but be robust to upper).
_REF = re.compile(r"\[data_bytes \+ 0x([0-9a-fA-F]+)\]")
# Matches a label that sits ALONE on its line: `<name>:` (anchored, so labels that share a line
# with an instruction - e.g. `.Lbl_addr_0x..:  mov ...` - are intentionally not matched here).
_LABEL = re.compile(r"^([A-Za-z_?][\w?@$]*):$")
# Pulls the class name out of an MSVC-mangled method symbol `?Method@Class@@...` -> `Class`.
_CLS = re.compile(r"^\?\w+@(\w+)@@")          # mangled method -> class

def _refs():
    """Scan all unprocessed asm for `data_bytes + 0xOFF` slot references.

    Returns {offset: [(symbol, file), ...]} listing, for each .data offset, every
    referencing function (the enclosing mangled method symbol, or None if the ref
    appears outside any named method) and the basename of the asm file it lives in.

    Symbol attribution tracks `cur`, the most recent standalone label. Only mangled
    or @-decorated labels (real method symbols) are treated as the enclosing function;
    a plain/local label (e.g. `.Lbl_addr_0x..`, `_jmp_addr_0x..`) resets `cur` to None
    so refs under it are reported as unattributed rather than misattributed to the
    previous method (the prior `else cur` retained the stale symbol).
    """
    refs = collections.defaultdict(list)
    for f in glob.glob(os.path.join(ROOT, "src/asm/unprocessed", "*.asm")):
        cur = None
        # latin-1 = lossless byte passthrough for the asm dumps (may hold non-UTF-8 bytes).
        with open(f, encoding="latin-1") as fh:
            for line in fh:
                s = line.strip()
                m = _LABEL.match(s)
                if m:
                    # Enter a named method only on a real (mangled/@-decorated) label;
                    # any other standalone label clears attribution (fixes stale `cur`).
                    cur = m.group(1) if (m.group(1).startswith("?") or "@" in m.group(1)) else None
                    continue
                for off in _REF.findall(line):
                    refs[int(off, 16)].append((cur, os.path.basename(f)))
    return refs

def _infer_name(off, syms):
    """Infer a global's name from the referencing methods' classes.

    Tallies the class of every attributed (non-None) referencing symbol and names the
    slot after the dominant class: `g_<Class>`. If no symbol resolved to a class, falls
    back to an offset-derived placeholder `g_data_0x<off>`.

    NOTE: this is purely a dominant-class heuristic. It does NOT verify that the class
    actually has Create/Destroy singleton methods - the typical case is a per-class
    singleton, but a `g_<Class>` name is proposed for any dominant class regardless.
    """
    classes = collections.Counter()
    for sym in syms:
        if not sym: continue
        m = _CLS.match(sym)
        if m: classes[m.group(1)] += 1
    if not classes: return "g_data_0x%x" % off
    top, n = classes.most_common(1)[0]
    # Dominant referencing class -> g_<Class> (most slots are that class's singleton).
    return "g_%s" % top

def report(min_refs=1):
    """List unnamed .data globals with their inferred names and reference stats.

    Builds one row per offset that has at least `min_refs` references:
    (offset, inferred_name, total_refs, distinct_named_fns). Rows are sorted by
    descending total references; only the top 40 are printed (the trailing summary
    states the full count). Returns the FULL list of rows (not just the printed 40).
    """
    refs = _refs()
    rows = []
    for off, lst in refs.items():
        syms = [s for s, f in lst]
        if len(lst) < min_refs: continue
        # Count distinct *named* functions only; drop None (unattributed refs) so an
        # unresolved ref does not inflate the fns= column by a phantom entry.
        distinct_fns = len({s for s in syms if s})
        rows.append((off, _infer_name(off, syms), len(lst), distinct_fns))
    rows.sort(key=lambda r: -r[2])
    shown = rows[:40]
    print("unnamed .data globals (offset -> inferred name, total refs, distinct fns):")
    for off, name, nref, nfn in shown:
        print("  0x%-8x %-26s refs=%-3d fns=%d" % (off, name, nref, nfn))
    print("\n%d unnamed .data globals (showing top %d); name = dominant referencing class. Add the\n"
          "symbol to the .data definition + declare `extern \"C\" <T> %s;` so callers (e.g. Destroy@<Box>)\n"
          "can reference it." % (len(rows), len(shown), "<name>"))
    return rows

def _self_test():
    """Run pure-logic checks (regex matching + name inference) and return an exit code (0 ok)."""
    ok = True
    def chk(c, n, got=None):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n + ("" if c else "  got:%r" % (got,)))
    chk(_REF.findall("mov dword ptr [data_bytes + 0x30ab24], 0") == ["30ab24"], "ref regex")
    chk(_CLS.match("?Destroy@NewProfileBox@@UAEXXZ").group(1) == "NewProfileBox", "class from mangled")
    chk(_infer_name(0x30ab24, ["?Destroy@NewProfileBox@@UAEXXZ", "?Create@NewProfileBox@@QAEXXZ",
                               "?Update@NewProfileBox@@UAEXXZ"]) == "g_NewProfileBox", "infer g_NewProfileBox")
    chk(_infer_name(0x1234, [None, None]) == "g_data_0x1234", "fallback name when no class")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a: sys.exit(_self_test())
    # `of 0xOFFSET` subcommand: dump every distinct referencing function for one slot.
    if a and a[0] == "of":
        if len(a) < 2:
            sys.exit("usage: dataglobals.py of 0xOFFSET")
        try:
            off = int(a[1], 16)          # base 16 accepts upper- or lower-case hex
        except ValueError:
            sys.exit("dataglobals.py: bad offset %r (expected hex, e.g. 0x30ab24)" % a[1])
        seen = set()
        for sym, f in _refs().get(off, []):
            # De-dupe by symbol so each referencing function prints once.
            if sym not in seen: seen.add(sym); print("  %-50s %s" % (sym, f))
        sys.exit()
    # Optional `--min-refs N`: drop globals with fewer than N references. Guard the
    # index/format so a missing or non-integer value gives a usage error, not a traceback.
    mr = 1
    if "--min-refs" in a:
        i = a.index("--min-refs")
        if i + 1 >= len(a):
            sys.exit("usage: dataglobals.py --min-refs N")
        try:
            mr = int(a[i + 1])
        except ValueError:
            sys.exit("dataglobals.py: --min-refs expects an integer, got %r" % a[i + 1])
    report(mr)
