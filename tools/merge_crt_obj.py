#!/usr/bin/env python3
r"""merge_crt_obj.py - merge several CONSECUTIVE patched CRT objects into ONE COFF
object whose single `.text` section is their `.text` bytes concatenated in
ascending-address order.

WHY (the multi-object-split wall)
---------------------------------
dtk hard-requires every split to START on a 4-byte boundary. MSVC packs CRT
functions back-to-back with no inter-function padding, so most individual CRT
objects do NOT start on a 4-byte boundary and cannot be standalone splits
(scale_crt.py drops 144 such "misaligned" objects). dtk also has no native way
to feed several source objects into one split.

The fix: take a *run* of consecutive objects whose combined span begins on a
4-byte boundary, and synthesise ONE object that contains all their functions.
The dtk `copy_obj` rule then copies this merged object into a single split
[run_start (aligned) .. run_end]. objdiff compares the merged `.text` against
the binary's bytes over that whole range and normalises relocations, so every
function in the run is matched.

COFF MERGE MECHANICS
--------------------
Input objects are MSVC 6.0 COFF (machine 0x14C). Each function lives in its own
COMDAT `.text` section (multi-section objects are common). We:
  * Concatenate every `.text*` section body across all input objects, IN THE
    ORDER GIVEN (the caller passes objects in ascending link address). Record
    each input section's start offset within the merged `.text`.
  * Rebuild ONE symbol table:
      - `.text` section symbol (+ its aux: size = merged length, 0 relocs/lines)
      - every DEFINED external function symbol, value shifted by its section's
        offset within the merged `.text`
      - every symbol that a kept `.text` relocation TARGETS:
          . target defined in a `.text` section  -> keep as defined (shifted)
          . target external-undefined             -> keep as undefined external
          . target defined in a NON-.text section -> demote to undefined
            external (its real bytes live elsewhere in the binary; objdiff
            resolves the relocation by symbol NAME against symbols.txt). The
            section body is dropped.
    Symbols are de-duplicated by name; the merged relocation's SymbolTableIndex
    is remapped to the merged table.
  * Rebuild the `.text` relocation table: each input `.text` reloc with its
    VirtualAddress shifted by the section's merged offset and SymbolTableIndex
    remapped. Relocations are LEFT AS RELOCATIONS (objdiff normalises them).

We DROP `.data` / `.rdata` / `.bss` / `.debug$F` / `.drectve` / `.CRT$*`
section bodies entirely - only `.text` is laid into the split, and any symbol
they defined that a `.text` reloc needs is carried as an undefined external.

Output is a minimal, well-formed COFF: header, one `.text` section header,
`.text` body, relocation table, symbol table, string table.

STRICT: read-only on inputs. Writes only the single output .obj.

Usage (library - preferred, used by scale_crt.py):
    from merge_crt_obj import merge_objects
    merge_objects([Path('a.obj'), Path('b.obj'), ...], Path('out.obj'))

Usage (CLI, for debugging a single run):
    python tools/merge_crt_obj.py out.obj in1.obj in2.obj in3.obj
"""
import struct
import sys
from pathlib import Path

# COFF constants
IMAGE_FILE_MACHINE_I386 = 0x14C
IMAGE_SYM_CLASS_EXTERNAL = 2
IMAGE_SYM_CLASS_STATIC = 3
IMAGE_SCN_CNT_CODE = 0x00000020
IMAGE_SCN_MEM_EXECUTE = 0x20000000
IMAGE_SCN_MEM_READ = 0x40000000
# .text characteristics used by MSVC for a code section (align 4, code/exec/read).
# Alignment bits are irrelevant to objdiff's byte compare; we mirror the common
# 0x60500020 (CODE|EXECUTE|READ|ALIGN_16? ) but alignment does not matter here.
TEXT_FLAGS = IMAGE_SCN_CNT_CODE | IMAGE_SCN_MEM_EXECUTE | IMAGE_SCN_MEM_READ | 0x00500000


