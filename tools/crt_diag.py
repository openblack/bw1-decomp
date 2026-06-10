#!/usr/bin/env python3
r"""crt_diag.py - DIAGNOSTIC for the CRT WALL-2 residual.

For every function that objdiff reports <100% inside a crt_merge_*.obj, list the
relocation TARGET names referenced from within that function's byte range that
are NOT resolvable in config/<ver>/symbols.txt. These unresolved targets are the
exact reason objdiff cannot mark the function 100%.

For each unresolved target we also recover its address (from the DIR32/REL32
reloc site in the binary) and the PE section it lands in - the raw material for
labeling. Read-only; prints a report.

Usage:
  python tools/crt_diag.py [rep.json]
"""
import glob
import json
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
from recover_crt_syms import (load_symbols, obj_sym_names, pe_sections,
                              existing_data_intervals, in_intervals)


def func_ranges(coff, names):
    """Return sorted list of (start_off, end_off, name) for every defined
    function symbol (type 0x20, external) in the merged .text. end is the next
    function start (functions are laid contiguously in the merged .text)."""
    funcs = []
    tsecs = set(coff.text_secnums())
    for idx, sym in coff.symbols.items():
        if (sym["secnum"] in tsecs and sym["type"] == 0x20
                and sym["sclass"] == 2 and sym["naux"] == 0):
            funcs.append((sym["value"], names.get(idx, sym["name"])))
    funcs.sort()
    out = []
    text_len = sum(coff.sections[sn]["rawsize"] for sn in coff.text_secnums())
    # merged obj has a single .text; its rawsize is on section 1
    text_len = coff.sections[coff.text_secnums()[0]]["rawsize"]
    for i, (start, nm) in enumerate(funcs):
        end = funcs[i + 1][0] if i + 1 < len(funcs) else text_len
        out.append((start, end, nm))
    return out


def main():
    rep = sys.argv[1] if len(sys.argv) > 1 else "rep.json"
    d = json.load(open(DTK / rep))
    below = {}    # unit basename -> set of func names that are <100
    for u in d.get("units", []):
        name = u.get("name") or ""
        if "crt_merge" not in name:
            continue
        bn = name.split("/")[-1]
        below[bn] = {f["name"] for f in u.get("functions", [])
                     if (f.get("fuzzy_match_percent") or 0) < 100}

    name2addr = load_symbols()
    secs = pe_sections()
    bb, base = load_binary_text(EXE)
    data_intervals = existing_data_intervals()

    def secof(va):
        for lo, hi, nm in secs:
            if lo <= va < hi:
                return nm
        return None

    target_funcs = {}   # tgt_name -> set of (unit,func) needing it
    target_info = {}    # tgt_name -> (addr, section, overlap_bool)
    unresolved_by_func = {}

    for p in sorted(glob.glob(str(CRT_DIR / "crt_merge_*.obj"))):
        bn = Path(p).stem
        if bn not in below:
            continue
        coff = Coff(Path(p).read_bytes())
        names = obj_sym_names(coff)
        run_start = int(bn.split("_")[-1], 16)
        franges = func_ranges(coff, names)
        s = coff.sections[coff.text_secnums()[0]]
        relocs = []
        for r in range(s["nrel"]):
            va, sidx, typ = struct.unpack_from("<IIH", coff.d, s["relptr"] + r * 10)
            relocs.append((va, names.get(sidx), typ))
        for (start, end, fname) in franges:
            if fname not in below[bn]:
                continue
            key = (bn, fname)
            unresolved_by_func[key] = []
            for (va, tname, typ) in relocs:
                if not (start <= va < end):
                    continue
                if not tname or tname in name2addr:
                    continue
                # recover address
                site = run_start + va
                pos = site - base
                tgt = None
                if 0 <= pos + 4 <= len(bb):
                    if typ in (0x06, 0x07):
                        tgt = struct.unpack_from("<I", bb, pos)[0]
                    elif typ == 0x14:
                        tgt = (site + 4 + struct.unpack_from("<i", bb, pos)[0]) & 0xFFFFFFFF
                sec = secof(tgt) if tgt is not None else None
                ov = in_intervals(tgt, data_intervals) if tgt is not None else False
                unresolved_by_func[key].append((tname, tgt, sec, ov, typ))
                target_funcs.setdefault(tname, set()).add(key)
                target_info[tname] = (tgt, sec, ov, typ)

    # report
    print("=== Per-function unresolved relocation targets ===")
    for key in sorted(unresolved_by_func):
        items = unresolved_by_func[key]
        print("\n%s :: %s  (%d unresolved)" % (key[0], key[1], len(items)))
        for (tname, tgt, sec, ov, typ) in items:
            print("    %-40s -> %s @0x%X  typ=0x%02X%s"
                  % (tname, sec, tgt or 0, typ, "  [OVERLAP]" if ov else ""))

    print("\n=== Unique unresolved targets (%d), by category ===" % len(target_info))
    cats = {}
    for tname, (tgt, sec, ov, typ) in target_info.items():
        if tname.startswith("$"):
            cat = "local-$"
        elif tname.startswith("__imp_"):
            cat = "import"
        elif tname.startswith("__real@") or tname.startswith("??_"):
            cat = "mangled-const"
        elif tgt == 0:
            cat = "abs-0"
        elif sec is None:
            cat = "no-section"
        elif ov:
            cat = "overlap-" + (sec or "?")
        else:
            cat = "clean-" + (sec or "?")
        cats.setdefault(cat, []).append(tname)
    for cat in sorted(cats):
        ts = sorted(set(cats[cat]))
        print("  %-18s %3d  : %s" % (cat, len(ts), ", ".join(ts[:8]) + (" ..." if len(ts) > 8 else "")))

    # which functions would be FULLY resolved by adding only clean .data/.rdata/.bss?
    print("\n=== Funcs whose ONLY unresolved targets are cleanly-labelable ===")
    fully = 0
    for key, items in unresolved_by_func.items():
        blockers = [it for it in items
                    if it[0].startswith("$") or it[0].startswith("__real@")
                    or it[0].startswith("??_")]
        if not blockers and items:
            fully += 1
    print("  %d / %d below-100 funcs (no $-local / mangled-const blocker)" % (fully, len(unresolved_by_func)))


if __name__ == "__main__":
    main()
