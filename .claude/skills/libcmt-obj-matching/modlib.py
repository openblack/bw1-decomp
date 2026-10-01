#!/usr/bin/env python3
"""modlib.py — locate and link LIBCMT/LIBCPMT objects verbatim into the module DLLs.

libobj.py drives the runblack.exe CRT; the module DLLs (LHAudio, LHMultiplayer,
LHLog — LHDialog links MSVCRTD dynamically) statically link their own copy of
the CRT, from a libcmt that is not necessarily the one runblack used. Their
splits start out empty, so instead of one object at a time this tool locates
every archive member in a DLL at once and writes the whole set.

  locate --version V --module M [--archive ID ...]   READ-ONLY. JSON report.
  apply  --version V --module M [--archive ID ...]   WRITE splits/symbols/configure.

Placement:
  * .text: each member's non-COMDAT code sections (reloc-masked, alignment
    padding wildcarded) are searched in the DLL .text. Ambiguous hits are
    resolved by consistency of their rel32 call targets with the members
    already placed, then by adjacency to them (the CRT is linked contiguously).
  * every other section (.data, .rdata, .bss, .CRT$X*): derived from the
    relocations of placed sections that point into it, then checked against
    the DLL bytes. Initialised data no relocation reaches falls back to a
    unique byte search.
A member is only `placed` when every loaded section was found and verified.
Members with COMMON symbols or COMDAT code are reported, not placed.

`--archive ID` names a configure.py static library id (e.g. libcmt, or the
version-specific id of the libcmt that module was linked with); the .lib is
read from build/lib/<ID>.lib, which `ninja` copies into place.
"""

import argparse
import json
import os
import re
import struct
import subprocess
import sys
from pathlib import Path

SELF_DIR = Path(__file__).resolve().parent
sys.path.insert(0, str(SELF_DIR))
from libobj import (  # noqa: E402
    CoffObj, masked_pattern, LLVM_AR, ROOT, REL_DIR32, REL_DIR32NB, REL_REL32,
    SCN_LNK_COMDAT,
)

SCN_CNT_UNINIT = 0x80
CACHE = ROOT / "build" / "modlib_cache"


def sec_align(chars):
    n = (chars >> 20) & 0xF
    return 1 << (n - 1) if n else 16


# --------------------------------------------------------------------------- #
# PE image                                                                    #
# --------------------------------------------------------------------------- #
class Image:
    def __init__(self, path):
        import pefile
        pe = pefile.PE(str(path), fast_load=True)
        self.base = pe.OPTIONAL_HEADER.ImageBase
        self.sections = []
        for s in pe.sections:
            name = s.Name.rstrip(b"\0").decode()
            va = self.base + s.VirtualAddress
            raw = s.get_data()[: s.SizeOfRawData]
            vsize = max(s.Misc_VirtualSize, len(raw))
            self.sections.append((name, va, vsize, raw))

    def section(self, name):
        for s in self.sections:
            if s[0] == name:
                return s
        return None

    def section_at(self, va):
        for s in self.sections:
            if s[1] <= va < s[1] + s[2]:
                return s
        return None

    def read(self, va, n):
        s = self.section_at(va)
        if s is None:
            return None
        off = va - s[1]
        data = s[3][off: off + n]
        return data + b"\0" * (n - len(data))

    def dword(self, va):
        d = self.read(va, 4)
        return None if d is None else struct.unpack("<I", d)[0]


# --------------------------------------------------------------------------- #
# config helpers                                                              #
# --------------------------------------------------------------------------- #
def module_dll(version, module):
    text = (ROOT / "config" / version / "config.yml").read_text()
    for block in text.split("\n- ")[1:]:
        m_obj = re.search(r"object:\s*(\S+)", block)
        m_name = re.search(r"name:\s*(\S+)", block)
        if m_name and m_name.group(1) == module:
            return ROOT / "orig" / version / m_obj.group(1)
    raise SystemExit(f"module {module} not in config/{version}/config.yml")


def sym_path(version, module):
    return ROOT / "config" / version / module / "symbols.txt"


def split_path(version, module):
    return ROOT / "config" / version / module / "splits.txt"


SYM_RE = re.compile(r"^(?P<name>\S+) = (?P<sec>\.[^:]+):0x(?P<addr>[0-9A-Fa-f]+);(?P<rest>.*)$")


def load_symbols(version, module):
    out = []
    for i, line in enumerate(sym_path(version, module).read_text().splitlines()):
        m = SYM_RE.match(line)
        if not m:
            continue
        size = re.search(r"size:0x([0-9A-Fa-f]+)", m.group("rest"))
        out.append({
            "line": i, "name": m.group("name"), "sec": m.group("sec"),
            "addr": int(m.group("addr"), 16),
            "size": int(size.group(1), 16) if size else None,
            "rest": m.group("rest"),
        })
    return out


# --------------------------------------------------------------------------- #
# archive members                                                             #
# --------------------------------------------------------------------------- #
def lib_path(archive):
    return ROOT / "build" / "lib" / f"{archive}.lib"


_CHECKED = set()


def check_lib(version, archive):
    """build/lib/<id>.lib is shared by every version (configure.py's
    static_libs maps the id per version); refuse a copy from another version."""
    if (version, archive) in _CHECKED:
        return
    text = (ROOT / "configure.py").read_text()
    m = re.search(r'"%s":\s*(\{[^}]*\})' % version, text[text.index("config.static_libs"):])
    libs = eval(m.group(1)) if m else {}
    if archive not in libs:
        raise SystemExit(f"{archive} is not a static library of {version} in configure.py")
    package, _, name = libs[archive].partition(":")
    want = ROOT / "orig" / "libs" / package / f"{name or archive}.lib"
    if lib_path(archive).read_bytes() != want.read_bytes():
        raise SystemExit(f"{lib_path(archive)} is not {want}: configure.py --version {version} "
                         f"and `ninja {lib_path(archive).relative_to(ROOT)}` first")
    _CHECKED.add((version, archive))


def members(archive):
    lib = lib_path(archive)
    if not lib.exists():
        raise SystemExit(f"{lib} missing: run ninja once so it is copied into place")
    names = subprocess.run([str(LLVM_AR), "t", str(lib)], capture_output=True,
                           text=True, check=True).stdout.splitlines()
    cache = CACHE / archive
    out = []
    for name in names:
        if not name.lower().endswith(".obj"):
            continue
        dst = cache / name.replace("\\", "/").lstrip("./")
        if not dst.exists() or dst.stat().st_mtime < lib.stat().st_mtime:
            dst.parent.mkdir(parents=True, exist_ok=True)
            blob = subprocess.run([str(LLVM_AR), "p", str(lib), name],
                                  capture_output=True, check=True).stdout
            dst.write_bytes(blob)
        try:
            coff = CoffObj(dst.read_bytes())
        except Exception:
            continue
        out.append((archive, name, coff))
    return out


def out_bin(secname):
    """Image section a COFF section lands in for these DLLs."""
    if secname.startswith(".text"):
        return ".text"
    if secname.startswith(".rdata") or secname.startswith(".xdata"):
        return ".rdata"
    if secname.startswith(".bss"):
        return ".bss"
    if secname.startswith(".data") or secname.startswith(".CRT"):
        return ".data"
    return None


class Sec:
    """A COFF section plus its placement attributes (Section uses __slots__)."""

    def __init__(self, s, size, uninit):
        self.name = s.name
        self.index = s.index
        self.data = s.data
        self.relocs = s.relocs
        self.characteristics = s.characteristics
        self.is_comdat = s.is_comdat
        self.size = size
        self.uninit = uninit
        self.align = sec_align(s.characteristics)


