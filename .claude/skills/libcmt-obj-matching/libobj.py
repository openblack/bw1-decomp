#!/usr/bin/env python3
"""libobj.py — drive matching of downloaded LIBCMT.LIB / LIBCPMT.LIB objects.

One CRT object at a time, made byte-exact into all three BW1 versions
(BW1E100, BW1E110, BW1E142). Designed so a small model can run a loop with
minimal judgement: each subcommand prints a single JSON object to stdout.

Subcommands
-----------
  list                       JSON list of NonMatching lib objects in configure.py
  analyze <member>           READ-ONLY. Parse the obj, locate it in every exe,
                             classify it, and emit a report + a proposed plan.
  apply   <member>           WRITE. Edit configure.py / splits.txt / symbols.txt
                             from the analyze plan (only the parts it is sure of).
  verify  [--version V]      Run dtk coff split + configure.py + ninja for one or
                             all versions; emit a structured pass/fail report.
  revert  <member>           Undo apply for a member (restores the 3 edited files
                             to HEAD for the affected lines; safe checkpoint based).

Read-only commands never touch tracked source. `apply` is the only writer and is
idempotent. Exit code is 0 unless the command itself failed to run.

The member name is the archive path with Windows backslashes, e.g.
  build\\intel\\mt_obj\\purevirt.obj      (some entries have a ..\\ prefix)
You may pass just the basename ("purevirt" or "purevirt.obj"); it is resolved
against configure.py's object list.
"""

import argparse
import json
import re
import struct
import subprocess
import sys
from pathlib import Path

SELF_DIR = Path(__file__).resolve().parent     # the skill directory
ROOT = SELF_DIR.parents[2]                      # repo root (.claude/skills/<x>/..)
CONFIGURE = ROOT / "configure.py"
LIB_DIR = ROOT / "build" / "lib"
LLVM_AR = ROOT / "build" / "tools" / "llvm" / "bin" / "llvm-ar"
DTK = ROOT / "build" / "tools" / "dtk"
NINJA = "ninja"
VERSIONS = ["BW1E100", "BW1E110", "BW1E142"]
IMAGE_BASE = 0x400000

# COFF i386 relocation types
REL_DIR32 = 0x06
REL_DIR32NB = 0x07
REL_REL32 = 0x14
RELOC_WIDTH = {REL_DIR32: 4, REL_DIR32NB: 4, REL_REL32: 4}

# Section characteristics
SCN_CNT_CODE = 0x00000020
SCN_CNT_INITDATA = 0x00000040
SCN_LNK_COMDAT = 0x00001000
SCN_LNK_REMOVE = 0x00000800
SCN_MEM_DISCARDABLE = 0x02000000


# --------------------------------------------------------------------------- #
# COFF object parsing                                                         #
# --------------------------------------------------------------------------- #
class Reloc:
    __slots__ = ("offset", "sym_index", "type")

    def __init__(self, offset, sym_index, type_):
        self.offset = offset
        self.sym_index = sym_index
        self.type = type_


class Section:
    __slots__ = ("name", "raw_name", "characteristics", "data", "relocs", "index")

    def __init__(self, name, raw_name, characteristics, data, relocs, index):
        self.name = name
        self.raw_name = raw_name
        self.characteristics = characteristics
        self.data = data
        self.relocs = relocs
        self.index = index  # 1-based section number

    @property
    def is_code(self):
        return bool(self.characteristics & SCN_CNT_CODE)

    @property
    def is_initdata(self):
        return bool(self.characteristics & SCN_CNT_INITDATA)

    @property
    def is_comdat(self):
        return bool(self.characteristics & SCN_LNK_COMDAT)

    @property
    def is_discardable(self):
        return bool(self.characteristics & (SCN_MEM_DISCARDABLE | SCN_LNK_REMOVE))

    @property
    def loaded(self):
        """Section the linker places into the image (code or init data)."""
        return (self.is_code or self.is_initdata) and not self.is_discardable

    @property
    def bin(self):
        """Output section bucket: .text / .data / .rdata."""
        n = self.name
        if n.startswith(".text"):
            return ".text"
        if n.startswith(".rdata"):
            return ".rdata"
        if n.startswith(".data"):
            return ".data"
        if n.startswith(".bss"):
            return ".bss"
        return n


class Symbol:
    __slots__ = ("name", "value", "section", "type", "storage", "aux")

    def __init__(self, name, value, section, type_, storage, aux):
        self.name = name
        self.value = value
        self.section = section  # section number; 0 = undefined/external
        self.type = type_
        self.storage = storage  # 2 = EXTERNAL, 3 = STATIC
        self.aux = aux


class CoffObj:
    def __init__(self, blob):
        self.blob = blob
        self.sections = []
        self.symbols = []
        self._parse()

    def _parse(self):
        b = self.blob
        (machine, nsec, _time, sym_ptr, nsym, opt) = struct.unpack_from(
            "<HHIIIH", b, 0
        )
        # string table follows symbol table (18 bytes each)
        str_off = sym_ptr + nsym * 18
        self._strtab = b[str_off:] if sym_ptr else b""

        sec_off = 20 + opt
        for i in range(nsec):
            (raw_name, _vsz, _va, size, dptr, rptr, _lptr, nrel, _nl, chars) = (
                struct.unpack_from("<8sIIIIIIHHI", b, sec_off + i * 40)
            )
            name = self._sec_name(raw_name)
            data = b[dptr : dptr + size] if dptr else b""
            relocs = []
            for r in range(nrel):
                off, sidx, typ = struct.unpack_from("<IIH", b, rptr + r * 10)
                relocs.append(Reloc(off, sidx, typ))
            self.sections.append(
                Section(name, raw_name, chars, data, relocs, i + 1)
            )

        # symbol table
        i = 0
        while i < nsym:
            rec = b[sym_ptr + i * 18 : sym_ptr + i * 18 + 18]
            name = self._sym_name(rec[:8])
            value, sec, typ, scl, naux = struct.unpack_from("<IhHBB", rec, 8)
            aux = [b[sym_ptr + (i + 1 + a) * 18 : sym_ptr + (i + 2 + a) * 18]
                   for a in range(naux)]
            self.symbols.append(Symbol(name, value, sec, typ, scl, aux))
            # keep table indices aligned: append placeholders for aux slots
            for _ in range(naux):
                self.symbols.append(None)
            i += 1 + naux

    def _sec_name(self, raw):
        if raw[0:1] == b"/":
            off = int(raw[1:].split(b"\x00")[0].decode())
            return self._strtab[off:].split(b"\x00")[0].decode()
        return raw.split(b"\x00")[0].decode()

    def _sym_name(self, raw):
        if raw[:4] == b"\x00\x00\x00\x00":
            off = struct.unpack_from("<I", raw, 4)[0]
            return self._strtab[off:].split(b"\x00")[0].decode()
        return raw.split(b"\x00")[0].decode()

    # -- helpers ---------------------------------------------------------- #
    def defining_symbol(self, section_index):
        """The EXTERNAL symbol naming a COMDAT section (value 0, that section)."""
        best = None
        for s in self.symbols:
            if s is None:
                continue
            if s.section == section_index and s.value == 0 and s.storage == 2:
                return s.name
            if s.section == section_index and s.value == 0 and best is None:
                best = s.name
        return best

    def undefined_externals(self):
        # A section-0 external symbol is only a true undefined reference when its
        # value is 0. A nonzero value means it's a COMMON symbol (a tentative
        # uninitialized definition of `value` bytes that the obj itself supplies,
        # allocated into .bss by the linker) — not a dependency on another obj.
        out = []
        for s in self.symbols:
            if s is None:
                continue
            if s.section == 0 and s.storage == 2 and s.value == 0 and s.name:
                out.append(s.name)
        return out

    def common_symbols(self):
        """COMMON symbols (section 0, value = size): tentative .bss globals the
        obj defines itself."""
        out = []
        for s in self.symbols:
            if s is None:
                continue
            if s.section == 0 and s.storage == 2 and s.value > 0 and s.name:
                out.append((s.name, s.value))
        return out

    def defined_externals(self):
        """Symbols this object provides to others (external, in a section)."""
        out = []
        for s in self.symbols:
            if s is None:
                continue
            if s.section > 0 and s.storage == 2 and s.name:
                out.append(s.name)
        return out