class Coff:
    """Parsed view of one COFF object (only what the merge needs)."""

    def __init__(self, data: bytes):
        self.d = data
        (self.machine, self.nsec, self.tstamp, self.symptr, self.nsym,
         self.optsz, self.chars) = struct.unpack_from("<HHIIIHH", data, 0)
        self.secoff = 20 + self.optsz
        self.strtab = self.symptr + self.nsym * 18
        # sections (1-based): name, rawptr, rawsize, relptr, nrel, flags
        self.sections = {}
        for i in range(self.nsec):
            b = self.secoff + i * 40
            name = data[b:b + 8]
            # section name may be /NNN ref into string table (long names)
            sname = self._secname(name)
            (vsize, vaddr, rawsize, rawptr, relptr, lnptr,
             nrel, nln, flags) = struct.unpack_from("<IIIIIIHHI", data, b + 8)
            self.sections[i + 1] = {
                "name": sname, "rawptr": rawptr, "rawsize": rawsize,
                "relptr": relptr, "nrel": nrel, "flags": flags,
            }
        # symbols: list of dicts, keyed by raw index (accounting aux records)
        self.symbols = {}      # raw_index -> dict(name, value, secnum, type, sclass, naux, aux_bytes)
        i = 0
        while i < self.nsym:
            rec = data[self.symptr + i * 18:self.symptr + i * 18 + 18]
            name = self._symname(rec)
            value, secnum, typ, sclass, naux = struct.unpack_from("<IhHBB", rec, 8)
            aux = data[self.symptr + (i + 1) * 18:self.symptr + (i + 1) * 18 + naux * 18]
            self.symbols[i] = {
                "name": name, "value": value, "secnum": secnum,
                "type": typ, "sclass": sclass, "naux": naux, "aux": aux,
            }
            i += 1 + naux

    def _secname(self, raw8: bytes) -> str:
        if raw8[:1] == b"/":
            off = int(raw8[1:].rstrip(b"\x00").decode("latin-1"))
            end = self.d.index(b"\x00", self.strtab + off)
            return self.d[self.strtab + off:end].decode("latin-1")
        return raw8.rstrip(b"\x00").decode("latin-1")

    def _symname(self, rec: bytes) -> str:
        if rec[:4] == b"\x00\x00\x00\x00":
            off = struct.unpack_from("<I", rec, 4)[0]
            end = self.d.index(b"\x00", self.strtab + off)
            return self.d[self.strtab + off:end].decode("latin-1")
        return rec[:8].rstrip(b"\x00").decode("latin-1")

    def text_secnums(self):
        return [n for n, s in self.sections.items() if s["name"].startswith(".text")]


