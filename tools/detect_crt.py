#!/usr/bin/env python3
r"""detect_crt.py - PROTOTYPE object-anchoring libcmt detector.

Identify which CRT functions sit at which addresses in a runblack binary, using
the exact MSVC 6.0 SP5 LIBCMT.LIB / LIBCPMT.LIB as ground truth. This recovers
CRT functions that are *unlabeled* in symbols.txt (so they can be linked) and is
the basis for labeling CRT across versions the maintainer has not touched.

METHOD (object-anchoring + relocation masking)
----------------------------------------------
A CRT .obj from LIBCMT.LIB contains its functions' exact bytes + a COFF
relocation table telling you precisely which bytes are relocations (absolute /
relative addresses the linker fixed up). We build a *signature* = the obj's
.text bytes with every relocation-site's 4 bytes WILDCARDED, then scan the
target binary's .text for that masked block. A hit is near-unique because it is
the whole object (often several functions), not a single short function.

On a hit at address A: label EVERY function the obj defines at
    A + (the function's offset within the obj's concatenated .text).
This is the key trick - anchor once, get all the obj's functions, even ones
with weak / generic individual signatures (matching srand.obj via the relocated
_srand body also recovers _rand for free, since they are adjacent COMDATs).

MSVC 6 COFF detail (verified on rand.obj):
  * Each function lives in its OWN COMDAT `.text` section (value=0 within it).
  * In the final binary the obj's sections are laid out contiguously in obj
    order, so concatenating the obj's `.text` sections (in order) and masking
    reloc sites yields the exact byte block to search for.
  * Reloc types seen: 0x06 IMAGE_REL_I386_DIR32 (abs), 0x14 IMAGE_REL_I386_REL32
    (rel call/jmp), 0x07 DIR32NB. All consume 4 bytes -> wildcard 4 bytes.

The same LIBCMT.LIB is used across game versions, so one signature set works
for v1.0 / v1.1 / v1.41.

STRICT: read-only. Writes ONLY docs/port-banks/crt_detected.txt (via --out).
Does NOT build / configure / commit / edit splits/symbols/configure.

Usage:
  python tools/detect_crt.py                 # detect + write proposal + validate
  python tools/detect_crt.py --report-only   # do not write the proposal file
  python tools/detect_crt.py --exe <path>    # override target binary
"""
import argparse
import os
import re
import struct
import subprocess
import sys
import tempfile
from pathlib import Path

DTK = Path(__file__).resolve().parent.parent
DECOMP = DTK.parent / "bw1-decomp"
CMAKELISTS = DECOMP / "CMakeLists.txt"
LLVM_BIN = DECOMP / "cmake-build-presets" / "objdiff" / "_deps" / "llvm_binaries-src" / "bin"
LLVM_AR = LLVM_BIN / "llvm-ar.exe"
LIB_DIR = DECOMP / "src" / "lib"
VERSION = "BW1E142"
EXE = DTK / "orig" / VERSION / "runblack-decrypted.exe"
SYMBOLS = DTK / "config" / VERSION / "symbols.txt"
OUT = DTK / "docs" / "port-banks" / "crt_detected.txt"

# COFF reloc types whose site is a 4-byte fixup we must wildcard.
REL4 = {0x06, 0x07, 0x14, 0x0A, 0x0B}  # DIR32, DIR32NB, REL32, TOKEN, SECREL


# --------------------------------------------------------------------------- #
# 1. Parse the authoritative CRT object list from bw1-decomp CMakeLists.
# --------------------------------------------------------------------------- #
def parse_cmake():
    """Return [{name, obj, lib}] for every add_patched_static_lib_object()."""
    txt = CMAKELISTS.read_text(encoding="utf-8")
    out = []
    for m in re.finditer(r"add_patched_static_lib_object\(([^\n]*)\)", txt):
        toks = re.findall(r'"[^"]*"|\S+', m.group(1))
        toks = [t[1:-1] if t.startswith('"') and t.endswith('"') else t for t in toks]
        lib = toks[0]
        obj = os.path.basename(toks[1].replace("\\", "/"))
        name = obj[:-4] if obj.lower().endswith(".obj") else obj
        out.append({"name": name, "obj": obj, "lib": lib})
    return out