def masked_pattern(section):
    """Bytes of a section as a regex with reloc fields wildcarded."""
    data = bytearray(section.data)
    holes = []
    for r in section.relocs:
        w = RELOC_WIDTH.get(r.type, 4)
        for k in range(w):
            if r.offset + k < len(data):
                holes.append(r.offset + k)
    holes = set(holes)
    out = bytearray()
    for i, byte in enumerate(data):
        if i in holes:
            out += b"."
        else:
            out += re.escape(bytes([byte]))
    return bytes(out)


# --------------------------------------------------------------------------- #
# configure.py object list                                                    #
# --------------------------------------------------------------------------- #
LIBOBJ_RE = re.compile(
    r'LibObject\((?P<match>Matching|NonMatching),\s*"(?P<arch>[^"]+)",\s*'
    r'"(?P<member>[^"]+)"'
)


def list_libobjects():
    text = CONFIGURE.read_text()
    out = []
    for m in LIBOBJ_RE.finditer(text):
        member = m.group("member").encode().decode("unicode_escape")
        out.append({
            "matching": m.group("match") == "Matching",
            "archive": m.group("arch"),
            "member": member,
            "basename": member.replace("\\", "/").rsplit("/", 1)[-1],
            "unit": "lib/" + m.group("arch") + "/"
                    + member.replace("\\", "/").rsplit("/", 1)[-1],
        })
    return out


def resolve_member(query):
    """Map a basename / partial to the exact (archive, member) in configure.py."""
    q = query.replace("\\", "/").rsplit("/", 1)[-1]
    if not q.endswith(".obj"):
        q += ".obj"
    matches = [o for o in list_libobjects() if o["basename"] == q]
    if not matches:
        return None
    return matches[0]


def archive_lib_path(archive):
    for cand in [LIB_DIR / f"{archive}.lib", LIB_DIR / f"{archive.upper()}.LIB"]:
        if cand.exists():
            return cand
    return LIB_DIR / f"{archive}.lib"


def extract_member(archive, member):
    lib = archive_lib_path(archive)
    out = subprocess.run(
        [str(LLVM_AR), "p", str(lib), member],
        capture_output=True,
    )
    if out.returncode != 0 or not out.stdout:
        raise RuntimeError(
            f"llvm-ar p failed for {member}: {out.stderr.decode(errors='replace')}"
        )
    return out.stdout


def list_members(archive):
    lib = archive_lib_path(archive)
    out = subprocess.run([str(LLVM_AR), "t", str(lib)], capture_output=True, text=True)
    return [m for m in out.stdout.splitlines() if m.strip().endswith(".obj")]


# --------------------------------------------------------------------------- #
# symbol index (read-only) — who provides / references each symbol            #
# --------------------------------------------------------------------------- #
INDEX_CACHE = SELF_DIR / "libobj_index.json"


def build_symbol_index(archive):
    """Parse every archive member once: which member defines/references each
    symbol. Read-only. Used to resolve undefined externals to their provider
    object (the dependency graph) without building anything."""
    defines = {}   # symbol -> [member basenames that define it]
    members = {}   # basename -> {member, defines:[], refs:[]}
    for member in list_members(archive):
        base = member.replace("\\", "/").rsplit("/", 1)[-1]
        try:
            coff = CoffObj(extract_member(archive, member))
        except Exception:
            continue
        d = sorted(set(coff.defined_externals()))
        r = sorted(set(coff.undefined_externals()))
        members[base] = {"member": member, "defines": d, "refs": r}
        for sym in d:
            defines.setdefault(sym, []).append(base)
    return {"archive": archive, "defines": defines, "members": members}


def load_index(archive, refresh=False):
    lib = archive_lib_path(archive)
    key = f"{archive}:{int(lib.stat().st_mtime)}"
    if not refresh and INDEX_CACHE.exists():
        try:
            cached = json.loads(INDEX_CACHE.read_text())
            if cached.get("key") == key:
                return cached["index"]
        except Exception:
            pass
    index = build_symbol_index(archive)
    INDEX_CACHE.write_text(json.dumps({"key": key, "index": index}))
    return index


def _decoration_variants(name):
    """Names that are the same symbol modulo MS stdcall @N decoration."""
    out = {name}
    base = re.sub(r"@\d+$", "", name)
    out.add(base)
    return out


def resolve_external(name, symbols, sym_by_norm, index):
    """Classify one undefined external (read-only). Returns a dict the agent /
    a write-tool can act on without guessing."""
    if name in symbols:
        sec, addr = symbols[name]
        return {"name": name, "status": "defined",
                "at": f".{sec}:0x{addr:08X}"}
    # decoration mismatch: symbols.txt has the same symbol w/o (or w/) @N
    base = re.sub(r"@\d+$", "", name)
    if base in sym_by_norm and base != name:
        sec, addr, real = sym_by_norm[base]
        return {"name": name, "status": "decoration_mismatch",
                "symbols_has": real, "at": f".{sec}:0x{addr:08X}",
                "fix": f"rename symbols.txt '{real}' -> '{name}'"}
    # provided by another archive member (dependency)
    providers = index["defines"].get(name) or index["defines"].get(base)
    if providers:
        return {"name": name, "status": "dependency", "provided_by": providers}
    return {"name": name, "status": "undefined"}


# --------------------------------------------------------------------------- #
# symbols.txt parsing (read-only lookups)                                     #
# --------------------------------------------------------------------------- #
SYM_LINE_RE = re.compile(
    r"^(?P<name>[^\s=]+)\s*=\s*\.(?P<sec>\w+):0x(?P<addr>[0-9A-Fa-f]+);"
)


def symbols_path(version):
    return ROOT / "config" / version / "symbols.txt"


def splits_path(version):
    return ROOT / "config" / version / "splits.txt"


def load_symbols(version):
    """name -> (section, addr) from a version's symbols.txt."""
    out = {}
    for line in symbols_path(version).read_text().splitlines():
        m = SYM_LINE_RE.match(line.strip())
        if m:
            out[m.group("name")] = (m.group("sec"), int(m.group("addr"), 16))
    return out


