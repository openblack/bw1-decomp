#!/usr/bin/env python3
"""Port a version's splits.txt / symbols.txt / config.yml to another build of the same program.

The reference version (default BW1W120) has curated splits and symbol names. Other builds
(BW1W130, BW1WCI and their DLLs) are mostly the same code and data at shifted addresses, so the
work is address translation: build a monotone map from reference addresses to target addresses,
then rewrite every address in the config through it.

The map is evidence driven, never adjacency driven. Whatever cannot be placed with evidence is
left out (the split or symbol is dropped and dtk generates the range itself), so a wrong guess
cannot silently corrupt the config. Dropped items are listed with --report.

  .text         Each chunk between reference symbol/split boundaries is searched for in the
                target with rel32/abs32 operands wildcarded. Unique matches are chained with a
                longest-increasing-subsequence and the stretches between chained anchors are
                walked chunk by chunk (tolerating struct offset changes inside a function). What
                is still unmatched is diffed against the room it must fit.
  .rdata/.data  Unique pointer-free runs anchor the section (pointers into already-mapped code are
                translated first, so vtables and tables of function pointers match too). RTTI and
                vtables, whose order inside a unit differs between builds, are placed by name
                through dtk's own analysis of the target.
  libraries     A unit that is a library object (the CRT) is the library's own bytes in every
                build that links it: each of its sections is found by that content, relocated
                fields left out, from the static libraries a build unpacked into build/lib.
  .CRT$XCU      A unit's slice of the initializer table is the run of entries that point into
                the unit's placed .text (an object's slice only lists its own _$E functions).
  .bss          Has no content: every address comes from the operand pairs (reference operand ->
                target operand at the same position) seen in matched code and data.
  imports       The IAT is matched by import name, import thunks by the slot they jump through.

Everything is checked the way it matters: after `ninja`, the relinked image has to be
byte-identical to the original (see docs/porting_versions.md).

Usage:
  python3 tools/port_version.py emit --dst BW1WCI                        # write config/<dst>/
  python3 tools/port_version.py emit --dst BW1WCI --report dropped.txt   # and list what was left out
  python3 tools/port_version.py emit --dst BW1WCI --module LHAudio       # one module DLL
  python3 tools/port_version.py emit --dst BW1WCI --reuse                # skip an alignment still valid

then `python3 configure.py --version <dst>` and `ninja build/<dst>/config.json`, repeated (touch
build/<dst>/runblack-preprocessed.exe in between) until dtk stops printing "Writing updated": it
adds what it finds to the files it is given until they settle.

The emitted config is a starting point, not a finished one. It writes symbols.txt before dtk has
run over it, so a re-emit discards dtk's additions and every hand fix made since. After a re-emit,
check the dropped ranges of every linked unit, and diff the relinked exe against the original.
"""

import argparse
import bisect
import re
import struct
import sys
import time
from pathlib import Path

import pefile

REPO = Path(__file__).resolve().parent.parent

# Where each version's executable lives.
EXECUTABLES = {
    "BW1W100": "orig/BW1W100/runblack-decrypted.exe",
    "BW1W110": "orig/BW1W110/runblack-decrypted.exe",
    "BW1W120": "orig/BW1W120/runblack-decrypted.exe",
    "BW1W130": "orig/BW1W130/runblack-decrypted.exe",
    "BW1WCI": "orig/BW1WCI/CreatureIsle-decrypted.exe",
}


class Image:
    """A PE image: section table plus byte access by virtual address."""

    def __init__(self, path):
        self.path = Path(path)
        self.data = self.path.read_bytes()
        self.pe = pefile.PE(data=self.data, fast_load=True)
        self.base = self.pe.OPTIONAL_HEADER.ImageBase
        self.size_of_image = self.pe.OPTIONAL_HEADER.SizeOfImage
        self.sections = []
        for s in self.pe.sections:
            self.sections.append(
                dict(
                    name=s.Name.rstrip(b"\0").decode(),
                    va=s.VirtualAddress + self.base,
                    vsize=s.Misc_VirtualSize,
                    raw=s.PointerToRawData,
                    rsize=s.SizeOfRawData,
                )
            )

    def section(self, name):
        for s in self.sections:
            if s["name"] == name:
                return s
        raise KeyError(name)

    def section_at(self, addr):
        for s in self.sections:
            if s["va"] <= addr < s["va"] + max(s["vsize"], s["rsize"]):
                return s
        return None

    def raw_bytes(self, name):
        """(va, initialised bytes) of a section; for .data this stops where .bss begins."""
        s = self.section(name)
        return s["va"], self.data[s["raw"] : s["raw"] + min(s["rsize"], s["vsize"])]

    def read(self, addr, n):
        s = self.section_at(addr)
        off = addr - s["va"]
        if off >= s["rsize"]:
            return b"\0" * n
        out = self.data[s["raw"] + off : s["raw"] + min(off + n, s["rsize"])]
        return out + b"\0" * (n - len(out))

    def u32(self, addr):
        return struct.unpack("<I", self.read(addr, 4))[0]

    def directory(self, name):
        for d in self.pe.OPTIONAL_HEADER.DATA_DIRECTORY:
            if d.name == name:
                return d.VirtualAddress + self.base if d.VirtualAddress else 0, d.Size
        return 0, 0


SYM_RE = re.compile(r"^(?P<name>\S+) = (?P<sec>[^:]+):0x(?P<addr>[0-9A-Fa-f]+); // (?P<attrs>.*)$")
SIZE_RE = re.compile(r"size:0x([0-9A-Fa-f]+)")


def parse_symbols(path):
    """Symbols as dicts; unparsable lines are kept as {'raw': line} so a rewrite is lossless."""
    out = []
    for line in Path(path).read_text(encoding="utf-8").split("\n"):
        if line == "":
            continue
        m = SYM_RE.match(line)
        if not m:
            out.append(dict(raw=line))
            continue
        d = m.groupdict()
        d["addr"] = int(d["addr"], 16)
        sm = SIZE_RE.search(d["attrs"])
        d["size"] = int(sm.group(1), 16) if sm else None
        out.append(d)
    return out


def format_symbol(sym, addr=None, size=None):
    if "raw" in sym:
        return sym["raw"]
    attrs = sym["attrs"]
    if size is not None and sym["size"] is not None:
        attrs = SIZE_RE.sub("size:0x%X" % size, attrs, count=1)
    elif size is None and sym["size"] is not None:
        attrs = re.sub(r"\s*size:0x[0-9A-Fa-f]+", "", attrs, count=1).strip()
    return "%s = %s:0x%08X; // %s" % (sym["name"], sym["sec"], sym["addr"] if addr is None else addr, attrs)


SPLIT_SEC_RE = re.compile(r"^\t(\S+)\s+(.*)$")
SPLIT_HDR_RE = re.compile(r"^\t(\S+)\s+type:(\S+)\s+vaddr:0x([0-9A-Fa-f]+) end:0x([0-9A-Fa-f]+)(.*)$")


def parse_split_section(line):
    """One indented unit row -> (section, start, end, other attributes)."""
    m = SPLIT_SEC_RE.match(line)
    if not m:
        raise SystemExit("unparsable splits line: %r" % line)
    start = end = None
    rest = []
    for tok in m.group(2).split():
        if tok.startswith("start:0x"):
            start = int(tok[8:], 16)
        elif tok.startswith("end:0x"):
            end = int(tok[6:], 16)
        else:
            rest.append(tok)
    if start is None or end is None:
        raise SystemExit("unparsable splits line: %r" % line)
    return m.group(1), start, end, " ".join(rest)


def parse_splits(path):
    """(header lines, units). A unit is dict(name, attrs, secs=[(section, start, end, attrs)])."""
    header, units, cur = [], [], None
    for line in Path(path).read_text(encoding="utf-8").split("\n"):
        if cur is None and not (line and not line.startswith("\t") and not line.startswith("Sections:")):
            header.append(line)
            continue
        if line == "":
            continue
        if line.startswith("\t"):
            cur["secs"].append(parse_split_section(line))
        else:
            m = re.match(r"^(.*?):\s*(.*)$", line)
            cur = dict(name=m.group(1), attrs=m.group(2), secs=[])
            units.append(cur)
    while header and header[-1] == "":
        header.pop()
    return header, units


def parse_header_sections(header):
    """Header 'Sections:' rows as dicts (name, type, vaddr, end, extra)."""
    rows = []
    for line in header:
        m = SPLIT_HDR_RE.match(line)
        if m:
            rows.append(dict(name=m.group(1), type=m.group(2), vaddr=int(m.group(3), 16), end=int(m.group(4), 16), extra=m.group(5).strip(), line=line))
        elif line.startswith("\t"):
            rows.append(dict(name=line.split()[0], line=line))
    return rows


class AddrMap:
    """Piecewise-constant-delta map from reference to target addresses.

    A block (a0, a1, b0, b1) says reference [a0, a1) lives at target [b0, b1). Normally the two
    extents are the same length; a function that grew or shrank keeps its start and end exact and
    only its interior is extrapolated.
    """

    def __init__(self, blocks=()):
        self.blocks = []
        self.starts = []
        for blk in sorted(blocks):
            self.add(*blk)

    def add(self, a0, a1, b0, b1=None):
        if a1 <= a0:
            return
        if b1 is None:
            b1 = b0 + a1 - a0
        if self.blocks and self.blocks[-1][1] > a0:
            raise ValueError("overlapping reference blocks %08x-%08x" % (a0, a1))
        last = self.blocks[-1] if self.blocks else None
        if last and last[1] == a0 and last[3] - last[2] == last[1] - last[0] and last[2] + (a0 - last[0]) == b0 and b1 - b0 == a1 - a0:
            self.blocks[-1] = (last[0], a1, last[2], b1)
            return
        self.blocks.append((a0, a1, b0, b1))
        self.starts.append(a0)

    def _block(self, a):
        i = bisect.bisect_right(self.starts, a) - 1
        if i >= 0 and self.blocks[i][0] <= a < self.blocks[i][1]:
            return self.blocks[i]
        return None

    def lookup(self, a):
        b = self._block(a)
        if b is None:
            return None
        v = b[2] + a - b[0]
        return v if b[3] - b[2] == b[1] - b[0] else min(v, b[3] - 1)

    def lookup_end(self, a):
        """Map an exclusive end address (the last byte before it must be mapped)."""
        b = self._block(a - 1)
        if b is None:
            return None
        if a == b[1]:
            return b[3]
        return b[2] + a - b[0]


# ---------------------------------------------------------------------------------------------
# Wildcarded regions
# ---------------------------------------------------------------------------------------------

def code_wildcard(image):
    """rel32 after call/jmp, and abs32 operands that land in the image.

    An address is four little-endian bytes: two free ones, then the two high bytes, whose possible
    values follow from the image's range (0x00401000..0x01055200 for the executables, 0x10001000..
    for the DLLs).
    """
    lo, hi = image.base + 0x1000, image.base + image.size_of_image
    alts = []
    for top in range(lo >> 24, ((hi - 1) >> 24) + 1):
        b2_lo = (lo >> 16) & 0xFF if top == lo >> 24 else 0
        b2_hi = ((hi - 1) >> 16) & 0xFF if top == (hi - 1) >> 24 else 0xFF
        alts.append(rb"..[\x%02x-\x%02x]\x%02x" % (b2_lo, b2_hi, top))
    return re.compile(rb"(?s)[\xE8\xE9]....|" + b"|".join(alts))


PADDING_BYTES = b"\x90\xcc"


class Region:
    """Bytes of one section with the positions that are expected to differ between builds masked."""

    def __init__(self, image, name, kind, hi=None, lo_addr=None, hi_addr=None):
        self.image = image
        self.name = name
        self.kind = kind
        self.va, self.raw = image.raw_bytes(name)
        self.wild = code_wildcard(image)
        if lo_addr is not None or hi_addr is not None:
            lo_addr = self.va if lo_addr is None else lo_addr
            hi_addr = self.va + len(self.raw) if hi_addr is None else hi_addr
            self.raw = self.raw[lo_addr - self.va : hi_addr - self.va]
            self.va = lo_addr
        self.end = self.va + len(self.raw)
        self.norm, self.mask = (self._wild_code if kind == "code" else self._wild_data)(hi or image.base + image.size_of_image)

    def _wild_code(self, hi):
        norm = bytearray(self.raw)
        mask = bytearray(len(norm))
        for m in self.wild.finditer(self.raw):
            s, e = m.span()
            if self.raw[s] in (0xE8, 0xE9):
                s += 1
            norm[s:e] = b"\0" * (e - s)
            mask[s:e] = b"\1" * (e - s)
        return bytes(norm), bytes(mask)

    def _wild_data(self, hi):
        norm = bytearray(self.raw)
        mask = bytearray(len(norm))
        lo = self.image.base + 0x1000
        for i in range((-self.va) % 4, len(norm) - 3, 4):
            w = struct.unpack_from("<I", self.raw, i)[0]
            if lo <= w < hi:
                norm[i : i + 4] = b"\0\0\0\0"
                mask[i : i + 4] = b"\1\1\1\1"
        return bytes(norm), bytes(mask)