class Member:
    def __init__(self, archive, name, coff):
        self.archive = archive
        self.name = name
        self.base = name.replace("\\", "/").rsplit("/", 1)[-1]
        self.coff = coff
        self.secs = []          # sections the linker places
        for s in coff.sections:
            uninit = bool(s.characteristics & SCN_CNT_UNINIT)
            if s.is_discardable or out_bin(s.name) is None:
                continue
            if not (s.is_code or s.is_initdata or uninit):
                continue
            size = self._raw_size(s) if uninit else len(s.data)
            if size == 0:
                continue
            self.secs.append(Sec(s, size, uninit))
        # empty sections still align the output at the object's position
        # (masm objects carry an empty 16-aligned .data)
        self.empty = []
        for s in coff.sections:
            if s.is_discardable or out_bin(s.name) not in (".data", ".rdata", ".bss"):
                continue
            uninit = bool(s.characteristics & SCN_CNT_UNINIT)
            size = self._raw_size(s) if uninit else len(s.data)
            if size == 0 and sec_align(s.characteristics) > 1:
                self.empty.append((s.name, sec_align(s.characteristics)))
        self.text = [s for s in self.secs if s.name.startswith(".text")]
        self.comdat_text = any(s.is_comdat for s in self.text)
        self.commons = coff.common_symbols()
        self.defs = {}           # external name -> (section index, value)
        self.local_defs = {}
        for sym in coff.symbols:
            if sym is None or sym.section <= 0 or not sym.name:
                continue
            if sym.storage == 2:
                self.defs.setdefault(sym.name, (sym.section, sym.value))
            elif sym.storage == 3 and sym.aux == [] and not sym.name.startswith("."):
                self.local_defs.setdefault(sym.name, (sym.section, sym.value))

    def symbol_table(self, va):
        """[(name, VA, size, kind, scope)] for the member's named symbols."""
        by_sec = {}
        for sym in self.coff.symbols:
            if sym is None or sym.section <= 0 or not sym.name or sym.name.startswith("."):
                continue
            if sym.storage == 2 or (sym.storage == 3 and not sym.aux and not sym.name.startswith("$")):
                by_sec.setdefault(sym.section, []).append(sym)
        out = []
        secs = {s.index: s for s in self.secs}
        for idx, syms in by_sec.items():
            if idx not in va or idx not in secs:
                continue
            sec = secs[idx]
            offs = sorted({x.value for x in syms} | {sec.size})
            at = {}
            for x in sorted(syms, key=lambda x: (x.value, x.storage != 2)):
                at.setdefault(x.value, []).append(x)
            for off, xs in sorted(at.items()):
                x = xs[0]  # aliases at the same offset: the external one first
                nxt = next(o for o in offs if o > off) if off < sec.size else off
                kind = "function" if sec.name.startswith(".text") else "object"
                out.append((x.name, va[idx] + off, nxt - off, kind,
                            "global" if x.storage == 2 else "local",
                            [y.name for y in xs[1:]]))
        return sorted(out, key=lambda t: t[1])

    def _raw_size(self, s):
        b = self.coff.blob
        nsec_off = 20 + struct.unpack_from("<H", b, 16)[0]
        return struct.unpack_from("<I", b, nsec_off + (s.index - 1) * 40 + 16)[0]

    def text_pattern(self):
        """Regex for the member's .text run: sections in order, padding wildcarded."""
        parts = []
        for i, s in enumerate(self.text):
            if i:
                parts.append(b"(?:.{0,%d})" % (s.align - 1) if s.align > 1 else b"")
            parts.append(masked_pattern(s))
        return re.compile(b"".join(parts), re.S)


# --------------------------------------------------------------------------- #
# locate                                                                      #
# --------------------------------------------------------------------------- #
def reloc_target(img, coff, sec, va, r):
    """(symbol, target VA) a relocation of a section placed at `va` resolves to."""
    site = va + r.offset
    raw = img.dword(site)
    inplace = struct.unpack_from("<I", sec.data, r.offset)[0] if r.offset + 4 <= len(sec.data) else 0
    if raw is None:
        return None
    if r.type == REL_DIR32:
        tgt = (raw - inplace) & 0xFFFFFFFF
    elif r.type == REL_DIR32NB:
        tgt = (raw - inplace + img.base) & 0xFFFFFFFF
    elif r.type == REL_REL32:
        tgt = (site + 4 + raw - inplace) & 0xFFFFFFFF
    else:
        return None
    return coff.symbols[r.sym_index], tgt


def place_member(img, m, text_va):
    """Place every section of `m` given its .text start; None if inconsistent."""
    va = {}
    cur = text_va
    tsec = img.section(".text")
    for s in m.text:
        cur = (cur + s.align - 1) & ~(s.align - 1) if cur != text_va else cur
        # the padding wildcard may be shorter than the alignment; re-match exactly
        off = cur - tsec[1]
        if not re.match(masked_pattern(s), tsec[3][off: off + s.size], re.S):
            return None
        va[s.index] = cur
        cur += s.size
    externals = {}
    changed = True
    while changed:
        changed = False
        for s in m.secs:
            if s.index not in va or not s.relocs:
                continue
            for r in s.relocs:
                rt = reloc_target(img, m.coff, s, va[s.index], r)
                if rt is None:
                    return None
                sym, tgt = rt
                if sym is None:
                    continue
                if sym.section > 0:
                    k = sym.section
                    want = (tgt - sym.value) & 0xFFFFFFFF
                    if k in va:
                        if va[k] != want:
                            return None
                    elif any(t.index == k for t in m.secs):
                        va[k] = want
                        changed = True
                elif sym.section == 0 and sym.name:  # external or COMMON
                    if externals.setdefault(sym.name, tgt) != tgt:
                        return None
    return va, externals


def addend_targets(img, m, va, foreign=()):
    """[(raw target, symbol)] for relocations whose in-place addend points them
    away from their symbol (`__lpdays-4`). dtk names such a raw target after
    the relocation's symbol unless a user symbol already sits there."""
    out = set()
    for s in m.secs:
        if s.index not in va or s.index in foreign:
            continue
        for r in s.relocs:
            if r.type not in (REL_DIR32, REL_REL32) or r.offset + 4 > len(s.data):
                continue
            inplace = struct.unpack_from("<i", s.data, r.offset)[0]
            if inplace == 0:
                continue
            site = va[s.index] + r.offset
            raw = img.dword(site)
            if r.type == REL_REL32:
                raw = (site + 4 + raw) & 0xFFFFFFFF
            sym = m.coff.symbols[r.sym_index]
            if sym is not None and img.section_at(raw) is not None:
                out.add((raw, sym.name))
    return sorted(out)


def verify_sections(img, m, va):
    """Check placed sections land in the right image section with matching bytes."""
    bad = []
    for s in m.secs:
        if s.index not in va:
            continue
        v = va[s.index]
        isec = img.section_at(v)
        want = ".data" if out_bin(s.name) == ".bss" else out_bin(s.name)
        if isec is None or isec[0] != want or v + s.size > isec[1] + isec[2]:
            bad.append(s.name)
            continue
        if s.uninit:
            if any(img.read(v, s.size)):
                bad.append(s.name)
            continue
        if not re.match(masked_pattern(s), img.read(v, s.size), re.S):
            bad.append(s.name)
    return bad