class CoffWriter:
    """Builds a minimal single-.text COFF object."""

    def __init__(self):
        self.text = bytearray()
        self.relocs = []          # (va, sym_name, type)
        # symbol order is significant; we keep insertion order and a name->index map
        self._syms = []           # list of dicts(name, value, secnum, type, sclass)
        self._name2idx = {}

    def add_text(self, body: bytes) -> int:
        off = len(self.text)
        self.text.extend(body)
        return off

    def place_text(self, body: bytes, off: int, pad_byte: int = 0xCC):
        """Write `body` at byte offset `off` within .text, padding any gap with
        pad_byte (int3). Used to reproduce the binary's exact inter/intra-object
        linker padding so the merged .text is byte-identical to the binary range."""
        if off < len(self.text):
            raise ValueError(f"place_text: offset 0x{off:X} < current len 0x{len(self.text):X} (overlap)")
        if off > len(self.text):
            self.text.extend(bytes([pad_byte]) * (off - len(self.text)))
        self.text.extend(body)

    def add_reloc(self, va: int, sym_name: str, typ: int):
        self.relocs.append((va, sym_name, typ))

    def ensure_sym(self, name, value=0, secnum=0, typ=0,
                   sclass=IMAGE_SYM_CLASS_EXTERNAL):
        """Insert (or fetch) an external/defined symbol; return its index.

        If the symbol already exists undefined and we now have a definition,
        upgrade it in place (defined wins)."""
        if name in self._name2idx:
            idx = self._name2idx[name]
            existing = self._syms[idx]
            if existing["secnum"] == 0 and secnum != 0:
                existing["value"] = value
                existing["secnum"] = secnum
                existing["type"] = typ
                existing["sclass"] = sclass
            return idx
        idx = len(self._syms)
        self._syms.append({"name": name, "value": value, "secnum": secnum,
                           "type": typ, "sclass": sclass})
        self._name2idx[name] = idx
        return idx

    def build(self) -> bytes:
        # Layout: header | section header(.text) | .text body | reloc table |
        #         symbol table | string table
        nsec = 1
        text_len = len(self.text)
        hdr_size = 20
        sechdr_size = 40
        text_off = hdr_size + nsec * sechdr_size
        reloc_off = text_off + text_len
        reloc_size = len(self.relocs) * 10
        symtab_off = reloc_off + reloc_size

        # Final symbol indices. The .text section symbol occupies index 0 and its
        # aux record index 1 (2 slots); collected symbols follow in order.
        SECTION_SYM_SLOTS = 2
        name2final = {".text": 0}
        for s in self._syms:
            name2final[s["name"]] = SECTION_SYM_SLOTS + self._name2idx[s["name"]]

        # --- string table (names > 8 chars) ---
        strtab = bytearray(b"\x00\x00\x00\x00")  # length placeholder (filled later)

        def name_field(name: str) -> bytes:
            b = name.encode("latin-1")
            if len(b) <= 8:
                return b + b"\x00" * (8 - len(b))
            off = len(strtab)
            strtab.extend(b + b"\x00")
            return struct.pack("<II", 0, off)

        # serialize symbol table
        symbuf = bytearray()
        nsym = 0
        # .text section symbol + aux
        symbuf += name_field(".text")
        symbuf += struct.pack("<IhHBB", 0, 1, 0, IMAGE_SYM_CLASS_STATIC, 1)
        nsym += 1
        # aux section definition (IMAGE_AUX_SYMBOL, exactly 18 bytes):
        #   Length(4) NumRelocs(2) NumLines(2) CheckSum(4) Number(2) Selection(1) Unused(3)
        aux = struct.pack("<IHHIHB", text_len, len(self.relocs) & 0xFFFF,
                          0, 0, 0, 0) + b"\x00\x00\x00"
        assert len(aux) == 18, len(aux)
        symbuf += aux
        nsym += 1
        # the rest
        for s in self._syms:
            symbuf += name_field(s["name"])
            symbuf += struct.pack("<IhHBB", s["value"] & 0xFFFFFFFF,
                                  s["secnum"], s["type"], s["sclass"], 0)
            nsym += 1

        # finalize string table length
        struct.pack_into("<I", strtab, 0, len(strtab))

        # --- relocation table (after we know final symbol indices) ---
        relbuf = bytearray()
        for va, sym_name, typ in self.relocs:
            sidx = name2final[sym_name]
            relbuf += struct.pack("<IIH", va, sidx, typ)

        # --- section header ---
        sechdr = bytearray()
        sechdr += b".text\x00\x00\x00"
        sechdr += struct.pack("<IIIIIIHHI",
                              0,                # VirtualSize
                              0,                # VirtualAddress
                              text_len,         # SizeOfRawData
                              text_off,         # PointerToRawData
                              reloc_off if self.relocs else 0,  # PointerToRelocations
                              0,                # PointerToLinenumbers
                              len(self.relocs) & 0xFFFF,        # NumberOfRelocations
                              0,                # NumberOfLinenumbers
                              TEXT_FLAGS)       # Characteristics

        # --- COFF header ---
        out = bytearray()
        out += struct.pack("<HHIIIHH",
                           IMAGE_FILE_MACHINE_I386,
                           nsec,
                           0,                # TimeDateStamp
                           symtab_off,       # PointerToSymbolTable
                           nsym,             # NumberOfSymbols
                           0,                # SizeOfOptionalHeader
                           0)                # Characteristics
        out += sechdr
        out += self.text
        out += relbuf
        out += symbuf
        out += strtab
        return bytes(out)


