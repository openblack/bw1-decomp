#!/usr/bin/env python3
"""Port a version's splits.txt / symbols.txt / config.yml to another build of the same executable.

The reference version (default BW1W120) has curated splits and symbol names. Another build of
the same program (BW1W130, BW1WCI) is mostly the same code and data at shifted addresses, so
the work is address translation: build a monotone map from reference addresses to target
addresses, then rewrite every address in the config through it.

The map is evidence driven, never adjacency driven. Anything that cannot be placed with
evidence is left out (the split or symbol is dropped, and dtk auto-generates the range) and is
listed in the report, so a wrong guess cannot silently corrupt the config:

  .text        Each chunk between reference symbol/split boundaries is searched for in the target
               with relocation-like operands (rel32 and abs32) wildcarded. Unique matches are
               chained with a longest-increasing-subsequence, and the stretches between chained
               anchors are walked chunk by chunk (tolerating struct offset changes inside a
               function). A chunk is accepted only when its bytes verify.
  .rdata/.data Unique 24-byte runs free of pointers anchor the section, the gaps are walked
               with pointer-aware comparison (text pointers are translated through the text map).
  .bss         Has no content; every address is placed from the operand pairs seen in matched
               code and data (reference operand -> target operand at the same position).

Usage:
  python3 tools/port_version.py emit --dst BW1W130                      # write config/<dst>/
  python3 tools/port_version.py emit --dst BW1W130 --report dropped.txt  # and list what was left out

The emitted config is a starting point, not a finished one. It writes symbols.txt before dtk has
run over it, so a re-emit discards dtk's additions and every hand fix made since. After a re-emit,
check the dropped ranges of every linked unit, and diff the relinked exe against the original.
"""

import argparse
import bisect
import json
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

    def to_json(self):
        return [list(b) for b in self.blocks]


# ---------------------------------------------------------------------------------------------
# Wildcarded regions
# ---------------------------------------------------------------------------------------------

# rel32 after call/jmp, and abs32 operands that land in the image (0x00XXYYZZ with XX in 0x40..0xFC).
CODE_WILDCARD = re.compile(rb"(?s)[\xE8\xE9]....|..[\x40-\xFC]\x00")
PADDING_BYTES = b"\x90\xcc"


class Region:
    """Bytes of one section with the positions that are expected to differ between builds masked."""

    def __init__(self, image, name, kind, hi=None, lo_addr=None, hi_addr=None):
        self.image = image
        self.name = name
        self.kind = kind
        self.va, self.raw = image.raw_bytes(name)
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
        for m in CODE_WILDCARD.finditer(self.raw):
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

    def contains(self, addr):
        return self.va <= addr < self.end


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

    def __init__(self, a, b, chunks, translate=None, pairs=None):
        self.a, self.b, self.chunks = a, b, chunks
        self.translate = translate  # reference pointer value -> target value or None (data only)
        self.pairs = pairs if pairs is not None else {}  # reference operand -> {target operand: count}
        self.last_info = 0
        self.res = [None] * len(chunks)
        self.how = [None] * len(chunks)
        self.blen = {}  # target length of chunks whose size differs from the reference
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
        if al.verify(k, bo) not in verdicts and al.how[k] != "seed":
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
    for m in CODE_WILDCARD.finditer(raw_a, ao, ao + n):
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
            n = 0
            while image.u32(base + rva + 4 * n):
                n += 1
            return base + rva, base + rva + 4 * (n + 1)
        a0, a1 = span(first)
        iat_lo = a0 if not iat_lo else min(iat_lo, a0)
        iat_hi = max(iat_hi, a1)
        o0, o1 = span(orig)
        ilt_lo = o0 if not ilt_lo else min(ilt_lo, o0)
        ilt_hi = max(ilt_hi, o1)
        pos += 20
    return dict(
        import_dir=imp_va, import_end=imp_va + imp_size, export_dir=exp_va, export_size=exp_size,
        debug_dir=dbg_va, debug_size=dbg_size, iat=(iat_lo, iat_hi), ilt=(ilt_lo, ilt_hi),
    )