def make_chunks(region, symbols, units, section_names):
    """Cut a reference region at every symbol start/end and every split boundary."""
    cuts = {region.va, region.end}
    for s in symbols:
        if "raw" in s or s["sec"] not in section_names:
            continue
        cuts.add(s["addr"])
        if s["size"]:
            cuts.add(s["addr"] + s["size"])
    for u in units:
        for sec, a, b, _ in u["secs"]:
            if sec in section_names:
                cuts.add(a)
                cuts.add(b)
    cuts = sorted(c for c in cuts if region.va <= c <= region.end)
    return [dict(addr=a, end=b) for a, b in zip(cuts, cuts[1:])]


class Aligner:
    """Places reference chunks of one region into the target region with verified evidence.

    res[k] is the target address of chunk k (or None) and how[k] says why: 'seed' (unique
    content match chained into a monotone sequence), 'walk' (verified at the expected
    position), 'infer' (no verifiable content, but bracketed by verified chunks whose gap
    size is exactly the sum of the chunk sizes).
    """

    def __init__(self, a, b, chunks, translate=None):
        self.a, self.b, self.chunks = a, b, chunks
        self.translate = translate  # reference pointer value -> target value or None (data only)
        self.last_info = 0
        self.res = [None] * len(chunks)
        self.how = [None] * len(chunks)
        self.blen = {}  # target length of chunks whose size differs from the reference
        self.loose = []  # reference ranges (sorted) whose functions are not 16-byte aligned
        self.stats = dict(seed=0, walk=0, infer=0, ident=0, lost=0)

    # -- verification ---------------------------------------------------------------------
    def body_len(self, c):
        if self.a.kind != "code":
            return c["end"] - c["addr"]
        ao = c["addr"] - self.a.va
        return len(self.a.raw[ao : ao + c["end"] - c["addr"]].rstrip(PADDING_BYTES))

    def verify(self, k, bpos):
        """'yes', 'no' or 'unk' (nothing to verify) for chunk k placed at region offset bpos."""
        return self.verify_range(self.chunks[k], bpos)

    def verify_range(self, c, bpos):
        n = self.body_len(c)
        ao = c["addr"] - self.a.va
        if bpos < 0 or bpos + n > len(self.b.raw):
            return "no"
        if self.a.kind == "code":
            return self._verify_code(ao, bpos, n)
        return self._verify_data(ao, bpos, n)

    def _verify_code(self, ao, bo, n):
        if n < 6:
            return "unk"
        x, y = self.a.norm[ao : ao + n], self.b.norm[bo : bo + n]
        if x == y:
            return "yes"
        mx, my = self.a.mask[ao : ao + n], self.b.mask[bo : bo + n]
        diff = 0
        for i in range(n):
            if x[i] != y[i] and not mx[i] and not my[i]:
                diff += 1
        if n < 20:
            return "yes" if diff == 0 else "no"
        return "yes" if diff <= n * 0.2 else "no"

    def _verify_data(self, ao, bo, n):
        a, b = self.a, self.b
        x, y = a.norm[ao : ao + n], b.norm[bo : bo + n]
        mx, my = a.mask[ao : ao + n], b.mask[bo : bo + n]
        info = diff = 0
        i = 0
        while i < n:
            if mx[i]:
                # a pointer word: it must be a pointer in the target too, and equal once translated
                if i + 4 <= n:
                    va = struct.unpack_from("<I", a.raw, ao + i)[0]
                    vb = struct.unpack_from("<I", b.raw, bo + i)[0]
                    want = self.translate(va) if self.translate else None
                    if want is not None:
                        if want == vb:
                            info += 8
                        else:
                            diff += 4
                    elif my[i]:
                        info += 1
                    else:
                        diff += 4
                i += 4
                continue
            if x[i] == y[i] and not my[i]:
                if x[i]:
                    info += 1
            else:
                diff += 1
            i += 1
        self.last_info = info
        if info < 6:
            return "unk" if diff == 0 else "no"
        return "yes" if diff <= info * 0.1 else "no"

    # -- seeds ----------------------------------------------------------------------------
    def longest_run(self, c, min_len=6):
        ao = c["addr"] - self.a.va
        n = self.body_len(c)
        mask, raw = self.a.mask, self.a.raw
        best = (0, 0)
        i = 0
        while i < n:
            if mask[ao + i]:
                i += 1
                continue
            j = i
            while j < n and not mask[ao + j]:
                j += 1
            if j - i > best[1] and len(set(raw[ao + i : ao + j])) > 3:
                best = (i, j - i)
            i = j
        return best if best[1] >= min_len else None

    def candidates(self, k, lo, hi, limit=24):
        """Target offsets in [lo, hi) where chunk k verifies, found through its longest literal run."""
        return self.candidates_range(self.chunks[k], lo, hi, limit)

    def candidates_range(self, c, lo, hi, limit=24):
        ao = c["addr"] - self.a.va
        run = self.longest_run(c)
        if run is not None:
            off, ln = run
            needle = self.a.raw[ao + off : ao + off + ln]
            step = 1
        else:
            pointer = self.first_translated_pointer(c)
            if pointer is None:
                return []
            off, want = pointer
            needle = struct.pack("<I", want)
            ln = 4
            step = 4
        out = []
        q = max(lo, 0) + off
        while len(out) < limit:
            q = self.b.raw.find(needle, q, hi + ln)
            if q < 0:
                break
            if q - off >= lo and self.verify_range(c, q - off) == "yes" and (step == 1 or self.last_info >= 12):
                out.append(q - off)
            q += step
        return out

    def first_translated_pointer(self, c):
        """(offset, target value) of the first pointer word in chunk c that has a known translation."""
        if self.translate is None or self.a.kind != "data":
            return None
        ao = c["addr"] - self.a.va
        n = c["end"] - c["addr"]
        for i in range(0, n - 3):
            if self.a.mask[ao + i] and (self.a.va + ao + i) % 4 == 0:
                want = self.translate(struct.unpack_from("<I", self.a.raw, ao + i)[0])
                if want is not None:
                    return i, want
        return None

    def seed_chunks(self, min_body=16, min_run=12):
        cands = {}
        for k, c in enumerate(self.chunks):
            if self.body_len(c) < min_body:
                continue
            run = self.longest_run(c, min_run)
            if run is None:
                continue
            found = self.candidates(k, 0, len(self.b.raw))
            if found:
                cands[k] = found
        return cands

    @staticmethod
    def chain(cands):
        """Longest monotone sequence of unique placements."""
        uniq = {k: v[0] for k, v in cands.items() if len(v) == 1}
        tails, tail_idx, prev = [], [], {}
        for k in sorted(uniq):
            st = uniq[k]
            i = bisect.bisect_left(tails, st)
            if i == len(tails):
                tails.append(st)
                tail_idx.append(k)
            else:
                tails[i] = st
                tail_idx[i] = k
            prev[k] = tail_idx[i - 1] if i > 0 else None
        out = {}
        k = tail_idx[-1] if tail_idx else None
        while k is not None:
            out[k] = uniq[k]
            k = prev[k]
        return out

    def translated_view(self):
        """Reference bytes with every pointer that has a known translation rewritten to its target
        value (so pointer-heavy data can be matched byte for byte); unknown pointers stay masked."""
        a = self.a
        if self.translate is None or a.kind != "data":
            return a.raw, a.mask
        raw = bytearray(a.raw)
        mask = bytearray(a.mask)
        for i in range((-a.va) % 4, len(raw) - 3, 4):
            if mask[i]:
                t = self.translate(struct.unpack_from("<I", raw, i)[0])
                if t is not None:
                    raw[i : i + 4] = struct.pack("<I", t)
                    mask[i : i + 4] = b"\0\0\0\0"
        return bytes(raw), bytes(mask)

    def seed_kmers(self, k=24):
        """Seeds for pointer-light data: unique pointer-free k-byte runs, chained, grouped by delta.

        Every chunk lying inside a stretch of consecutive anchors with one delta moves by it.
        """
        a, b = self.a, self.b
        a_raw, a_mask = self.translated_view()
        index = {}
        for j in range(len(b.raw) - k + 1):
            key = b.raw[j : j + k]
            index[key] = -1 if key in index else j
        seen = {}
        for i in range(len(a_raw) - k + 1):
            key = a_raw[i : i + k]
            seen[key] = -1 if key in seen else i
        pairs = []
        for key, i in seen.items():
            j = index.get(key, -1)
            if i < 0 or j < 0 or any(a_mask[i : i + k]) or len(set(key)) < 4:
                continue
            pairs.append((i, j))
        pairs.sort()
        tails, tail_idx, prev = [], [], [None] * len(pairs)
        for n, (i, j) in enumerate(pairs):
            p = bisect.bisect_left(tails, j)
            if p == len(tails):
                tails.append(j)
                tail_idx.append(n)
            else:
                tails[p] = j
                tail_idx[p] = n
            prev[n] = tail_idx[p - 1] if p > 0 else None
        seq = []
        n = tail_idx[-1] if tail_idx else None
        while n is not None:
            seq.append(pairs[n])
            n = prev[n]
        seq.reverse()
        spans = []  # [first, end, delta]
        for i, j in seq:
            if spans and spans[-1][2] == j - i:
                spans[-1][1] = i + k
            else:
                spans.append([i, i + k, j - i])
        starts = [sp[0] for sp in spans]
        out = {}
        for idx, c in enumerate(self.chunks):
            ao = c["addr"] - a.va
            t = bisect.bisect_right(starts, ao) - 1
            if t >= 0 and ao >= spans[t][0] and c["end"] - a.va <= spans[t][1]:
                out[idx] = ao + spans[t][2]
        self.spans = spans
        return out

    # -- placement ------------------------------------------------------------------------
    def place_seeds(self, seeds, how="seed"):
        for k, st in seeds.items():
            if self.res[k] is None:
                self.res[k] = st
                self.how[k] = how
                self.stats[how] = self.stats.get(how, 0) + 1

    def size(self, k):
        c = self.chunks[k]
        return c["end"] - c["addr"]

    def fill_gaps(self):
        n = len(self.chunks)
        placed = [k for k in range(n) if self.res[k] is not None]
        bounds = [-1] + placed + [n]
        for left, right in zip(bounds, bounds[1:]):
            todo = list(range(left + 1, right))
            if not todo:
                continue
            lo = 0 if left < 0 else self.res[left] + self.size(left)
            hi = len(self.b.raw) if right >= n else self.res[right]
            self._fill(todo, lo, hi)

    def _fill(self, todo, lo, hi):
        total = sum(self.size(k) for k in todo)
        if hi - lo == total:
            p = lo
            for k in todo:
                self.res[k] = p
                self.how[k] = "ident"
                self.stats["ident"] += 1
                p += self.size(k)
            return
        p = lo
        pending = []  # chunks with nothing to verify, waiting for a verified successor
        i = 0
        while i < len(todo):
            k = todo[i]
            v = self.verify(k, p)
            if v == "yes":
                self._resolve(pending, p)
                pending = []
                self.res[k], self.how[k] = p, "walk"
                self.stats["walk"] += 1
                p += self.size(k)
                i += 1
            elif v == "unk":
                pending.append((k, p))
                p += self.size(k)
                i += 1
            else:
                found = None
                for j in range(min(10, len(todo) - i)):
                    kj = todo[i + j]
                    if self.body_len(self.chunks[kj]) < 8:
                        continue
                    cs = self.candidates(kj, pending[0][1] if pending else p, hi)
                    if cs:
                        found = (j, cs[0])
                        break
                group = None
                if found is None and self.a.kind == "data":
                    group = self._find_group(todo, i, pending[0][1] if pending else p, hi)
                if group is not None:
                    j, members, st = group
                    self.stats["lost"] += j
                    pending = []
                    q = st
                    for t in members:
                        self.res[t], self.how[t] = q, "group"
                        self.stats["group"] = self.stats.get("group", 0) + 1
                        q += self.size(t)
                    i += j + len(members)
                    p = q
                    continue
                if found is None:
                    pending = []
                    self.stats["lost"] += 1
                    p += self.size(k)
                    i += 1
                    continue
                j, st = found
                self.stats["lost"] += j
                # chunks before the found one are unknown; chunks that were pending can still be
                # placed if they exactly fill the room before it
                skipped = [todo[i + t] for t in range(j)]
                if pending and not skipped:
                    self._resolve(pending, st)
                pending = []
                i += j
                p = st
        if pending:
            self._resolve(pending, hi)

    def _find_group(self, todo, i, lo, hi, lookahead=24, min_size=24):
        """Small neighbouring chunks (array slices cut by symbol boundaries) searched as one run."""
        for j in range(min(lookahead, len(todo) - i)):
            members = []
            size = 0
            for t in todo[i + j :]:
                members.append(t)
                size += self.size(t)
                if size >= min_size:
                    break
            if size < min_size:
                break
            virtual = dict(addr=self.chunks[members[0]]["addr"], end=self.chunks[members[-1]]["end"])
            cs = self.candidates_range(virtual, lo, hi)
            if cs:
                return j, members, cs[0]
        return None

    def _resolve(self, pending, nxt):
        """Pending chunks fill [pending[0].p, nxt) exactly: place them; otherwise leave them unknown."""
        if not pending:
            return
        start = pending[0][1]
        if start + sum(self.size(k) for k, _ in pending) != nxt:
            self.stats["lost"] += len(pending)
            return
        for k, p in pending:
            self.res[k], self.how[k] = p, "infer"
            self.stats["infer"] += 1

    def is_dust(self, k):
        """Alignment padding or a trailing nop run: nothing to place on its own."""
        return self.body_len(self.chunks[k]) == 0 or (self.chunks[k]["end"] - self.chunks[k]["addr"] < 16 and self.a.kind == "code" and not self.chunks[k].get("sym"))

    def repair(self):
        """Place runs of unmatched chunks whose neighbours bracket them unambiguously."""
        n = len(self.chunks)
        k = 0
        while k < n:
            if self.res[k] is not None:
                k += 1
                continue
            j = k
            while j < n and self.res[j] is None:
                j += 1
            lo = 0 if k == 0 else (self.res[k - 1] + self.size(k - 1) if self.res[k - 1] is not None else None)
            hi = len(self.b.raw) if j >= n else self.res[j]
            if lo is not None and hi is not None and k > 0 and j < n:
                run = list(range(k, j))
                if hi - lo == sum(self.size(t) for t in run):
                    p = lo
                    for t in run:
                        self.res[t], self.how[t] = p, "bracket"
                        p += self.size(t)
                        self.stats["bracket"] = self.stats.get("bracket", 0) + 1
                else:
                    real = [t for t in run if not self.is_dust(t)]
                    if len(real) == 1:
                        before = sum(self.size(t) for t in run if t < real[0])
                        after = sum(self.size(t) for t in run if t > real[0])
                        if hi - after > lo + before:
                            p = lo
                            for t in run:
                                if t == real[0]:
                                    self.res[t], self.how[t] = lo + before, "resized"
                                    self.blen[t] = hi - after - (lo + before)
                                    self.stats["resized"] = self.stats.get("resized", 0) + 1
                                elif t < real[0]:
                                    self.res[t], self.how[t] = p, "bracket"
                                    p += self.size(t)
                                else:
                                    self.res[t], self.how[t] = hi - after + sum(self.size(u) for u in run if real[0] < u < t), "bracket"
            k = j

    def align_runs(self, snap=None, min_fraction=0.6):
        """Place runs of unmatched functions by diffing the whole run against the gap it must fit.

        A function that gained or lost an instruction shifts everything after it, which defeats the
        position-by-position comparison; a sequence diff of the run against the room between its
        placed neighbours still finds the common stretches. A chunk is placed when its first byte
        lies in a common stretch and most of its bytes are common.
        """
        import difflib

        n = len(self.chunks)
        placed = 0
        k = 0
        while k < n:
            if self.res[k] is not None:
                k += 1
                continue
            j = k
            while j < n and self.res[j] is None:
                j += 1
            lo = 0 if k == 0 else (self.res[k - 1] + self.size(k - 1) if self.res[k - 1] is not None else None)
            hi = len(self.b.raw) if j >= n else self.res[j]
            run = [t for t in range(k, j)]
            if lo is not None and 0 < hi - lo <= 6 * sum(self.size(t) for t in run) + 0x400 and any(not self.is_dust(t) for t in run):
                a0 = self.chunks[run[0]]["addr"] - self.a.va
                a1 = self.chunks[run[-1]]["end"] - self.a.va
                # wildcard bytes must not break matches: zero them on both sides
                a_bytes = self.a.norm[a0:a1]
                b_bytes = self.b.norm[lo:hi]
                sm = difflib.SequenceMatcher(None, a_bytes, b_bytes, autojunk=False)
                blocks = [m for m in sm.get_matching_blocks() if m.size >= 4]
                starts = [m.a for m in blocks]
                for t in run:
                    if self.is_dust(t):
                        continue
                    c = self.chunks[t]
                    s0 = c["addr"] - self.a.va - a0
                    e0 = c["end"] - self.a.va - a0
                    i = bisect.bisect_right(starts, s0) - 1
                    if i < 0 or not (blocks[i].a <= s0 < blocks[i].a + blocks[i].size):
                        continue
                    common = sum(max(0, min(m.a + m.size, e0) - max(m.a, s0)) for m in blocks[max(0, i - 1) :] if m.a < e0)
                    if common < min_fraction * (e0 - s0):
                        continue
                    pos = lo + blocks[i].b + (s0 - blocks[i].a)
                    if snap is not None:
                        near = [q for q in range(pos - 8, pos + 9) if q + self.b.va in snap]
                        if near:
                            pos = min(near, key=lambda q: abs(q - pos))
                    if self.res[t] is None and pos >= lo and pos < hi:
                        self.res[t], self.how[t] = pos, "diff"
                        placed += 1
            k = j
        self.stats["diff"] = self.stats.get("diff", 0) + placed
        return placed

    def make_monotone(self):
        """Drop placements that run backwards (a false anchor); report how many."""
        last = -1
        dropped = []
        for k, st in enumerate(self.res):
            if st is None:
                continue
            if st < last:
                dropped.append(k)
                self.res[k] = None
                continue
            last = st + self.size(k)
        return dropped + self.drop_misaligned()

    def drop_misaligned(self):
        """Game code functions start on 16 bytes in every build (libraries declare their own alignment
        in splits.txt and are left alone, as are data tables, whose alignment is incidental)."""
        dropped = []
        if self.a.kind != "code":
            return dropped
        loose = self.loose
        starts = [r[0] for r in loose]
        for k, st in enumerate(self.res):
            if st is None or self.how[k] == "name":
                continue
            a = self.chunks[k]["addr"]
            if a % 16:
                continue
            i = bisect.bisect_right(starts, a) - 1
            if i >= 0 and a < loose[i][1]:
                continue
            if (self.b.va + st) % 16:
                dropped.append(k)
                self.res[k] = None
        return dropped

    def blocks(self, trusted=False):
        """(reference start, end, target address) per placed chunk; trusted drops guesses made
        only from the size of the gap they sit in."""
        out = []
        for k, st in enumerate(self.res):
            if st is None or (trusted and self.how[k] in ("bracket", "infer", "resized")):
                continue
            c = self.chunks[k]
            length = self.blen.get(k, c["end"] - c["addr"])
            out.append((c["addr"], c["end"], self.b.va + st, self.b.va + st + length))
        return out


