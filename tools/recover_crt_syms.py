#!/usr/bin/env python3
r"""recover_crt_syms.py - recover the DATA/IMPORT symbols that CRT functions
reference, so objdiff can resolve their relocations and count the functions as
byte-exact.

THE GAP (WALL 2)
----------------
A merged CRT run (see merge_crt_obj.py) is byte-identical to the binary, but
objdiff only marks a function 100% when it can resolve EVERY relocation target
by NAME against config/<ver>/symbols.txt. CRT functions reference many CRT data
globals (`__crtheap`, `___sbh_threshold`, `__pctype`, `__iob`, ...) and stdcall
imports (`__imp__HeapAlloc@12`, ...) that the maintainer never labelled - so
those functions stay <100% even though their bytes match.

We recover each missing target's ADDRESS directly from the binary: a DIR32
relocation site contains the resolved absolute address of its target; a REL32
site contains a displacement (target = site+4+disp). Map the address to its PE
section (.data/.rdata/.bss) and emit a symbols.txt line. Special case:
`__except_list` (the SEH chain head, `fs:[0]`) resolves to absolute 0 - emit it
as an absolute 0 symbol.

SCOPE / SAFETY
--------------
By default we recover ONLY .data/.rdata/.bss targets (+ __except_list). We do
NOT touch .text targets: those are mostly intra-function jump-table labels and
adding them as .text symbols would fragment the merged splits ("split ends
within symbol"). The recovered lines go into a clearly-marked managed block in
symbols.txt so a re-run is idempotent and the change is reviewable.

STRICT: writes only the managed block in symbols.txt (with --apply). The caller
(scale_crt / a human) must reconfigure+build and confirm game TUs stay 1876/158.

Usage:
  python tools/recover_crt_syms.py            # dry-run: report what it'd add
  python tools/recover_crt_syms.py --apply     # write the managed block
  python tools/recover_crt_syms.py --apply --with-text   # also .text labels (risky)
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
EXE = DTK / "orig" / VERSION / "runblack-decrypted.exe"
CRT_DIR = DTK / "lib" / "crt_obj"
BEGIN = "# >>> recover_crt_syms.py recovered CRT data/import symbols (BEGIN)\n"
END = "# <<< recover_crt_syms.py recovered CRT data/import symbols (END)\n"

sys.path.insert(0, str(DTK / "tools"))
from merge_crt_obj import Coff, load_binary_text


def load_symbols():
    name2addr = {}
    for line in SYMBOLS.read_text(encoding="latin-1").splitlines():
        m = re.match(r"\s*(\S+)\s*=\s*\.\w+:0x([0-9A-Fa-f]+);", line)
        if m:
            name2addr[m.group(1)] = int(m.group(2), 16)
    return name2addr


def existing_data_intervals():
    """Sorted (lo, hi) extents of every existing NON-.text symbol, so a recovered
    data symbol that would overlap one is skipped (dtk rejects overlaps)."""
    syms = []     # (addr, has_size, size)
    for line in SYMBOLS.read_text(encoding="latin-1").splitlines():
        m = re.match(r"\s*(\S+)\s*=\s*\.(\w+):0x([0-9A-Fa-f]+);(.*)", line)
        if not m or m.group(2) == "text":
            continue
        addr = int(m.group(3), 16)
        ms = re.search(r"size:0x([0-9A-Fa-f]+)", m.group(4))
        syms.append((addr, int(ms.group(1), 16) if ms else None))
    syms.sort()
    intervals = []
    for i, (a, sz) in enumerate(syms):
        if sz:
            intervals.append((a, a + sz))
        elif i + 1 < len(syms):
            intervals.append((a, syms[i + 1][0]))      # extent to next data symbol
        else:
            intervals.append((a, a + 4))
    return intervals


def in_intervals(addr, intervals):
    import bisect
    i = bisect.bisect_right([lo for lo, _ in intervals], addr) - 1
    if 0 <= i < len(intervals):
        lo, hi = intervals[i]
        return lo <= addr < hi
    return False


def pe_sections():
    import pefile
    pe = pefile.PE(str(EXE), fast_load=True)
    ib = pe.OPTIONAL_HEADER.ImageBase
    out = []
    for s in pe.sections:
        lo = ib + s.VirtualAddress
        hi = lo + max(s.Misc_VirtualSize, s.SizeOfRawData)
        out.append((lo, hi, s.Name.rstrip(b"\x00").decode("latin-1")))
    return out


def obj_sym_names(coff):
    """raw-index -> symbol name for one Coff."""
    out = {}
    i = 0
    while i < coff.nsym:
        rec = coff.d[coff.symptr + i * 18:coff.symptr + i * 18 + 18]
        if rec[:4] == b"\x00\x00\x00\x00":
            o = struct.unpack_from("<I", rec, 4)[0]
            e = coff.d.index(b"\x00", coff.strtab + o)
            nm = coff.d[coff.strtab + o:e].decode("latin-1")
        else:
            nm = rec[:8].rstrip(b"\x00").decode("latin-1")
        _, _, _, _, naux = struct.unpack_from("<IhHBB", rec, 8)
        out[i] = nm
        i += 1 + naux
    return out


def recover(with_text=False):
    name2addr = load_symbols()
    secs = pe_sections()
    bb, base = load_binary_text(EXE)
    data_intervals = existing_data_intervals()

    def secof(va):
        for lo, hi, nm in secs:
            if lo <= va < hi:
                return nm
        return None

    found = {}        # name -> (addr, section)
    overlap_skipped = set()
    text_skipped = set()
    for p in sorted(glob.glob(str(CRT_DIR / "crt_merge_*.obj"))):
        coff = Coff(Path(p).read_bytes())
        names = obj_sym_names(coff)
        run_start = int(Path(p).stem.split("_")[-1], 16)
        for sn in coff.text_secnums():
            s = coff.sections[sn]
            for r in range(s["nrel"]):
                va, sidx, typ = struct.unpack_from("<IIH", coff.d, s["relptr"] + r * 10)
                nm = names.get(sidx)
                if not nm or nm in name2addr or nm in found:
                    continue
                # local compiler labels ($T.., $L..) cannot be named globally
                if nm.startswith("$"):
                    continue
                site = run_start + va
                pos = site - base
                if pos < 0 or pos + 4 > len(bb):
                    continue
                if typ in (0x06, 0x07):           # DIR32 / DIR32NB absolute
                    tgt = struct.unpack_from("<I", bb, pos)[0]
                elif typ == 0x14:                 # REL32 relative
                    tgt = (site + 4 + struct.unpack_from("<i", bb, pos)[0]) & 0xFFFFFFFF
                else:
                    continue
                # SEH chain head: __except_list == fs:[0] == absolute 0
                if tgt == 0:
                    if nm == "__except_list":
                        found[nm] = (0, "ABS")
                    continue
                sec = secof(tgt)
                if sec is None:
                    continue
                if sec == ".text" and not with_text:
                    text_skipped.add(nm)
                    continue
                # Skip MSVC-internal mangled constants - they're collision-prone
                # (float literals packed inside vtables) and rarely the blocker.
                if nm.startswith("__real@") or nm.startswith("??_"):
                    continue
                # Skip any address overlapping an existing data symbol (dtk
                # rejects overlapping symbols).
                if in_intervals(tgt, data_intervals):
                    overlap_skipped.add(nm)
                    continue
                found[nm] = (tgt, sec)
    return found, text_skipped, overlap_skipped


def emit_lines(found):
    # NB: NO '#' inside a symbol line - dtk's parser rejects it as an unknown
    # attribute (the original detect_crt build break). Provenance lives in the
    # full-line BEGIN/END comments + git history.
    lines = [BEGIN.rstrip("\n")]
    for nm in sorted(found, key=lambda n: found[n][0]):
        addr, sec = found[nm]
        if sec == "ABS":
            lines.append(f"{nm} = ABS:0x{addr:08X}; // type:object scope:global")
        else:
            sect = sec if sec.startswith(".") else "." + sec
            lines.append(f"{nm} = {sect}:0x{addr:08X}; // type:object scope:global")
    lines.append(END.rstrip("\n"))
    return "\n".join(lines) + "\n"


def strip_managed(text):
    if BEGIN in text and END in text:
        i = text.index(BEGIN)
        j = text.index(END) + len(END)
        text = text[:i] + text[j:]
    return text


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--apply", action="store_true")
    ap.add_argument("--with-text", action="store_true",
                    help="also recover .text label targets (risks split fragmentation)")
    args = ap.parse_args()

    found, text_skipped, overlap_skipped = recover(with_text=args.with_text)
    by_sec = {}
    for nm, (a, s) in found.items():
        by_sec[s] = by_sec.get(s, 0) + 1
    print("recovered %d symbols: %s" % (len(found), by_sec))
    print("(.text label targets skipped: %d; overlap-with-existing skipped: %d)"
          % (len(text_skipped), len(overlap_skipped)))
    if not args.apply:
        for nm in sorted(found, key=lambda n: found[n][0])[:30]:
            print("   %-32s %s:0x%X" % (nm, found[nm][1], found[nm][0]))
        return

    text = SYMBOLS.read_text(encoding="latin-1")
    text = strip_managed(text)
    SYMBOLS.write_text(text.rstrip("\n") + "\n" + emit_lines(found), encoding="latin-1")
    print("wrote %d recovered symbols into managed block of %s" % (len(found), SYMBOLS))


if __name__ == "__main__":
    main()