def _section_signature(coff, sn):
    """Return (bytes, mask) for one .text section: body with every relocation
    site (4 bytes) wildcarded - so it can be uniquely located in the binary
    even though its absolute/relative operands were fixed up by the linker."""
    s = coff.sections[sn]
    body = coff.d[s["rawptr"]:s["rawptr"] + s["rawsize"]] if s["rawptr"] else b"\x00" * s["rawsize"]
    mask = bytearray(b"\x01" * len(body))
    for r in range(s["nrel"]):
        va, sidx, typ = struct.unpack_from("<IIH", coff.d, s["relptr"] + r * 10)
        for k in range(4):
            if va + k < len(mask):
                mask[va + k] = 0
    return bytes(body), bytes(mask)


def _masked_find(haystack, body, mask, lo=None, hi=None):
    """Find the unique offset where (body, mask) matches haystack. If lo/hi are
    given (haystack-relative byte offsets), only matches whose start is within
    [lo, hi] count - this confines an unlabeled section's search to its object's
    footprint so a short common COMDAT cannot false-match far away. Returns the
    offset, or None if zero or >1 in-window matches (ambiguous)."""
    n = len(body)
    if n == 0:
        return None
    # anchor on the longest literal (unmasked) run for speed
    best_s = best_l = cur_s = cur_l = 0
    for i in range(n):
        if mask[i]:
            if cur_l == 0:
                cur_s = i
            cur_l += 1
            if cur_l > best_l:
                best_l, best_s = cur_l, cur_s
        else:
            cur_l = 0
    if best_l < 4:
        return None
    anchor = body[best_s:best_s + best_l]
    hits = []
    pos = 0
    while True:
        idx = haystack.find(anchor, pos)
        if idx < 0:
            break
        start = idx - best_s
        pos = idx + 1
        if start < 0 or start + n > len(haystack):
            continue
        if lo is not None and not (lo <= start <= hi):
            continue
        ok = all((not mask[i]) or haystack[start + i] == body[i] for i in range(n))
        if ok:
            hits.append(start)
            if len(hits) > 1:
                return None
    return hits[0] if len(hits) == 1 else None


def object_span(obj_path, name2addr, binary=None):
    """Compute one patched object's TRUE binary .text span, anchoring every
    .text COMDAT section (including unlabeled statics) to its VA.

    Returns dict {lo, hi, sections:[(VA,size)], n_funcs, unanchored:bool}.
    `lo`/`hi` are the min section VA and max (VA+size) - this includes static
    helper COMDATs that extend past the last labeled function (the reason a
    label-only span undercounts and runs collide). Raises ValueError if a
    section cannot be anchored at all (no symbol AND no unique binary match)."""
    coff = Coff(Path(obj_path).read_bytes())
    tsecs = coff.text_secnums()
    if not tsecs:
        raise ValueError(f"{obj_path}: no .text section")
    bin_bytes = bin_base = None
    if binary is not None:
        bin_bytes, bin_base = binary
    sec_syms = {}
    for idx, sym in coff.symbols.items():
        if (sym["secnum"] in tsecs and sym["naux"] == 0
                and sym["sclass"] in (IMAGE_SYM_CLASS_EXTERNAL, IMAGE_SYM_CLASS_STATIC)):
            sec_syms.setdefault(sym["secnum"], []).append(sym)
    anchors, unl = _anchor_sections(coff, tsecs, sec_syms, name2addr,
                                    bin_bytes, bin_base)
    n_funcs = sum(1 for syms in sec_syms.values() for sym in syms
                  if sym["type"] == 0x20 and sym["sclass"] == IMAGE_SYM_CLASS_EXTERNAL)
    sections = [(anchors[sn], coff.sections[sn]["rawsize"]) for sn in tsecs]
    lo = min(a for a, _ in sections)
    hi = max(a + sz for a, sz in sections)
    return {"lo": lo, "hi": hi, "sections": sections, "n_funcs": n_funcs,
            "n_unlabeled": unl}