class Porter:
    """Builds the reference -> target AddrMap for one executable."""

    def __init__(self, src_dir, src_exe, dst_exe, log=print):
        self.log = log
        self.A, self.B = Image(src_exe), Image(dst_exe)
        self.symbols = parse_symbols(src_dir / "symbols.txt")
        self.header, self.units = parse_splits(src_dir / "splits.txt")
        self.hdr_rows = parse_header_sections(self.header)
        self.la, self.lb = import_layout(self.A), import_layout(self.B)
        self.pairs = {}
        self.clean = {}
        self.aligners = {}
        self.map = AddrMap()

    # data regions that carry curated content (everything except the import machinery)
    def data_regions(self):
        la, lb = self.la, self.lb
        a_rdata_lo = la["debug_dir"] + la["debug_size"]
        b_rdata_lo = lb["debug_dir"] + lb["debug_size"]
        a_bss = next(r for r in self.hdr_rows if r["name"] == ".bss")["vaddr"]
        return {
            ".rdata": ((a_rdata_lo, la["import_dir"]), (b_rdata_lo, lb["import_dir"])),
            ".data": ((self.A.section(".data")["va"], a_bss), (self.B.section(".data")["va"], None)),
        }

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
        chunks = make_chunks(ra, self.symbols, self.units, {".text"})
        al = Aligner(ra, rb, chunks)
        seeds = al.chain(al.seed_chunks())
        al.place_seeds(seeds)
        al.fill_gaps()
        al.make_monotone()
        al.repair()
        self.aligners[".text"] = al
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
        self.collect_name_pairs(self.native_symbols(dtk, cache))
        self.align_text()
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
                (tmp / "splits.txt").write_text("Sections:\n\t.text       type:code align:4096\n\t.rdata      type:rodata align:4096\n\t.data       type:data align:4096\n\t.data1      type:data align:4096\n\tSELFMOD     type:data align:4096\n\t.rsrc       type:rodata align:4096\n")
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
        names = {s["addr"]: s["name"] for s in self.symbols if "raw" not in s}
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
        self.name_pairs = pairs
        self.name_sizes = sizes
        self.log("name anchors: %d (RTTI, vtables)" % len(pairs))

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
        if anchors and anchors[0][0] - a_lo < 0x40:
            anchors.insert(0, (a_lo, a_lo + anchors[0][1] - anchors[0][0]))
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
        if end is not None and nxt is not None and end > nxt and self.main._block(x) is not None and self.main._block(x)[0] == x:
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
        a, b = A.section(name), B.section(name)
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
    """Placeholder names carry their own address; re-key them to the target address."""
    return name.replace("%08X" % a_addr, "%08X" % b_addr)


def map_symbols(porter, fmap, boundaries=()):
    """Reference symbols rewritten for the target: (lines, dropped, clipped).

    boundaries are target addresses where a split starts or ends; a symbol may not span one."""
    bounds = sorted(set(boundaries))
    bysec = {}
    dropped = []
    for sym in porter.symbols:
        if "raw" in sym:
            continue
        b = fmap.start(sym["addr"])
        if b is None:
            dropped.append(sym)
            continue
        size = sym["size"]
        if size:
            e = fmap.end(sym["addr"] + size)
            if e is not None and e > b:
                size = e - b
        bysec.setdefault(sym["sec"], []).append([b, sym, size])
    lines = []
    clipped = 0
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
                items[i][2] = limit - b
                clipped += 1
        for b, sym, size in items:
            named = dict(sym, name=rename_placeholder(sym["name"], sym["addr"], b))
            if "scope:weak" in named["attrs"]:
                # a weak COMDAT function in a unit that is linked from its extracted object makes
                # lld-link crash; the reference only gets away with it because that unit is compiled
                named["attrs"] = named["attrs"].replace("scope:weak", "scope:global")
            lines.append(format_symbol(named, addr=b, size=size))
    return lines, dropped, clipped


def bracket_runs(porter, mapped):
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
                            recovered += 1
                        p += e - s
            i = j
    return recovered


def map_units(porter, fmap, drectve):
    """Reference splits rewritten for the target: (units, dropped ranges, conflicts)."""
    rows = []  # (b_start, b_end, unit index, row index)
    mapped = []
    dropped = []
    for ui, u in enumerate(porter.units):
        out = []
        for sec, s, e, attrs in u["secs"]:
            if sec == ".drectve":
                r = drectve.get((u["name"], s, e))
                bs, be = r if r else (None, None)
            else:
                bs, be = fmap.start(s), fmap.end(e)
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
    bracket_runs(porter, mapped)
    dropped = [(u["name"], sec, s_, e_) for u, out in zip(porter.units, mapped) for (sec, s_, e_, _), r in zip(u["secs"], out) if r is None]
    # overlap / order checks in target address space
    conflicts = []
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
    for sec, items in by_sec.items():
        items.sort()
        for (a0, b0, u0, r0), (a1, b1, u1, r1) in zip(items, items[1:]):
            if b1 < b0 and mapped[u1][r1] is not None:
                conflicts.append((porter.units[u1]["name"], sec, "out of order", porter.units[u0]["name"]))
                mapped[u1][r1] = None
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


def map_header(porter, fmap):
    """The 'Sections:' block of splits.txt for the target. Returns (lines, problems)."""
    A, B, la, lb = porter.A, porter.B, porter.la, porter.lb
    rdata = B.section(".rdata")
    overrides = {
        ".idata$5": (lb["iat"][0], lb["debug_dir"]),
        ".idata$2": (lb["import_dir"], lb["import_end"] - 0x14),
        ".idata$3": (lb["import_end"] - 0x14, lb["import_end"]),
        ".idata$4": (lb["import_end"], lb["ilt"][1]),
        ".idata$6": (lb["ilt"][1], lb["export_dir"]),
        ".edata": (lb["export_dir"], rdata["va"] + rdata["vsize"]),
        ".xdata$x": (None, lb["import_dir"]),
    }
    out, problems = [], []
    for line in porter.header:
        m = SPLIT_HDR_RE.match(line)
        if not m:
            out.append(line)
            continue
        name, typ = m.group(1), m.group(2)
        start, end = fmap.start(int(m.group(3), 16)), fmap.end(int(m.group(4), 16))
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
    return out, problems