def read_exe(version):
    return (ROOT / "orig" / version / "runblack-decrypted.exe").read_bytes()


# --------------------------------------------------------------------------- #
# analyze                                                                     #
# --------------------------------------------------------------------------- #
def analyze(query):
    obj_meta = resolve_member(query)
    if not obj_meta:
        return {"ok": False, "error": f"no LibObject matching '{query}' in configure.py"}
    archive = obj_meta["archive"]
    member = obj_meta["member"]
    blob = extract_member(archive, member)
    coff = CoffObj(blob)

    # Map every obj-defined symbol -> (section index, offset within it).
    defined_syms = {}
    for s in coff.symbols:
        if s is not None and s.section > 0 and s.name:
            defined_syms.setdefault(s.name, (s.section, s.value))

    # Collect loaded sections, grouped by bin, each with its naming symbol.
    funcs = []   # one per loaded code/data section
    for sec in coff.sections:
        if not sec.loaded:
            continue
        name = coff.defining_symbol(sec.index) or f"{sec.name}#{sec.index}"
        funcs.append({
            "symbol": name,
            "section": sec.name,
            "bin": sec.bin,
            "size": len(sec.data),
            "comdat": sec.is_comdat,
            "is_code": sec.is_code,
            "index": sec.index,
            "pattern": masked_pattern(sec),
            "relocs": [(r.offset, r.type, coff.symbols[r.sym_index].name
                        if r.sym_index < len(coff.symbols) and coff.symbols[r.sym_index]
                        else "?") for r in sec.relocs],
            "_sec": sec,
        })

    # For each section, find a DIR32 anchor: a reloc (in any section) that points
    # at a symbol defined in this section. Lets us locate a section whose own
    # bytes byte-search can't pin (e.g. a zero/common .data global like _newcw) —
    # read the pointer's value out of the exe instead.
    for fn in funcs:
        fn["anchor"] = None
        for src in funcs:
            for (off, typ, tname) in src["relocs"]:
                tgt = defined_syms.get(tname)
                if tgt and tgt[0] == fn["index"] and typ == REL_DIR32:
                    fn["anchor"] = {"src_index": src["index"], "off": off,
                                    "sym_off": tgt[1]}
                    break
            if fn["anchor"]:
                break

    externals = sorted(set(coff.undefined_externals()))
    has_fltused = "__fltused" in externals
    index = load_index(archive)

    report = {
        "ok": True,
        "member": member,
        "archive": archive,
        "unit": obj_meta["unit"],
        "already_matching": obj_meta["matching"],
        "n_sections": len(funcs),
        "externals": externals,
        "has_fltused": has_fltused,
        "versions": {},
        "flags": [],
    }

    # Locate every section in every version.
    for ver in VERSIONS:
        exe = read_exe(ver)
        syms = load_symbols(ver)
        sym_by_norm = {}
        for nm, (sec, addr) in syms.items():
            sym_by_norm.setdefault(re.sub(r"@\d+$", "", nm), (sec, addr, nm))
        vinfo = {"sections": [], "bins": {}, "missing_externals": [],
                 "externals": [], "comdat_consts": []}
        # Authoritative location: if the obj's defining symbol is already named in
        # this version's symbols.txt and the obj's (reloc-masked) bytes match at
        # that VA, trust it. Pins a function whose byte pattern is ambiguous (the
        # same short body recurs elsewhere) or fails to byte-match across versions
        # — the common reason a CRT obj is flagged not_found/ambiguous despite
        # being a plainly-named library routine.
        def resolve_name_va(fn):
            if not fn["is_code"]:
                return None
            cand = sym_by_norm.get(re.sub(r"@\d+$", "", fn["symbol"]))
            if not cand:
                return None
            cva = cand[1]
            o = cva - IMAGE_BASE
            if o >= 0 and o + fn["size"] <= len(exe) \
                    and re.match(fn["pattern"], exe[o:o + fn["size"]], re.S):
                return cva
            return None

        placed = {}  # section index -> VA (for anchor resolution)
        for fn in funcs:
            if fn["size"] == 0:
                continue
            nva = resolve_name_va(fn)
            if nva is not None:
                placed[fn["index"]] = nva
                continue
            hits = [m.start() for m in re.finditer(fn["pattern"], exe, re.S)]
            if len(hits) == 1:
                placed[fn["index"]] = hits[0] + IMAGE_BASE
        for fn in funcs:
            # An empty (0-byte) section — e.g. a 16-aligned empty .data — has nothing
            # to locate; its empty byte pattern matches everywhere. Skip it so it
            # doesn't spuriously flag the obj ambiguous/not_found. (Any alignment
            # effect it has is caught later by verify.)
            if fn["size"] == 0:
                continue
            hits = [m.start() for m in re.finditer(fn["pattern"], exe, re.S)]
            name_va = resolve_name_va(fn)
            via_name = name_va is not None
            if via_name:
                va = name_va
            else:
                va = (hits[0] + IMAGE_BASE) if len(hits) == 1 else None
            via_reloc = False
            # resolve the DIR32 anchor pointer once (the VA the obj points at).
            reloc_va = None
            if fn["anchor"]:
                a = fn["anchor"]
                src_va = placed.get(a["src_index"])
                if src_va is not None:
                    off = src_va - IMAGE_BASE + a["off"]
                    ptr = int.from_bytes(exe[off:off + 4], "little")
                    if ptr:
                        reloc_va = ptr - a["sym_off"]
            # non-comdat data byte-search couldn't pin (zero/common global): place
            # it at the pointer's target.
            if va is None and not fn["comdat"] and reloc_va is not None:
                va = reloc_va
                via_reloc = True
            # a comdat const folds to the game's copy at the pointer target — label
            # that copy `comdat` so the obj folds to it (don't place the obj's own).
            if fn["comdat"] and va is None and reloc_va is not None \
                    and fn["symbol"] not in syms:
                vinfo.setdefault("carves", []).append(
                    {"name": fn["symbol"], "va": reloc_va, "size": fn["size"]})
            entry = {
                "symbol": fn["symbol"],
                "bin": fn["bin"],
                "size": fn["size"],
                "comdat": fn["comdat"],
                "found": va is not None,
                "ambiguous": len(hits) > 1 and not via_reloc and not via_name,
                "via_reloc": via_reloc,
                "via_name": via_name,
                "va": va,
            }
            vinfo["sections"].append(entry)
        # External symbol resolution (read-only): classify each undefined ref.
        for ext in externals:
            res = resolve_external(ext, syms, sym_by_norm, index)
            vinfo["externals"].append(res)
            if res["status"] != "defined":
                vinfo["missing_externals"].append(ext)
        # Group survivors into contiguous bin ranges.
        for bucket in (".text", ".data", ".rdata"):
            present = [e for e in vinfo["sections"]
                       if e["bin"] == bucket and e["found"]]
            if not present:
                continue
            present.sort(key=lambda e: e["va"])
            start = present[0]["va"]
            # Take the contiguous cluster from the anchor; a section found past a
            # gap is an ambiguous byte-search stray (the same small function's
            # bytes occur elsewhere) — exclude it so the bin isn't inflated.
            cluster = [present[0]]
            cur = start + present[0]["size"]
            for e in present[1:]:
                if e["va"] == cur:
                    cluster.append(e)
                    cur = e["va"] + e["size"]
                else:
                    break
            end = cur
            contiguous = len(cluster) == len(present)
            n_total = len([e for e in vinfo["sections"] if e["bin"] == bucket])
            vinfo["bins"][bucket] = {
                "start": start, "end": end,
                "contiguous": contiguous,
                "survivors": len(cluster), "total": n_total,
            }
        report["versions"][ver] = vinfo

    # ---- Classify ------------------------------------------------------- #
    flags = report["flags"]
    any_missing = any(report["versions"][v]["missing_externals"] for v in VERSIONS)
    any_ambig = any(e["ambiguous"] for v in VERSIONS
                    for e in report["versions"][v]["sections"])
    not_found = {v: [e["symbol"] for e in report["versions"][v]["sections"]
                     if not e["found"]] for v in VERSIONS}
    # BW1E100 drops dead code via /OPT:REF, so missing there is expected.
    e100_only_missing = (not not_found["BW1E110"] and not not_found["BW1E142"])
    non_contig = any(
        not report["versions"][v]["bins"].get(b, {"contiguous": True})["contiguous"]
        for v in VERSIONS for b in (".text", ".data", ".rdata")
    )
    has_rdata = any(".rdata" in report["versions"][v]["bins"] for v in VERSIONS)

    # Aggregate external resolution across versions (status per symbol).
    ext_status = {}
    for v in VERSIONS:
        for e in report["versions"][v]["externals"]:
            cur = ext_status.get(e["name"])
            # worst status wins: undefined > dependency > decoration > defined
            rank = {"defined": 0, "decoration_mismatch": 1,
                    "dependency": 2, "undefined": 3}
            if cur is None or rank[e["status"]] > rank[cur["status"]]:
                ext_status[e["name"]] = e
    report["external_status"] = sorted(ext_status.values(),
                                       key=lambda e: e["name"])
    deco = [e for e in ext_status.values() if e["status"] == "decoration_mismatch"]
    deps = sorted({m for e in ext_status.values() if e["status"] == "dependency"
                   for m in e["provided_by"]})
    undef = [e["name"] for e in ext_status.values()
             if e["status"] == "undefined" and e["name"] != "__fltused"]
    report["needs_dependencies"] = deps

    if any_ambig:
        flags.append("ambiguous_match")
    if not e100_only_missing:
        flags.append("not_found_in_110_or_142")
    if deco:
        flags.append("decoration_mismatch")
    if deps:
        flags.append("blocked_on_dependency")
    if undef:
        flags.append("undefined_externals")
    if has_fltused and any("__fltused" in report["versions"][v]["missing_externals"]
                           for v in VERSIONS):
        flags.append("needs_fltused")
    if non_contig:
        flags.append("non_contiguous")
    if has_rdata:
        flags.append("has_rdata_comdat")

    # Verdict
    if any(f in flags for f in ("not_found_in_110_or_142", "ambiguous_match",
                                "non_contiguous", "undefined_externals")):
        report["verdict"] = "manual"
    elif "blocked_on_dependency" in flags:
        report["verdict"] = "blocked"   # match its provider object(s) first
    elif any(f in flags for f in ("decoration_mismatch", "has_rdata_comdat",
                                  "needs_fltused")):
        report["verdict"] = "assisted"  # mechanical symbols.txt fix; plan proposes it
    else:
        report["verdict"] = "auto"      # all refs resolved -> apply directly

    report["plan"] = build_plan(report, deco)
    return report


