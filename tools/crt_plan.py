#!/usr/bin/env python3
r"""crt_plan.py - per-function feasibility plan for the CRT WALL-2 residual.

Classifies every unresolved reloc target of each <100% crt_merge function into
the resolution buckets, then tells us which functions become 100% if we apply a
given label set. The point: a function only reaches 100% when EVERY one of its
unresolved targets is resolved, so we need the per-function blocker profile.

Buckets per target:
  CLEAN    - free address, add a plain label (no size).
  IMPALIAS - __imp__X@N where __imp__X already exists at that addr (add alias).
  ABS0     - __except_list -> ABS:0.
  TEXTX    - .text target with an EXACT existing symbol (add alias label).
  TEXTNEW  - .text target with no existing symbol (would need a .text label).
  INTERIOR - inside an existing sized/extent symbol (cannot sub-label safely).
  LOCAL    - $-prefixed compiler local (cannot be global).
Read-only; prints a plan + the achievable function count under chosen buckets.
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
from crt_cat import all_symbols
from crt_diag import func_ranges


def classify(targets_with_addr, syms):
    """targets_with_addr: dict name->addr. syms: all_symbols(). Return name->bucket."""
    name2addr = {n: v[0] for n, v in syms.items()}
    by_addr = {}
    for n, (a, s, sz) in syms.items():
        by_addr.setdefault(a, []).append(n)
    sec_syms = {}
    for n, (a, s, sz) in syms.items():
        sec_syms.setdefault(s, []).append((a, sz, n))
    extents = []
    for s, lst in sec_syms.items():
        lst.sort()
        for i, (a, sz, n) in enumerate(lst):
            if sz:
                extents.append((a, a + sz, n))
            elif i + 1 < len(lst):
                extents.append((a, lst[i + 1][0], n))
    extents.sort()

    def covering(addr):
        best = None
        for lo, hi, n in extents:
            if lo <= addr < hi:
                best = (n, lo, hi)
        return best

    secs = pe_sections()

    def secof(va):
        for lo, hi, nm in secs:
            if lo <= va < hi:
                return nm
        return None

    out = {}
    for nm, addr in targets_with_addr.items():
        if nm.startswith("$"):
            out[nm] = "LOCAL"; continue
        if addr == 0:
            out[nm] = "ABS0" if nm == "__except_list" else "LOCAL"; continue
        sec = secof(addr)
        if sec == ".text":
            ex = [n for n in by_addr.get(addr, [])]
            out[nm] = "TEXTX" if ex else "TEXTNEW"
            continue
        if addr in by_addr:
            # exact existing data symbol -> alias (covers __imp__ decoration)
            out[nm] = "IMPALIAS" if nm.startswith("__imp_") else "DATAALIAS"
            continue
        cov = covering(addr)
        if cov and addr != cov[1]:
            out[nm] = "INTERIOR"
        else:
            out[nm] = "CLEAN"
    return out


def main():
    syms = all_symbols()
    name2addr = {n: v[0] for n, v in syms.items()}
    bb, base = load_binary_text(EXE)
    secs = pe_sections()

    # gather per-function unresolved targets
    import json
    rep = json.load(open(DTK / "rep.json"))
    below = {}
    for u in rep.get("units", []):
        n = u.get("name") or ""
        if "crt_merge" in n:
            below[n.split("/")[-1]] = {f["name"] for f in u.get("functions", [])
                                       if (f.get("fuzzy_match_percent") or 0) < 100}

    func_targets = {}   # (unit,func) -> {tname: addr}
    all_targets = {}
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
            func_targets[key] = {}
            for (va, tname, typ) in relocs:
                if not (start <= va < end) or not tname or tname in name2addr:
                    continue
                site = run_start + va
                pos = site - base
                tgt = None
                if 0 <= pos + 4 <= len(bb):
                    if typ in (0x06, 0x07):
                        tgt = struct.unpack_from("<I", bb, pos)[0]
                    elif typ == 0x14:
                        tgt = (site + 4 + struct.unpack_from("<i", bb, pos)[0]) & 0xFFFFFFFF
                func_targets[key][tname] = tgt or 0
                all_targets[tname] = tgt or 0

    buckets = classify(all_targets, syms)

    # per-function blocker profile
    print("=== Per-function blocker profile ===")
    feasible_buckets_safe = {"CLEAN", "IMPALIAS", "DATAALIAS", "ABS0", "TEXTX"}
    feasible_with_textnew = feasible_buckets_safe | {"TEXTNEW"}
    cnt_safe = cnt_textnew = 0
    profiles = {}
    for key in sorted(func_targets):
        bset = {}
        for tname in func_targets[key]:
            b = buckets[tname]
            bset[b] = bset.get(b, 0) + 1
        profiles[key] = bset
        blockers_safe = {b for b in bset if b not in feasible_buckets_safe}
        blockers_textnew = {b for b in bset if b not in feasible_with_textnew}
        tag = ""
        if not bset:
            tag = "(already resolved?)"
        elif not blockers_safe:
            tag = "FEASIBLE-SAFE"; cnt_safe += 1
        elif not blockers_textnew:
            tag = "feasible-if-text"; cnt_textnew += 1
        else:
            tag = "BLOCKED by " + ",".join(sorted(blockers_safe))
        print("  %-50s %s  %s" % (key[1][:48], dict(sorted(bset.items())), tag))

    print("\nFEASIBLE with safe buckets {CLEAN,IMPALIAS,DATAALIAS,ABS0,TEXTX}: %d" % cnt_safe)
    print("ADDITIONALLY feasible if we also add TEXTNEW labels: %d" % cnt_textnew)

    from collections import Counter
    bc = Counter(buckets.values())
    print("\nbucket totals:", dict(bc))


if __name__ == "__main__":
    main()