def locate(version, module, archives):
    img = Image(module_dll(version, module))
    tsec = img.section(".text")
    mems = []
    for a in archives:
        check_lib(version, a)
        mems += [Member(*t) for t in members(a)]

    candidates = {}
    for m in mems:
        if not m.text:
            continue
        # skip trivially short patterns: they match everywhere
        if sum(s.size for s in m.text) < 6:
            continue
        pat = m.text_pattern()
        hits = []
        for h in pat.finditer(tsec[3]):
            hits.append(tsec[1] + h.start())
            if len(hits) > 64:
                break
        if hits:
            candidates[m] = hits

    placed = {}       # member -> (va map, externals)
    ext_va = {}       # external symbol -> VA, from placed members

    def try_place(m, hit):
        res = place_member(img, m, hit)
        if res is None:
            return None
        va, exts = res
        if verify_sections(img, m, va):
            return None
        return res

    def consistent(m, res):
        va, exts = res
        score = 0
        for name, tgt in exts.items():
            if name in ext_va:
                if ext_va[name] != tgt:
                    return -1
                score += 1
        for name, (k, v) in m.defs.items():
            if name in ext_va and k in va and ext_va[name] != va[k] + v:
                return -1
        return score

    def commit(m, res):
        placed[m] = res
        va, exts = res
        for name, (k, v) in m.defs.items():
            if k in va:
                ext_va.setdefault(name, va[k] + v)

    # pass 1: unique hits, largest first
    order = sorted(candidates, key=lambda m: -sum(s.size for s in m.text))
    for m in order:
        hits = candidates[m]
        if len(hits) == 1:
            res = try_place(m, hits[0])
            if res is not None:
                commit(m, res)
    # pass 2..: ambiguous, by call-target consistency then adjacency
    for _ in range(4):
        progress = False
        ends = {}
        for pm, (va, _) in placed.items():
            for s in pm.secs:
                if s.index in va and out_bin(s.name) == ".text":
                    ends[va[s.index] + s.size] = pm
        for m in order:
            if m in placed or len(candidates[m]) == 1:
                continue
            scored = []
            for h in candidates[m]:
                res = try_place(m, h)
                if res is None:
                    continue
                sc = consistent(m, res)
                if sc < 0:
                    continue
                adj = any(h - pad in ends for pad in range(16))
                scored.append((sc + (10 if adj else 0), h, res))
            scored.sort(key=lambda t: -t[0])
            if scored and scored[0][0] > 0 and (len(scored) == 1 or scored[0][0] > scored[1][0]):
                commit(m, scored[0][2])
                progress = True
        if not progress:
            break

    # drop overlapping placements (a short member found inside a larger one, or
    # two members with the same masked bytes). Shared COMDAT data (string
    # literals, float constants) legitimately coincide, so only .text and
    # non-COMDAT data count as overlaps.
    spans = []
    for m, (va, _) in placed.items():
        for s in m.secs:
            if s.index in va and (out_bin(s.name) == ".text" or not s.is_comdat):
                spans.append((va[s.index], va[s.index] + s.size, m))
    known = {x["name"]: x["addr"] for x in load_symbols(version, module)}
    refs, defs_at = {}, {}
    for pm, (va, exts) in placed.items():
        for n, t in exts.items():
            refs.setdefault(n, set()).add(t)
        for n, (k, v) in pm.defs.items():
            if k in va:
                defs_at.setdefault(n, set()).add(va[k] + v)

    span_of = {}
    for a, b, mm in spans:
        span_of.setdefault(mm, []).append((a, b))
    def_by = {}
    for pm, (va, _) in placed.items():
        for n, (k, v) in pm.defs.items():
            if k in va:
                def_by.setdefault(n, []).append((va[k] + v, pm))

    def overlaps(x, y):
        return any(a < d and c < b for a, b in span_of.get(x, ()) for c, d in span_of.get(y, ()))

    def score(m):
        """(relocations contradicting other placements, evidence for this one).
        Definitions by members overlapping m are rivals, not evidence."""
        va, exts = placed[m]
        bad = good = 0
        for n, t in exts.items():
            ds = [(v, pm) for v, pm in def_by.get(n, ()) if pm is not m and not overlaps(m, pm)]
            if ds:
                if any(v == t for v, _ in ds):
                    good += 3
                else:
                    bad += 1
        for n, (k, v) in m.defs.items():
            if k in va:
                good += 2 * (va[k] + v in refs.get(n, ()))
                good += known.get(n) == va[k] + v
        return bad, good
    # greedy: consistent first, then largest, then best evidence
    total = {m: sum(b - a for a, b, mm in spans if mm is m) for m in placed}
    drop, taken = set(), []
    for m in sorted(placed, key=lambda m: (score(m)[0], -total[m], -score(m)[1])):
        mine = [(a, b) for a, b, mm in spans if mm is m]
        if any(a < tb and ta < b for a, b in mine for ta, tb in taken):
            drop.add(m)
        else:
            taken += mine
    dropped = []
    for m in sorted(drop, key=lambda m: m.name):
        dropped.append({"member": m.name, "va": sorted(placed[m][0].values())[:1]})
        del placed[m]

    # data-only members (crt0init's CRT table bounds, ctype tables, ...): place
    # each section where other members' relocations — or, for the CRT table
    # bounds dtk labels itself, symbols.txt — put the symbols it defines.
    refs = {}
    for pm, (pva, pexts) in placed.items():
        for n, t in pexts.items():
            refs.setdefault(n, set()).add(t)
    known_crt = {x["name"]: x["addr"] for x in load_symbols(version, module)
                 if re.match(r"^___x[cipt]_[az]$", x["name"])}
    taken = [(a, b) for a, b, mm in spans if mm in placed]
    for m in mems:
        if m in placed or m.text or not m.secs:
            continue
        va = {}
        ok = True
        for s in m.secs:
            cand = set()
            for n, (k, v) in m.defs.items():
                if k == s.index:
                    cand |= {t - v for t in refs.get(n, ())}
                    if n in known_crt:
                        cand.add(known_crt[n] - v)
            if len(cand) > 1:
                ok = False
                break
            if cand:
                va[s.index] = cand.pop()
        # at least one anchored section; the rest may come from the byte searches
        if not ok or not va or verify_sections(img, m, va):
            continue
        mine = [(va[s.index], va[s.index] + s.size) for s in m.secs if not s.is_comdat and s.index in va]
        if any(a < tb and ta < b for a, b in mine for ta, tb in taken):
            continue
        exts = {}
        for s in m.secs:
            for r in s.relocs:
                rt = reloc_target(img, m.coff, s, va[s.index], r)
                if rt and rt[0] is not None and rt[0].section == 0 and rt[0].name:
                    exts[rt[0].name] = rt[1]
        placed[m] = (va, exts)
        taken += mine

    # reverse search: an unplaced section whose relocations all resolve to known
    # addresses (its own placed sections, other members' or symbols.txt names)
    # has fully known bytes — find them (CRT$X* table entries, pointer tables).
    known_names = {x["name"]: x["addr"] for x in load_symbols(version, module)}
    for _ in range(3):
        refs = {}
        for pm, (pva, pexts) in placed.items():
            for n, t in pexts.items():
                refs.setdefault(n, set()).add(t)
        for m, (va, exts) in list(placed.items()):
            for s in m.secs:
                if s.index in va:
                    continue
                # another member references a symbol this section defines
                cand = {t - v for n, (k, v) in m.defs.items() if k == s.index
                        for t in refs.get(n, ())}
                if len(cand) == 1:
                    va[s.index] = cand.pop()
                    if verify_sections(img, m, va):
                        del va[s.index]
                    else:
                        continue
                if s.uninit:
                    continue
                data = bytearray(s.data)
                ok = True
                for r in s.relocs:
                    sym = m.coff.symbols[r.sym_index]
                    if r.type != REL_DIR32 or sym is None:
                        ok = False
                        break
                    if sym.section > 0:
                        if sym.section not in va:
                            ok = False
                            break
                        tgt = va[sym.section] + sym.value
                    else:
                        tgt = ext_va.get(sym.name, known_names.get(sym.name))
                        if tgt is None:
                            ok = False
                            break
                    inplace = struct.unpack_from("<I", data, r.offset)[0]
                    struct.pack_into("<I", data, r.offset, (tgt + inplace) & 0xFFFFFFFF)
                if not ok:
                    continue
                isec = img.section(".rdata" if out_bin(s.name) == ".rdata" else ".data")
                hits = [h.start() for h in re.finditer(re.escape(bytes(data)), isec[3])
                        if (isec[1] + h.start()) % s.align == 0]
                if len(hits) == 1 and (s.relocs or len(data) >= 8 and any(data)):
                    va[s.index] = isec[1] + hits[0]
                    for name, (k, v) in m.defs.items():
                        if k == s.index:
                            ext_va.setdefault(name, va[k] + v)

    # link order: contributions to every section follow the same object order as
    # .text, so a section still missing must sit between its neighbours' pieces.
    def first_text(m):
        va = placed[m][0]
        return min([va[s.index] for s in m.text if s.index in va] or [0])
    order_t = sorted((m for m in placed if m.text), key=first_text)
    for i, m in enumerate(order_t):
        va = placed[m][0]
        for s in m.secs:
            if s.index in va:
                continue
            b = out_bin(s.name)
            same = [x for x in m.secs if x.name == s.name]
            if b not in (".data", ".rdata", ".bss") or len(same) != 1:
                continue

            def pieces(mm):
                v = placed[mm][0]
                return [(v[x.index], v[x.index] + x.size) for x in mm.secs
                        if x.index in v and x.name == s.name]
            lo = next((max(e for _, e in pieces(x)) for x in reversed(order_t[:i]) if pieces(x)), None)
            hi = next((min(a for a, _ in pieces(x)) for x in order_t[i + 1:] if pieces(x)), None)
            if lo is None or hi is None:
                continue
            # data-only members are not in the .text order: tighten with any piece
            for pm, (pva, _) in placed.items():
                for x in pm.secs:
                    if x.index in pva and x.name == s.name and lo <= pva[x.index] + x.size <= hi:
                        lo = max(lo, pva[x.index] + x.size)
            start = (lo + s.align - 1) & ~(s.align - 1)
            # exact fit only: the gap holds this section and nothing else
            if start + s.size > hi or (hi - (start + s.size)) >= 16:
                continue
            va[s.index] = start
            if verify_sections(img, m, va):
                del va[s.index]

    # Shared COMDAT data (pick-any string literals, float constants) lives in the
    # first object in link order that defines it; every other member that has a
    # copy just references it. Mark those copies foreign: not part of the unit.
    rank = {m: i for i, m in enumerate(sorted(placed, key=lambda m: (bool(m.text), first_text(m))))}
    claim = {}
    for m, (va, _) in placed.items():
        for s in m.secs:
            if s.index in va and s.is_comdat and out_bin(s.name) != ".text":
                claim.setdefault(va[s.index], []).append(m)
    foreign = {m: set() for m in placed}
    # Libraries are searched after every object, so in each section all lib
    # contributions follow all non-lib ones. A COMDAT piece below the lib
    # region (the lowest non-COMDAT lib piece, extended down through adjacent
    # lib pieces) is the game's copy that the lib's pick-any copy folded into.
    pieces = {}
    for m, (va, _) in placed.items():
        for s in m.secs:
            if s.index in va and out_bin(s.name) != ".text":
                pieces.setdefault(s.name, []).append((va[s.index], va[s.index] + s.size, s, m))
    for name, ps in pieces.items():
        definite = [a for a, b, s, m in ps if not s.is_comdat]
        if not definite:
            continue
        start = min(definite)
        for a, b, s, m in sorted(ps, key=lambda t: -t[0]):
            if a < start and start - b < 16:
                start = a
        for a, b, s, m in ps:
            if a < start and s.is_comdat:
                foreign[m].add(s.index)
        # link order is monotonic: a COMDAT piece above an earlier member's
        # data or below a later member's belongs to some other object
        defs_ranked = [(rank[m], a) for a, b, s, m in ps if not s.is_comdat and m.text]
        for a, b, s, m in ps:
            if s.is_comdat and m.text and any(
                    (r < rank[m] and x > a) or (r > rank[m] and x < a) for r, x in defs_ranked):
                foreign[m].add(s.index)
    for v, ms in claim.items():
        live = [m for m in ms if not any(placed[m][0].get(x) == v for x in foreign[m])]
        if not live:
            continue
        owner = min(live, key=lambda m: rank[m])
        for m in ms:
            if m is not owner:
                foreign[m] |= {s.index for s in m.secs if placed[m][0].get(s.index) == v and s.is_comdat}
    for m, (va, _) in placed.items():
        by = {}
        for s in m.secs:
            if s.index in va and s.index not in foreign[m]:
                by.setdefault(s.name, []).append(s)
        for name, secs in by.items():
            secs.sort(key=lambda s: va[s.index])
            chains = [[secs[0]]]
            for s in secs[1:]:
                end = va[chains[-1][-1].index] + chains[-1][-1].size
                if va[s.index] < end or va[s.index] - end >= max(s.align, 1):
                    chains.append([s])
                else:
                    chains[-1].append(s)
            if len(chains) > 1:
                main = max(chains, key=lambda c: (any(not s.is_comdat for s in c), sum(s.size for s in c)))
                for c in chains:
                    if c is not main:
                        if all(s.is_comdat for s in c):
                            foreign[m] |= {s.index for s in c}

    report = {"version": version, "module": module, "archives": archives,
              "placed": [], "incomplete": [], "skipped": [], "dropped": dropped}
    for m, (va, exts) in sorted(placed.items(), key=lambda t: min(t[1][0].values() or [0])):
        missing = [s.name for s in m.secs if s.index not in va]
        entry = {
            "archive": m.archive, "member": m.name, "base": m.base,
            "sections": [{"name": s.name, "index": s.index, "va": va.get(s.index),
                          "size": s.size, "align": s.align, "comdat": s.is_comdat,
                          "foreign": s.index in foreign[m],
                          "symbol": m.coff.defining_symbol(s.index)}
                         for s in m.secs],
            "externals": {k: v for k, v in sorted(exts.items())},
            "defs": {k: va[sec] + v for k, (sec, v) in sorted(m.defs.items()) if sec in va},
            "symbols": m.symbol_table(va),
            "addend_targets": addend_targets(img, m, va, foreign[m]),
            "commons": m.commons,
            "undefined": sorted(set(m.coff.undefined_externals())),
            "empty": m.empty,
        }
        if missing:
            entry["missing"] = missing
            report["incomplete"].append(entry)
        else:
            report["placed"].append(entry)
    return report