def build_plan(report, deco=None):
    """Concrete edits apply would make: splits per version + symbol renames."""
    plan = {"configure": {
        "member": report["member"], "archive": report["archive"]},
        "splits": {}, "symbol_renames": []}
    for ver in VERSIONS:
        v = report["versions"][ver]
        lines = []
        for bucket in (".text", ".data", ".rdata"):
            if bucket in v["bins"]:
                b = v["bins"][bucket]
                # align:1 — a verbatim lib object is placed at a fixed (often
                # unaligned) address; dtk only does unaligned via explicit align:1.
                lines.append(
                    f"\t{bucket:<11} start:0x{b['start']:08X} "
                    f"end:0x{b['end']:08X} align:1"
                )
        if lines:
            plan["splits"][ver] = (report["unit"] + ":\n" + "\n".join(lines))
    # decoration fixes: rename the symbols.txt entry to the obj's decorated name
    for e in (deco or []):
        plan["symbol_renames"].append({"from": e["symbols_has"], "to": e["name"]})
    return plan


# --------------------------------------------------------------------------- #
# blob subdivision — carve the containing blob/gap around an object's section  #
# --------------------------------------------------------------------------- #
# A verbatim lib object placed mid-stream lands inside (a) a big data/blob
# `type:object` symbol, (b) an explicit `align:1` gap unit from a prior match, or
# (c) an unlabelled auto region. dtk then bails ("overlaps", "ends within symbol",
# or "Invalid alignment" for the unaligned tail). These helpers carve the
# container so the object's range is clean and the tail is an explicit align:1
# unit (the only way dtk does unaligned). Mechanical; no judgement.

SEC_DEFAULT_ALIGN = {".text": 4, ".rdata": 8, ".data": 8, ".bss": 8}
BLOB_SYM_RE = re.compile(
    r"^(?P<name>[^\s=]+)\s*=\s*\.(?P<sec>\w+):0x(?P<addr>[0-9A-Fa-f]+);"
    r"\s*//\s*type:object\s+size:0x(?P<size>[0-9A-Fa-f]+)")
ANY_SYM_RE = re.compile(r"^[^\s=]+\s*=\s*\.(?P<sec>\w+):0x(?P<addr>[0-9A-Fa-f]+);")


def _split_units(text):
    """Parse splits.txt -> list of (name, {sec: (start, end, line)}), preserving
    file order. Skips the `Sections:` header block."""
    units = []
    cur = None
    in_header = False
    for line in text.splitlines():
        if re.match(r"^Sections:\s*$", line):
            in_header = True
            continue
        m = re.match(r"^(\S.*):\s*$", line)
        if m:
            in_header = False
            cur = {"name": m.group(1), "secs": {}}
            units.append(cur)
            continue
        if in_header:
            continue
        sm = re.match(
            r"^\t(\.\w[\w$]*)\s+start:0x([0-9A-Fa-f]+)\s+end:0x([0-9A-Fa-f]+)", line)
        if sm and cur is not None:
            cur["secs"][sm.group(1)] = (int(sm.group(2), 16), int(sm.group(3), 16), line)
    return units


def find_explicit_unit(version, sec, addr, exclude):
    for u in _split_units(splits_path(version).read_text()):
        if u["name"] == exclude:
            continue
        if sec in u["secs"]:
            s, e, _ = u["secs"][sec]
            if s <= addr < e:
                return u["name"], s, e
    return None