# ---------------------------------------------------------------------------------------------
# Operand pairs: the same operand seen in a matched reference/target location
# ---------------------------------------------------------------------------------------------


def collect_pairs(al, pairs, verdicts=("yes",)):
    """Add (reference operand -> target operand) votes from every placed, verified chunk of al."""
    a, b = al.a, al.b
    for k, c in enumerate(al.chunks):
        bo = al.res[k]
        if bo is None or al.how[k] in ("bracket", "infer", "resized", "pair"):
            continue
        if al.how[k] not in ("seed", "name") and al.verify(k, bo) not in verdicts:
            continue
        ao = c["addr"] - a.va
        n = c["end"] - c["addr"]
        if bo + n > len(b.raw):
            n = len(b.raw) - bo
        if a.kind == "code":
            _collect_code(a, b, ao, bo, n, pairs)
        else:
            _collect_data(a, b, ao, bo, n, pairs)


def _vote(pairs, va, vb):
    d = pairs.setdefault(va, {})
    d[vb] = d.get(vb, 0) + 1


def _collect_code(a, b, ao, bo, n, pairs):
    raw_a, raw_b = a.raw, b.raw
    for m in a.wild.finditer(raw_a, ao, ao + n):
        s, e = m.span()
        off = s - ao
        if raw_a[s] in (0xE8, 0xE9):
            if raw_b[bo + off] != raw_a[s] or bo + off + 5 > len(raw_b):
                continue
            ta = a.va + s + 5 + struct.unpack_from("<i", raw_a, s + 1)[0]
            tb = b.va + bo + off + 5 + struct.unpack_from("<i", raw_b, bo + off + 1)[0]
            _vote(pairs, ta, tb)
        else:
            if bo + off + 4 > len(raw_b):
                continue
            va = struct.unpack_from("<I", raw_a, s)[0]
            vb = struct.unpack_from("<I", raw_b, bo + off)[0]
            if vb >> 16 >= 0x40:
                _vote(pairs, va, vb)


def _collect_data(a, b, ao, bo, n, pairs):
    mask = a.mask
    i = 0
    while i < n - 3:
        if mask[ao + i] and (a.va + ao + i) % 4 == 0:
            if bo + i + 4 <= len(b.raw) and b.mask[bo + i]:
                _vote(pairs, struct.unpack_from("<I", a.raw, ao + i)[0], struct.unpack_from("<I", b.raw, bo + i)[0])
            i += 4
        else:
            i += 1


def clean_pairs(pairs):
    """Majority target per reference operand, dropped where the vote is not decisive."""
    out = {}
    for va, d in pairs.items():
        vb, cnt = max(d.items(), key=lambda kv: kv[1])
        if cnt * 2 > sum(d.values()):
            out[va] = vb
    return out


def chain_pairs(clean):
    """Longest monotone subset of clean pairs (drops constants that merely look like addresses)."""
    items = sorted(clean.items())
    tails, tail_idx, prev = [], [], [None] * len(items)
    for n, (va, vb) in enumerate(items):
        i = bisect.bisect_left(tails, vb)
        if i == len(tails):
            tails.append(vb)
            tail_idx.append(n)
        else:
            tails[i] = vb
            tail_idx[i] = n
        prev[n] = tail_idx[i - 1] if i > 0 else None
    out = []
    n = tail_idx[-1] if tail_idx else None
    while n is not None:
        out.append(items[n])
        n = prev[n]
    out.reverse()
    return out


# ---------------------------------------------------------------------------------------------
# Whole-image mapping
# ---------------------------------------------------------------------------------------------


def import_layout(image):
    """Address ranges of the import tables: IAT, descriptors, ILT/names, and the export directory."""
    imp_va, imp_size = image.directory("IMAGE_DIRECTORY_ENTRY_IMPORT")
    exp_va, exp_size = image.directory("IMAGE_DIRECTORY_ENTRY_EXPORT")
    dbg_va, dbg_size = image.directory("IMAGE_DIRECTORY_ENTRY_DEBUG")
    iat_lo = iat_hi = ilt_lo = ilt_hi = 0
    names = []
    pos = imp_va
    while True:
        orig, _, _, name, first = struct.unpack("<IIIII", image.read(pos, 20))
        if not name:
            break
        base = image.base
        # thunks are zero terminated
        def span(rva):
            if not rva or image.section_at(base + rva) is None:
                return None
            n = 0
            while image.u32(base + rva + 4 * n):
                n += 1
            return base + rva, base + rva + 4 * (n + 1)

        thunks = span(first)
        if thunks:
            iat_lo = thunks[0] if not iat_lo else min(iat_lo, thunks[0])
            iat_hi = max(iat_hi, thunks[1])
        thunks = span(orig)
        if thunks:
            ilt_lo = thunks[0] if not ilt_lo else min(ilt_lo, thunks[0])
            ilt_hi = max(ilt_hi, thunks[1])
        pos += 20
    return dict(
        import_dir=imp_va, import_end=imp_va + imp_size, export_dir=exp_va, export_size=exp_size,
        debug_dir=dbg_va, debug_size=dbg_size, iat=(iat_lo, iat_hi), ilt=(ilt_lo, ilt_hi),
    )


def original_import_start(image, layout):
    """Where the linker put the import descriptors inside .rdata.

    Creature Isle's directory points at a rebuilt table in .MGD32, but the original descriptors
    (name RVA -> "xxx.dll", FirstThunk -> the IAT) are still sitting in .rdata.
    """
    rdata = image.section(".rdata")
    lo, hi = rdata["va"], rdata["va"] + rdata["rsize"]
    if lo <= layout["import_dir"] < hi:
        return layout["import_dir"]
    base = image.base
    best = (0, 0)  # (run length, start)
    pos = lo
    run = 0
    start = 0
    while pos < hi:
        orig, _, _, name, first = struct.unpack("<IIIII", image.read(pos, 20))
        ok = 0 < name and lo <= base + name < hi and lo <= base + first < hi
        if ok:
            ok = read_cstr(image, base + name).lower().endswith(".dll")
        if ok:
            if not run:
                start = pos
            run += 1
            pos += 20
            if run > best[0]:
                best = (run, start)
        else:
            run = 0
            pos += 4
    return best[1]