# --------------------------------------------------------------------------- #
# 2. Extract one object via llvm-ar (same as make_crt_obj.py step 1).
# --------------------------------------------------------------------------- #
def extract(rec, work):
    lib = LIB_DIR / f"{rec['lib']}.LIB"
    p = subprocess.run(
        [str(LLVM_AR), "--format=coff", "--output", str(work), "x", str(lib), rec["obj"]],
        capture_output=True, text=True)
    raw = work / rec["obj"]
    if p.returncode != 0 or not raw.exists():
        return None, (p.stdout + p.stderr).strip()
    return raw.read_bytes(), ""


# --------------------------------------------------------------------------- #
# 3. COFF parse -> masked signature + per-function offsets.
# --------------------------------------------------------------------------- #
def build_signature(d):
    """Parse a raw COFF .obj.

    Returns dict with:
      sig   : bytes of all .text sections concatenated in obj order
      mask  : bytearray (1 = compare this byte, 0 = wildcard) same length as sig
      funcs : list of (symbol_name, offset_within_sig) for defined ext .text syms
      n_text_sections, n_relocs_masked
    or None if the obj defines no .text bytes.
    """
    machine, nsec, _t, symptr, nsym, optsz, _ch = struct.unpack_from("<HHIIIHH", d, 0)
    if nsec == 0:
        return None
    secoff = 20 + optsz
    # Per-section info, indexed by 1-based section number.
    sec_info = {}          # secnum -> (name, rawptr, rawsize, relptr, nrel)
    text_order = []        # list of secnum for .text sections, in file order
    for i in range(nsec):
        b = secoff + i * 40
        name = d[b:b + 8].rstrip(b"\x00").decode("latin-1")
        vsize, vaddr, rawsize, rawptr, relptr, lnptr, nrel, nln, chars = \
            struct.unpack_from("<IIIIIIHHI", d, b + 8)
        secnum = i + 1
        sec_info[secnum] = (name, rawptr, rawsize, relptr, nrel)
        if name.startswith(".text"):
            text_order.append(secnum)
    if not text_order:
        return None

    # Concatenate .text section bytes in file order; record each section's start
    # offset within the concatenated signature.
    sig = bytearray()
    mask = bytearray()
    sec_start = {}         # secnum -> start offset in sig
    n_relocs = 0
    for secnum in text_order:
        name, rawptr, rawsize, relptr, nrel = sec_info[secnum]
        sec_start[secnum] = len(sig)
        body = d[rawptr:rawptr + rawsize]
        sig.extend(body)
        m = bytearray(b"\x01" * rawsize)
        base = len(sig) - rawsize
        for r in range(nrel):
            rb = relptr + r * 10
            va, sidx, typ = struct.unpack_from("<IIH", d, rb)
            if typ in REL4 and va + 4 <= rawsize:
                for k in range(4):
                    m[va + k] = 0
                n_relocs += 1
            elif va + 4 <= rawsize:
                # Unknown reloc type: mask 4 bytes defensively.
                for k in range(4):
                    m[va + k] = 0
                n_relocs += 1
        mask.extend(m)

    # Symbol table -> defined external .text functions (name, offset in sig).
    strtab = symptr + nsym * 18

    def getname(rec):
        if rec[:4] == b"\x00\x00\x00\x00":
            off = struct.unpack_from("<I", rec, 4)[0]
            end = d.index(b"\x00", strtab + off)
            return d[strtab + off:end].decode("latin-1")
        return rec[:8].rstrip(b"\x00").decode("latin-1")

    funcs = []
    i = 0
    while i < nsym:
        rec = d[symptr + i * 18:symptr + i * 18 + 18]
        name = getname(rec)
        value, secnum, _typ, sclass, naux = struct.unpack_from("<IhHBB", rec, 8)
        # IMAGE_SYM_CLASS_EXTERNAL=2, defined (secnum>0), section is a .text we kept
        if secnum > 0 and sclass == 2 and secnum in sec_start:
            funcs.append((name, sec_start[secnum] + value))
        i += 1 + naux

    return {
        "sig": bytes(sig),
        "mask": bytes(mask),
        "funcs": funcs,
        "n_text_sections": len(text_order),
        "n_relocs_masked": n_relocs,
    }