def main(argv=None):
    ap = argparse.ArgumentParser()
    ap.add_argument("cmd", choices=["locate", "apply"])
    ap.add_argument("--version", required=True)
    ap.add_argument("--module", required=True)
    ap.add_argument("--archive", action="append", default=None)
    ap.add_argument("--summary", action="store_true")
    a = ap.parse_args(argv)
    archives = a.archive or ["libcmt", "libcpmt"]
    if a.cmd == "apply":
        p = plan(a.version, a.module, archives)
        write_splits(a.version, a.module, p)
        notes = edit_symbols(a.version, a.module, p)
        edit_configure(a.version, a.module, p, {e["member"] for e in p["units"]})
        json.dump({"units": [unit_name(a.module, e) for e in p["units"]],
                   "skipped": p["skipped"], "bss": p["bss"],
                   "crt": {k: [hex(x) for x in v] for k, v in p["crt"].items()},
                   "symbol_edits": notes},
                  sys.stdout, indent=1)
        return
    rep = locate(a.version, a.module, archives)
    if a.summary:
        for e in rep["placed"]:
            t = [s for s in e["sections"] if s["name"].startswith(".text")]
            print(f"placed   {e['archive']:8} {e['base']:16} " + " ".join(
                f"{s['name']}@{s['va']:08X}+{s['size']:X}{'*' if s['foreign'] else ''}"
                for s in e["sections"]))
        for e in rep["incomplete"]:
            print(f"partial  {e['archive']:8} {e['base']:16} missing {e['missing']}")
        for e in rep["skipped"]:
            print(f"skipped  {e['member']} {e['reason']}")
        for e in rep["dropped"]:
            print(f"dropped  {e['member']} {[hex(v) for v in e['va']]}")
        return
    json.dump(rep, sys.stdout, indent=1)


