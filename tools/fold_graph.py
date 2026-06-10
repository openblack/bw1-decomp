#!/usr/bin/env python3
"""fold_graph.py - COMDAT-fold predictor: group functions by identical target bytes.

WHAT IT DOES
------------
The MSVC linker folds byte-identical functions to ONE address (COMDAT folding). objdiff then maps
MANY target symbols onto that single chunk. Consequence for us: a change that alters one folded
member's bytes (classically a struct-size change rippling into its `??_G` scalar-deleting-destructor)
*unfolds* it and can regress the partners that were riding the fold. This tool builds the fold groups
from the reassembled `.asm` (the ground truth) so any applicator can check "will this change touch a
fold group?" BEFORE applying — the prerequisite for banking the +37 `??_G` cleanly without the
GTreeInfo-style cascade.

HOW IT WORKS
------------
It scans every reassembled `*.asm` under `src/asm/unprocessed`, reconstructs each mangled symbol's
machine-code byte string from the per-instruction `// 0xADDR <hexbytes>` trailers, and groups
symbols whose concatenated byte strings are identical. A group with >1 member is a COMDAT fold:
touching one member's bytes unfolds the whole group.

Library:
  from fold_graph import build, group_of
  G = build()                  # {bytes_hex: [symbols...]} for groups with >1 member
  group_of(sym, G)            # the symbols sym folds with (incl. itself), or [sym]

Usage:
  python tools/fold_graph.py [--min N] [--ddtor]   # list fold groups (>=N members; --ddtor = ??_G only)
  python tools/fold_graph.py of <mangled>          # what does this symbol fold with?
  python tools/fold_graph.py --self-test
"""
import os, re, sys, glob, collections
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

# A symbol-definition label line, e.g. `?Foo@Bar@@UAEIXZ:` — an identifier (mangled `?...`,
# `@cname`, or plain local label) immediately followed by a colon and nothing else.
_LABEL = re.compile(r"^([A-Za-z_?][\w?@$]*):$")
# An instruction's machine-code trailer, e.g. `  mov al,1   // 0x511 b001` — captures the hex
# byte string ("b001") that follows the `// 0x<addr> ` comment. This is what we concatenate per
# symbol to get its full byte image for fold comparison.
_BYTES = re.compile(r"//\s*0x[0-9a-fA-F]+\s+([0-9a-fA-F]+)\s*$")
def _iter_asm():
    """Yield the path of every reassembled `.asm` file under src/asm/unprocessed (ground truth)."""
    for f in glob.glob(os.path.join(ROOT, "src/asm/unprocessed", "*.asm")):
        yield f

def symbol_bytes(asm_files=None):
    """{mangled_symbol: concatenated_hex_bytes} across all reassembled asm.

    Streams each .asm line by line as a small state machine: a label line starts a new symbol
    (flushing the previous one), and every subsequent instruction's `// 0xADDR <bytes>` trailer is
    appended to the current symbol's byte buffer. latin-1 is used because the asm dumps are raw
    bytes that must round-trip losslessly (any byte 0x00-0xFF is a valid latin-1 code point).

    Note: if the same mangled symbol is defined in more than one .asm (COMDAT can emit duplicates
    across translation units), the byte images are required to be identical; a genuine conflict is
    reported to stderr rather than silently keeping the last one (which could distort a fold group).
    """
    sb = {}
    for f in (asm_files or _iter_asm()):
        # Use a context manager so the file descriptor is closed promptly (important on Windows,
        # where lingering handles can lock files) rather than relying on GC/refcounting.
        with open(f, encoding="latin-1") as fh:
            cur = None; buf = []
            for line in fh:
                s = line.strip()
                m = _LABEL.match(s)
                if m:
                    # Flush the just-finished symbol before switching to the new label.
                    if cur and buf: _store(sb, cur, "".join(buf), f)
                    # Only track real defined symbols: mangled (`?...`) or decorated (`@cname`)
                    # names. Plain local labels (jump targets, `LAB__...`) are not symbols we fold,
                    # so set cur=None to ignore their instruction bytes until the next real label.
                    cur = m.group(1) if (m.group(1).startswith("?") or "@" in m.group(1)) else None
                    buf = []
                    continue
                if cur:
                    b = _BYTES.search(line)
                    if b: buf.append(b.group(1).lower())
            # Flush the final symbol of the file (no trailing label triggers the flush above).
            if cur and buf: _store(sb, cur, "".join(buf), f)
    return sb