def find_blob_symbol(version, sec, addr):
    bare = sec.lstrip(".")
    for line in symbols_path(version).read_text().splitlines():
        m = BLOB_SYM_RE.match(line.strip())
        if m and m.group("sec") == bare:
            s = int(m.group("addr"), 16)
            sz = int(m.group("size"), 16)
            if sz and s <= addr < s + sz:
                return {"name": m.group("name"), "start": s, "size": sz,
                        "end": s + sz, "line": line}
    return None


def next_label_after(version, sec, addr):
    bare = sec.lstrip(".")
    best = None
    for line in symbols_path(version).read_text().splitlines():
        m = ANY_SYM_RE.match(line.strip())
        if m and m.group("sec") == bare:
            a = int(m.group("addr"), 16)
            if a > addr and (best is None or a < best):
                best = a
    return best


def next_split_start_after(version, sec, addr):
    """Start of the nearest explicit split unit's `sec` at/after `addr` — the gap
    must not run into an already-matched neighbour (e.g. ceil ends exactly where
    bsearch begins)."""
    best = None
    for u in _split_units(splits_path(version).read_text()):
        if sec in u["secs"]:
            s = u["secs"][sec][0]
            if s >= addr and (best is None or s < best):
                best = s
    return best


def carve_comdat(version, name, va, size):
    """Label the game's copy of a shared float const as `comdat` so an object's
    own copy folds into it (the earlier/game copy wins placement -> byte-exact).
    Splits the containing blob symbol around it. No splits.txt change — dtk carves
    a comdat symbol into its own unit automatically. Returns True if it edited."""
    sy = symbols_path(version)
    txt = sy.read_text()
    if re.search(rf"^{re.escape(name)}\s*=", txt, re.M):
        return False  # already carved (folds here already)
    blob = find_blob_symbol(version, ".rdata", va)
    hi = blob["end"] if blob else va + size
    lines = []
    if blob and va > blob["start"]:
        lines.append(re.sub(r"size:0x[0-9A-Fa-f]+",
                            f"size:0x{va - blob['start']:X}", blob["line"]))
    lines.append(f"{name} = .rdata:0x{va:08X}; "
                 f"// type:object size:0x{size:X} data:double comdat")
    if va + size < hi:
        lines.append(f"lbl_{va + size:08X} = .rdata:0x{va + size:08X}; "
                     f"// type:object size:0x{hi - (va + size):X}")
    if blob:
        sy.write_text(txt.replace(blob["line"], "\n".join(lines), 1))
    else:
        sy.write_text(txt.rstrip("\n") + "\n" + "\n".join(lines) + "\n")
    return True


def subdivide_section(version, sec, os_, oe):
    """Carve whatever contains [os_, oe) in `sec` so the object sits clean.

    The tail after the object is left to dtk's auto-splitter (which is what owns
    bulk un-RE'd data/code) — we only emit a tiny explicit `align:1` gap for the
    *unaligned head* [oe, align_up(oe)) when oe isn't aligned, because dtk's auto
    gap splits floor at align 4/8. Everything from the aligned boundary on is a
    plain `lbl_` blob that dtk auto-splits — never a giant explicit unit.

    A region can be covered by BOTH a blob symbol and a prior explicit gap unit;
    carve both. Edits symbols.txt / splits.txt; returns extra gap unit blocks."""
    bare = sec.lstrip(".")
    align = SEC_DEFAULT_ALIGN.get(sec, 8)
    extra_units, log = [], []
    unit = find_explicit_unit(version, sec, os_, exclude=None)
    blob = find_blob_symbol(version, sec, os_)
    hi = (unit[2] if unit else blob["end"] if blob
          else (next_label_after(version, sec, oe) or oe))
    nss = next_split_start_after(version, sec, oe)
    if nss is not None and oe <= nss < hi:
        hi = nss
    a = (oe + align - 1) & ~(align - 1)   # next aligned boundary after the object

    # (a) blob symbol: shrink to [start, os_), then label the tail. Split the tail
    #     at the aligned boundary so [a, hi) is a clean aligned blob dtk auto-splits.
    if blob:
        sp = symbols_path(version)
        txt = sp.read_text()
        lines = []
        if os_ > blob["start"]:
            lines.append(re.sub(r"size:0x[0-9A-Fa-f]+",
                                f"size:0x{os_ - blob['start']:X}", blob["line"]))
        if oe < hi:
            if oe < a < hi:
                lines.append(f"lbl_{oe:08X} = .{bare}:0x{oe:08X}; "
                             f"// type:object size:0x{a - oe:X}")
                lines.append(f"lbl_{a:08X} = .{bare}:0x{a:08X}; "
                             f"// type:object size:0x{hi - a:X}")
            else:
                lines.append(f"lbl_{oe:08X} = .{bare}:0x{oe:08X}; "
                             f"// type:object size:0x{hi - oe:X}")
        sp.write_text(txt.replace(blob["line"], "\n".join(lines), 1)
                      if lines else txt.replace(blob["line"] + "\n", "", 1))
        log.append(f"{sec}: carved blob {blob['name']} [{blob['start']:#x},{hi:#x})")

    # (b) prior explicit gap unit: shrink the before to [us, os) (drop if empty or
    #     aligned, so it auto-splits).
    if unit:
        name, us, ue = unit
        sp = splits_path(version)
        txt = sp.read_text()
        old = next(l for l in txt.splitlines()
                   if re.match(rf"^\t{re.escape(sec)}\s+start:0x0*{us:X}\b", l, re.I))
        if os_ > us and us & (align - 1):  # unaligned before -> keep a small unit
            sp.write_text(txt.replace(
                old, f"\t{sec:<11} start:0x{us:08X} end:0x{os_:08X} align:1", 1))
        else:                              # aligned (or empty) -> let dtk auto-split
            sp.write_text(txt.replace(old + "\n", "", 1))
        log.append(f"{sec}: subdivided gap {name} [{us:#x},{ue:#x})")

    if not unit and not blob:
        log.append(f"{sec}: auto region, tail to {hi:#x}")

    # (c) only the unaligned head needs an explicit align:1 unit; the aligned bulk
    #     [a, hi) auto-splits. If the whole tail is sub-alignment, it's one tiny gap.
    if oe < hi:
        head_end = a if oe < a < hi else hi
        if oe < head_end:
            extra_units.append(
                f"auto_gap_{oe:08X}:\n\t{sec:<11} "
                f"start:0x{oe:08X} end:0x{head_end:08X} align:1")
    return extra_units, log


BUILD_NINJA = ROOT / "build.ninja"


def discover_toolchain():
    """Find the dtk and python that the last configure used (from build.ninja)."""
    dtk, py = str(DTK), sys.executable
    if BUILD_NINJA.exists():
        txt = BUILD_NINJA.read_text()
        m = re.search(r"configure_args = .*?--dtk\s*\$\s*\n\s*(\S+)", txt)
        if m:
            dtk = m.group(1)
        m = re.search(r'python = "?([^"\n]+)"?', txt)
        if m:
            py = m.group(1)
    return dtk, py