# --------------------------------------------------------------------------- #
# apply                                                                       #
# --------------------------------------------------------------------------- #
AUTO_NAME_RE = re.compile(r"^(fn|lbl|sub|data|jumptable|switch|auto|pad)_(0x)?[0-9A-Fa-f]+$")
BASE_SECTIONS = {".text", ".data", ".rdata", ".bss"}


def unit_name(module, entry):
    return f"{module}/lib/{entry['archive']}/{entry['base']}"


def unit_ranges(entry):
    """{section name: (start, end)} — one contiguous range per COFF section name."""
    out = {}
    for s in entry["sections"]:
        if s["foreign"]:
            continue
        a, b = s["va"], s["va"] + s["size"]
        if s["name"] in out:
            lo, hi = out[s["name"]]
            out[s["name"]] = (min(lo, a), max(hi, b))
        else:
            out[s["name"]] = (a, b)
    for name, (a, b) in entry.get("pad", {}).items():
        lo, hi = out.get(name, (a, b))
        out[name] = (min(lo, a), max(hi, b))
    return out


def contiguous(entry):
    """Every COFF section name's pieces must form one gap-free (modulo align) run."""
    by = {}
    for s in entry["sections"]:
        if not s["foreign"]:
            by.setdefault(s["name"], []).append(s)
    for name, secs in by.items():
        secs = sorted(secs, key=lambda s: s["va"])
        for a, b in zip(secs, secs[1:]):
            end = a["va"] + a["size"]
            if b["va"] < end or b["va"] - end >= max(b["align"], 1):
                return False
    return True


CRT_GROUPS = ["XCA", "XCU", "XCZ", "XIA", "XIC", "XIY", "XIZ", "XPA", "XPX", "XPZ", "XTA", "XTB", "XTZ"]


def crt_sections(entries):
    """.CRT$X* sub-section ranges inside .data from the placed pieces. The table
    runs in group-name order; the only group without a lib piece is XCU (C++
    dynamic initialisers), which fills the gap between XCA and XCZ."""
    rng = {}
    for e in entries:
        for s in e["sections"]:
            if s["name"].startswith(".CRT$") and not s["foreign"]:
                a, b = s["va"], s["va"] + s["size"]
                lo, hi = rng.get(s["name"], (a, b))
                rng[s["name"]] = (min(lo, a), max(hi, b))
    if not rng:
        return {}
    if ".CRT$XCA" in rng and ".CRT$XCZ" in rng and rng[".CRT$XCA"][1] < rng[".CRT$XCZ"][0]:
        rng[".CRT$XCU"] = (rng[".CRT$XCA"][1], rng[".CRT$XCZ"][0])
    order = sorted(rng.items(), key=lambda t: t[1][0])
    names = [n for n, _ in order]
    if names != sorted(names):
        raise SystemExit(f"CRT groups out of order: {order}")
    out = dict(order)
    for (n1, r1), (n2, r2) in zip(order, order[1:]):
        if r1[1] > r2[0]:
            raise SystemExit(f"overlap in CRT table between {n1} {r1} and {n2} {r2}")
        if r1[1] < r2[0]:
            # an entry of an object that is not a lib unit (e.g. a member the
            # original /OPT:REF link partly stripped): most likely the same group
            out[n1] = (r1[0], r2[0])
    return out


def infer_commons(units):
    """MS link lays out an object's COMMON symbols consecutively in reverse
    symbol-table order. Commons no relocation reaches (sbheap's
    ___sbh_initialized) are placed from the located ones, when every located
    one agrees with that layout."""
    for e in units:
        cs = list(reversed(e["commons"]))
        if not cs:
            continue
        offs, cur = [], 0
        for name, size in cs:
            al = min(size, 4) if size < 8 else 8
            cur = (cur + al - 1) & ~(al - 1)
            offs.append(cur)
            cur += size
        bases = {e["externals"][n] - o for (n, _), o in zip(cs, offs) if n in e["externals"]}
        if len(bases) != 1:
            continue
        base = bases.pop()
        for (name, _), o in zip(cs, offs):
            e["externals"].setdefault(name, base + o)


def pad_empty_sections(units, img=None, sym_addrs=()):
    """An empty but aligned section (masm objects' 16-aligned .data) pads the
    output at its object's link position. Give it the range [end of the
    previous lib piece, aligned) — as runblack's splits do — so the padding
    stays with the object instead of becoming a gap unit linked after it.
    Only when the next lib piece starts exactly at the aligned position."""
    def tstart(e):
        t = [s["va"] for s in e["sections"] if s["name"].startswith(".text")]
        return min(t) if t else None
    order = sorted((e for e in units if tstart(e) is not None), key=tstart)
    for i, e in enumerate(order):
        e.setdefault("pad", {})
        for name, align in e["empty"]:
            if any(s["name"] == name for s in e["sections"]):
                continue

            def pieces(o):
                return [(s["va"], s["va"] + s["size"]) for s in o["sections"]
                        if s["name"] == name and not s["foreign"]] + \
                    ([o["pad"][name]] if name in o.get("pad", {}) else [])
            prev = next((max(b for _, b in pieces(o)) for o in reversed(order[:i]) if pieces(o)), None)
            if prev is None:
                continue
            # next lib piece of any unit (data-only units are not in the order)
            nxt = min((a for o in units for a, _ in pieces(o) if a >= prev), default=None)
            if prev is None or nxt is None:
                continue
            aligned = (prev + align - 1) & ~(align - 1)
            if aligned == prev or nxt is None or aligned > nxt:
                continue
            if nxt != aligned:
                # an auto region follows: only when the would-be padding is
                # zero bytes nothing references (dtk calls them pad_)
                d = img.read(prev, aligned - prev) if img else None
                if d is None or any(d) or any(prev <= x < aligned for x in sym_addrs):
                    continue
            e["pad"][name] = (prev, aligned)


def encompass_padding(units, img, sym_addrs=()):
    """A lib unit's range swallows the alignment padding after it (runblack's
    "libcmt: encompass padding"): up to the next lib unit when only padding
    lies between, else up to the next 16/8/4 boundary that is all padding.
    Otherwise dtk starts the following auto unit unaligned and emits it with
    a leading pad, shifting everything after it."""
    starts = {}
    for e in units:
        for sec, (a, b) in unit_ranges(e).items():
            starts.setdefault(out_bin(sec), []).append(a)
    for e in units:
        ext = {}
        for sec, (a, b) in unit_ranges(e).items():
            bin_ = out_bin(sec)
            if sec.startswith(".CRT$"):
                continue
            fill = 0xCC if bin_ == ".text" else 0x00
            nxt = min((x for x in starts[bin_] if x >= b), default=None)
            if nxt == b:
                continue
            isec = img.section_at(b - 1)
            end_sec = isec[1] + isec[2]

            def padding(lo, hi):
                d = img.read(lo, hi - lo)
                if any(lo <= x < hi for x in sym_addrs):
                    return False  # zero bytes some code references: a variable
                return d is not None and hi <= end_sec and all(c == fill for c in d)
            if nxt is not None and nxt - b < 16 and padding(b, nxt):
                ext[sec] = (a, nxt)
                continue
            if bin_ == ".text":
                continue  # dtk emits text gap units byte-exact at any alignment
            for al in (8, 4):
                n = (b + al - 1) & ~(al - 1)
                if n > b and (nxt is None or n <= nxt) and padding(b, n):
                    ext[sec] = (a, n)
                    break
        if ext:
            e.setdefault("pad", {})
            for sec, r in ext.items():
                e["pad"][sec] = r