def _store(sb, sym, b, f):
    """Record sym->bytes, warning on a cross-file byte conflict instead of silently overwriting.

    COMDAT can emit the same mangled symbol in multiple translation units. Those copies must be
    byte-identical; if a later file disagrees with an earlier one, the fold prediction would be
    distorted, so we keep the first image and warn to stderr rather than overwrite it blindly.
    """
    if sym in sb and sb[sym] != b:
        sys.stderr.write("warning: %s has conflicting bytes across files (keeping first); see %s\n" % (sym, f))
        return
    sb[sym] = b

def build(min_members=2, ddtor_only=False, sb=None):
    """{bytes_hex: [symbols]} for fold groups (>= min_members byte-identical symbols).

    Args:
      min_members: keep only groups with at least this many byte-identical symbols (default 2,
                   i.e. genuine folds — a lone symbol is not a fold).
      ddtor_only:  restrict to scalar-deleting-destructors (`??_G` symbols), the classic
                   struct-size-ripple unfold targets.
      sb:          a precomputed {symbol: bytes} map (else scan the asm via symbol_bytes()).
    """
    sb = sb if sb is not None else symbol_bytes()
    by = collections.defaultdict(list)
    for sym, b in sb.items():
        if ddtor_only and not sym.startswith("??_G"): continue
        # Byte-CONTENT guard (NOT the member count): `len(b)` counts hex CHARS, so `>= 2` means
        # "at least one full byte (two hex digits) of code". This drops empty/sub-byte captures so
        # zero-length symbols don't all collide into one bogus group. Independent of min_members.
        if len(b) >= 2: by[b].append(sym)
    return {b: syms for b, syms in by.items() if len(syms) >= min_members}

def group_of(sym, G=None):
    """Return the sorted list of symbols `sym` folds with (including itself), or [sym] if unfolded.

    G is a prebuilt fold map from build(); if omitted it is computed (full asm scan).
    """
    G = G if G is not None else build()
    for b, syms in G.items():
        if sym in syms: return sorted(syms)
    return [sym]

def _self_test():
    """Run pure-logic checks on build()/group_of() and the regexes; return 0 on pass, 1 on fail."""
    ok = True
    def chk(c, n):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n)
    sb = {"?A@@x": "b001c3", "?B@@x": "b001c3", "?C@@x": "33c0c3"}     # A,B fold; C alone
    G = build(2, sb=sb)
    chk(len(G) == 1 and set(next(iter(G.values()))) == {"?A@@x", "?B@@x"}, "groups byte-identical A,B")
    chk(group_of("?A@@x", G) == ["?A@@x", "?B@@x"], "group_of finds partner")
    chk(group_of("?C@@x", G) == ["?C@@x"], "unfolded symbol is alone")
    chk(_LABEL.match("?Foo@Bar@@UAEIXZ:") is not None and _BYTES.search("  mov al,1   // 0x511 b001") is not None, "regexes")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if __name__ == "__main__":
    a = sys.argv[1:]
    # --self-test runs the offline logic checks and exits.
    if "--self-test" in a: sys.exit(_self_test())
    # `of <mangled>` subcommand: print the fold group for one symbol.
    if a and a[0] == "of" and len(a) > 1:
        print("\n".join(group_of(a[1]))); sys.exit()
    # --min N sets the minimum group size; validate the value is present and a non-negative int
    # so a malformed/missing argument gives a clear usage error instead of an IndexError/ValueError.
    mn = 2
    if "--min" in a:
        i = a.index("--min")
        if i + 1 >= len(a) or not a[i + 1].isdigit():
            sys.exit("usage: --min requires a non-negative integer (e.g. --min 3)")
        mn = int(a[i + 1])
    G = build(mn, ddtor_only="--ddtor" in a)
    items = sorted(G.items(), key=lambda x: -len(x[1]))
    print("fold groups (>=%d members%s): %d" % (mn, ", ??_G only" if "--ddtor" in a else "", len(G)))
    for b, syms in items[:25]:
        print("  [%d] %s ..." % (len(syms), ", ".join(s[:34] for s in syms[:4])))
    tot = sum(len(s) for s in G.values())
    print("total symbols in fold groups: %d" % tot)