# --------------------------------------------------------------------------- #
# apply  (the only writer)                                                    #
# --------------------------------------------------------------------------- #
def _unit_block_span(txt, unit):
    """(start, end) char offsets of a unit's block in splits.txt, or None."""
    m = re.search(rf"^{re.escape(unit)}:\n(?:\t.*\n?)*", txt, re.M)
    if not m:
        return None
    return m.start(), m.end()


def insert_split_block(txt, unit, block, lib_order):
    """Insert `block` for `unit` so lib units stay in configure.py order.

    Anchor on the nearest lib unit (by configure order) already present in the
    file: insert right after the closest preceding one, else right before the
    closest following one, else append at end.
    """
    if not txt.endswith("\n"):
        txt += "\n"
    body = block if block.endswith("\n") else block + "\n"
    try:
        idx = lib_order.index(unit)
    except ValueError:
        return txt + "\n" + body
    # closest preceding present unit
    for prev in reversed(lib_order[:idx]):
        span = _unit_block_span(txt, prev)
        if span:
            at = span[1]
            return txt[:at] + "\n" + body + txt[at:]
    # closest following present unit
    for nxt in lib_order[idx + 1:]:
        span = _unit_block_span(txt, nxt)
        if span:
            at = span[0]
            return txt[:at] + body + "\n" + txt[at:]
    return txt + "\n" + body


def apply_member(query, force=False, label=False):
    """label=True: add the object's located splits (+ subdivide/carve) but leave it
    NonMatching in configure.py — i.e. name & extract the region verbatim rather
    than link it. Used to give the un-RE'd neighbour objects real names (the obj's
    sections are byte-exact verbatim regardless of unresolved externals)."""
    rep = analyze(query)
    if not rep.get("ok"):
        return rep
    if not label and rep["verdict"] == "manual" and not force:
        return {"ok": False, "verdict": "manual", "flags": rep["flags"],
                "external_status": rep.get("external_status"),
                "error": "verdict=manual; needs hand edits (see analyze). "
                         "rerun apply with force=True only after fixing symbols.txt."}
    if not label and rep["verdict"] == "blocked" and not force:
        return {"ok": False, "verdict": "blocked", "flags": rep["flags"],
                "needs_dependencies": rep["needs_dependencies"],
                "error": "verdict=blocked; match these provider object(s) first: "
                         + ", ".join(rep["needs_dependencies"])}

    member = rep["member"]
    archive = rep["archive"]
    unit = rep["unit"]
    changed = {"configure": False, "splits": [], "renames": [], "already": []}
    if label:
        changed["label"] = True

    # 0) decoration-mismatch symbol renames (mechanical; all versions).
    for rn in rep["plan"].get("symbol_renames", []):
        for ver in VERSIONS:
            sp = symbols_path(ver)
            txt = sp.read_text()
            pat = re.compile(rf"^{re.escape(rn['from'])}(\s*=)", re.M)
            if pat.search(txt):
                sp.write_text(pat.sub(rn["to"] + r"\1", txt, count=1))
        changed["renames"].append(f"{rn['from']}->{rn['to']}")

    # 1) configure.py: flip NonMatching -> Matching (skip when only labelling).
    ctext = CONFIGURE.read_text()
    esc = member.replace("\\", "\\\\")
    needle = f'LibObject(NonMatching, "{archive}", "{esc}"'
    repl = f'LibObject(Matching, "{archive}", "{esc}"'
    if label:
        pass  # keep NonMatching; we're only naming/extracting the region
    elif needle in ctext:
        CONFIGURE.write_text(ctext.replace(needle, repl, 1))
        changed["configure"] = True
    elif f'LibObject(Matching, "{archive}", "{esc}"' in ctext:
        changed["already"].append("configure")
    else:
        return {"ok": False, "error": f"could not find LibObject line for {member}"}

    # 2) splits.txt per version: carve the containing blob/gap around each of the
    #    object's sections, then insert the unit block in configure.py order.
    lib_order = [o["unit"] for o in list_libobjects()]
    changed["subdivided"] = []
    for ver, block in rep["plan"]["splits"].items():
        sp = splits_path(ver)
        if re.search(rf"^{re.escape(unit)}:\s*$", sp.read_text(), re.M):
            changed["already"].append(f"splits/{ver}")
            continue
        # subdivide containers (edits symbols.txt / splits.txt; returns gap units)
        extra = []
        for bucket in (".text", ".rdata", ".data"):
            if bucket in rep["versions"][ver]["bins"]:
                b = rep["versions"][ver]["bins"][bucket]
                gaps, log = subdivide_section(ver, bucket, b["start"], b["end"])
                extra += gaps
                changed["subdivided"] += [f"{ver} {l}" for l in log]
        txt = insert_split_block(sp.read_text(), unit, block, lib_order)
        for g in extra:
            txt = txt.rstrip("\n") + "\n\n" + g + "\n"
        sp.write_text(txt)
        changed["splits"].append(ver)
        # carve the game's copy of each folding comdat const so the obj folds to it
        for c in rep["versions"][ver].get("carves", []):
            if carve_comdat(ver, c["name"], c["va"], c["size"]):
                changed.setdefault("carves", []).append(
                    f"{ver} {c['name']}@{c['va']:#x}")

    return {"ok": True, "verdict": rep["verdict"], "flags": rep["flags"],
            "member": member, "unit": unit, "changed": changed,
            "note": "auto" if rep["verdict"] == "auto"
            else "splits+configure+subdivision written; run verify."}


# --------------------------------------------------------------------------- #
# verify  (build + check)                                                     #
# --------------------------------------------------------------------------- #
LINK_ERR_PATTERNS = [
    ("undefined_symbol", re.compile(r"undefined symbol:?\s*(\S+)", re.I)),
    ("duplicate_symbol", re.compile(r"duplicate symbol:?\s*(\S+)", re.I)),
    ("split_within_symbol",
     re.compile(r"Split .*? ends within symbol '([^']+)'", re.I)),
    ("split_error", re.compile(r"(Split .*? (?:ends|starts) .*)", re.I)),
]


def _run(cmd, cwd=ROOT, timeout=1800):
    p = subprocess.run(cmd, cwd=str(cwd), capture_output=True,
                       text=True, timeout=timeout)
    return p.returncode, (p.stdout or "") + (p.stderr or "")


def verify_one(version, dtk, py):
    log = []
    result = {"version": version, "ok": False, "errors": [], "stage": None}
    cfg = ROOT / "config" / version / "config.yml"
    (ROOT / "build" / version / "config.json").unlink(missing_ok=True)

    rc, out = _run([dtk, "coff", "split", str(cfg), str(ROOT / "build" / version)])
    log.append(out)
    if rc != 0:
        result["stage"] = "coff_split"
        result["errors"] = parse_link_errors(out)
        result["tail"] = out[-2000:]
        return result

    rc, out = _run([py, "configure.py", "-v", version, "--dtk", dtk])
    log.append(out)
    if rc != 0:
        result["stage"] = "configure"
        result["tail"] = out[-2000:]
        return result

    rc, out = _run([NINJA])
    log.append(out)
    result["stage"] = "ninja"
    errs = parse_link_errors(out)
    if rc != 0 or errs:
        result["ok"] = False
        result["errors"] = errs
        result["tail"] = out[-2500:]
        return result
    # Authoritative check (robust to no-op ninja that prints no "files OK").
    sha = ROOT / "config" / version / "build.sha1"
    _, sout = _run([dtk, "shasum", "-c", str(sha)])
    result["ok"] = "runblack-decrypted.exe: OK" in sout
    result["errors"] = errs
    if not result["ok"]:
        result["tail"] = (out + "\n--SHA--\n" + sout)[-2500:]
    return result