def _anchor_sections(coff, tsecs, sec_syms, name2addr, bin_bytes, bin_base):
    """Anchor every .text section to its VA. Two passes: (1) labeled sections via
    symbols.txt; (2) unlabeled sections via masked binary search CONFINED to a
    window around the labeled footprint (so short common COMDATs can't
    false-match elsewhere). Returns ({secnum: VA}, n_unlabeled_anchored).
    Raises ValueError if any section stays unanchored."""
    anchors = {}
    for sn in tsecs:
        for sym in sec_syms.get(sn, []):
            if sym["name"] in name2addr:
                cand = name2addr[sym["name"]] - sym["value"]
                anchors.setdefault(sn, cand)
    labeled = list(anchors.values())
    unl = 0
    if len(anchors) < len(tsecs):
        if bin_bytes is None:
            raise ValueError(f"unlabeled section without binary to anchor")
        # window: object footprint padded generously (objects are < a few KB).
        W = 0x1000
        if labeled:
            wlo = min(labeled) - bin_base - W
            whi = max(labeled) - bin_base + W
        else:
            wlo = whi = None
        for sn in tsecs:
            if sn in anchors:
                continue
            body, mask = _section_signature(coff, sn)
            off = _masked_find(bin_bytes, body, mask,
                               lo=max(0, wlo) if wlo is not None else None,
                               hi=whi if whi is not None else None)
            if off is None and wlo is not None:
                # retry unconfined only if there were NO labeled sections to bound
                pass
            if off is None:
                raise ValueError(f"section {sn} unanchored (no symbol, no unique in-window match)")
            anchors[sn] = bin_base + off
            unl += 1
    return anchors, unl


def collect_sections(obj_path, name2addr, binary=None):
    """Anchor every .text section of one object and return placeable section
    descriptors: list of dicts {coff, secnum, va, size, syms}. `syms` are the
    defined function/label symbols in that section. Raises ValueError if any
    section cannot be anchored (caller decides whether to skip the object)."""
    coff = Coff(Path(obj_path).read_bytes())
    if coff.machine != IMAGE_FILE_MACHINE_I386:
        raise ValueError(f"{obj_path}: not i386 COFF")
    tsecs = coff.text_secnums()
    if not tsecs:
        raise ValueError(f"{obj_path}: no .text section")
    bin_bytes = bin_base = None
    if binary is not None:
        bin_bytes, bin_base = binary
    sec_syms = {}
    for idx, sym in coff.symbols.items():
        if (sym["secnum"] in tsecs and sym["naux"] == 0
                and sym["sclass"] in (IMAGE_SYM_CLASS_EXTERNAL, IMAGE_SYM_CLASS_STATIC)):
            sec_syms.setdefault(sym["secnum"], []).append(sym)
    anchors, _ = _anchor_sections(coff, tsecs, sec_syms, name2addr, bin_bytes, bin_base)
    out = []
    for sn in tsecs:
        out.append({"coff": coff, "secnum": sn, "va": anchors[sn],
                    "size": coff.sections[sn]["rawsize"],
                    "syms": sec_syms.get(sn, [])})
    return out


