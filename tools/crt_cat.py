#!/usr/bin/env python3
r"""crt_cat.py - categorize the 169 unique unresolved CRT reloc targets to decide
how (or whether) each can be labeled.

For each unique target referenced by a <100% crt_merge function, recover its
address + section, then classify:
  EXACT-NAME-MISMATCH : an existing symbols.txt symbol starts at EXACTLY this
                        address but under a different name -> alias/reuse.
  INTERIOR            : address falls strictly inside an existing sized symbol's
                        body -> cannot add a sub-label (dtk overlap). Resists.
  CLEAN               : no existing symbol covers it -> safe to add a new label.
  ABS0                : __except_list (fs:[0]) -> ABS:0.
  TEXT                : target is in .text (jump-table / helper label).
  LOCAL               : $-prefixed compiler-local (cannot be a global symbol).
Read-only.
"""
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

sys.path.insert(0, str(DTK / "tools"))
from merge_crt_obj import Coff, load_binary_text
from recover_crt_syms import obj_sym_names, pe_sections


def all_symbols():
    """name -> (addr, section, size_or_None) for every symbols.txt entry."""
    out = {}
    for line in SYMBOLS.read_text(encoding="latin-1").splitlines():
        m = re.match(r"\s*(\S+)\s*=\s*\.(\w+):0x([0-9A-Fa-f]+);(.*)", line)
        if not m:
            continue
        addr = int(m.group(3), 16)
        ms = re.search(r"size:0x([0-9A-Fa-f]+)", m.group(4))
        out[m.group(1)] = (addr, "." + m.group(2), int(ms.group(1), 16) if ms else None)
    return out


def main():
    syms = all_symbols()
    name2addr = {n: v[0] for n, v in syms.items()}
    # address -> list of (name, section, size)
    by_addr = {}
    for n, (a, s, sz) in syms.items():
        by_addr.setdefault(a, []).append((n, s, sz))
    # sized intervals, for interior detection, per section
    sized = sorted((a, a + sz, n, s) for n, (a, s, sz) in syms.items() if sz)
    # also build "gap to next" extents for UNsized symbols within each section
    sec_syms = {}
    for n, (a, s, sz) in syms.items():
        sec_syms.setdefault(s, []).append((a, sz, n))
    extents = []   # (lo, hi, name, section) gap-to-next for unsized
    for s, lst in sec_syms.items():
        lst.sort()
        for i, (a, sz, n) in enumerate(lst):
            if sz:
                extents.append((a, a + sz, n, s))
            elif i + 1 < len(lst):
                extents.append((a, lst[i + 1][0], n, s))
    extents.sort()

    def covering(addr):
        """return (name, section, lo, hi, is_start) of the existing symbol whose
        extent covers addr, or None."""
        best = None
        for lo, hi, n, s in extents:
            if lo <= addr < hi:
                best = (n, s, lo, hi, addr == lo)
        return best

    # gather unique targets (only those referenced by ANY crt_merge .text reloc
    # that is currently unresolved)
    secs = pe_sections()
    bb, base = load_binary_text(EXE)

    def secof(va):
        for lo, hi, nm in secs:
            if lo <= va < hi:
                return nm
        return None

    targets = {}   # name -> addr
    for p in sorted(glob.glob(str(CRT_DIR / "crt_merge_*.obj"))):
        coff = Coff(Path(p).read_bytes())
        names = obj_sym_names(coff)
        run_start = int(Path(p).stem.split("_")[-1], 16)
        for sn in coff.text_secnums():
            s = coff.sections[sn]
            for r in range(s["nrel"]):
                va, sidx, typ = struct.unpack_from("<IIH", coff.d, s["relptr"] + r * 10)
                nm = names.get(sidx)
                if not nm or nm in name2addr or nm in targets:
                    continue
                site = run_start + va
                pos = site - base
                tgt = None
                if 0 <= pos + 4 <= len(bb):
                    if typ in (0x06, 0x07):
                        tgt = struct.unpack_from("<I", bb, pos)[0]
                    elif typ == 0x14:
                        tgt = (site + 4 + struct.unpack_from("<i", bb, pos)[0]) & 0xFFFFFFFF
                targets[nm] = tgt

    cats = {"EXACT-NAME-MISMATCH": [], "INTERIOR": [], "CLEAN": [], "ABS0": [],
            "TEXT": [], "LOCAL": [], "NOSEC": []}
    detail = {}
    for nm, tgt in sorted(targets.items(), key=lambda kv: (kv[1] or 0)):
        if nm.startswith("$"):
            cats["LOCAL"].append(nm); continue
        if tgt == 0:
            cats["ABS0"].append(nm); detail[nm] = (0, "ABS"); continue
        sec = secof(tgt)
        if sec is None:
            cats["NOSEC"].append(nm); continue
        if sec == ".text":
            cats["TEXT"].append(nm); detail[nm] = (tgt, sec)
            # is there an exact-addr existing .text symbol? (name mismatch)
            ex = by_addr.get(tgt)
            if ex:
                detail[nm] = (tgt, sec, "exact=" + ex[0][0])
            continue
        ex = by_addr.get(tgt)
        cov = covering(tgt)
        if ex:
            # exact existing symbol at this addr but different name
            cats["EXACT-NAME-MISMATCH"].append(nm)
            detail[nm] = (tgt, sec, "exact=" + ",".join(e[0] for e in ex))
        elif cov and not cov[4]:
            cats["INTERIOR"].append(nm)
            detail[nm] = (tgt, sec, "inside=%s[0x%X-0x%X]" % (cov[0], cov[2], cov[3]))
        elif cov and cov[4]:
            cats["EXACT-NAME-MISMATCH"].append(nm)
            detail[nm] = (tgt, sec, "starts=%s" % cov[0])
        else:
            cats["CLEAN"].append(nm)
            detail[nm] = (tgt, sec, "free")

    for cat in ("CLEAN", "EXACT-NAME-MISMATCH", "INTERIOR", "ABS0", "TEXT", "LOCAL", "NOSEC"):
        lst = cats[cat]
        print("\n=== %s (%d) ===" % (cat, len(lst)))
        for nm in lst:
            dt = detail.get(nm, ())
            extra = dt[2] if len(dt) > 2 else ""
            addr = dt[0] if dt else 0
            print("  %-42s @0x%08X %-7s %s"
                  % (nm, addr, (dt[1] if dt else "?"), extra))


if __name__ == "__main__":
    main()