SWS_RE = re.compile(
    r"Split \S+ \.(\w+) \((0x[0-9A-Fa-f]+)\.\.(0x[0-9A-Fa-f]+)\) "
    r"ends within symbol '([^']+)' \((0x[0-9A-Fa-f]+)\.\.(0x[0-9A-Fa-f]+)\)")


def parse_link_errors(out):
    errs = []
    seen = set()
    for line in out.splitlines():
        sws = SWS_RE.search(line)
        if sws:
            key = ("split_within_symbol", sws.group(4))
            if key not in seen:
                seen.add(key)
                errs.append({
                    "kind": "split_within_symbol", "symbol": sws.group(4),
                    "split_start": int(sws.group(2), 16),
                    "split_end": int(sws.group(3), 16),
                    "sym_start": int(sws.group(5), 16),
                    "sym_end": int(sws.group(6), 16),
                    "line": line.strip(),
                })
            continue
        for kind, pat in LINK_ERR_PATTERNS:
            m = pat.search(line)
            if m:
                key = (kind, m.group(1))
                if key not in seen:
                    seen.add(key)
                    errs.append({"kind": kind, "symbol": m.group(1),
                                 "line": line.strip()})
                break
    return errs


def verify(version, member=None):
    dtk, py = discover_toolchain()
    versions = [version] if version else VERSIONS
    results = [verify_one(v, dtk, py) for v in versions]
    all_ok = all(r["ok"] for r in results)
    out = {"ok": all_ok, "results": results}
    if not all_ok and member:
        # auto-recover the failing tree so the loop can continue cleanly.
        rv = revert_member(member)
        out["reverted"] = rv
    return out


# --------------------------------------------------------------------------- #
# repair  (deterministic mechanical fixes from verify errors)                 #
# --------------------------------------------------------------------------- #
def repair_split_within_symbol(version, errors):
    """Shrink pre-existing symbols that over-claim into our split.

    Common: a CRT function was hand-labelled with a size that includes its
    trailing alignment padding (or is a wrong guess name). dtk then refuses the
    split. When the symbol starts exactly at the split start, resize it to the
    split length. Only edits symbols.txt. Returns the list of fixed symbols.
    """
    fixed = []
    sp = symbols_path(version)
    txt = sp.read_text()
    for e in errors:
        if e.get("kind") != "split_within_symbol":
            continue
        if e["sym_start"] != e["split_start"]:
            continue  # not a simple over-claim; leave for the agent
        new_size = e["split_end"] - e["sym_start"]
        line_re = re.compile(
            rf"^({re.escape(e['symbol'])}\s*=\s*\.\w+:0x0*{e['sym_start']:X};.*)$",
            re.M | re.I)
        m = line_re.search(txt)
        if not m:
            continue
        line = m.group(1)
        if "size:0x" in line:
            new_line = re.sub(r"size:0x[0-9A-Fa-f]+",
                              f"size:0x{new_size:X}", line)
        else:
            new_line = line.replace(";", f"; // type:function size:0x{new_size:X}", 1) \
                if "//" not in line else line.replace("//", f"// size:0x{new_size:X}", 1)
        txt = txt.replace(line, new_line, 1)
        fixed.append({"symbol": e["symbol"], "version": version,
                      "new_size": f"0x{new_size:X}"})
    if fixed:
        sp.write_text(txt)
    return fixed


# --------------------------------------------------------------------------- #
# loop  (batch driver — run the whole NonMatching backlog, agent-light)       #
# --------------------------------------------------------------------------- #
LOOP_LOG = SELF_DIR / "libobj_loop.jsonl"


def _attemptable(rep):
    """True if the loop can match this object mechanically (no agent judgement).

    auto: all refs resolved. assisted-but-only-decoration: apply auto-renames the
    symbols.txt entry. (rdata-comdat / fltused / blocked / manual are NOT.)
    """
    if rep["verdict"] == "auto":
        return True
    if rep["verdict"] == "assisted" and set(rep["flags"]) <= {"decoration_mismatch"}:
        return True
    return False


def loop(limit=None, archive=None, only=None):
    """Auto-match the clean part of the NonMatching backlog, hands-off.

    Multi-pass (so objects unblock once their provider object is matched). For
    each attemptable object: apply, verify (one split-within-symbol repair retry);
    keep on byte-exact pass, revert on failure. Everything else is logged with its
    verdict/flags/dependencies for the agent. Resumable + never leaves a broken
    tree. Results appended to libobj_loop.jsonl (beside this script).
    """
    todo = [o for o in list_libobjects() if not o["matching"]]
    if archive:
        todo = [o for o in todo if o["archive"] == archive]
    if only:
        todo = [o for o in todo if o["basename"] in only]
    if limit:
        todo = todo[:limit]

    summary = {"matched": [], "skipped": [], "failed": []}
    done = set()
    pass_no = 0
    while True:
        pass_no += 1
        progressed = False
        for o in todo:
            name = o["basename"]
            if name in done:
                continue
            rep = analyze(o["member"])
            if not rep.get("ok"):
                _log_loop({"obj": name, "result": "error", "error": rep.get("error")})
                done.add(name); summary["skipped"].append(name); continue
            if not _attemptable(rep):
                # blocked objects may become attemptable in a later pass; only
                # log+skip them on the final pass.
                if rep["verdict"] == "blocked":
                    continue
                _log_loop({"obj": name, "result": "skip", "verdict": rep["verdict"],
                           "flags": rep["flags"],
                           "needs_dependencies": rep.get("needs_dependencies")})
                done.add(name); summary["skipped"].append(name); continue

            snap = _snapshot_config()  # full undo incl. subdivision edits
            apply_member(o["member"])
            res = verify(None)
            if not res["ok"]:
                repaired = []
                for r in res["results"]:
                    if not r["ok"]:
                        repaired += repair_split_within_symbol(r["version"], r["errors"])
                if repaired:
                    res = verify(None)
                if not res["ok"]:
                    _restore_config(snap)  # undo apply + subdivision + renames
                    bad = [{"v": r["version"], "errors": r["errors"]}
                           for r in res["results"] if not r["ok"]]
                    _log_loop({"obj": name, "result": "fail", "detail": bad,
                               "repaired": repaired})
                    done.add(name); summary["failed"].append(name); continue
            _log_loop({"obj": name, "result": "matched", "verdict": rep["verdict"]})
            done.add(name); summary["matched"].append(name); progressed = True
        if not progressed:
            break
    # remaining (still-blocked) objects: log for the agent
    for o in todo:
        if o["basename"] not in done:
            rep = analyze(o["member"])
            _log_loop({"obj": o["basename"], "result": "skip",
                       "verdict": rep.get("verdict"), "flags": rep.get("flags"),
                       "needs_dependencies": rep.get("needs_dependencies")})
            summary["skipped"].append(o["basename"])

    return {"ok": True, "passes": pass_no,
            "summary": {k: len(v) for k, v in summary.items()},
            **summary, "log": str(LOOP_LOG)}