def merge_sections(secs, out_path, run_start, run_end, binary):
    """Merge an explicit list of section descriptors (from collect_sections())
    into one ADDRESS-PLACED COFF whose `.text` spans [run_start, run_end].

    Each section is laid at (va - run_start); gaps (linker padding AND any
    non-included bytes) are filled from the BINARY so the merged `.text` is
    byte-identical to the binary over the whole split. Relocations are kept and
    remapped (objdiff normalises them). Returns a diagnostics dict; raises
    ValueError on a structural problem (caller drops the run)."""
    bin_bytes, bin_base = binary
    w = CoffWriter()
    n_funcs = 0

    def fill_to(off):
        if off <= len(w.text):
            return
        seg = bin_bytes[(run_start - bin_base) + len(w.text):(run_start - bin_base) + off]
        w.text.extend(seg)
        if len(w.text) < off:
            w.text.extend(b"\xCC" * (off - len(w.text)))

    covered_end = 0          # bytes [0, covered_end) of .text already laid down
    placed_relocs = set()    # (off, name, typ) to avoid duplicate relocs at folded addrs
    for sd in sorted(secs, key=lambda d: (d["va"], -d["size"])):
        coff = sd["coff"]
        sn = sd["secnum"]
        s = coff.sections[sn]
        off = sd["va"] - run_start
        if off < 0:
            raise ValueError(f"section VA 0x{sd['va']:X} < run_start 0x{run_start:X}")
        body = coff.d[s["rawptr"]:s["rawptr"] + s["rawsize"]] if s["rawptr"] else b"\x00" * s["rawsize"]
        # Verify this section's non-relocation bytes against the binary. A
        # mismatch means it is the WRONG variant of a duplicate function (the
        # same name compiled into two objects, only one of which the linker kept)
        # or a bad anchor - skip it entirely. The correct duplicate (or binary
        # gap-fill) covers those bytes.
        relmask = set()
        for r in range(s["nrel"]):
            v = struct.unpack_from("<IIH", coff.d, s["relptr"] + r * 10)[0]
            relmask.update(range(v, v + 4))
        bin_at = bin_bytes[(sd["va"] - bin_base):(sd["va"] - bin_base) + len(body)]
        if any(i not in relmask and body[i] != bin_at[i] for i in range(len(body))):
            continue
        # Duplicate / COMDAT-folded section already placed at this VA: emit only
        # its symbols/relocs into the existing bytes, do not re-place.
        overlap = off < covered_end
        if not overlap:
            fill_to(off)
            w.place_text(body, off)
            covered_end = max(covered_end, off + len(body))
        # symbols in this section (always emitted - folded names share the bytes)
        for sym in sd["syms"]:
            w.ensure_sym(sym["name"], value=off + sym["value"], secnum=1,
                         typ=sym["type"], sclass=IMAGE_SYM_CLASS_EXTERNAL)
            if sym["type"] == 0x20 and sym["sclass"] == IMAGE_SYM_CLASS_EXTERNAL:
                n_funcs += 1
        # relocations for this section (skip if this is a folded duplicate whose
        # reloc site is already represented).
        for r in range(s["nrel"]):
            va, sidx, typ = struct.unpack_from("<IIH", coff.d, s["relptr"] + r * 10)
            target = coff.symbols.get(sidx)
            if target is None:
                raise ValueError(f"reloc -> aux/missing sym index {sidx}")
            tname = target["name"]
            key = (off + va, tname, typ)
            if overlap and key in placed_relocs:
                continue
            # A reloc target is carried as an undefined external by NAME; objdiff
            # resolves it via symbols.txt against the binary's relocation. (Keeping
            # in-run targets as undefined-by-name matches objdiff's expectation
            # better than synthesising defined-local symbols.)
            w.ensure_sym(tname, value=0, secnum=0, typ=0,
                         sclass=IMAGE_SYM_CLASS_EXTERNAL)
            w.add_reloc(off + va, tname, typ)
            placed_relocs.add(key)

    total = run_end - run_start
    if len(w.text) > total:
        raise ValueError(f"merged .text 0x{len(w.text):X} exceeds run span 0x{total:X}")
    fill_to(total)

    # Byte-exactness self-check: every NON-relocation byte of the merged .text
    # must equal the binary over [run_start, run_end]. A mismatch means a section
    # was anchored to the wrong VA (bad masked match) - the run is unsafe.
    relsites = set()
    for off, _name, _typ in w.relocs:
        relsites.update(range(off, off + 4))
    binslice = bin_bytes[(run_start - bin_base):(run_start - bin_base) + total]
    bad = [i for i in range(min(len(w.text), len(binslice)))
           if i not in relsites and w.text[i] != binslice[i]]
    if bad:
        raise ValueError("byte-exact check failed: %d non-reloc diffs (first VA 0x%X)"
                         % (len(bad), run_start + bad[0]))

    Path(out_path).write_bytes(w.build())
    return {"text_len": len(w.text), "n_funcs": n_funcs,
            "n_relocs": len(w.relocs),
            "n_undef": sum(1 for s in w._syms if s["secnum"] == 0),
            "n_syms": len(w._syms)}