def config_lines(porter, fmap, src_version, dst_version, dst_exe_rel, module_dst_dir=None):
    """config.yml for the target: reference file with addresses mapped and the PE fields re-read."""
    sys.path.insert(0, str(Path(__file__).resolve().parent))
    import hashlib
    import pre_dtk_patch

    A, B = porter.A, porter.B
    pe = B.pe.OPTIONAL_HEADER
    src_text = (REPO / "config" / src_version / "config.yml").read_text(encoding="utf-8").split("\n")
    out = []
    dropped = []
    i = 0
    stanza = None  # drop the whole '- source' stanza when its address cannot be mapped
    section = None
    skipping = False
    while i < len(src_text):
        line = src_text[i]
        i += 1
        m = re.match(r"^(\w+):", line)
        if m:
            section = m.group(1)
            skipping = False
        m = re.match(r"^(\s*-\s+source:\s+)0x([0-9A-Fa-f]+)(.*)$", line)
        if m and section in ("block_relocations", "add_relocations"):
            a = int(m.group(2), 16)
            b = fmap.start(a)
            skipping = b is None
            if skipping:
                dropped.append((section, a))
                continue
            out.append("%s0x%08X%s" % (m.group(1), b, m.group(3)))
            continue
        if skipping and re.match(r"^\s+\w+:", line):
            continue
        out.append(line)
    text = "\n".join(out)
    text = text.replace(src_version, dst_version)
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
    for pat, rep in replacements.items():
        text = re.sub(pat, rep, text, flags=re.M)
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


def copy_modules(src, dst, log):
    """DLLs that are byte-identical to the reference's keep its module configs verbatim."""
    import shutil

    src_dir, dst_dir = REPO / "config" / src, REPO / "config" / dst
    for module, dll in MODULE_DLLS.items():
        a, b = REPO / "orig" / src / dll, REPO / "orig" / dst / dll
        if not b.exists():
            log("module %s: %s missing for %s" % (module, dll, dst))
        elif sha1_of(a) == sha1_of(b):
            shutil.copytree(src_dir / module, dst_dir / module, dirs_exist_ok=True)
            log("module %s: %s is identical to %s, config copied" % (module, dll, src))
        else:
            log("module %s: %s differs from %s, needs its own port" % (module, dll, src))


def write_file(path, lines):
    Path(path).parent.mkdir(parents=True, exist_ok=True)
    Path(path).write_text("\n".join(lines).rstrip("\n") + "\n", encoding="utf-8", newline="\n")


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("command", choices=["emit"])
    ap.add_argument("--src", default="BW1W120")
    ap.add_argument("--dst", required=True)
    ap.add_argument("--report", type=Path, help="write the dropped symbols/ranges here")
    ap.add_argument("--dtk", default="build/tools/dtk", help="dtk binary used to name the target's RTTI and vtables")
    args = ap.parse_args()

    log = lambda msg: print(msg, flush=True)
    src_dir = REPO / "config" / args.src
    porter = Porter(src_dir, REPO / EXECUTABLES[args.src], REPO / EXECUTABLES[args.dst], log)
    t0 = time.time()
    porter.run(REPO / args.dtk, REPO / "build" / "port" / (args.dst + "-native-symbols.txt"))
    main_map, skipped = build_full_map(porter)
    fmap = FullMap(main_map, porter.bss, porter.bss_range)
    log("map built in %.0fs (%d blocks, %d conflicting blocks skipped)" % (time.time() - t0, len(main_map.blocks), skipped))

    dst_dir = REPO / "config" / args.dst
    units, dropped_ranges, conflicts = map_units(porter, fmap, drectve_ranges(porter))
    header, problems = map_header(porter, fmap)
    write_file(dst_dir / "splits.txt", list(header) + [""] + format_units(units))
    log("splits: %d units, %d ranges dropped, %d conflicts, %d header problems" % (len(units), len(dropped_ranges), len(conflicts), len(problems)))

    boundaries = [v for u in units for _, bs, be, _ in u["secs"] for v in (bs, be)]
    symbols, dropped_symbols, clipped = map_symbols(porter, fmap, boundaries)
    write_file(dst_dir / "symbols.txt", symbols)
    log("symbols: %d written, %d dropped, %d sizes clipped" % (len(symbols), len(dropped_symbols), clipped))

    cfg, dropped_cfg = config_lines(porter, fmap, args.src, args.dst, None)
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
