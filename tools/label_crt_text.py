#!/usr/bin/env python3
r"""label_crt_text.py - label the missing CRT .text FUNCTION symbols so dtk's
split objects have the same function boundaries as our merged base objects.

THE REAL WALL-2 OBSTACLE (measured)
-----------------------------------
A merged CRT run is byte-exact, but many of its functions report <100% in
objdiff. The reason is NOT unresolved data relocations (the report runs with
`function_reloc_diffs=None`, which matches a base relocation against a target
that has none). The reason is SYMBOL-BOUNDARY MISALIGNMENT:

  * Our merged base obj defines EVERY function in the run (incl. unlabeled static
    CRT helper COMDATs like `_LcidFromHexString`, `_crtGetLocaleInfoA@16`).
  * dtk's TARGET split obj only creates symbols for names in symbols.txt. An
    unlabeled helper between two labeled functions gets ABSORBED into the
    preceding labeled symbol, so that target symbol is too BIG. objdiff then
    compares a 341-byte target `_IsThisWindowsNT` against our 54-byte one and the
    extra bytes (a different function) all diff -> low %.

FIX: add a `.text` label at each missing function's address. dtk then splits the
target symbol correctly and the per-function compare aligns -> 100% for every
byte-exact function whose ONLY problem was the boundary.

SAFETY
------
* Only labels addresses that fall INSIDE an existing crt_merge split (so the
  label is a sub-function of a managed split, never a new standalone split that
  would need 4-byte alignment).
* SKIPS any address that already has a symbol (a COMDAT-folded duplicate already
  provides the boundary; a second name would "overlap").
* SKIPS `$`-locals (cannot be global) and anything already in symbols.txt.
* Emits clean lines (NO inline `#`; provenance is the BEGIN/END comments).
* Idempotent managed block. Re-runnable.

After --apply you MUST: ninja (re-split + rebuild) then objdiff report, and
confirm game TUs stay 1876/158.

Usage:
  python tools/label_crt_text.py            # dry-run
  python tools/label_crt_text.py --apply     # write managed block
  python tools/label_crt_text.py --apply --only NAME1,NAME2   # subset (bisect)
"""
import argparse
import glob
import re
import struct
import sys
from pathlib import Path

DTK = Path(__file__).resolve().parent.parent
VERSION = "BW1E142"
SYMBOLS = DTK / "config" / VERSION / "symbols.txt"
SPLITS = DTK / "config" / VERSION / "splits.txt"
CRT_DIR = DTK / "lib" / "crt_obj"
BEGIN = "# >>> label_crt_text.py recovered CRT .text function labels (BEGIN)"
END = "# <<< label_crt_text.py recovered CRT .text function labels (END)"

sys.path.insert(0, str(DTK / "tools"))
from merge_crt_obj import Coff


def symbols_without_managed():
    """symbols.txt text with this tool's managed block removed - so the set is
    recomputed against the ORIGINAL symbols on every run (idempotency)."""
    return strip_managed(SYMBOLS.read_text(encoding="latin-1"))


def existing_symbols():
    """name -> addr ; addr -> [names] ; for collision checks. EXCLUDES this
    tool's own managed block so re-runs recompute the complete label set."""
    name2addr = {}
    by_addr = {}
    for line in symbols_without_managed().splitlines():
        m = re.match(r"\s*(\S+)\s*=\s*\.(\w+):0x([0-9A-Fa-f]+);", line)
        if not m:
            continue
        addr = int(m.group(3), 16)
        name2addr[m.group(1)] = addr
        by_addr.setdefault(addr, []).append(m.group(1))
    return name2addr, by_addr


def crt_split_ranges():
    """[(lo, hi)] of every crt_merge split, so we only label inside one."""
    ranges = []
    txt = SPLITS.read_text(encoding="latin-1").splitlines()
    cur = None
    for line in txt:
        m = re.match(r"\s*(\S+\.cpp):", line)
        if m:
            cur = m.group(1)
            continue
        mt = re.match(r"\s*\.text\s+start:0x([0-9A-Fa-f]+)\s+end:0x([0-9A-Fa-f]+)", line)
        if mt and cur and "crt_merge_" in cur:
            ranges.append((int(mt.group(1), 16), int(mt.group(2), 16)))
    return ranges


def in_any_range(addr, ranges):
    return any(lo <= addr < hi for lo, hi in ranges)