def merge_objects(in_paths, out_path, name2addr, run_start, run_end=None,
                  binary=None):
    """Convenience wrapper: merge WHOLE objects (all their .text sections) into
    one split [run_start, run_end]. Used by the CLI / single-run debugging.
    For production placement use collect_sections() + merge_sections() so a
    scattered object contributes only the sections inside the run."""
    if binary is None:
        raise ValueError("merge_objects requires binary for anchoring + gap fill")
    secs = []
    for p in in_paths:
        secs.extend(collect_sections(p, name2addr, binary))
    if run_end is None:
        run_end = max(d["va"] + d["size"] for d in secs)
    return merge_sections(secs, out_path, run_start, run_end, binary)


def _load_symbols_txt(path):
    import re
    name2addr = {}
    for line in Path(path).read_text(encoding="latin-1").splitlines():
        m = re.match(r"\s*(\S+)\s*=\s*\.text:0x([0-9A-Fa-f]+);", line)
        if m:
            name2addr[m.group(1)] = int(m.group(2), 16)
    return name2addr


def load_binary_text(exe_path):
    """Return (text_bytes, text_base_VA) for a PE's .text section."""
    import pefile
    pe = pefile.PE(str(exe_path), fast_load=True)
    ib = pe.OPTIONAL_HEADER.ImageBase
    t = [s for s in pe.sections if s.Name.startswith(b".text")][0]
    raw = Path(exe_path).read_bytes()
    body = raw[t.PointerToRawData:t.PointerToRawData + t.SizeOfRawData]
    return body, ib + t.VirtualAddress


def main():
    import argparse
    DTK_ = Path(__file__).resolve().parent.parent
    ap = argparse.ArgumentParser(description="merge consecutive CRT .objs into one address-placed COFF")
    ap.add_argument("out", help="output merged .obj")
    ap.add_argument("ins", nargs="+", help="input patched .objs in ascending address order")
    ap.add_argument("--symbols", default=str(DTK_ / "config" / "BW1E142" / "symbols.txt"))
    ap.add_argument("--exe", default=str(DTK_ / "orig" / "BW1E142" / "runblack-decrypted.exe"),
                    help="target binary for masked anchoring + exact gap fill")
    ap.add_argument("--run-start", type=lambda x: int(x, 0), required=True,
                    help="VA of the split start (4-byte aligned)")
    ap.add_argument("--run-end", type=lambda x: int(x, 0), default=None,
                    help="VA of the split end")
    args = ap.parse_args()
    name2addr = _load_symbols_txt(args.symbols)
    binary = load_binary_text(args.exe) if Path(args.exe).exists() else None
    info = merge_objects([Path(p) for p in args.ins], args.out, name2addr,
                         args.run_start, args.run_end, binary=binary)
    print(f"wrote {args.out}: {info}")


if __name__ == "__main__":
    main()