def reverse_renames(renames):
    """Undo apply's decoration renames (list of 'from->to') across all versions."""
    for rn in renames:
        frm, to = rn.split("->", 1)
        for ver in VERSIONS:
            sp = symbols_path(ver)
            txt = sp.read_text()
            pat = re.compile(rf"^{re.escape(to)}(\s*=)", re.M)
            if pat.search(txt):
                sp.write_text(pat.sub(frm + r"\1", txt, count=1))


def _config_files():
    files = [CONFIGURE]
    for v in VERSIONS:
        files += [splits_path(v), symbols_path(v)]
    return files


def _snapshot_config():
    return {f: f.read_text() for f in _config_files()}


def _restore_config(snap):
    for f, text in snap.items():
        if f.read_text() != text:
            f.write_text(text)


def _log_loop(entry):
    with open(LOOP_LOG, "a") as f:
        f.write(json.dumps(entry) + "\n")


def scan(archive=None, limit=None):
    """READ-ONLY triage of the whole backlog. Builds no objects, writes no
    source — only reads the lib, exes and config. Safe to whitelist. Emits, per
    object: verdict, flags, dependency providers; plus a roll-up so the agent can
    plan (match `auto`/decoration first, then unblock the dependency tree)."""
    todo = [o for o in list_libobjects() if not o["matching"]]
    if archive:
        todo = [o for o in todo if o["archive"] == archive]
    if limit:
        todo = todo[:limit]
    rows, buckets = [], {}
    for o in todo:
        rep = analyze(o["member"])
        if not rep.get("ok"):
            v = "error"
            rows.append({"obj": o["basename"], "verdict": v, "error": rep.get("error")})
        else:
            v = rep["verdict"]
            rows.append({"obj": o["basename"], "verdict": v, "flags": rep["flags"],
                         "needs_dependencies": rep.get("needs_dependencies", []),
                         "n_sections": rep["n_sections"]})
        buckets.setdefault(v, []).append(o["basename"])
    return {"ok": True, "total": len(rows),
            "counts": {k: len(v) for k, v in sorted(buckets.items())},
            "by_verdict": buckets, "objects": rows}


# --------------------------------------------------------------------------- #
# revert  (recovery)                                                          #
# --------------------------------------------------------------------------- #
def revert_member(query):
    """Undo apply: drop the member's splits blocks and reset its configure line.

    Surgical (does not disturb other in-flight edits): removes the unit block
    from each splits.txt and flips the configure.py line back to NonMatching.
    """
    obj = resolve_member(query)
    if not obj:
        return {"ok": False, "error": f"unknown member '{query}'"}
    member, archive, unit = obj["member"], obj["archive"], obj["unit"]
    undone = {"splits": [], "configure": False}

    ctext = CONFIGURE.read_text()
    esc = member.replace("\\", "\\\\")
    m_needle = f'LibObject(Matching, "{archive}", "{esc}"'
    nm = f'LibObject(NonMatching, "{archive}", "{esc}"'
    if m_needle in ctext:
        CONFIGURE.write_text(ctext.replace(m_needle, nm, 1))
        undone["configure"] = True

    for ver in VERSIONS:
        sp = splits_path(ver)
        txt = sp.read_text()
        # remove the unit block: header line + indented body lines + trailing blank
        pat = re.compile(rf"\n?{re.escape(unit)}:\n(?:\t.*\n?)*", re.M)
        new = pat.sub("\n", txt)
        if new != txt:
            sp.write_text(new)
            undone["splits"].append(ver)
    return {"ok": True, "member": member, "undone": undone}


def _strip_internal(obj):
    """Drop non-JSON-able / noisy keys before printing."""
    if isinstance(obj, dict):
        return {k: _strip_internal(v) for k, v in obj.items()
                if not k.startswith("_") and k not in ("pattern", "relocs")}
    if isinstance(obj, list):
        return [_strip_internal(x) for x in obj]
    if isinstance(obj, bytes):
        return obj.hex()
    return obj


def main(argv=None):
    p = argparse.ArgumentParser(description=__doc__,
                                formatter_class=argparse.RawDescriptionHelpFormatter)
    sub = p.add_subparsers(dest="cmd", required=True)
    sub.add_parser("list", help="list NonMatching lib objects")
    a = sub.add_parser("analyze", help="read-only report for a member")
    a.add_argument("member")
    ap = sub.add_parser("apply", help="write configure/splits/symbols edits")
    ap.add_argument("member")
    ap.add_argument("--force", action="store_true",
                    help="apply even if verdict=manual (after hand-fixing symbols)")
    ap.add_argument("--label", action="store_true",
                    help="name/extract the region (add splits) but keep NonMatching")
    vp = sub.add_parser("verify", help="build + check one or all versions")
    vp.add_argument("--version", choices=VERSIONS)
    vp.add_argument("--member", help="for revert-on-failure checkpointing")
    rp = sub.add_parser("revert", help="undo apply for a member")
    rp.add_argument("member")
    lp = sub.add_parser("loop", help="auto-match the whole NonMatching backlog")
    lp.add_argument("--limit", type=int, help="process at most N objects")
    lp.add_argument("--archive", help="restrict to one archive (e.g. libcmt)")
    lp.add_argument("--only", nargs="+", help="only these basenames (e.g. wcslen.obj)")
    sp = sub.add_parser("scan", help="READ-ONLY triage of the whole backlog")
    sp.add_argument("--archive", help="restrict to one archive (e.g. libcmt)")
    sp.add_argument("--limit", type=int, help="scan at most N objects")
    ip = sub.add_parser("index", help="(re)build the read-only symbol->member index")
    ip.add_argument("--archive", default="libcmt")
    args = p.parse_args(argv)

    if args.cmd == "list":
        objs = [o for o in list_libobjects() if not o["matching"]]
        print(json.dumps({"ok": True, "count": len(objs), "objects": objs}, indent=2))
    elif args.cmd == "analyze":
        print(json.dumps(_strip_internal(analyze(args.member)), indent=2))
    elif args.cmd == "apply":
        print(json.dumps(apply_member(args.member, force=args.force,
                                      label=args.label), indent=2))
    elif args.cmd == "verify":
        print(json.dumps(verify(args.version, args.member), indent=2))
    elif args.cmd == "revert":
        print(json.dumps(revert_member(args.member), indent=2))
    elif args.cmd == "loop":
        print(json.dumps(loop(limit=args.limit, archive=args.archive,
                              only=args.only), indent=2))
    elif args.cmd == "scan":
        print(json.dumps(scan(archive=args.archive, limit=args.limit), indent=2))
    elif args.cmd == "index":
        idx = load_index(args.archive, refresh=True)
        print(json.dumps({"ok": True, "archive": args.archive,
                          "members": len(idx["members"]),
                          "symbols": len(idx["defines"])}, indent=2))


if __name__ == "__main__":
    main()