def plan(version, module, archives, extra_sections=()):
    rep = locate(version, module, archives)
    img = Image(module_dll(version, module))
    allowed = BASE_SECTIONS | {".CRT$" + g for g in CRT_GROUPS} | set(extra_sections)
    units, skipped = [], []
    for e in rep["placed"]:
        names = {s["name"] for s in e["sections"]}
        if not names <= allowed:
            skipped.append((e["base"], f"sections {sorted(names - allowed)}"))
            continue
        if not contiguous(e):
            skipped.append((e["base"], "non-contiguous"))
            continue
        units.append(e)
    for e in rep["incomplete"]:
        skipped.append((e["base"], f"missing {e['missing']}"))
    # dtk does not fold references into verbatim module units (lib_objects is
    # not consulted for modules): a reference from outside every lib unit must
    # land exactly on a global symbol of the obj, or it links undefined.
    import pefile
    pe = pefile.PE(str(module_dll(version, module)), fast_load=True)
    pe.parse_data_directories(directories=[pefile.DIRECTORY_ENTRY["IMAGE_DIRECTORY_ENTRY_BASERELOC"]])
    sites = [img.base + e.rva for blk in getattr(pe, "DIRECTORY_ENTRY_BASERELOC", [])
             for e in blk.entries if e.type == 3]
    while os.environ.get("MODLIB_NO_INTERIOR_CHECK") != "1":
        rng = [(a, b, e) for e in units for a, b in unit_ranges(e).values()]
        rng.sort(key=lambda t: t[0])
        starts = [t[0] for t in rng]
        import bisect

        def owner(va):
            i = bisect.bisect_right(starts, va) - 1
            return rng[i][2] if i >= 0 and va < rng[i][1] else None
        bad = {}
        for site in sites:
            if owner(site) is not None:
                continue
            t = img.dword(site)
            u = owner(t) if t is not None else None
            if u is None:
                continue
            # dtk folds a reference inside a global obj symbol into symbol+addend
            # when the label there is `stripped` (edit_symbols marks them);
            # a static, or no symbol at all, cannot be reached from outside
            cont = [sym for sym in u["symbols"] if sym[1] <= t < sym[1] + max(sym[2], 1)]
            if not cont or cont[-1][4] != "global":
                bad.setdefault(id(u), (u, t, site))
            else:
                u.setdefault("interior_refs", set()).add(t)
        if not bad:
            break
        for u, t, site in bad.values():
            units.remove(u)
            skipped.append((u["base"], f"interior {t:08X} referenced from non-lib code at {site:08X}"))
    # overlapping ranges between units (shouldn't happen after locate's drop)
    spans = sorted((r[0], r[1], sec, unit_name(module, e))
                   for e in units for sec, r in unit_ranges(e).items())
    for a, b in zip(spans, spans[1:]):
        if b[0] < a[1] and out_bin(a[2]) == out_bin(b[2]):
            raise SystemExit(f"overlap: {a} {b}")
    dsec = img.section(".data")
    bss_vas = [s["va"] for e in units for s in e["sections"] if s["name"] == ".bss"]
    bss = None
    if bss_vas:
        # .bss (merged into .data's zero tail) starts after the last .data
        # contribution. The exact boundary is not recoverable; take the first
        # 8-aligned address after the last non-zero byte. It must not move past
        # the raw data or any .bss contribution (game statics such as 1.00
        # LHLobby's come before the lib's).
        raw = dsec[3]
        last = max(i for i, b in enumerate(raw) if b)
        start = (dsec[1] + last + 1 + 7) & ~7
        bss = (min(start, min(bss_vas)), dsec[1] + dsec[2])
    infer_commons(units)
    obj_vas = {sym[1] for e in units for sym in e["symbols"]}
    sym_addrs = sorted({x["addr"] for x in load_symbols(version, module)
                        if not re.match(r"^(pad|gap)_", x["name"])} - obj_vas)
    pad_empty_sections(units, img, sym_addrs)
    encompass_padding(units, img, sym_addrs)
    crt = crt_sections(units)
    return {"units": units, "skipped": skipped, "bss": bss, "crt": crt, "report": rep}


def write_splits(version, module, p):
    path = split_path(version, module)
    text = path.read_text()
    head, _, _ = text.partition("\n\n")
    lines = [l for l in head.splitlines() if not (l.startswith("\t.bss") or l.startswith("\t.CRT$"))]
    i = next(i for i, l in enumerate(lines) if l.startswith("\t.data "))
    extra = [f"\t{n:<11} type:data vaddr:0x{a:08X} end:0x{b:08X}" for n, (a, b) in p["crt"].items()]
    if p["bss"]:
        extra.append(f"\t.bss        type:bss vaddr:0x{p['bss'][0]:08X} end:0x{p['bss'][1]:08X}")
    lines[i + 1:i + 1] = extra
    # keep any non-lib units already present; replace this tool's lib units
    blocks = [b for b in text.split("\n\n")[1:] if b.strip()]
    keep = [b for b in blocks if not b.startswith(f"{module}/lib/")]
    if p["bss"]:
        # existing units' zero-initialised statics past the boundary are .bss
        def to_bss(m):
            return m.group(0).replace("\t.data      ", "\t.bss       ", 1) \
                if int(m.group(1), 16) >= p["bss"][0] else m.group(0)
        keep = [re.sub(r"^\t\.data +start:0x([0-9A-Fa-f]+)", to_bss, b, flags=re.M) for b in keep]
    # order units by link order: .text position, a data-only unit right after
    # the unit whose data precedes its own
    def text_start(e):
        t = [s["va"] for s in e["sections"] if s["name"].startswith(".text") and not s["foreign"]]
        return min(t) if t else None
    keyed = {}
    for e in p["units"]:
        if text_start(e) is not None:
            keyed[id(e)] = (text_start(e), 0)
    for e in p["units"]:
        if id(e) in keyed:
            continue
        mine = min((s["va"], s["name"]) for s in e["sections"] if not s["foreign"])
        prev = [(max(s["va"] for s in o["sections"] if s["name"] == mine[1] and not s["foreign"]), o)
                for o in p["units"] if id(o) in keyed and keyed[id(o)][1] == 0
                and any(s["name"] == mine[1] and not s["foreign"] and s["va"] < mine[0] for s in o["sections"])]
        prev = [t for t in prev if t[0] < mine[0]]
        keyed[id(e)] = (keyed[id(max(prev, key=lambda t: t[0])[1])][0], 1) if prev else (0, mine[0])
    new = []
    for e in p["units"]:
        rl = []
        for sec, (a, b) in sorted(unit_ranges(e).items(), key=lambda t: t[1][0]):
            default = {".text": 4, ".rdata": 8}.get(out_bin(sec), 4)
            align = " align:1" if out_bin(sec) == ".text" or a % default else ""
            rl.append(f"\t{sec:<11} start:0x{a:08X} end:0x{b:08X}{align}")
        new.append((keyed[id(e)], unit_name(module, e) + ":\n" + "\n".join(rl)))
    def first_addr(b):
        m = re.search(r"\.text\s+start:0x([0-9A-Fa-f]+)", b)
        return int(m.group(1), 16) if m else 0
    allb = [((first_addr(b), 0), b.rstrip("\n")) for b in keep] + new
    allb.sort(key=lambda t: t[0])
    path.write_text("\n".join(lines) + "\n\n" + "\n\n".join(b for _, b in allb) + "\n")