# --------------------------------------------------------------------------- #
# 4. Masked search over the target .text.
# --------------------------------------------------------------------------- #
def find_masked(haystack, sig, mask, max_hits=8):
    """Return list of offsets where masked sig matches. Anchor on the first
    non-wildcard run >= 4 bytes for speed, then verify the full masked block."""
    n = len(sig)
    if n == 0:
        return []
    # Pick the longest contiguous run of compared bytes as the anchor literal.
    best_start, best_len = 0, 0
    cur_start, cur_len = 0, 0
    for i in range(n):
        if mask[i]:
            if cur_len == 0:
                cur_start = i
            cur_len += 1
            if cur_len > best_len:
                best_len, best_start = cur_len, cur_start
        else:
            cur_len = 0
    if best_len < 4:
        # Too few literal bytes to anchor cheaply; bail (would be non-unique).
        return None
    anchor = sig[best_start:best_start + best_len]
    hits = []
    pos = 0
    H = len(haystack)
    while True:
        idx = haystack.find(anchor, pos)
        if idx < 0:
            break
        start = idx - best_start
        pos = idx + 1
        if start < 0 or start + n > H:
            continue
        # Verify full masked block.
        ok = True
        win = haystack[start:start + n]
        for i in range(n):
            if mask[i] and win[i] != sig[i]:
                ok = False
                break
        if ok:
            hits.append(start)
            if len(hits) > max_hits:
                break
    return hits


