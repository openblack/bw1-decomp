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
        out = []
        for s in self.symbols:
            if s is None:
                continue
            if s.section == 0 and s.storage == 2 and s.name:
                out.append(s.name)
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
            "pattern": masked_pattern(sec),
            "relocs": [(r.offset, r.type, coff.symbols[r.sym_index].name
                        if r.sym_index < len(coff.symbols) and coff.symbols[r.sym_index]
                        else "?") for r in sec.relocs],
            "_sec": sec,
        })

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
        for fn in funcs:
            hits = [m.start() for m in re.finditer(fn["pattern"], exe, re.S)]
            entry = {
                "symbol": fn["symbol"],
                "bin": fn["bin"],
                "size": fn["size"],
                "comdat": fn["comdat"],
                "found": len(hits) == 1,
                "ambiguous": len(hits) > 1,
                "va": (hits[0] + IMAGE_BASE) if len(hits) == 1 else None,
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
            # contiguity check (allow simple adjacency, no gaps)
            contiguous = True
            cur = start
            for e in present:
                if e["va"] != cur:
                    contiguous = False
                cur = e["va"] + e["size"]
            end = present[-1]["va"] + present[-1]["size"]
            n_total = len([e for e in vinfo["sections"] if e["bin"] == bucket])
            vinfo["bins"][bucket] = {
                "start": start, "end": end,
                "contiguous": contiguous,
                "survivors": len(present), "total": n_total,
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
                align = " align:1" if bucket == ".text" else ""
                lines.append(
                    f"\t{bucket:<11} start:0x{b['start']:08X} "
                    f"end:0x{b['end']:08X}{align}"
                )
        if lines:
            plan["splits"][ver] = (report["unit"] + ":\n" + "\n".join(lines))
    # decoration fixes: rename the symbols.txt entry to the obj's decorated name
    for e in (deco or []):
        plan["symbol_renames"].append({"from": e["symbols_has"], "to": e["name"]})
    return plan


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


def apply_member(query, force=False):
    rep = analyze(query)
    if not rep.get("ok"):
        return rep
    if rep["verdict"] == "manual" and not force:
        return {"ok": False, "verdict": "manual", "flags": rep["flags"],
                "external_status": rep.get("external_status"),
                "error": "verdict=manual; needs hand edits (see analyze). "
                         "rerun apply with force=True only after fixing symbols.txt."}
    if rep["verdict"] == "blocked" and not force:
        return {"ok": False, "verdict": "blocked", "flags": rep["flags"],
                "needs_dependencies": rep["needs_dependencies"],
                "error": "verdict=blocked; match these provider object(s) first: "
                         + ", ".join(rep["needs_dependencies"])}

    member = rep["member"]
    archive = rep["archive"]
    unit = rep["unit"]
    changed = {"configure": False, "splits": [], "renames": [], "already": []}

    # 0) decoration-mismatch symbol renames (mechanical; all versions).
    for rn in rep["plan"].get("symbol_renames", []):
        for ver in VERSIONS:
            sp = symbols_path(ver)
            txt = sp.read_text()
            pat = re.compile(rf"^{re.escape(rn['from'])}(\s*=)", re.M)
            if pat.search(txt):
                sp.write_text(pat.sub(rn["to"] + r"\1", txt, count=1))
        changed["renames"].append(f"{rn['from']}->{rn['to']}")

    # 1) configure.py: flip NonMatching -> Matching for this member line.
    ctext = CONFIGURE.read_text()
    esc = member.replace("\\", "\\\\")
    needle = f'LibObject(NonMatching, "{archive}", "{esc}"'
    repl = f'LibObject(Matching, "{archive}", "{esc}"'
    if needle in ctext:
        CONFIGURE.write_text(ctext.replace(needle, repl, 1))
        changed["configure"] = True
    elif f'LibObject(Matching, "{archive}", "{esc}"' in ctext:
        changed["already"].append("configure")
    else:
        return {"ok": False, "error": f"could not find LibObject line for {member}"}

    # 2) splits.txt per version: insert unit block in configure.py order.
    lib_order = [o["unit"] for o in list_libobjects()]
    for ver, block in rep["plan"]["splits"].items():
        sp = splits_path(ver)
        txt = sp.read_text()
        if re.search(rf"^{re.escape(unit)}:\s*$", txt, re.M):
            changed["already"].append(f"splits/{ver}")
            continue
        sp.write_text(insert_split_block(txt, unit, block, lib_order))
        changed["splits"].append(ver)

    return {"ok": True, "verdict": rep["verdict"], "flags": rep["flags"],
            "member": member, "unit": unit, "changed": changed,
            "note": "auto" if rep["verdict"] == "auto"
            else "splits+configure written; symbols.txt may still need hand edits "
                 "(undefined_externals / rdata comdat) — run verify to see errors."}


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

            ares = apply_member(o["member"])
            renames = ares.get("changed", {}).get("renames", [])
            res = verify(None)
            if not res["ok"]:
                repaired = []
                for r in res["results"]:
                    if not r["ok"]:
                        repaired += repair_split_within_symbol(r["version"], r["errors"])
                if repaired:
                    res = verify(None)
                if not res["ok"]:
                    revert_member(o["member"])
                    reverse_renames(renames)  # undo decoration edits apply made
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
        print(json.dumps(apply_member(args.member, force=args.force), indent=2))
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