class Porter:
    """Builds the reference -> target AddrMap for one executable."""

    def __init__(self, src_dir, src_exe, dst_exe, log=print):
        self.log = log
        self.A, self.B = Image(src_exe), Image(dst_exe)
        self.symbols = parse_symbols(src_dir / "symbols.txt")
        self.header, self.units = parse_splits(src_dir / "splits.txt")
        self.hdr_rows = parse_header_sections(self.header)
        self.la, self.lb = import_layout(self.A), import_layout(self.B)
        self.a_imports = original_import_start(self.A, self.la)
        self.b_imports = original_import_start(self.B, self.lb)
        rdata = self.B.section(".rdata")
        # False when the target's import tables were moved out of .rdata (Creature Isle)
        self.standard_imports = rdata["va"] <= self.lb["import_dir"] < rdata["va"] + rdata["rsize"]
        self.pairs = {}
        self.clean = {}
        self.native_functions = set()
        self.native_sizes = {}
        self.native_starts = []
        self.name_pairs = {}
        self.name_sizes = {}
        self.native_structures = []
        self.aligners = {}
        self.map = AddrMap()

    @staticmethod
    def rdata_start(image, layout):
        """Where the curated .rdata begins: after the IAT and, if the linker left one, the debug directory."""
        rdata = image.section(".rdata")
        if rdata["va"] <= layout["debug_dir"] < rdata["va"] + rdata["rsize"]:
            return layout["debug_dir"] + layout["debug_size"]
        return layout["iat"][1]

    # data regions that carry curated content (everything except the import machinery)
    def data_regions(self):
        a_rdata_lo = self.rdata_start(self.A, self.la)
        b_rdata_lo = self.rdata_start(self.B, self.lb)
        a_bss = next(r for r in self.hdr_rows if r["name"] == ".bss")["vaddr"]
        return {
            ".rdata": ((a_rdata_lo, self.a_imports), (b_rdata_lo, self.b_imports)),
            ".data": ((self.A.section(".data")["va"], a_bss), (self.B.section(".data")["va"], None)),
        }

    def thunk_matches(self, a_addr, b_addr):
        """For an import thunk (jmp dword ptr [__imp_X]) in the reference, whether the target has the
        same thunk at b_addr; None when a_addr is no thunk."""
        code = self.A.read(a_addr, 6)
        if code[:2] != b"\xff\x25":
            return None
        if not hasattr(self, "_slots"):
            self._slots = ({v: k for k, v in import_slots(self.A).items()}, import_slots(self.B))
        key = self._slots[0].get(struct.unpack("<I", code[2:])[0])
        if key is None:
            return None
        slot = self._slots[1].get(key)
        return slot is not None and self.B.read(b_addr, 6) == b"\xff\x25" + struct.pack("<I", slot)

    def placement_solid(self, addr):
        """True when the chunk starting at a reference address was placed on content evidence:
        matched outright, or placed by identity/inference and then confirmed by its bytes."""
        for al in self.aligners.values():
            if al.a.va <= addr < al.a.end:
                if not hasattr(al, "_starts"):
                    al._starts = {c["addr"]: k for k, c in enumerate(al.chunks)}
                k = al._starts.get(addr)
                if k is None or al.res[k] is None:
                    return False
                if al.how[k] in ("seed", "walk", "name", "group"):
                    return True
                return al.how[k] in ("ident", "bracket", "infer") and al.verify(k, al.res[k]) == "yes"
        return False

    def combined_map(self, trusted=True):
        m = AddrMap()
        blocks = []
        for al in self.aligners.values():
            blocks.extend(al.blocks(trusted))
        for blk in sorted(blocks):
            if m.blocks and m.blocks[-1][1] > blk[0]:
                continue
            m.add(*blk)
        return m

    def translate(self, value):
        v = self.map.lookup(value)
        if v is None:
            v = self.clean.get(value)
        return v

    def align_text(self):
        ra, rb = Region(self.A, ".text", "code"), Region(self.B, ".text", "code")
        chunks = make_chunks(ra, self.symbols, self.units, {".text", ".text$x"})
        al = Aligner(ra, rb, chunks)
        al.loose = sorted(
            (a, b)
            for u in self.units
            for sec, a, b, attrs in u["secs"]
            if sec in (".text", ".text$x") and "align:" in attrs and int(re.search(r"align:(\d+)", attrs).group(1)) < 16
        )
        seeds = al.chain(al.seed_chunks())
        al.place_seeds(seeds)
        al.fill_gaps()
        al.make_monotone()
        al.repair()
        al.align_runs(self.native_functions)
        al.make_monotone()
        self.aligners[".text"] = al
        self.apply_name_pairs(".text")
        self.map = self.combined_map()
        self.log("text: %d chunks, %s, unplaced %d" % (len(chunks), al.stats, sum(r is None for r in al.res)))

    def align_data(self, name, kmer=16):
        (alo, ahi), (blo, bhi) = self.data_regions()[name]
        da = Region(self.A, name, "data", lo_addr=alo, hi_addr=ahi)
        db = Region(self.B, name, "data", lo_addr=blo, hi_addr=bhi)
        chunks = make_chunks(da, self.symbols, self.units, {name})
        al = Aligner(da, db, chunks, translate=self.translate)
        al.place_seeds(al.seed_kmers(kmer))
        al.fill_gaps()
        al.make_monotone()
        al.repair()
        self.aligners[name] = al
        self.apply_name_pairs(name)
        self.map = self.combined_map()
        self.log("%s: %d chunks, %s, unplaced %d" % (name, len(chunks), al.stats, sum(r is None for r in al.res)))

    def gather_pairs(self):
        self.pairs = {}
        for al in self.aligners.values():
            collect_pairs(al, self.pairs)
        clean = clean_pairs(self.pairs)
        # a constant that merely looks like an address is the same in both builds, but every data
        # section moved, so an unchanged value there is never an address
        data_start = self.A.section(".rdata")["va"]
        clean = {a: b for a, b in clean.items() if not (a == b and a >= data_start)}
        self.clean = dict(chain_pairs(clean))
        self.log("pairs: %d votes, %d clean, %d monotone" % (len(self.pairs), len(clean), len(self.clean)))

    def run(self, dtk, cache):
        """All alignment passes; each round feeds operand pairs and translations back in."""
        native = self.native_symbols(dtk, cache)
        self.native_functions = {s["addr"] for s in native.values() if s["sec"] == ".text"}
        self.native_sizes = {s["addr"]: s["size"] for s in native.values() if s["sec"] == ".text" and s["size"]}
        self.native_starts = sorted(self.native_functions)
        self.native_structures = [
            (s["addr"], s["addr"] + s["size"]) for s in native.values() if s["size"] and s["name"].startswith(("??_R", "??_7"))
        ]
        self.collect_name_pairs(native)
        self.collect_library_pairs()
        self.align_text()
        self.settle_library_pairs(".text")
        self.align_data(".rdata")
        self.align_data(".data")
        for _ in range(2):
            self.gather_pairs()
            for name in (".text", ".rdata", ".data"):
                self.refine(name)
            self.align_data(".rdata")
            self.align_data(".data")
        self.gather_pairs()
        for name in (".text", ".rdata", ".data"):
            self.refine(name)
        for name in (".text", ".rdata", ".data"):
            self.settle_library_pairs(name)
        self.map_bss()

    # -- name anchors ---------------------------------------------------------------------
    def native_symbols(self, dtk, cache):
        """dtk's own analysis of the target (RTTI and vtable names at target addresses)."""
        import subprocess
        import tempfile

        sys.path.insert(0, str(Path(__file__).resolve().parent))
        import pre_dtk_patch

        cache = Path(cache)
        if not cache.exists():
            with tempfile.TemporaryDirectory() as tmp:
                tmp = Path(tmp)
                exe = tmp / "target.exe"
                exe.write_bytes(pre_dtk_patch.build_clean(self.B.data))
                (tmp / "symbols.txt").write_text("")
                kinds = {".text": "code", ".rdata": "rodata", ".rsrc": "rodata", ".reloc": "rodata"}
                rows = ["\t%-11s type:%s align:4096" % (sec["name"], kinds.get(sec["name"], "data")) for sec in self.B.sections if sec["name"] != ".reloc"]
                (tmp / "splits.txt").write_text("Sections:\n" + "\n".join(rows) + "\n")
                (tmp / "config.yml").write_text(
                    "object: %s\nsymbols: %s\nsplits: %s\ngenerate_imports: true\n" % (exe, tmp / "symbols.txt", tmp / "splits.txt")
                )
                r = subprocess.run([str(dtk), "coff", "split", str(tmp / "config.yml"), str(tmp / "out")], capture_output=True, text=True)
                if r.returncode:
                    raise SystemExit("dtk analysis failed:\n" + r.stderr[-2000:])
                cache.parent.mkdir(parents=True, exist_ok=True)
                cache.write_text((tmp / "symbols.txt").read_text())
        return {s["name"]: s for s in parse_symbols(cache) if "raw" not in s}

    def collect_name_pairs(self, native):
        """Reference -> target addresses of RTTI and vtables, which keep their names but not
        their order between builds."""
        pairs = {}
        sizes = {}
        for sym in self.symbols:
            if "raw" in sym or not (sym["name"].startswith("??_R0") or sym["name"].startswith("??_R4") or sym["name"].startswith("??_7")):
                continue
            t = native.get(sym["name"])
            if t is not None and t["sec"] == sym["sec"]:
                pairs[sym["addr"]] = t["addr"]
                sizes[sym["addr"]] = sym["size"]
        # the rest of each class's RTTI hangs off its locator
        A, B = self.A, self.B
        for sym in self.symbols:
            if "raw" in sym or not sym["name"].startswith("??_R4") or sym["addr"] not in pairs:
                continue
            a4, b4 = sym["addr"], pairs[sym["addr"]]
            a3, b3 = A.u32(a4 + 16), B.u32(b4 + 16)
            if A.section_at(a3) is None or B.section_at(b3) is None:
                continue
            pairs[a3] = b3
            sizes[a3] = 16
            na, nb = A.u32(a3 + 8), B.u32(b3 + 8)
            a2, b2 = A.u32(a3 + 12), B.u32(b3 + 12)
            if na != nb or not 0 < na < 256:
                continue
            pairs[a2] = b2
            sizes[a2] = 4 * na
            for i in range(na):
                a1, b1 = A.u32(a2 + 4 * i), B.u32(b2 + 4 * i)
                if a1 in pairs and pairs[a1] != b1:
                    continue  # shared base descriptor already placed from another class
                pairs[a1] = b1
                sizes[a1] = 24
        # import thunks (jmp dword ptr [__imp_X]) are found by the slot they jump through
        slots_a = {v: k for k, v in import_slots(A).items()}
        slots_b = import_slots(B)
        text_b = B.section(".text")
        raw_b = B.data[text_b["raw"] : text_b["raw"] + min(text_b["rsize"], text_b["vsize"])]
        thunks = 0
        for sym in self.symbols:
            if "raw" in sym or sym["sec"] != ".text" or sym["size"] != 6:
                continue
            code = A.read(sym["addr"], 6)
            if code[:2] != b"\xff\x25":
                continue
            key = slots_a.get(struct.unpack("<I", code[2:])[0])
            if key is None or key not in slots_b:
                continue
            needle = b"\xff\x25" + struct.pack("<I", slots_b[key])
            found = [m.start() for m in re.finditer(re.escape(needle), raw_b)]
            if len(found) > 1:
                # a tail call can jump through the same slot; the thunk sits among other thunks
                found = [f for f in found if raw_b[f - 6 : f - 4] == b"\xff\x25" or raw_b[f + 6 : f + 8] == b"\xff\x25"]
            if len(found) == 1:
                pairs[sym["addr"]] = text_b["va"] + found[0]
                sizes[sym["addr"]] = 6
                thunks += 1
        self.name_pairs = pairs
        self.name_sizes = sizes
        self.log("name anchors: %d (RTTI, vtables, %d import thunks)" % (len(pairs), thunks))

    def collect_library_pairs(self):
        """Library units (the CRT) are the library's own bytes in every build that links them: find
        each of their sections in the target by that content, relocated fields left out. A unique
        match is an anchor; several are settled later by where the alignment expects the unit."""
        members = library_members()
        found = deferred = 0
        self.library_candidates = {}
        self.library_placed = set()
        for u in self.units:
            m = LIBRARY_UNIT.match(u["name"])
            datas = members.get((m.group(1).lower(), m.group(2).lower())) if m else None
            if not datas:
                continue
            for sec, s, e, attrs in u["secs"]:
                if sec == ".bss" or sec == ".drectve":
                    continue
                for data, comdats in ((d, c) for d in datas for c in (True, False)):
                    body, relocs = library_contribution(data, sec, comdats)
                    if not body:
                        continue
                    # the reference has to hold this very object in that range
                    if not (len(body) <= e - s < len(body) + 16) or not find_masked(self.A.read(s, len(body)), body, relocs):
                        continue
                    pe_a = self.A.section_at(s)
                    pe_b = self.B.section(pe_a["name"])
                    raw = self.B.data[pe_b["raw"] : pe_b["raw"] + min(pe_b["rsize"], pe_b["vsize"] or pe_b["rsize"])]
                    align = re.search(r"align:(\d+)", attrs)
                    align = int(align.group(1)) if align else 4
                    hits = [pe_b["va"] + h for h in find_masked(raw, body, relocs) if (pe_b["va"] + h) % align == s % align]
                    if len(hits) == 1:
                        self.name_pairs[s] = hits[0]
                        self.name_sizes[s] = len(body)
                        self.library_placed.add(s)
                        found += 1
                    elif hits:
                        self.library_candidates[s] = (hits, len(body))
                        deferred += 1
                    break
        self.log("library objects: %d sections found by content, %d ambiguous" % (found, deferred))

    def settle_library_pairs(self, name):
        """Ambiguous library sections take the match the alignment around them predicts."""
        settled = 0
        for s, (hits, size) in list(self.library_candidates.items()):
            al = self.aligners.get(name)
            if al is None or not (al.a.va <= s < al.a.end):
                continue
            predicted = self.map.lookup(s)
            if predicted is None:
                continue
            near = [h for h in hits if abs(h - predicted) < 16]
            if len(near) == 1:
                self.name_pairs[s] = near[0]
                self.name_sizes[s] = size
                self.library_placed.add(s)
                del self.library_candidates[s]
                settled += 1
        if settled:
            self.apply_name_pairs(name)
            self.map = self.combined_map()
        return settled

    def apply_name_pairs(self, name):
        """Place chunks that start at a named-symbol address exactly where the name says."""
        al = self.aligners[name]
        starts = {c["addr"]: k for k, c in enumerate(al.chunks)}
        placed = moved = 0
        fixed = []
        for a, b in self.name_pairs.items():
            k = starts.get(a)
            if k is None or not (al.b.va <= b < al.b.end):
                continue
            end = a + (self.name_sizes.get(a) or 0)
            off = b - al.b.va
            while k < len(al.chunks) and (k == starts[a] or al.chunks[k]["end"] <= end):
                if al.res[k] is not None and al.res[k] != off:
                    moved += 1
                al.res[k], al.how[k] = off, "name"
                fixed.append((off, off + al.size(k), k))
                placed += 1
                off += al.size(k)
                k += 1
                if k >= len(al.chunks) or al.chunks[k]["addr"] >= end:
                    break
        # anything else sitting on top of a name-placed chunk was a wrong guess
        fixed.sort()
        starts_b = [f[0] for f in fixed]
        evicted = 0
        for k, st in enumerate(al.res):
            if st is None or al.how[k] == "name":
                continue
            i = bisect.bisect_right(starts_b, st) - 1
            lo = max(i, 0)
            for f in fixed[lo : lo + 2]:
                if st < f[1] and st + al.size(k) > f[0]:
                    al.res[k], al.how[k] = None, None
                    evicted += 1
                    break
        self.log("%s: %d chunks placed by name (%d moved, %d overlapping guesses dropped)" % (name, placed, moved, evicted))

    def map_bss(self):
        a_start = next(r for r in self.hdr_rows if r["name"] == ".bss")
        a_lo, a_hi = a_start["vaddr"], a_start["end"]
        sec = self.B.section(".data")
        b_hi = sec["va"] + sec["vsize"]
        anchors = [(a, b) for a, b in sorted(self.clean.items()) if a_lo <= a < a_hi and b < b_hi]
        # Creature Isle's raw size stops where the initialised data does, which pins where .bss starts
        # (earlier builds round it up to a page and say nothing)
        exact_start = sec["va"] + sec["rsize"] if sec["rsize"] % 0x1000 else None
        if anchors and anchors[0][0] - a_lo < 0x40:
            start = a_lo + anchors[0][1] - anchors[0][0]
            if exact_start is None or start == exact_start:
                anchors.insert(0, (a_lo, start))
        elif exact_start is not None and anchors and anchors[0][1] - anchors[0][0] == exact_start - a_lo:
            anchors.insert(0, (a_lo, exact_start))
        anchors.append((a_hi, b_hi))
        self.bss = BssMap(anchors)
        self.bss_range = (a_lo, a_hi)
        self.log("bss: %d anchors, B starts at %s" % (len(anchors), hex(anchors[0][1]) if anchors[0][0] == a_lo else "unknown"))

    def refine(self, name):
        """Place still-unmatched chunks where operands that point into them say they went."""
        al = self.aligners[name]
        keys = sorted(self.clean)
        n = len(al.chunks)
        placed = 0
        lo_t = -1
        res = al.res
        # previous / next placed start for each chunk
        prev_start = [-1] * n
        last = -1
        for k in range(n):
            prev_start[k] = last
            if res[k] is not None:
                last = res[k]
        next_start = [len(al.b.raw)] * n
        last = len(al.b.raw)
        for k in range(n - 1, -1, -1):
            next_start[k] = last
            if res[k] is not None:
                last = res[k]
        for k, c in enumerate(al.chunks):
            if res[k] is not None:
                continue
            i0 = bisect.bisect_left(keys, c["addr"])
            i1 = bisect.bisect_left(keys, c["end"])
            votes = {}
            for key in keys[i0:i1]:
                tgt = self.clean[key]
                if not (al.b.va <= tgt < al.b.end):
                    continue
                start = tgt - (key - c["addr"]) - al.b.va
                votes[start] = votes.get(start, 0) + 1
            if not votes:
                continue
            start, cnt = max(votes.items(), key=lambda kv: kv[1])
            if cnt * 2 <= sum(votes.values()):
                continue
            if prev_start[k] < start < next_start[k]:
                res[k], al.how[k] = start, "pair"
                placed += 1
        al.drop_misaligned()
        self.map = self.combined_map()
        self.log("%s: placed %d more chunks from operand pairs" % (name, placed))
        return placed