def sym_line(name, sec, va, kind=None, size=None, scope=None, extra=""):
    attrs = []
    if kind:
        attrs.append(f"type:{kind}")
    if size is not None:
        attrs.append(f"size:0x{size:X}")
    if scope:
        attrs.append(f"scope:{scope}")
    if extra:
        attrs.append(extra)
    return f"{name} = {sec}:0x{va:08X}; // " + " ".join(attrs)


def edit_symbols(version, module, p):
    """Make symbols.txt agree with the lib units: every obj symbol named, typed
    and sized as the obj defines it; auto labels inside a unit dropped; every
    external an obj references named at its target; nothing straddling a unit."""
    syms = load_symbols(version, module)
    lines = sym_path(version, module).read_text().splitlines()
    img = Image(module_dll(version, module))
    ranges = [r for e in p["units"] for r in unit_ranges(e).values()]
    notes = []
    by_addr, by_name = {}, {}
    for sym in syms:
        by_addr.setdefault(sym["addr"], []).append(sym)
        by_name.setdefault(sym["name"], []).append(sym)
    removed = set()
    replace = {}     # line -> new text
    by_addr_name = {}  # line -> name after a rename
    add = []

    def in_unit(va):
        return any(lo <= va < hi for lo, hi in ranges)

    obj_vas = set()
    taken = set(by_name)
    for e in p["units"]:
        for name, va, size, kind, scope, aliases in e["symbols"]:
            obj_vas.add(va)
            sec = img.section_at(va)[0]
            here = [x for x in by_addr.get(va, []) if x["line"] not in removed]
            for x in here:
                if x["name"] in aliases:
                    name = x["name"]  # keep whichever alias symbols.txt already uses
            if scope == "local" and name in taken and not any(x["name"] == name for x in here):
                # a static whose name is already used elsewhere: keep the
                # existing (auto) name, but take the obj's size and type
                if here:
                    replace[here[0]["line"]] = sym_line(here[0]["name"], sec, va, kind, size, scope)
                    for x in here[1:]:
                        removed.add(x["line"])
                continue
            # the same name misplaced elsewhere (e.g. labelled at a ref's addend)
            for x in by_name.get(name, []):
                if x["addr"] != va and x["line"] >= 0 and x["line"] not in removed and in_unit(x["addr"]):
                    removed.add(x["line"])
                    notes.append(f"move {name} {x['addr']:08X} -> {va:08X}")
                elif x["addr"] != va and x["line"] >= 0 and x["line"] not in removed:
                    auto = f"lbl_{x['addr']:08X}"
                    replace[x["line"]] = re.sub(r"^\S+", auto, lines[x["line"]], count=1)
                    by_addr_name[x["line"]] = auto
                    notes.append(f"move {name} {x['addr']:08X} -> {va:08X}")
            line = sym_line(name, sec, va, kind, size, scope)
            if here:
                first = here[0]
                if first["name"] != name and not AUTO_NAME_RE.match(first["name"]) and \
                        re.sub(r"@\d+$", "", name) != re.sub(r"@\d+$", "", first["name"]):
                    notes.append(f"rename non-auto {first['name']} -> {name} @ {va:08X}")
                replace[first["line"]] = line
                for x in here[1:]:
                    removed.add(x["line"])
            else:
                add.append(line)
            taken.add(name)
    # Labels inside lib units that are not obj symbols are dropped. dtk
    # recreates the ones something references, flagged `stripped`, and folds
    # those references into the containing obj symbol + addend. (Keeping or
    # renaming them instead leaves dtk emitting an unfoldable label.)
    stripped = set()
    for sym in syms:
        if sym["line"] in replace or sym["line"] in removed:
            continue
        if in_unit(sym["addr"]) and sym["addr"] not in obj_vas:
            removed.add(sym["line"])
            if not AUTO_NAME_RE.match(sym["name"]):
                notes.append(f"drop {sym['name']} @ {sym['addr']:08X} (inside a lib unit, not an obj symbol)")
    # ...except where code outside every lib unit points inside one: dtk only
    # flags the labels it derives from the verbatim objects' own relocations,
    # so a target only non-lib code reaches needs an explicit stripped label.
    for e in p["units"]:
        for t in sorted(e.get("interior_refs", ())):
            if t in obj_vas:
                continue
            isec = img.section_at(t)[0]
            add.append(sym_line(f"data_0x{t:08x}" if isec != ".text" else f"lbl_{t:08X}", isec, t,
                                "object" if isec != ".text" else "label", None, "global", "stripped"))
    # externals referenced by the objs
    lib_defined = {}
    for e in p["units"]:
        for sym in e["symbols"]:
            if sym[4] == "global":
                for n in [sym[0]] + sym[5]:
                    lib_defined[n] = sym[1]
    wanted = {}
    for e in p["units"]:
        for name, va in e["externals"].items():
            wanted.setdefault(name, set()).add(va)
    for e in p["units"]:
        for name, va in e["externals"].items():
            if len(wanted[name]) > 1:
                notes.append(f"CONFLICT {name}: objs disagree {sorted(hex(v) for v in wanted[name])}")
                continue
            if name == "__except_list" or img.section_at(va) is None:
                continue
            if name in lib_defined:
                if lib_defined[name] != va:
                    notes.append(f"CONFLICT {name}: defined by a lib unit at {lib_defined[name]:08X}, "
                                 f"{e['base']} needs {va:08X}")
                continue
            if in_unit(va):
                notes.append(f"CONFLICT {name} @ {va:08X}: inside a lib unit that does not define it "
                             f"(needed by {e['base']})")
                continue
            here = [x for x in by_addr.get(va, []) if x["line"] not in removed]
            have = [x for x in by_name.get(name, []) if x["line"] not in removed]
            if any(x["addr"] == va for x in have):
                continue
            for x in have:
                if x["line"] >= 0:
                    auto = f"lbl_{x['addr']:08X}"
                    replace[x["line"]] = re.sub(r"^\S+", auto, replace.get(x["line"], lines[x["line"]]), count=1)
                    by_addr_name[x["line"]] = auto
                    notes.append(f"move {name} {x['addr']:08X} -> {va:08X} (ref from {e['base']})")
                    removed_names = by_name.pop(name, None)
            if here:
                x = here[0]
                old = replace.get(x["line"], lines[x["line"]])
                if not AUTO_NAME_RE.match(x["name"]) and \
                        re.sub(r"@\d+$", "", name) != re.sub(r"@\d+$", "", x["name"]) and \
                        not x["name"].startswith("_" + re.sub(r"^_+", "", name)):
                    notes.append(f"rename non-auto {x['name']} -> {name} @ {va:08X} (ref from {e['base']})")
                new = re.sub(r"^\S+", lambda _: name, old, count=1)
                replace[x["line"]] = re.sub(r"scope:local", "scope:global", new)
                by_addr_name[x["line"]] = name
                by_name.setdefault(name, []).append(x)
            else:
                sec = img.section_at(va)[0]
                add.append(sym_line(name, sec, va, "function" if sec == ".text" else "object"))
                by_name.setdefault(name, []).append({"addr": va, "line": -1})
    # Relocation targets offset by an addend (`__lpdays-4`): dtk labels the raw
    # target after the relocation's symbol unless a user name is already there,
    # then demotes the real symbol as a duplicate. Outside a lib unit, give the
    # target a placeholder `unk_` name; inside one, leave it to the obj's symbol.
    ext_vas = {va for e in p["units"] for va in e["externals"].values()}
    common_size = {n: sz for e in p["units"] for n, sz in e["commons"]}

    def inside_named(raw):
        """raw lies inside a real (non-auto) sized symbol: dtk folds the ref."""
        for x in syms:
            if x["line"] in removed or x["size"] is None:
                continue
            nm = by_addr_name.get(x["line"], x["name"])
            size = common_size.get(nm, x["size"])
            if x["addr"] < raw < x["addr"] + size and not AUTO_NAME_RE.match(nm):
                return True
        return False
    for e in p["units"]:
        for raw, symname in e["addend_targets"]:
            if raw in obj_vas or raw in ext_vas or inside_named(raw):
                continue
            here = [x for x in by_addr.get(raw, []) if x["line"] not in removed]
            if in_unit(raw):
                continue  # labels inside lib units are stripped below
            names = [by_addr_name.get(x["line"], x["name"]) for x in here]
            if here and not all(AUTO_NAME_RE.match(n) for n in names):
                continue
            unk = f"unk_{raw:08X}"
            if here:
                x = here[0]
                replace[x["line"]] = re.sub(r"^\S+", unk, replace.get(x["line"], lines[x["line"]]), count=1)
                by_addr_name[x["line"]] = unk
            elif not any(l.startswith(unk + " ") for l in add):
                isec = img.section_at(raw)[0]
                add.append(sym_line(unk, isec, raw, "function" if isec == ".text" else "object"))
            notes.append(f"placeholder {unk} ({symname} addend target)")
    # __fltused/__ldused are referenced by symbol only (no relocation). When
    # fpinit.obj is not a unit, name the 0x9875 marker word that defines it.
    refs_noreloc = {n for e in p["units"] for n in e.get("undefined", ())}
    if "__fltused" in refs_noreloc and "__fltused" not in lib_defined and "__fltused" not in by_name:
        dsec = img.section(".data")
        hits = [i for i in range(0, len(dsec[3]) - 3, 4) if dsec[3][i:i + 4] == b"\x75\x98\x00\x00"]
        if len(hits) == 1:
            va = dsec[1] + hits[0]
            here = [x for x in by_addr.get(va, []) if x["line"] not in removed]
            if here:
                replace[here[0]["line"]] = re.sub(r"^\S+", "__fltused",
                                                  replace.get(here[0]["line"], lines[here[0]["line"]]), count=1)
            else:
                add.append(sym_line("__fltused", ".data", va, "object", 4, "global"))
            notes.append(f"__fltused marker @ {va:08X}")
    # foreign COMDAT copies: the kept copy outside every lib unit must be a
    # `comdat` symbol so the verbatim objects' copies fold into it
    for e in p["units"]:
        for sec in e["sections"]:
            if not sec["foreign"] or not sec["symbol"] or in_unit(sec["va"]):
                continue
            va, name = sec["va"], sec["symbol"]
            here = [x for x in by_addr.get(va, []) if x["line"] not in removed]
            isec = img.section_at(va)[0]
            if here:
                x = here[0]
                t = replace.get(x["line"], lines[x["line"]])
                t = re.sub(r"^\S+", lambda _: name, t, count=1)
                if not re.search(r"\bcomdat\b", t):
                    t += " comdat"
                if x["name"] != name or "comdat" not in lines[x["line"]]:
                    notes.append(f"comdat {name} @ {va:08X}")
                replace[x["line"]] = t
            elif not any(l.startswith(name + " = ") for l in add):
                add.append(sym_line(name, isec, va, "object", sec["size"], None, "comdat"))
                notes.append(f"add comdat {name} @ {va:08X}")
    for i, t in replace.items():
        lines[i] = t
    for i in stripped:
        if i not in removed and " stripped" not in lines[i]:
            lines[i] += " stripped"
    # trim symbols straddling a lib unit boundary
    import bisect
    bounds = sorted({x for r in ranges for x in r})
    for sym in syms:
        if sym["size"] is None or sym["line"] in removed or sym["addr"] in obj_vas:
            continue
        a, b = sym["addr"], sym["addr"] + sym["size"]
        i = bisect.bisect_right(bounds, a)
        if i < len(bounds) and bounds[i] < b:
            new = bounds[i] - a
            lines[sym["line"]] = re.sub(r"size:0x[0-9A-Fa-f]+", f"size:0x{new:X}", lines[sym["line"]])
            notes.append(f"resize {sym['name']} 0x{sym['size']:X} -> 0x{new:X}")
    lines = [l for i, l in enumerate(lines) if i not in removed]
    # insert new symbols in address order within their section
    for line in add:
        m = SYM_RE.match(line)
        sec, va = m.group("sec"), int(m.group("addr"), 16)
        pos, last = None, None
        for i, l in enumerate(lines):
            mm = SYM_RE.match(l)
            if not mm or mm.group("sec") != sec:
                continue
            last = i
            if int(mm.group("addr"), 16) > va:
                pos = i
                break
        lines.insert(pos if pos is not None else (last + 1 if last is not None else len(lines)), line)
    sym_path(version, module).write_text("\n".join(lines) + "\n")
    return notes