# --------------------------------------------------------------------------- #
# symbols.txt -> name->addr (for RECALL validation).
# --------------------------------------------------------------------------- #
def load_symbols():
    name2addr = {}
    for line in SYMBOLS.read_text(encoding="latin-1").splitlines():
        m = re.match(r"\s*(\S+)\s*=\s*\.text:0x([0-9A-Fa-f]+);", line)
        if m:
            name2addr[m.group(1)] = int(m.group(2), 16)
    return name2addr


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--exe", type=Path, default=EXE, help="target decrypted exe")
    ap.add_argument("--out", type=Path, default=OUT, help="proposal output file")
    ap.add_argument("--report-only", action="store_true", help="do not write proposal")
    ap.add_argument("--limit", type=int, default=0, help="debug: only first N objs")
    args = ap.parse_args()

    for p in (LLVM_AR, CMAKELISTS, args.exe, SYMBOLS):
        if not Path(p).exists():
            sys.exit(f"missing input: {p}")

    # Read the target PE: ImageBase + .text VA / file range.
    import pefile
    pe = pefile.PE(str(args.exe), fast_load=True)
    image_base = pe.OPTIONAL_HEADER.ImageBase
    text = [s for s in pe.sections if s.Name.startswith(b".text")][0]
    text_va = image_base + text.VirtualAddress
    raw = args.exe.read_bytes()
    text_bytes = raw[text.PointerToRawData: text.PointerToRawData + text.SizeOfRawData]

    name2addr = load_symbols()
    objs = parse_cmake()
    if args.limit:
        objs = objs[:args.limit]

    work = Path(tempfile.mkdtemp(prefix="crt_detect_"))

    detected = {}                  # name -> VA  (deduped, first/confident wins)
    detected_src = {}              # name -> obj that detected it
    obj_unique = []                # objs with exactly one hit
    obj_multi = []                 # objs with >1 hit (ambiguous)
    obj_nohit = []                 # objs with 0 hits
    obj_extract_fail = []          # objs that did not extract / had no .text
    obj_weak = []                  # objs with too-few literal bytes to anchor

    for rec in objs:
        d, err = extract(rec, work)
        if d is None:
            obj_extract_fail.append((rec["name"], err[:80]))
            continue
        sg = build_signature(d)
        if sg is None or not sg["sig"]:
            obj_extract_fail.append((rec["name"], "no .text"))
            continue
        hits = find_masked(text_bytes, sg["sig"], sg["mask"])
        if hits is None:
            obj_weak.append(rec["name"])
            continue
        if len(hits) == 0:
            obj_nohit.append(rec["name"])
            continue
        if len(hits) > 1:
            obj_multi.append((rec["name"], len(hits)))
            continue
        # Unique, confident hit.
        obj_unique.append(rec["name"])
        base_off = hits[0]
        for fname, foff in sg["funcs"]:
            va = text_va + base_off + foff
            if fname in detected and detected[fname] != va:
                # conflict between two objs: keep first, note later
                continue
            detected[fname] = va
            detected_src.setdefault(fname, rec["name"])

    # ------------------------------------------------------------------ #
    # Write proposal.
    # ------------------------------------------------------------------ #
    lines = []
    lines.append("# crt_detected.txt - object-anchoring libcmt detector output")
    lines.append("# Generated by tools/detect_crt.py (PROTOTYPE, documentation-grade).")
    lines.append("# Method: masked-COFF object signature scan of the BW1E142 .text.")
    lines.append(f"# Target: {args.exe.name}  ImageBase=0x{image_base:X}  "
                 f".text VA=0x{text_va:X}")
    lines.append(f"# Confident (unique) obj matches: {len(obj_unique)} / {len(objs)}")
    lines.append(f"# Functions labeled: {len(detected)}")
    lines.append("#")
    lines.append("# format: NAME = .text:0xVA; // detected via <obj>")
    for name in sorted(detected, key=lambda n: detected[n]):
        lines.append(f"{name} = .text:0x{detected[name]:08X}; // detected via {detected_src[name]}.obj")
    if not args.report_only:
        args.out.parent.mkdir(parents=True, exist_ok=True)
        args.out.write_text("\n".join(lines) + "\n", encoding="utf-8")

    # ------------------------------------------------------------------ #
    # Validate: RECALL against already-labeled CRT symbols + conflicts.
    # ------------------------------------------------------------------ #
    exact, wrong, missed, conflicts = [], [], [], []
    for name, va in detected.items():
        if name in name2addr:
            if name2addr[name] == va:
                exact.append(name)
            else:
                wrong.append((name, va, name2addr[name]))
    # Of the symbols.txt CRT-ish labels overlapping detected funcs, what did we miss?
    # We only know "CRT-ish" as the union of names our objs define; report misses
    # for funcs we *should* have labeled (defined by a matched obj) but symbols.txt
    # has a different addr -> that's the 'wrong' bucket already. 'missed' = funcs
    # defined by an obj that got NO unique hit, yet are present in symbols.txt.
    detected_names = set(detected)

    newly = sorted(n for n in detected if n not in name2addr)

    # --- console report ---
    print("=" * 72)
    print("detect_crt.py - object-anchoring libcmt detector  (PROTOTYPE)")
    print("=" * 72)
    print(f"target            : {args.exe}")
    print(f"ImageBase         : 0x{image_base:X}")
    print(f".text VA / size   : 0x{text_va:X} / 0x{len(text_bytes):X}")
    print(f"CRT objs parsed   : {len(objs)}")
    print(f"  unique match    : {len(obj_unique)}")
    print(f"  multi-hit       : {len(obj_multi)}")
    print(f"  no hit          : {len(obj_nohit)}")
    print(f"  too-weak/anchor : {len(obj_weak)}")
    print(f"  extract/no-text : {len(obj_extract_fail)}")
    print(f"functions labeled : {len(detected)}")
    print()
    print("--- RECALL vs already-labeled CRT symbols ---")
    overlap = exact + [w[0] for w in wrong]
    print(f"labeled funcs also in symbols.txt : {len(overlap)}")
    print(f"  exact-address match             : {len(exact)}")
    print(f"  wrong-address (CONFLICT)        : {len(wrong)}")
    for n, got, want in wrong[:40]:
        print(f"    {n}: detected 0x{got:X} but symbols.txt 0x{want:X}")
    print()
    print(f"--- NEWLY recovered CRT functions (not in symbols.txt): {len(newly)} ---")
    for n in newly:
        print(f"  {n} = 0x{detected[n]:X}  (via {detected_src[n]}.obj)")
    print()
    if obj_multi:
        print(f"--- multi-hit objs ({len(obj_multi)}) [ambiguous, skipped] ---")
        for n, c in obj_multi:
            print(f"  {n}: {c} hits")
    if obj_nohit:
        print(f"--- no-hit objs ({len(obj_nohit)}) ---")
        print("  " + ", ".join(obj_nohit))
    if obj_weak:
        print(f"--- too-weak-to-anchor objs ({len(obj_weak)}) ---")
        print("  " + ", ".join(obj_weak))
    if obj_extract_fail:
        print(f"--- extract/no-text objs ({len(obj_extract_fail)}) ---")
        for n, e in obj_extract_fail:
            print(f"  {n}: {e}")
    if not args.report_only:
        print()
        print(f"wrote proposal: {args.out}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