class BssMap:
    """Placement of uninitialised data from operand pairs only.

    A boundary maps when the anchors on both sides agree on the delta, i.e. nothing was inserted
    between them. Where they disagree, an insertion happened somewhere in between and the exact
    byte is unknowable without more evidence.
    """

    def __init__(self, anchors):
        self.anchors = sorted(anchors)
        self.keys = [a for a, _ in self.anchors]

    def lookup(self, x):
        i = bisect.bisect_left(self.keys, x)
        if i < len(self.keys) and self.keys[i] == x:
            return self.anchors[i][1]
        if i == 0 or i == len(self.keys):
            return None
        (al, bl), (ar, br) = self.anchors[i - 1], self.anchors[i]
        return x + (bl - al) if bl - al == br - ar else None

    lookup_end = lookup


# ---------------------------------------------------------------------------------------------
# Library objects
# ---------------------------------------------------------------------------------------------

LIBRARY_UNIT = re.compile(r"^(?:\w+/)?lib/([^/]+)/([^/]+\.obj)$")
IMAGE_SCN_LNK_INFO = 0x200
IMAGE_SCN_LNK_REMOVE = 0x800
IMAGE_SCN_LNK_COMDAT = 0x1000
IMAGE_SCN_CNT_UNINITIALIZED_DATA = 0x80
IMAGE_REL_I386_SECTION = 0x000A


def ar_members(data):
    """(member name, bytes) of every object in a COFF archive (.lib)."""
    if data[:8] != b"!<arch>\n":
        return
    pos, longnames = 8, b""
    while pos + 60 <= len(data):
        name, size = data[pos : pos + 16].rstrip(), int(data[pos + 48 : pos + 58])
        body = data[pos + 60 : pos + 60 + size]
        pos += 60 + size + (size & 1)
        if name == b"/":
            continue  # linker members
        if name == b"//":
            longnames = body
            continue
        if name[:1] == b"/" and name[1:].isdigit():
            off = int(name[1:])
            end = min(i for i in (longnames.find(b"\0", off), longnames.find(b"/\n", off), len(longnames)) if i >= 0)
            name = longnames[off:end]
        yield name.rstrip(b"/").decode("latin-1"), body


def coff_sections(data):
    """[(name, contents, {offset: width of a relocated field}, characteristics)] of a COFF object."""
    _, nsec, _, symptr, nsym, optsz, _ = struct.unpack_from("<HHIIIHH", data, 0)
    strtab = symptr + 18 * nsym
    out = []
    for i in range(nsec):
        raw_name, _, _, size, ptr, relptr, _, nrel, _, flags = struct.unpack_from("<8sIIIIIIHHI", data, 20 + optsz + 40 * i)
        name = raw_name.rstrip(b"\0")
        if name[:1] == b"/":
            off = strtab + int(name[1:])
            name = data[off : data.index(b"\0", off)]
        relocs = {}
        for r in range(nrel):
            at, _, typ = struct.unpack_from("<IIH", data, relptr + 10 * r)
            relocs[at] = 2 if typ == IMAGE_REL_I386_SECTION else 4
        body = data[ptr : ptr + size] if ptr and not flags & IMAGE_SCN_CNT_UNINITIALIZED_DATA else None
        out.append((name.decode("latin-1"), body, relocs, flags))
    return out


def library_contribution(data, name, comdats=True):
    """What an object adds to an output section: its sections of that name back to back, each at
    its own alignment, with the alignment padding and relocated fields as {offset: width}. A COMDAT
    another object already defines (a shared string) is not linked again, hence comdats=False."""
    body = bytearray()
    relocs = {}
    for sec, contents, rel, flags in coff_sections(data):
        if sec != name or flags & (IMAGE_SCN_LNK_INFO | IMAGE_SCN_LNK_REMOVE) or contents is None:
            continue
        if flags & IMAGE_SCN_LNK_COMDAT and not comdats:
            continue
        align = 1 << (((flags >> 20) & 0xF) - 1) if (flags >> 20) & 0xF else 1
        pad = -len(body) % align
        if pad:
            relocs[len(body)] = pad
            body += b"\0" * pad
        for at, width in rel.items():
            relocs[len(body) + at] = width
        body += contents
    return bytes(body), relocs


def library_members(lib_dir=REPO / "build" / "lib"):
    """{(archive, object file name): [contents]} of the static libraries the build unpacked."""
    out = {}
    for lib in sorted(lib_dir.glob("*.lib")):
        for name, data in ar_members(lib.read_bytes()):
            out.setdefault((lib.stem.lower(), name.replace("\\", "/").rsplit("/", 1)[-1].lower()), []).append(data)
    return out


def find_masked(haystack, body, relocs, limit=16):
    """Offsets where body occurs in haystack with its relocated fields ignored (none when there are
    more than limit)."""
    mask = bytearray(len(body))
    for at, width in relocs.items():
        mask[at : at + width] = b"\1" * width
    # look for the longest run of fixed bytes, then check the rest
    best, run_start = (0, 0), None
    for i in range(len(body) + 1):
        if i < len(body) and not mask[i]:
            run_start = i if run_start is None else run_start
        elif run_start is not None:
            best = max(best, (i - run_start, run_start))
            run_start = None
    length, lo = best
    if length < min(8, len(body)):
        return []
    needle = body[lo : lo + length]
    out = []
    at = haystack.find(needle)
    while at >= 0 and len(out) <= limit:
        start = at - lo
        if 0 <= start and start + len(body) <= len(haystack):
            window = haystack[start : start + len(body)]
            if all(mask[i] or window[i] == body[i] for i in range(len(body))):
                out.append(start)
        at = haystack.find(needle, at + 1)
    return out if len(out) <= limit else []


def import_slots(image):
    """{(dll, import name or ordinal): IAT slot address}."""
    out = {}
    imp_va, _ = image.directory("IMAGE_DIRECTORY_ENTRY_IMPORT")
    base = image.base
    pos = imp_va
    while True:
        orig, _, _, name, first = struct.unpack("<IIIII", image.read(pos, 20))
        if not name:
            break
        dll = read_cstr(image, base + name).lower()
        thunks = orig or first
        n = 0
        while True:
            t = image.u32(base + thunks + 4 * n)
            if not t:
                break
            key = ("#%d" % (t & 0xFFFF)) if t & 0x80000000 else read_cstr(image, base + (t & 0x7FFFFFFF) + 2)
            out[(dll, key)] = base + first + 4 * n
            n += 1
        pos += 20
    return out


def read_cstr(image, addr):
    out = bytearray()
    while True:
        b = image.read(addr + len(out), 1)
        if b == b"\0":
            return out.decode("latin-1")
        out += b


class FullMap:
    """Combined lookup used when rewriting config files."""

    def __init__(self, main, bss, bss_range):
        self.main, self.bss, self.bss_range = main, bss, bss_range

    def _in_bss(self, x):
        return self.bss_range[0] <= x < self.bss_range[1]

    def start(self, x):
        """Target of the first byte at x."""
        if self._in_bss(x):
            return self.bss.lookup(x)
        return self.main.lookup(x)

    def end(self, x):
        """Target of an exclusive end boundary, from the block holding the last byte before it."""
        if x == self.bss_range[1] or self._in_bss(x - 1):
            return self.bss.lookup(x)
        end = self.main.lookup_end(x)
        nxt = self.main.lookup(x) if x != self.bss_range[0] else None
        last = self.main._block(x - 1)
        if end is not None and nxt is not None and last is not None and last[2] <= nxt < end and self.main._block(x) is not None and self.main._block(x)[0] == x:
            return nxt  # the neighbour was placed inside this block's extrapolated tail
        return end