def collect_missing():
    """name -> addr for every defined function symbol in a merged base obj that
    is NOT in symbols.txt, NOT a $-local, and lies inside a crt split.

    Includes addresses already occupied by a DIFFERENTLY-named symbol: those are
    COMDAT-folded duplicates (the linker kept one variant; dtk labeled it under a
    different name than our obj uses). objdiff pairs symbols by NAME, so we must
    add the obj's name as an ALIAS at the same address (dtk accepts two .text
    symbols at one address; verified). `aliases` is reported separately."""
    name2addr, by_addr = existing_symbols()
    ranges = crt_split_ranges()
    found = {}          # genuinely new addresses
    aliases = {}        # name -> (addr, existing names) - same-addr alias
    skip_outside = 0
    for p in sorted(glob.glob(str(CRT_DIR / "crt_merge_*.obj"))):
        coff = Coff(Path(p).read_bytes())
        run_start = int(Path(p).stem.split("_")[-1], 16)
        tsecs = set(coff.text_secnums())
        for idx, sym in coff.symbols.items():
            if (sym["secnum"] in tsecs and sym["type"] == 0x20
                    and sym["sclass"] == 2 and sym["naux"] == 0):
                nm = sym["name"]
                if nm.startswith("$") or nm in name2addr or nm in found or nm in aliases:
                    continue
                addr = run_start + sym["value"]
                if not in_any_range(addr, ranges):
                    skip_outside += 1
                    continue
                if addr in by_addr:
                    aliases[nm] = (addr, by_addr[addr])
                else:
                    found[nm] = addr
    return found, aliases, skip_outside


def emit(found, aliases):
    lines = [BEGIN]
    merged = dict(found)
    for nm, (addr, _ex) in aliases.items():
        merged[nm] = addr
    for nm in sorted(merged, key=lambda n: merged[n]):
        lines.append(f"{nm} = .text:0x{merged[nm]:08X}; // type:function scope:global")
    lines.append(END)
    return "\n".join(lines) + "\n"


def strip_managed(text):
    if BEGIN in text and END in text:
        i = text.index(BEGIN)
        j = text.index(END) + len(END)
        # also remove a trailing newline left behind
        end = j
        while end < len(text) and text[end] == "\n":
            end += 1
        # and a preceding newline
        start = i
        while start > 0 and text[start - 1] == "\n":
            start -= 1
        text = text[:start] + "\n" + text[end:]
    return text


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--apply", action="store_true")
    ap.add_argument("--only", default=None,
                    help="comma-separated subset of names to apply (for bisect)")
    ap.add_argument("--with-aliases", action="store_true",
                    help="ALSO emit COMDAT-fold aliases (same addr, different name). "
                         "UNSAFE: dtk's split DEDUPS same-address symbols to ONE name, "
                         "so an alias REPLACES the existing symbol (it does not add a "
                         "second). Measured net ~0 and one regression (__stricmp -> "
                         "__strcmpi broke). Default OFF.")
    args = ap.parse_args()

    found, aliases, skip_outside = collect_missing()
    if not args.with_aliases:
        aliases = {}
    if args.only:
        want = set(args.only.split(","))
        found = {n: a for n, a in found.items() if n in want}
        aliases = {n: v for n, v in aliases.items() if n in want}

    print("new .text fn labels: %d ; COMDAT-fold aliases (same addr, diff name): %d"
          % (len(found), len(aliases)))
    print("(skipped %d outside any crt split)" % skip_outside)
    if not args.apply:
        for nm in sorted(found, key=lambda n: found[n])[:40]:
            print("   %-40s .text:0x%08X" % (nm, found[nm]))
        if aliases:
            print("  -- aliases --")
            for nm, (a, ex) in aliases.items():
                print("   %-40s 0x%08X  (also: %s)" % (nm, a, ",".join(ex)))
        return

    # Preserve the file's existing newline style (git baseline is LF; dtk's split
    # rewrites it to CRLF on Windows - either way, match what's already there).
    raw = SYMBOLS.read_bytes()
    nl = "\r\n" if raw.count(b"\r\n") > raw.count(b"\n") - raw.count(b"\r\n") else "\n"
    text = raw.decode("latin-1").replace("\r\n", "\n")
    text = strip_managed(text)
    n = len(found) + len(aliases)
    if n == 0:
        # nothing to add (labels already present as plain lines) - leave the file
        # untouched so a re-run after dtk stripped the markers is a true no-op.
        SYMBOLS.write_bytes(text.rstrip("\n").replace("\n", nl).encode("latin-1") + nl.encode())
        print("nothing to add (all labels already present); file left as-is")
        return
    out = text.rstrip("\n") + "\n" + emit(found, aliases)
    SYMBOLS.write_bytes(out.replace("\n", nl).encode("latin-1"))
    print("wrote %d .text labels (%d new + %d aliases) into managed block of %s"
          % (n, len(found), len(aliases), SYMBOLS))


if __name__ == "__main__":
    main()