LIBOBJ_LINE = re.compile(
    r'^(?P<ind>\s*)LibObject\((?P<status>[^,]+(?:\([^)]*\))?), "(?P<arch>[^"]+)", '
    r'"(?P<member>[^"]+)", module="(?P<module>[^"]+)"(?P<rest>.*)$')


def edit_configure(version, module, p, matching):
    """Add/extend LibObject(..., module=M) lines. `matching` = set of member names
    to mark Matching for this version; other present members stay NonMatching."""
    path = ROOT / "configure.py"
    lines = path.read_text().splitlines()
    existing = {}
    for i, l in enumerate(lines):
        m = LIBOBJ_LINE.match(l)
        if m and m.group("module") == module:
            existing[(m.group("arch"), m.group("member").replace("\\\\", "\\"))] = i
    # find the module lib's objects list end
    start = next(i for i, l in enumerate(lines) if l.strip() == f'"lib": "{module}",')
    end = next(i for i in range(start, len(lines)) if lines[i].strip() == "],")
    for e in p["units"]:
        key = (e["archive"], e["member"])
        if key in existing:
            i = existing[key]
            m = LIBOBJ_LINE.match(lines[i])
            st = m.group("status")
            vers = set(re.findall(r'"(BW1W\d+)"', st)) if st.startswith("MatchingFor") else (
                {"BW1W100", "BW1W110", "BW1W120"} if st == "Matching" else set())
            if e["member"] in matching:
                vers.add(version)
            else:
                vers.discard(version)
            lines[i] = (m.group("ind") + "LibObject(" + status_expr(vers) + f', "{m.group("arch")}", "'
                        + m.group("member") + f'", module="{module}"' + m.group("rest"))
        else:
            vers = {version} if e["member"] in matching else set()
            member = e["member"].replace("\\", "\\\\")
            lines.insert(end, f'            LibObject({status_expr(vers)}, "{e["archive"]}", "{member}", '
                              f'module="{module}", progress_category="sdk"),')
            end += 1
    path.write_text("\n".join(lines) + "\n")


def status_expr(vers):
    if vers >= {"BW1W100", "BW1W110", "BW1W120"}:
        return "Matching"
    if not vers:
        return "NonMatching"
    return "MatchingFor(" + ", ".join(f'"{v}"' for v in sorted(vers)) + ")"


if __name__ == "__main__":
    main()