def build_full_map(porter):
    """Assemble the final AddrMap/BssMap from the aligners, import slots and fixed sections."""
    A, B = porter.A, porter.B
    main = AddrMap()
    blocks = []
    for al in porter.aligners.values():
        blocks.extend(al.blocks())
    # IAT slots by import name
    sa, sb = import_slots(A), import_slots(B)
    for key, a in sa.items():
        if key in sb:
            blocks.append((a, a + 4, sb[key]))
    # sections that move rigidly
    for name in (".data1", "SELFMOD", ".rsrc"):
        try:
            a, b = A.section(name), B.section(name)
        except KeyError:
            continue
        blocks.append((a["va"], a["va"] + min(a["vsize"], b["vsize"]), b["va"]))
    skipped = 0
    for blk in sorted(blocks):
        if main.blocks and main.blocks[-1][1] > blk[0]:
            skipped += 1
            continue
        main.add(*blk)
    return main, skipped


def drectve_ranges(porter):
    """Comment (exestr) ranges in the target header, matched to the reference by content."""
    sys.path.insert(0, str(Path(__file__).resolve().parent))
    import pre_dtk_patch

    a = pre_dtk_patch.build_clean(porter.A.data)
    b = pre_dtk_patch.build_clean(porter.B.data)
    out = {}
    for u in porter.units:
        for sec, s, e, attrs in u["secs"]:
            if sec != ".drectve":
                continue
            text = a[s - porter.A.base : e - porter.A.base]
            at = b.find(text)
            if at >= 0:
                out[(u["name"], s, e)] = (porter.B.base + at, porter.B.base + at + len(text))
    return out


def rename_placeholder(name, a_addr, b_addr):
    """Placeholder names carry their own address (fn_0040405A, dtk's de-duplicated data_0x100665a0);
    re-key them to the target address."""
    return name.replace("%08X" % a_addr, "%08X" % b_addr).replace("%08x" % a_addr, "%08x" % b_addr)


def map_symbols(porter, fmap, boundaries=(), starts_by_section=None, pad_to_unit_end=False):
    """Reference symbols rewritten for the target: (lines, dropped, clipped).

    boundaries are target addresses where a split starts or ends; a symbol may not span one, nor
    the end of a section's raw data when that was trimmed (Creature Isle's .data1 holds less of
    LH3DP3's tables than 1.20's)."""
    # raw data cut short of the file alignment (Creature Isle's container trims it to the last byte)
    align = porter.B.pe.OPTIONAL_HEADER.FileAlignment
    short = {sec["name"]: sec["va"] + sec["rsize"] for sec in porter.B.sections if 0 < sec["rsize"] < sec["vsize"] and sec["rsize"] % align}
    bounds = sorted(set(boundaries) | set(short.values()))
    added = 0
    bysec = {}
    dropped = []
    for sym in porter.symbols:
        if "raw" in sym:
            continue
        b = fmap.start(sym["addr"])
        if b is None or (sym["sec"] == ".text" and porter.thunk_matches(sym["addr"], b) is False):
            # an import thunk that is not one here: the import is called directly in this build
            dropped.append(sym)
            continue
        if sym["sec"] in short and b >= short[sym["sec"]] and not fmap._in_bss(sym["addr"]):
            dropped.append(sym)  # past the section's trimmed raw data, which an object cannot hold
            continue
        size = sym["size"]
        if size:
            e = fmap.end(sym["addr"] + size)
            solid = e is not None and e > b
            confirmed = False
            if solid:
                size = e - b
                # the next chunk starting where this one ends confirms the size; otherwise
                # something may have been inserted in between
                confirmed = fmap.start(sym["addr"] + sym["size"]) == e
            if sym["sec"] == ".text":
                if not (solid and porter.placement_solid(sym["addr"])):
                    # a size inferred from the room available, or none at all: take dtk's own analysis
                    # of the function where it has one, since a wrong size is worse than none
                    size = porter.native_sizes.get(b)
                elif not confirmed:
                    # dtk will not accept a symbol running over a function start it finds itself
                    i = bisect.bisect_right(porter.native_starts, b)
                    if i < len(porter.native_starts) and porter.native_starts[i] < b + size:
                        size = porter.native_starts[i] - b
        if size is None and sym["size"] and "noreloc" in sym["attrs"]:
            dropped.append(sym)  # dtk insists such symbols have a size, and regenerates them anyway
            continue
        bysec.setdefault(sym["sec"], []).append([b, sym, size])
    lines = []
    clipped = 0
    seen_names = set()
    # dtk stretches a function over the gap that follows it, so every unit has to open on a symbol
    for sec, starts in (starts_by_section or {}).items():
        have = {t[0] for t in bysec.get(sec, [])}
        for bs in sorted(starts - have):
            ref = {".text": ("fn_", "function"), ".rdata": ("lbl_", "object"), ".data": ("lbl_", "object")}.get(sec)
            if ref is None:
                continue
            fake = dict(name="%s%08X" % (ref[0], bs), sec=sec, addr=bs, size=None, attrs="type:%s" % ref[1])
            bysec.setdefault(sec, []).append([bs, fake, None])
            added += 1
    for sec in sorted(bysec, key=lambda n: {".text": 0, ".rdata": 1, ".data": 2}.get(n, 3)):
        items = sorted(bysec[sec], key=lambda t: t[0])  # stable: aliases keep their order
        for i in range(len(items)):
            b, _, size = items[i]
            if not size:
                continue
            limit = b + size
            if i + 1 < len(items) and items[i + 1][0] > b:
                limit = min(limit, items[i + 1][0])
            j = bisect.bisect_right(bounds, b)
            if j < len(bounds) and bounds[j] < limit:
                limit = bounds[j]
            if limit < b + size:
                if items[i][1]["name"].startswith(("??_R", "??_7")):
                    # placed by name, so the units around it moved independently: let dtk name it
                    items[i][2] = -1
                    continue
                items[i][2] = limit - b
                clipped += 1
        if pad_to_unit_end:
            # an object extracted from a unit loses the alignment padding after its last symbol, which
            # shifts everything behind it when the next unit is packed (align:1): own the padding
            ends = sorted((starts_by_section or {}).get(sec + ":end", ()))
            for i, item in enumerate(items):
                b, _, size = item
                if not size or size == -1:
                    continue
                j = bisect.bisect_left(ends, b + size + 1)
                if j < len(ends) and ends[j] - (b + size) < 4 and (i + 1 == len(items) or items[i + 1][0] >= ends[j]):
                    item[2] = ends[j] - b
        for b, sym, size in items:
            if size == -1:
                dropped.append(sym)
                continue
            named = dict(sym, name=rename_placeholder(sym["name"], sym["addr"], b))
            if named["name"] in seen_names and sym["sec"] != ".text" and "alias" not in named["attrs"]:
                # a name used by several statics (a CRT object's `_dststart`s): the extracted objects
                # refer to symbols by name, so every copy after the first needs its own
                named["name"] = "data_0x%08x" % b
            seen_names.add(named["name"])
            if "scope:weak" in named["attrs"]:
                # a weak COMDAT function in a unit that is linked from its extracted object makes
                # lld-link crash; the reference only gets away with it because that unit is compiled
                named["attrs"] = named["attrs"].replace("scope:weak", "scope:global")
            lines.append(format_symbol(named, addr=b, size=size))
    return lines, dropped, clipped


def bracket_runs(porter, mapped, inferred):
    """Units whose own ends could not be placed, sandwiched between two placed neighbours with a
    gap of exactly their combined size, sit back to back inside that gap."""
    by_sec = {}
    for ui, u in enumerate(porter.units):
        for ri, (sec, s, e, attrs) in enumerate(u["secs"]):
            if sec != ".drectve":
                by_sec.setdefault(sec, []).append((s, e, ui, ri))
    recovered = 0
    for sec, items in by_sec.items():
        items.sort()
        n = len(items)
        i = 0
        while i < n:
            if mapped[items[i][2]][items[i][3]] is not None:
                i += 1
                continue
            j = i
            while j < n and mapped[items[j][2]][items[j][3]] is None:
                j += 1
            contiguous = all(items[t][1] == items[t + 1][0] for t in range(i, j - 1))
            if i > 0 and j < n and contiguous and items[i - 1][1] == items[i][0] and items[j - 1][1] == items[j][0]:
                left = mapped[items[i - 1][2]][items[i - 1][3]]
                right = mapped[items[j][2]][items[j][3]]
                total = items[j - 1][1] - items[i][0]
                if right[1] - left[2] == total:
                    p = left[2]
                    for t in range(i, j):
                        s, e, ui, ri = items[t]
                        attrs = porter.units[ui]["secs"][ri][3]
                        align = re.search(r"align:(\d+)", attrs)
                        align = int(align.group(1)) if align else 4
                        if p % align == s % align:
                            mapped[ui][ri] = (sec, p, p + e - s, attrs)
                            inferred.add((ui, ri))
                            recovered += 1
                        p += e - s
            i = j
    return recovered


def adjacent_ends(porter, mapped, parts, inferred, tolerance=0.25, slack=0x40):
    """A unit with an unplaced end borrows the neighbouring unit's boundary when the resulting
    range is about as long as the reference's (so nothing big was inserted between them)."""
    by_sec = {}
    for ui, u in enumerate(porter.units):
        for ri, (sec, s, e, attrs) in enumerate(u["secs"]):
            if sec != ".drectve":
                by_sec.setdefault(sec, []).append((s, e, ui, ri))
    recovered = 0
    for sec, items in by_sec.items():
        items.sort()
        for i, (s, e, ui, ri) in enumerate(items):
            if mapped[ui][ri] is not None:
                continue
            attrs = porter.units[ui]["secs"][ri][3]
            align = re.search(r"align:(\d+)", attrs)
            align = int(align.group(1)) if align else 4
            bs, be = parts[ui][ri]
            if bs is None and i > 0 and items[i - 1][1] == s:
                left = mapped[items[i - 1][2]][items[i - 1][3]]
                bs = left[2] if left is not None else parts[items[i - 1][2]][items[i - 1][3]][1]
            if be is None and i + 1 < len(items) and items[i + 1][0] == e:
                right = mapped[items[i + 1][2]][items[i + 1][3]]
                be = right[1] if right is not None else parts[items[i + 1][2]][items[i + 1][3]][0]
            if bs is None or be is None or be <= bs or bs % align != s % align:
                continue
            length = e - s
            if abs((be - bs) - length) <= tolerance * length + slack:
                mapped[ui][ri] = (sec, bs, be, attrs)
                inferred.add((ui, ri))
                recovered += 1
    return recovered


def close_small_gaps(porter, mapped, limit=16, fixed=()):
    """Units that touched in the reference but ended up a few bytes apart (padding that belongs to
    one of them) touch again: dtk refuses a gap too small to be a unit of its own. Ranges in
    `fixed` are exact and stay as they are."""
    by_sec = {}
    for ui, u in enumerate(porter.units):
        for ri, (sec, s, e, attrs) in enumerate(u["secs"]):
            if sec != ".drectve":
                by_sec.setdefault(sec, []).append((s, e, ui, ri))
    def padding(lo, hi):
        return set(porter.B.read(lo, hi - lo)) <= set(PADDING_BYTES + b"\0")

    closed = 0
    for sec, items in by_sec.items():
        items.sort()
        for (s0, e0, u0, r0), (s1, e1, u1, r1) in zip(items, items[1:]):
            a, b = mapped[u0][r0], mapped[u1][r1]
            if e0 == s1 and a is not None and b is not None and 0 < b[1] - a[2] < limit and (u0, r0) not in fixed:
                # code in the gap is an object of its own (a CRT function the reference does not link)
                if sec.startswith(".text") and not padding(a[2], b[1]):
                    continue
                mapped[u0][r0] = (a[0], a[1], b[1], a[3])
                closed += 1
    # neighbours only in the target (a library object placed by its bytes after a different one):
    # alignment padding between them goes to the first
    rows = sorted((r[1], r[2], ui, ri) for ui, out in enumerate(mapped) for ri, r in enumerate(out) if r is not None and r[0] != ".drectve")
    for (s0, e0, u0, r0), (s1, e1, u1, r1) in zip(rows, rows[1:]):
        a, b = mapped[u0][r0], mapped[u1][r1]
        if a[0] == b[0] and 0 < s1 - e0 < limit and (u0, r0) not in fixed and padding(e0, s1):
            mapped[u0][r0] = (a[0], a[1], s1, a[3])
            closed += 1
    return closed


def initializer_ranges(porter, mapped, table):
    """Each unit's slice of the dynamic initializer table (.CRT$XCU), from what the entries point
    at: an object's slice holds pointers to its own _$E functions only, so in the target it is the
    run of entries that point into the unit's placed .text. The number of initializers changes
    between builds (statics come and go), so the data map cannot be trusted with this table.
    Returns {(unit, row): range or None} for every reference .CRT$XCU row."""
    A, B = porter.A, porter.B
    lo, hi = table
    text = sorted((r[1], r[2], ui) for ui, out in enumerate(mapped) for r in out if r is not None and r[0] == ".text")
    starts = [t[0] for t in text]

    def owner(value):
        i = bisect.bisect_right(starts, value) - 1
        return text[i][2] if i >= 0 and value < text[i][1] else None

    entries = [B.u32(a) for a in range(lo, hi, 4)]
    runs = {}
    for i, value in enumerate(entries):
        o = owner(value) if value else None
        if o is not None:
            runs.setdefault(o, []).append(i)
    out = {}
    for ui, u in enumerate(porter.units):
        own_text = [(s, e) for sec, s, e, _ in u["secs"] if sec == ".text"]
        for ri, (sec, s, e, attrs) in enumerate(u["secs"]):
            if sec != ".CRT$XCU":
                continue
            out[(ui, ri)] = None
            values = [A.u32(a) for a in range(s, e, 4)]
            # zero slots the reference gives the unit at either end (the table's leading padding)
            lead = next((k for k, v in enumerate(values) if v), len(values))
            trail = next((k for k, v in enumerate(reversed(values)) if v), 0)
            inner = values[lead : len(values) - trail]
            if not inner or not all(v and any(ts <= v < te for ts, te in own_text) for v in inner):
                continue
            idx = runs.get(ui)
            if not idx or idx[-1] - idx[0] + 1 != len(idx):
                continue
            i0, i1 = idx[0] - lead, idx[-1] + 1 + trail
            if i0 < 0 or i1 > len(entries) or any(entries[i0 : idx[0]]) or any(entries[idx[-1] + 1 : i1]):
                continue
            out[(ui, ri)] = (sec, lo + 4 * i0, lo + 4 * i1, attrs)
    return out


def map_units(porter, fmap, drectve):
    """Reference splits rewritten for the target: (units, dropped ranges, conflicts)."""
    rows = []  # (b_start, b_end, unit index, row index)
    mapped = []
    parts = []
    dropped = []
    for ui, u in enumerate(porter.units):
        out = []
        parts.append([])
        for sec, s, e, attrs in u["secs"]:
            if sec == ".drectve":
                r = drectve.get((u["name"], s, e))
                bs, be = r if r else (None, None)
            else:
                bs, be = fmap.start(s), fmap.end(e)
            parts[-1].append((bs, be))
            align = re.search(r"align:(\d+)", attrs)
            align = int(align.group(1)) if align else 4
            if sec == ".drectve":
                align = 1
            # a range keeps its reference's offset from the alignment: an .rdata$r range can start
            # 4 bytes into its align:8 slot when the unit's first record is a 4-byte one
            if bs is None or be is None or be <= bs or bs % align != s % align:
                dropped.append((u["name"], sec, s, e))
                out.append(None)
                continue
            out.append((sec, bs, be, attrs))
            rows.append((bs, be, ui, len(out) - 1, s))
        mapped.append(out)
    inferred = set()
    bracket_runs(porter, mapped, inferred)
    adjacent_ends(porter, mapped, parts, inferred)
    table = header_ranges(porter, fmap).get(".CRT$XCU", (None, None))
    tables = initializer_ranges(porter, mapped, table) if None not in table else {}
    for (ui, ri), r in tables.items():
        mapped[ui][ri] = r
        inferred.discard((ui, ri))
    # overlap / order checks in target address space; an inferred range gives way to a measured one
    conflicts = []
    measured = sorted((r[1], r[2]) for ui, out in enumerate(mapped) for ri, r in enumerate(out) if r is not None and (ui, ri) not in inferred)
    mstarts = [m[0] for m in measured]
    for ui, ri in sorted(inferred):
        r = mapped[ui][ri]
        i = bisect.bisect_left(mstarts, r[2])
        if (i > 0 and measured[i - 1][1] > r[1]) or (i < len(measured) and measured[i][0] < r[2]):
            conflicts.append((porter.units[ui]["name"], r[0], "inferred range overlaps", ""))
            mapped[ui][ri] = None
    rows = [(r[1], r[2], ui, ri, 0) for ui, out in enumerate(mapped) for ri, r in enumerate(out) if r is not None]
    rows.sort()
    last_end = 0
    last = None
    for bs, be, ui, ri, a_start in rows:
        if last is not None and bs < last_end:
            conflicts.append((porter.units[ui]["name"], porter.units[ui]["secs"][ri][0], "overlaps", porter.units[last[2]]["name"]))
            mapped[ui][ri] = None
            continue
        last_end, last = be, (bs, be, ui, ri)
    # reference order must survive
    by_sec = {}
    for ui, out in enumerate(mapped):
        for ri, r in enumerate(out):
            if r is not None:
                a_start = porter.units[ui]["secs"][ri][1]
                by_sec.setdefault(r[0], []).append((a_start, r[1], ui, ri))
    library = getattr(porter, "library_placed", set())

    def exact(ui, ri):
        start = porter.units[ui]["secs"][ri][1]
        return start in library and mapped[ui][ri] is not None and mapped[ui][ri][1] == porter.name_pairs.get(start)

    for sec, items in by_sec.items():
        items.sort()
        for (a0, b0, u0, r0), (a1, b1, u1, r1) in zip(items, items[1:]):
            if b1 < b0 and mapped[u1][r1] is not None:
                # library objects found by their own bytes are where they are (the CRT's link order
                # follows what each build pulls in); anything else out of order gives way
                if exact(u0, r0) and exact(u1, r1):
                    continue
                ui, ri, other = (u0, r0, u1) if exact(u1, r1) else (u1, r1, u0)
                conflicts.append((porter.units[ui]["name"], sec, "out of order", porter.units[other]["name"]))
                mapped[ui][ri] = None
    # one link order has to produce every section: two units that changed places in one section
    # (library objects placed by their bytes) cannot keep the old order in another
    placed = {}
    for ui, out in enumerate(mapped):
        for ri, r in enumerate(out):
            if r is not None and r[0] != ".drectve":
                placed.setdefault(ui, []).append((r[0], r[1], porter.units[ui]["secs"][ri][1], ri))
    swapped = set()
    for sec, items in by_sec.items():
        live = sorted((a, b, u, r) for a, b, u, r in items if mapped[u][r] is not None)
        for i, (a0, b0, u0, r0) in enumerate(live):
            for a1, b1, u1, r1 in live[i + 1 :]:
                if b1 < b0 and u0 != u1:
                    swapped.add((u0, u1))
    for u0, u1 in sorted(swapped):
        for sec0, b0, a0, r0 in placed.get(u0, []):
            for sec1, b1, a1, r1 in placed.get(u1, []):
                if sec0 != sec1 or mapped[u0][r0] is None or mapped[u1][r1] is None:
                    continue
                if (b0 < b1) == (a0 < a1):  # this section kept the reference order
                    ui, ri = (u0, r0) if not exact(u0, r0) else (u1, r1)
                    if exact(ui, ri):
                        continue
                    conflicts.append((porter.units[ui]["name"], sec0, "link order", porter.units[u1 if ui == u0 else u0]["name"]))
                    mapped[ui][ri] = None
    close_small_gaps(porter, mapped, fixed=tables)
    # a boundary inside a named structure (RTTI, vtable) cannot be right, unless the reference had it there too
    def span_index(spans):
        spans = sorted(set(spans))
        starts = [x[0] for x in spans]

        def inside(x):
            i = bisect.bisect_right(starts, x) - 1
            return i >= 0 and spans[i][0] < x < spans[i][1]

        return inside

    inside_b = span_index(
        [(b, b + porter.name_sizes[a]) for a, b in porter.name_pairs.items() if porter.name_sizes.get(a)] + list(porter.native_structures)
    )
    inside_a = span_index(
        [(s["addr"], s["addr"] + s["size"]) for s in porter.symbols if "raw" not in s and s["size"] and s["name"].startswith(("??_R", "??_7"))]
    )
    for ui, out in enumerate(mapped):
        for ri, r in enumerate(out):
            if r is None:
                continue
            _, a_start, a_end, _ = porter.units[ui]["secs"][ri]
            if (inside_b(r[1]) and not inside_a(a_start)) or (inside_b(r[2]) and not inside_a(a_end)):
                conflicts.append((porter.units[ui]["name"], r[0], "splits a named structure", ""))
                mapped[ui][ri] = None
    dropped = [(u["name"], sec, s_, e_) for u, out in zip(porter.units, mapped) for (sec, s_, e_, _), r in zip(u["secs"], out) if r is None]
    units = []
    for u, out in zip(porter.units, mapped):
        secs = [r for r in out if r is not None]
        if secs:
            units.append(dict(name=u["name"], attrs=u["attrs"], secs=secs))
    return units, dropped, conflicts


def format_units(units):
    lines = []
    for u in units:
        lines.append("%s:%s" % (u["name"], (" " + u["attrs"]) if u["attrs"] else ""))
        for sec, bs, be, attrs in u["secs"]:
            if sec == ".drectve":
                lines.append("\t%-11s %s start:0x%08X end:0x%08X" % (sec, attrs, bs, be))
            else:
                lines.append("\t%-11s start:0x%08X end:0x%08X%s" % (sec, bs, be, (" " + attrs) if attrs else ""))
        lines.append("")
    return lines


def header_ranges(porter, fmap):
    """Target (start, end) of each row of the reference's 'Sections:' block, None where unmapped."""
    rows = [m for m in (SPLIT_HDR_RE.match(line) for line in porter.header) if m]
    mapped = {m.group(1): (fmap.start(int(m.group(3), 16)), fmap.end(int(m.group(4), 16))) for m in rows}
    # the .CRT$ markers sit back to back; a range that did not map is whatever lies between its
    # neighbours (the initializer table grows and shrinks between builds)
    crt = [m.group(1) for m in rows if m.group(1).startswith(".CRT$")]
    for i, name in enumerate(crt):
        start, end = mapped[name]
        if start is None and i > 0 and mapped[crt[i - 1]][1] is not None:
            start = mapped[crt[i - 1]][1]
        if end is None and i + 1 < len(crt) and mapped[crt[i + 1]][0] is not None:
            end = mapped[crt[i + 1]][0]
        mapped[name] = (start, end)
    return mapped


def map_header(porter, fmap):
    """The 'Sections:' block of splits.txt for the target. Returns (lines, problems)."""
    A, B, la, lb = porter.A, porter.B, porter.la, porter.lb
    rdata = B.section(".rdata")
    overrides = {".xdata$x": (None, porter.b_imports)}
    if porter.standard_imports:
        overrides.update(
            {
                ".idata$5": (lb["iat"][0], porter.rdata_start(B, lb) - (lb["debug_size"] if porter.rdata_start(B, lb) != lb["iat"][1] else 0)),
                ".idata$2": (lb["import_dir"], lb["import_end"] - 0x14),
                ".idata$3": (lb["import_end"] - 0x14, lb["import_end"]),
                ".idata$4": (lb["import_end"], lb["ilt"][1]),
                ".idata$6": (lb["ilt"][1], lb["export_dir"]),
                ".edata": (lb["export_dir"], rdata["va"] + rdata["vsize"]),
            }
        )
    else:
        overrides[".edata"] = (lb["export_dir"], rdata["va"] + rdata["rsize"])
    out, problems = [], []
    rows = [SPLIT_HDR_RE.match(line) for line in porter.header]
    mapped = header_ranges(porter, fmap)
    for line, m in zip(porter.header, rows):
        if not m:
            out.append(line)
            continue
        name, typ = m.group(1), m.group(2)
        if name.startswith(".idata$") and not porter.standard_imports:
            continue  # the import tables are ordinary data here
        start, end = mapped[name]
        if name in overrides:
            o_start, o_end = overrides[name]
            start = o_start if o_start is not None else start
            if end is not None and o_end != end and name != ".edata":
                problems.append("%s end: layout says %08X, map says %08X" % (name, o_end, end))
            end = o_end
        if start is None or end is None:
            problems.append("%s: could not map" % name)
            out.append(line)
            continue
        out.append("\t%-11s type:%s vaddr:0x%08X end:0x%08X%s" % (name, typ, start, end, (" " + m.group(5).strip()) if m.group(5).strip() else ""))
    # sections the target has and the reference does not (SafeDisc leftovers in Creature Isle)
    known = {r["name"] for r in porter.hdr_rows} | {sec["name"] for sec in A.sections}
    for sec in B.sections:
        if sec["name"] not in known:
            out.append("\t%-11s type:data align:4096" % sec["name"])
    return out, problems


def config_lines(porter, fmap, src_version, dst_version, symbol_addrs, module_dst_dir=None):
    """config.yml for the target: reference file with addresses mapped and the PE fields re-read."""
    sys.path.insert(0, str(Path(__file__).resolve().parent))
    import hashlib
    import pre_dtk_patch

    A, B = porter.A, porter.B
    pe = B.pe.OPTIONAL_HEADER
    src_text = (REPO / "config" / src_version / "config.yml").read_text(encoding="utf-8").split("\n")
    exe_name = EXECUTABLES[dst_version].rsplit("/", 1)[-1]
    out = []
    dropped = []
    i = 0
    section = None
    while i < len(src_text):
        line = src_text[i]
        i += 1
        m = re.match(r"^(\w+):", line)
        if m:
            section = m.group(1)
        m = re.match(r"^(\s*-\s+source:\s+)0x([0-9A-Fa-f]+)(.*)$", line)
        if not (m and section in ("block_relocations", "add_relocations")):
            out.append(line)
            continue
        # one entry: the '- source' line and the indented fields that follow
        body = []
        while i < len(src_text) and re.match(r"^\s+(type|target|addend):", src_text[i]):
            body.append(src_text[i])
            i += 1
        a = int(m.group(2), 16)
        b = fmap.start(a)
        if b is not None and section == "add_relocations":
            fields = {re.match(r"^\s+(\w+):\s*(.*)$", f).group(1): re.match(r"^\s+(\w+):\s*(.*)$", f).group(2).strip("'") for f in body}
            target = fields.get("target")
            ref_addend = int(fields.get("addend", "0"), 0)
            if target not in symbol_addrs or not (B.base <= B.u32(b) < B.base + B.size_of_image):
                b = None  # the target did not make it across, or the operand is no address here
            else:
                # the addend is what the operand reads in this build minus the symbol's address (a
                # one-past-the-end reference moves with the array's length); far from the reference's
                # means the entry points somewhere else entirely in this build
                addend = (B.u32(b) - symbol_addrs[target]) & 0xFFFFFFFF
                if addend > 2 * ref_addend + 0x400:
                    b = None
                else:
                    body = [("%s0x%X" % (re.match(r"^(\s+addend:\s+)", f).group(1), addend)) if "addend:" in f else f for f in body]
                    if "addend" not in fields and addend:
                        body.append("    addend: 0x%X" % addend)
        if b is None:
            dropped.append((section, a))
            continue
        out.append("%s0x%08X%s" % (m.group(1), b, m.group(3)))
        out.extend(body)
    text = "\n".join(out)
    text = text.replace(src_version, dst_version)
    text = text.replace(EXECUTABLES[src_version].rsplit("/", 1)[-1], exe_name)
    ts = datetime_from_stamp(B.pe.FILE_HEADER.TimeDateStamp)
    clean = pre_dtk_patch.build_clean(B.data)
    sha1 = hashlib.sha1(clean).hexdigest()
    replacements = {
        r"^hash: .*$": "hash: %s" % sha1,
        r'^timestamp: .*$': 'timestamp: "%s"' % ts,
        r"^force_size: .*$": "force_size: 0x%08X" % len(B.data),
        r"^size_of_code: .*$": "size_of_code: 0x%X" % pe.SizeOfCode,
        r"^size_of_initialized_data: .*$": "size_of_initialized_data: 0x%X" % pe.SizeOfInitializedData,
        r"^size_of_image: .*$": "size_of_image: 0x%X" % pe.SizeOfImage,
        r"^safe_disc_version: .*$": 'safe_disc_version: "%d.%d.%d"' % struct.unpack_from("<3I", B.data, 0xFF4),
        r"^entry_export_addr: .*$": "entry_export_addr: 0x%08x" % porter.lb["export_dir"],
        r"^entry_export_size: .*$": "entry_export_size: 0x%X" % porter.lb["export_size"],
        r"^entry_import_addr: .*$": "entry_import_addr: 0x%08x" % porter.lb["import_dir"],
        r"^entry_import_size: .*$": "entry_import_size: 0x%X" % (porter.lb["import_end"] - porter.lb["import_dir"]),
    }
    rsrc_va, rsrc_size = B.directory("IMAGE_DIRECTORY_ENTRY_RESOURCE")
    replacements[r"^entry_resource_addr: .*$"] = "entry_resource_addr: 0x%08x" % rsrc_va
    replacements[r"^entry_resource_size: .*$"] = "entry_resource_size: 0x%X" % rsrc_size
    if not porter.standard_imports:
        # no linker-generated import tables to regenerate, and no SafeDisc stamp to restore
        replacements[r"^generate_imports: .*$"] = "generate_imports: false"
        replacements[r"^safe_disc_version: .*\n"] = ""
        imp_va, imp_size = B.directory("IMAGE_DIRECTORY_ENTRY_IMPORT")
        replacements[r"^entry_import_addr: .*$"] = "entry_import_addr: 0x%08x" % imp_va
        replacements[r"^entry_import_size: .*$"] = "entry_import_size: 0x%X" % imp_size
    for pat, rep in replacements.items():
        text = re.sub(pat, rep, text, flags=re.M)
    for module, dll in MODULE_DLLS.items():
        path = REPO / "orig" / dst_version / dll
        if path.exists():
            text = re.sub(r"(- object: %s\n  hash: )[0-9a-f]{40}" % re.escape(dll), r"\g<1>%s" % sha1_of(path), text)
    # a module whose config is copied from another version takes that version's stanza with it
    # (its linker version and whether its import/export tables are regenerated go with its splits)
    for module, version in module_sources(src_version, dst_version).items():
        if version is None or version == src_version:
            continue
        lines, spans = module_stanzas(text)
        other_lines, other_spans = module_stanzas((REPO / "config" / version / "config.yml").read_text(encoding="utf-8"))
        if module in spans and module in other_spans:
            a, b = spans[module]
            c, d = other_spans[module]
            lines[a:b] = [l.replace(version, dst_version) for l in other_lines[c:d]]
            text = "\n".join(lines)
    return text.split("\n"), dropped


def datetime_from_stamp(stamp):
    import datetime

    return datetime.datetime.fromtimestamp(stamp, datetime.timezone.utc).strftime("%Y-%m-%dT%H:%M:%S+00:00")


# ---------------------------------------------------------------------------------------------
# Command line
# ---------------------------------------------------------------------------------------------


def sha1_of(path):
    import hashlib

    return hashlib.sha1(Path(path).read_bytes()).hexdigest()


MODULE_DLLS = {
    "LHAudio": "LHaudiodllR.dll",
    "LHLog": "LHLogR.dll",
    "LHMultiplayer": "LHMultiplayerR.dll",
    "LHDialog": "LHDialogLib.dll",
}


def module_sources(src, dst):
    """{module: the version whose identical DLL already has a config, or None}."""
    out = {}
    for module, dll in MODULE_DLLS.items():
        b = REPO / "orig" / dst / dll
        out[module] = None
        if not b.exists():
            continue
        for version in [src] + [v for v in EXECUTABLES if v not in (src, dst)]:
            a = REPO / "orig" / version / dll
            if a.exists() and (REPO / "config" / version / module).exists() and sha1_of(a) == sha1_of(b):
                out[module] = version
                break
    return out


def copy_modules(src, dst, log):
    """DLLs that are byte-identical to a known version's keep that version's module configs verbatim."""
    import shutil

    for module, version in module_sources(src, dst).items():
        dll = MODULE_DLLS[module]
        if not (REPO / "orig" / dst / dll).exists():
            log("module %s: %s missing for %s" % (module, dll, dst))
        elif version is not None:
            shutil.copytree(REPO / "config" / version / module, REPO / "config" / dst / module, dirs_exist_ok=True)
            log("module %s: %s is identical to %s, config copied" % (module, dll, version))
        else:
            log("module %s: %s needs its own port (run: port_version.py emit --module %s --src %s --dst %s)" % (module, dll, module, src, dst))


def module_stanzas(text):
    """{module name: (start, end)} line spans of the '- object:' stanzas of a config.yml."""
    lines = text.split("\n")
    spans, start = {}, None
    for i, line in enumerate(lines + ["- object:"]):
        if line.startswith("- object:") or i == len(lines):
            if start is not None:
                end = i
                while end > start and not lines[end - 1].strip():
                    end -= 1
                name = next((l.split(":", 1)[1].strip() for l in lines[start:end] if l.strip().startswith("name:")), None)
                spans[name] = (start, end)
            start = i
    return lines, spans


def write_file(path, lines):
    Path(path).parent.mkdir(parents=True, exist_ok=True)
    Path(path).write_text("\n".join(lines).rstrip("\n") + "\n", encoding="utf-8", newline="\n")


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("command", choices=["emit"])
    ap.add_argument("--module", choices=sorted(MODULE_DLLS), help="port one module DLL's splits and symbols instead of the executable's")
    ap.add_argument("--src", default="BW1W120")
    ap.add_argument("--dst", required=True)
    ap.add_argument("--report", type=Path, help="write the dropped symbols/ranges here")
    ap.add_argument("--reuse", action="store_true", help="reuse the last alignment (build/port/*.pickle) unless the reference config changed since")
    ap.add_argument("--dtk", default="build/tools/dtk", help="dtk binary used to name the target's RTTI and vtables")
    args = ap.parse_args()

    log = lambda msg: print(msg, flush=True)
    src_dir = REPO / "config" / args.src
    src_exe, dst_exe = REPO / EXECUTABLES[args.src], REPO / EXECUTABLES[args.dst]
    tag = args.dst
    if args.module:
        dll = MODULE_DLLS[args.module]
        src_dir, src_exe, dst_exe = src_dir / args.module, REPO / "orig" / args.src / dll, REPO / "orig" / args.dst / dll
        tag = "%s-%s" % (args.dst, args.module)
    cache = REPO / "build" / "port" / ("%s-%s.pickle" % (args.src, tag))
    # the alignment is only valid for the reference config it was computed from
    reference = sha1_of(src_dir / "splits.txt") + sha1_of(src_dir / "symbols.txt")
    t0 = time.time()
    import pickle

    porter = None
    if args.reuse and cache.exists():
        porter = pickle.loads(cache.read_bytes())
        if getattr(porter, "reference", None) == reference:
            porter.log = log
            porter.map_bss()
        else:
            log("%s changed since the cached alignment, aligning again" % src_dir.relative_to(REPO))
            porter = None
    if porter is None:
        porter = Porter(src_dir, src_exe, dst_exe, log)
        porter.run(REPO / args.dtk, REPO / "build" / "port" / (tag + "-native-symbols.txt"))
        porter.reference = reference
        porter.log = None
        cache.write_bytes(pickle.dumps(porter))
        porter.log = log
    main_map, skipped = build_full_map(porter)
    fmap = FullMap(main_map, porter.bss, porter.bss_range)
    log("map built in %.0fs (%d blocks, %d conflicting blocks skipped)" % (time.time() - t0, len(main_map.blocks), skipped))

    dst_dir = REPO / "config" / args.dst
    if args.module:
        dst_dir = dst_dir / args.module
    units, dropped_ranges, conflicts = map_units(porter, fmap, drectve_ranges(porter))
    header, problems = map_header(porter, fmap)
    write_file(dst_dir / "splits.txt", list(header) + [""] + format_units(units))
    log("splits: %d units, %d ranges dropped, %d conflicts, %d header problems" % (len(units), len(dropped_ranges), len(conflicts), len(problems)))

    boundaries = [v for u in units for _, bs, be, _ in u["secs"] for v in (bs, be)]
    starts = {}
    for u in units:
        for sec, bs, be, _ in u["secs"]:
            starts.setdefault(sec, set()).add(bs)
            starts.setdefault(sec + ":end", set()).add(be)
    symbols, dropped_symbols, clipped = map_symbols(porter, fmap, boundaries, starts, pad_to_unit_end=bool(args.module))
    write_file(dst_dir / "symbols.txt", symbols)
    log("symbols: %d written, %d dropped, %d sizes clipped" % (len(symbols), len(dropped_symbols), clipped))

    dropped_cfg = []
    if not args.module:
        addrs = {}
        for line in symbols:
            m = re.match(r"^(\S+) = [^:]+:0x([0-9A-Fa-f]+);", line)
            if m:
                addrs.setdefault(m.group(1), int(m.group(2), 16))
        cfg, dropped_cfg = config_lines(porter, fmap, args.src, args.dst, addrs)
        write_file(dst_dir / "config.yml", cfg)
        log("config.yml: %d relocation entries dropped" % len(dropped_cfg))
        copy_modules(args.src, args.dst, log)

    if args.report:
        out = []
        out.append("# problems")
        out += problems
        out.append("# dropped split ranges (unit, section, reference start, end)")
        out += ["%s %s %08X-%08X" % r for r in dropped_ranges]
        out.append("# split conflicts")
        out += ["%s %s %s %s" % c for c in conflicts]
        out.append("# dropped config entries")
        out += ["%s %08X" % d for d in dropped_cfg]
        out.append("# dropped symbols")
        out += ["%s %s %08X" % (s["name"], s["sec"], s["addr"]) for s in dropped_symbols]
        write_file(args.report, out)


if __name__ == "__main__":
    main()
