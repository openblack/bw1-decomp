#!/usr/bin/env python3
r"""scale_crt.py - SCALE "libcmt linking" from 2 objects to all ~253 CRT objects.

The committed foundation (HEAD 1ab22344) proved one precompiled LIBCMT .obj
(memchr, strcspn) can be linked in and counted byte-exact. This tool replicates
that for the FULL list the original game statically linked, recovering the big
coverage the dtk-template branch regressed.

Pipeline (per object, all driven from bw1-decomp's authoritative CMakeLists):
  1. Parse every `add_patched_static_lib_object(LIB obj [FLAGS...])` line, with
     its exact patch flags (NO_PAD, REMOVE_ASSOCIATIVE_FLAGS, WEAKEN_SYMBOLS,
     DELETE_SECTIONS).
  2. Extract + patch -> lib/crt_obj/<name>.obj   (via make_crt_obj.py logic).
  3. Map it to a .text address range: read the patched obj's DEFINED external
     .text function symbols (COFF symtab), look each up in symbols.txt to get
     addr + size (size: field, else next-symbol-addr), and compute the obj span
     = [min addr, max(addr+size)]. DROP+log if: any defined .text symbol is not
     in symbols.txt, the start is not 4-byte aligned, or the span overlaps an
     already-claimed range (game TUs or already-placed CRT objs).
  4. Emit splits.txt + configure.py Object(Matching, ...) entries for survivors.
  5. Reconfigure + build; DROP any obj whose split/build fails (remove its
     splits + configure entry + the .obj) so the report stays valid.
  6. Report + measure: complete_units / complete_code / matched_functions
     before vs after; confirm game TUs stay 1876 / 158.

Usage:
  python tools/scale_crt.py            # full run (extract, place, build, drop, measure)
  python tools/scale_crt.py --dry-run  # parse + map only, print what would be placed
"""
import argparse
import json
import os
import re
import struct
import subprocess
import sys
from pathlib import Path

DTK = Path(__file__).resolve().parent.parent
DECOMP = DTK.parent / "bw1-decomp"
CMAKELISTS = DECOMP / "CMakeLists.txt"
NINJA = DECOMP / ".venv" / "Scripts" / "ninja.exe"
OBJDIFF = DTK / "build" / "tools" / "objdiff-cli.exe"
VERSION = "BW1E142"
SPLITS = DTK / "config" / VERSION / "splits.txt"
SYMBOLS = DTK / "config" / VERSION / "symbols.txt"
CONFIGURE = DTK / "configure.py"
CRT_DIR = DTK / "lib" / "crt_obj"
MAKE_CRT = DTK / "tools" / "make_crt_obj.py"

# Anchor in configure.py where we splice the generated CRT Object() entries.
# Comes right after the two committed CRT objects (memchr/strcspn).
ANCHOR = '            Object(\n                Matching,\n                "Black/strcspn.cpp",\n                src_dir="lib/crt_obj",\n                source="strcspn.obj",\n            ),\n'
CF_BEGIN = "            # >>> scale_crt.py generated CRT objects (BEGIN)\n"
CF_END = "            # <<< scale_crt.py generated CRT objects (END)\n"
SP_BEGIN = "\n# >>> scale_crt.py generated CRT objects (BEGIN)\n"
SP_END = "# <<< scale_crt.py generated CRT objects (END)\n"

# Objects already committed by hand -> never touch / never re-place.
EXISTING = {"memchr", "strcspn"}


# --------------------------------------------------------------------------- #
# 1. Parse the authoritative CMakeLists list.
# --------------------------------------------------------------------------- #
def parse_cmake():
    """Return list of dicts: {name, obj, lib, no_pad, remove_assoc, weaken[], delete[]}."""
    txt = CMAKELISTS.read_text(encoding="utf-8")
    out = []
    for m in re.finditer(r"add_patched_static_lib_object\(([^\n]*)\)", txt):
        body = m.group(1)
        # tokenize respecting quotes
        toks = re.findall(r'"[^"]*"|\S+', body)
        toks = [t[1:-1] if t.startswith('"') and t.endswith('"') else t for t in toks]
        lib = toks[0]
        src = toks[1].replace("\\", "/")
        obj = os.path.basename(src)              # e.g. memchr.obj
        name = obj[:-4] if obj.lower().endswith(".obj") else obj
        rec = {"name": name, "obj": obj, "lib": lib,
               "no_pad": False, "remove_assoc": False, "weaken": [], "delete": []}
        i = 2
        cur = None
        while i < len(toks):
            t = toks[i]
            if t == "NO_PAD":
                rec["no_pad"] = True; cur = None
            elif t == "REMOVE_ASSOCIATIVE_FLAGS":
                rec["remove_assoc"] = True; cur = None
            elif t == "WEAKEN_SYMBOLS":
                cur = "weaken"
            elif t == "DELETE_SECTIONS":
                cur = "delete"
            elif t.startswith("#"):
                break                            # trailing comment
            elif cur:
                rec[cur].append(t)
            i += 1
        out.append(rec)
    return out


# --------------------------------------------------------------------------- #
# 2. Extract + patch one object via make_crt_obj.py.
# --------------------------------------------------------------------------- #
def make_obj(rec):
    cmd = [sys.executable, str(MAKE_CRT), rec["obj"], "--lib", rec["lib"]]
    if rec["no_pad"]:
        cmd.append("--no-pad")
    if rec["remove_assoc"]:
        cmd.append("--remove-associative-flags")
    for s in rec["weaken"]:
        cmd += ["--weaken-symbol", s]
    for s in rec["delete"]:
        cmd += ["--remove-section", s]
    p = subprocess.run(cmd, capture_output=True, text=True)
    return p.returncode == 0, (p.stdout + p.stderr)


# --------------------------------------------------------------------------- #
# 3. COFF symbol table reader -> defined external .text function symbols.
# --------------------------------------------------------------------------- #
def coff_text_syms(path):
    d = path.read_bytes()
    machine, nsec, _t, symptr, nsym, optsz, chars = struct.unpack_from("<HHIIIHH", d, 0)
    if symptr == 0 or nsym == 0:
        return []
    secoff = 20 + optsz
    sections = []
    for i in range(nsec):
        b = secoff + i * 40
        sections.append(d[b:b + 8].rstrip(b"\x00").decode("latin-1"))
    strtab = symptr + nsym * 18

    def getname(rec):
        if rec[:4] == b"\x00\x00\x00\x00":
            off = struct.unpack_from("<I", rec, 4)[0]
            end = d.index(b"\x00", strtab + off)
            return d[strtab + off:end].decode("latin-1")
        return rec[:8].rstrip(b"\x00").decode("latin-1")

    out = []
    i = 0
    while i < nsym:
        rec = d[symptr + i * 18:symptr + i * 18 + 18]
        name = getname(rec)
        value, secnum, typ, sclass, naux = struct.unpack_from("<IhHBB", rec, 8)
        sec = sections[secnum - 1] if 1 <= secnum <= len(sections) else None
        # IMAGE_SYM_CLASS_EXTERNAL = 2, defined (secnum>0), in a .text section
        if secnum > 0 and sclass == 2 and sec and sec.startswith(".text"):
            out.append(name)
        i += 1 + naux
    return out


# --------------------------------------------------------------------------- #
# symbols.txt -> name->addr and addr->end (size or next-symbol-addr).
# --------------------------------------------------------------------------- #
def load_symbols():
    syms = []                                    # (addr, name, size_or_None)
    for line in SYMBOLS.read_text(encoding="latin-1").splitlines():
        m = re.match(r"\s*(\S+)\s*=\s*\.text:0x([0-9A-Fa-f]+);", line)
        if not m:
            continue
        sz = None
        ms = re.search(r"size:0x([0-9A-Fa-f]+)", line)
        if ms:
            sz = int(ms.group(1), 16)
        syms.append((int(m.group(2), 16), m.group(1), sz))
    syms.sort()
    name2addr = {n: a for a, n, _ in syms}
    # addr -> end: explicit size if present else next distinct symbol addr
    addr2end = {}
    for i, (a, n, sz) in enumerate(syms):
        nxt = None
        for j in range(i + 1, len(syms)):
            if syms[j][0] > a:
                nxt = syms[j][0]
                break
        if sz is not None:
            end = a + sz
        elif nxt is not None:
            end = nxt
        else:
            end = a
        addr2end[a] = max(addr2end.get(a, 0), end)
    all_addrs = sorted({a for a, _, _ in syms})
    return name2addr, addr2end, all_addrs


# --------------------------------------------------------------------------- #
# Existing claimed .text ranges from splits.txt (game TUs + committed CRT).
# --------------------------------------------------------------------------- #
def managed_split_ranges(names):
    """Ranges of split blocks whose Black/<name>.cpp name is in `names`."""
    out = set()
    lines = SPLITS.read_text(encoding="latin-1").split("\n")
    for i, line in enumerate(lines):
        m = re.match(r"Black/([A-Za-z_0-9]+)\.cpp:", line)
        if m and m.group(1) in names and i + 1 < len(lines):
            mr = re.search(r"\.text\s+start:0x([0-9A-Fa-f]+)\s+end:0x([0-9A-Fa-f]+)", lines[i + 1])
            if mr:
                out.add((int(mr.group(1), 16), int(mr.group(2), 16)))
    return out


def existing_ranges():
    out = []
    for line in SPLITS.read_text(encoding="latin-1").splitlines():
        m = re.search(r"\.text\s+start:0x([0-9A-Fa-f]+)\s+end:0x([0-9A-Fa-f]+)", line)
        if m:
            out.append((int(m.group(1), 16), int(m.group(2), 16)))
    return out


def overlaps(lo, hi, ranges):
    for a, b in ranges:
        if lo < b and a < hi:
            return (a, b)
    return None


# --------------------------------------------------------------------------- #
# splits.txt / configure.py splice helpers (mirrors tile_drafts._remove_tus).
# --------------------------------------------------------------------------- #
def write_blocks(placed):
    """placed: list of (name, lo, hi). Splice managed entries into both files.

    IMPORTANT: `dtk coff split` rewrites splits.txt (re-sorts by address and
    strips comments) on every reconfigure, so splits.txt cannot carry BEGIN/END
    marker comments. We therefore manage splits.txt by NAME: remove any
    Black/<name>.cpp block whose name is in our placed set, then append fresh
    entries. configure.py is NOT rewritten by dtk, so it keeps marker comments.
    """
    names = {n for n, _, _ in placed}
    # splits.txt: drop existing blocks for our names, then append.
    sp_kept = remove_split_blocks(SPLITS.read_text(encoding="latin-1"), names)
    block = ""
    for name, lo, hi in placed:
        block += "\nBlack/%s.cpp:\n\t.text       start:0x%08X end:0x%08X\n" % (name, lo, hi)
    SPLITS.write_text(sp_kept.rstrip("\n") + "\n" + block, encoding="latin-1")

    # configure.py (marker-based; survives dtk).
    cf = CONFIGURE.read_text(encoding="latin-1")
    cf = strip_block(cf, CF_BEGIN, CF_END)
    if ANCHOR not in cf:
        sys.exit("configure.py anchor not found (strcspn block changed?)")
    entries = CF_BEGIN
    for name, lo, hi in placed:
        entries += ('            Object(\n'
                    '                Matching,\n'
                    '                "Black/%s.cpp",\n'
                    '                src_dir="lib/crt_obj",\n'
                    '                source="%s.obj",\n'
                    '            ),\n' % (name, name))
    entries += CF_END
    cf = cf.replace(ANCHOR, ANCHOR + entries, 1)
    CONFIGURE.write_text(cf, encoding="latin-1")


def remove_split_blocks(text, names):
    """Remove the 2-line Black/<name>.cpp split block for every name in `names`."""
    lines = text.split("\n")
    out = []
    i = 0
    while i < len(lines):
        m = re.match(r"Black/([A-Za-z_0-9]+)\.cpp:", lines[i])
        if m and m.group(1) in names:
            i += 1
            # skip following .text line(s) until blank/next block
            while i < len(lines) and (lines[i].lstrip().startswith(".text")
                                      or lines[i].strip() == ""):
                if lines[i].strip() == "":
                    break
                i += 1
            continue
        out.append(lines[i])
        i += 1
    return "\n".join(out)


def strip_block(text, begin, end):
    while begin in text and end in text:
        i = text.index(begin)
        j = text.index(end) + len(end)
        text = text[:i] + text[j:]
    return text


def remove_names(placed, drop):
    """Rewrite both files with `drop` names removed from the managed blocks; del objs."""
    drop = set(drop)
    kept = [(n, lo, hi) for n, lo, hi in placed if n not in drop]
    # Explicitly strip the dropped names' split blocks (write_blocks only
    # touches the kept set's names).
    SPLITS.write_text(remove_split_blocks(SPLITS.read_text(encoding="latin-1"), drop),
                      encoding="latin-1")
    write_blocks(kept)
    for n in drop:
        p = CRT_DIR / (n + ".obj")
        if p.exists():
            p.unlink()
    return kept


# --------------------------------------------------------------------------- #
# build / report helpers.
# --------------------------------------------------------------------------- #
def reconfigure():
    subprocess.run([sys.executable, str(CONFIGURE), "-v", VERSION], cwd=DTK, check=True,
                   capture_output=True, text=True)
    subprocess.run([str(NINJA), "build/%s/config.json" % VERSION], cwd=DTK,
                   capture_output=True, text=True)


def build_all():
    p = subprocess.run([str(NINJA), "-k", "0", "all_source"], cwd=DTK,
                       capture_output=True, text=True)
    return p.returncode == 0, (p.stdout + p.stderr)


def obj_built(name):
    return (DTK / "build" / VERSION / "src" / "Black" / (name + ".o")).exists()


def gen_report():
    subprocess.run([str(OBJDIFF), "report", "generate", "-p", ".", "-o", "rep.json"],
                   cwd=DTK, capture_output=True, text=True)
    return json.load(open(DTK / "rep.json"))


def global_metrics(rep):
    m = rep.get("measures") or {}
    return (int(m.get("matched_functions") or 0), int(m.get("complete_units") or 0),
            int(m.get("complete_code") or 0), int(m.get("matched_code") or 0))


def game_tus(rep):
    sys.path.insert(0, str(DTK / "tools"))
    import measure_match
    return measure_match.measure(str(DTK / "rep.json"))


# --------------------------------------------------------------------------- #
# MERGE MODE: section-level run-picking + COFF merge (the multi-object-split
# wall). See docs/port-banks/07-crt-linking.md.
# --------------------------------------------------------------------------- #
EXE = DTK / "orig" / VERSION / "runblack-decrypted.exe"
RUN_PREFIX = "crt_merge_"          # synthetic split/obj name prefix


def game_obstacles():
    """Ranges merged runs must never overlap: game-TU splits (everything not a
    managed CRT object) PLUS the EXISTING hand-committed CRT singletons
    (memchr/strcspn) which keep their own splits/objs. The 59 other managed CRT
    singletons are NOT obstacles - the merge subsumes them."""
    managed = {rec["name"] for rec in parse_cmake()} - EXISTING
    out = []
    lines = SPLITS.read_text(encoding="latin-1").split("\n")
    for i, line in enumerate(lines):
        m = re.match(r"Black/([A-Za-z_0-9]+)\.cpp:", line)
        if m and m.group(1) not in managed and i + 1 < len(lines):
            mr = re.search(r"\.text\s+start:0x([0-9A-Fa-f]+)\s+end:0x([0-9A-Fa-f]+)", lines[i + 1])
            if mr:
                out.append((int(mr.group(1), 16), int(mr.group(2), 16)))
    out.sort()
    return out


def pick_runs(sections, obstacles, max_gap=128):
    """Greedily group anchored CRT sections (each a dict with va/size) into runs.

    A run is a maximal ascending sequence of sections such that:
      * the run START is 4-byte aligned (leading sections are trimmed until the
        first 4-aligned section),
      * extending to the next section would not make the run [start, sec_end]
        overlap any obstacle (game TU) - a run is cut at every obstacle, and
      * the gap to the next section is <= max_gap (a larger gap means foreign /
        non-CRT code sits between them; cut so a merged split stays tight around
        CRT clusters rather than swallowing unrelated bytes). Overlapping
        (duplicate / COMDAT-folded) sections are kept in the same run; the merge
        deduplicates them.
    Returns list of runs (each a list of section dicts) with aligned starts.
    """
    secs = sorted(sections, key=lambda d: (d["va"], -d["size"]))

    def hits_obstacle(lo, hi):
        for a, b in obstacles:
            if lo < b and a < hi:
                return True
        return False

    runs = []
    cur = []
    cur_end = 0
    for sd in secs:
        s_lo, s_hi = sd["va"], sd["va"] + sd["size"]
        if hits_obstacle(s_lo, s_hi):
            if cur:
                runs.append(cur)
                cur = []
            continue
        if not cur:
            cur = [sd]
            cur_end = s_hi
            continue
        run_start = cur[0]["va"]
        gap = s_lo - cur_end                 # negative => overlap (duplicate)
        if hits_obstacle(run_start, s_hi) or gap > max_gap:
            runs.append(cur)
            cur = [sd]
            cur_end = s_hi
        else:
            cur.append(sd)
            cur_end = max(cur_end, s_hi)
    if cur:
        runs.append(cur)
    # Leading-section trimming (4-byte alignment + symbol-straddle) is done by
    # the caller (place_merged_runs), which has the symbol table.
    return runs


def place_merged_runs(dry_run=False):
    """Full merge-mode placement. Returns (placed, drop_reasons, run_info)."""
    sys.path.insert(0, str(DTK / "tools"))
    from merge_crt_obj import collect_sections, merge_sections, load_binary_text

    name2addr, _, _ = load_symbols()
    binary = load_binary_text(EXE)
    recs = parse_cmake()

    drop = {"extract-fail": [], "unanchorable": [], "no-text-syms": []}

    # 1. Extract every object (except the EXISTING hand-committed singletons,
    #    which keep their own splits) and collect its anchored sections.
    all_secs = []                      # section dicts + 'obj' name
    for rec in recs:
        if rec["name"] in EXISTING:
            continue                   # memchr/strcspn stay as committed singletons
        ok, log = make_obj(rec)
        objp = CRT_DIR / rec["obj"]
        if not ok or not objp.exists():
            drop["extract-fail"].append(rec["name"])
            continue
        try:
            secs = collect_sections(objp, name2addr, binary)
        except Exception as e:
            drop["unanchorable"].append((rec["name"], str(e)[:60]))
            objp.unlink(missing_ok=True)
            continue
        for sd in secs:
            sd["obj"] = rec["name"]
            all_secs.append(sd)
        # The merged objs are what get committed; remove the transient singleton.
        objp.unlink(missing_ok=True)

    # 2. Pick runs around game-TU obstacles.
    obstacles = game_obstacles()
    runs = pick_runs(all_secs, obstacles)

    # Symbol boundaries for snapping run ends to a symbol edge (dtk rejects a
    # split that ends within a symbol). all_addrs sorted; sym_end[a] = its extent.
    _, addr2end, all_addrs = load_symbols()
    import bisect

    def straddled(addr):
        """True if a LABELED symbol's symbols.txt extent strictly contains addr
        (a < addr < end). dtk would auto-split that symbol and collide with a
        split boundary placed at addr."""
        i = bisect.bisect_right(all_addrs, addr) - 1
        if 0 <= i < len(all_addrs):
            a = all_addrs[i]
            return a < addr < addr2end.get(a, a)
        return False

    def snap_end(hi):
        """Smallest valid split-end >= hi that doesn't bisect a labeled symbol."""
        changed = True
        while changed:
            changed = False
            i = bisect.bisect_right(all_addrs, hi) - 1
            if 0 <= i < len(all_addrs):
                a = all_addrs[i]
                e = addr2end.get(a, a)
                if a < hi < e:
                    hi = e
                    changed = True
        return hi

    # 3. Merge each run -> one obj + split [run_start, run_end].
    placed = []                        # (name, lo, hi, n_funcs, objs)
    run_info = []
    for run in runs:
        # Trim leading sections until the run START is 4-byte aligned AND not
        # straddled by a labeled symbol whose symbols.txt extent overestimates
        # its size (e.g. _signal's extent spilling over an unlabeled static).
        # Such a start would collide with dtk's auto-split for that symbol.
        while run and (run[0]["va"] % 4 != 0 or straddled(run[0]["va"])):
            run = run[1:]
        if not run:
            continue
        run_start = run[0]["va"]
        run_end = snap_end(max(d["va"] + d["size"] for d in run))
        # ensure the snapped end does not now overlap an obstacle
        if any(run_start < b and a < run_end for a, b in obstacles):
            drop.setdefault("snap-collision", []).append("%08x" % run_start)
            continue
        name = "%s%08x" % (RUN_PREFIX, run_start)
        objs = sorted({d["obj"] for d in run})
        n_funcs = sum(1 for d in run for s in d["syms"]
                      if s["type"] == 0x20 and s["sclass"] == 2)
        run_info.append((name, run_start, run_end, len(run), n_funcs, objs))
        if dry_run:
            continue
        try:
            merge_sections(run, CRT_DIR / (name + ".obj"), run_start, run_end, binary)
        except Exception as e:
            drop.setdefault("merge-fail", []).append((name, str(e)[:60]))
            continue
        placed.append((name, run_start, run_end, n_funcs, objs))
    return placed, drop, run_info


def write_merge_blocks(placed):
    """Splice merged-run splits + configure entries (mirrors write_blocks but for
    the synthetic crt_merge_* names)."""
    names = {n for n, *_ in placed}
    sp_kept = remove_split_blocks(SPLITS.read_text(encoding="latin-1"), names)
    block = ""
    for name, lo, hi, *_ in placed:
        block += "\nBlack/%s.cpp:\n\t.text       start:0x%08X end:0x%08X\n" % (name, lo, hi)
    SPLITS.write_text(sp_kept.rstrip("\n") + "\n" + block, encoding="latin-1")

    cf = CONFIGURE.read_text(encoding="latin-1")
    cf = strip_block(cf, CF_BEGIN, CF_END)
    if ANCHOR not in cf:
        sys.exit("configure.py anchor not found (strcspn block changed?)")
    entries = CF_BEGIN
    for name, lo, hi, *_ in placed:
        entries += ('            Object(\n'
                    '                Matching,\n'
                    '                "Black/%s.cpp",\n'
                    '                src_dir="lib/crt_obj",\n'
                    '                source="%s.obj",\n'
                    '            ),\n' % (name, name))
    entries += CF_END
    cf = cf.replace(ANCHOR, ANCHOR + entries, 1)
    CONFIGURE.write_text(cf, encoding="latin-1")


def drop_merge_names(placed, drop_names):
    """Remove the given merged-run names from both files + delete their objs."""
    drop_names = set(drop_names)
    kept = [p for p in placed if p[0] not in drop_names]
    SPLITS.write_text(remove_split_blocks(SPLITS.read_text(encoding="latin-1"), drop_names),
                      encoding="latin-1")
    write_merge_blocks(kept)
    for n in drop_names:
        (CRT_DIR / (n + ".obj")).unlink(missing_ok=True)
    return kept


def run_unit_complete(rep, name):
    """Return (complete_code, fuzzy_pct, good_funcs, total_funcs) for a unit, or
    None if the unit isn't in the report. complete_code being the byte count and
    good_funcs==total_funcs (all 100%) is the authoritative 'matched' signal."""
    for u in rep.get("units", []):
        b = (u.get("name") or "")
        if b.endswith(name) or b.endswith(name + ".cpp"):
            funcs = u.get("functions", [])
            good = sum(1 for f in funcs if (f.get("fuzzy_match_percent") or 0) >= 100)
            m = u.get("measures", {})
            return (int(m.get("complete_code") or 0),
                    float(m.get("fuzzy_match_percent") or 0), good, len(funcs))
    return None


def merge_main(dry_run=False):
    print("=== MERGE MODE: section-level run-picking + COFF merge ===")
    # Idempotency: remove any previously-placed crt_merge_* + managed singleton
    # CRT splits so re-runs start clean.
    managed = {rec["name"] for rec in parse_cmake()} - EXISTING
    existing_merge = set()
    for line in SPLITS.read_text(encoding="latin-1").split("\n"):
        m = re.match(r"Black/(%s[0-9a-f]+)\.cpp:" % RUN_PREFIX, line)
        if m:
            existing_merge.add(m.group(1))
    if not dry_run:
        SPLITS.write_text(remove_split_blocks(
            SPLITS.read_text(encoding="latin-1"), managed | existing_merge), encoding="latin-1")
        cf = CONFIGURE.read_text(encoding="latin-1")
        cf = strip_block(cf, CF_BEGIN, CF_END)
        CONFIGURE.write_text(cf, encoding="latin-1")
        # delete stale merged objs + the managed singleton objs they replace
        # (the EXISTING memchr/strcspn singletons are preserved).
        for f in CRT_DIR.glob(RUN_PREFIX + "*.obj"):
            f.unlink()
        for rec in parse_cmake():
            if rec["name"] not in EXISTING:
                (CRT_DIR / rec["obj"]).unlink(missing_ok=True)
                (CRT_DIR / (rec["name"] + ".obj")).unlink(missing_ok=True)

    placed, drop, run_info = place_merged_runs(dry_run=dry_run)

    if dry_run:
        tot_secs = sum(r[3] for r in run_info)
        tot_funcs = sum(r[4] for r in run_info)
        print("would place %d merged runs, %d sections, %d functions"
              % (len(run_info), tot_secs, tot_funcs))
        for k, v in drop.items():
            if v:
                print("  dropped [%s]: %d" % (k, len(v)))
        print("\n--- largest runs ---")
        for name, lo, hi, nsec, nf, objs in sorted(run_info, key=lambda r: -r[3])[:20]:
            print("  %s  0x%X..0x%X  %d secs  %d funcs  (%d objs)"
                  % (name, lo, hi, nsec, nf, len(objs)))
        return

    print("merged %d runs" % len(placed))
    for k, v in drop.items():
        if v:
            print("  dropped [%s]: %d" % (k, len(v)))

    # Splice + build + verify each run; drop runs that fail to build or don't
    # come out byte-exact (objdiff complete).
    write_merge_blocks(placed)
    reconfigure()
    ok, log = build_all()
    failed = [p[0] for p in placed if not obj_built(p[0])]
    if failed:
        print("build-failed -> dropping %d: %s" % (len(failed), failed[:20]))
        # surface the first real error lines for diagnosis
        errlines = [ln for ln in log.splitlines()
                    if ("error" in ln.lower() or "FAILED" in ln) and "warning" not in ln.lower()]
        for ln in errlines[:8]:
            print("    | " + ln.strip()[:160])
        placed = drop_merge_names(placed, failed)
        reconfigure()
        build_all()

    rep = gen_report()
    # Each merged obj is byte-exact by construction (merge_sections self-checks
    # every non-reloc byte vs the binary), so we KEEP every run that built. Some
    # functions inside a run may report <100% because a relocation targets a DATA
    # symbol not yet in symbols.txt (objdiff cannot resolve it) - those simply do
    # not count yet; they are not regressions and do not corrupt anything. Report
    # the per-function match tally so the gap is visible.
    matched = 0
    total_funcs = 0
    for name, lo, hi, nf, objs in placed:
        info = run_unit_complete(rep, name)
        if info:
            matched += info[2]
            total_funcs += info[3]

    mf, cu, cc, mc = global_metrics(rep)
    f, t, mt, n = game_tus(rep)
    placed_funcs = sum(p[3] for p in placed)
    print("\n================ MERGE RESULTS ================")
    print("merged runs placed (byte-exact by construction): %d" % len(placed))
    print("functions in merged runs: %d  |  matched 100%% by objdiff: %d  "
          "(unmatched = reloc target not in symbols.txt)" % (total_funcs, matched))
    print("CRT function-symbols emitted via merged runs: %d" % placed_funcs)
    print("Global: matched_functions=%d complete_units=%d complete_code=%d matched_code=%d"
          % (mf, cu, cc, mc))
    print("Game TUs (must be 1876/158): byte-exact %d / %d  TUs %d / %d" % (f, t, mt, n))
    (DTK / "rep.json").unlink(missing_ok=True)


# --------------------------------------------------------------------------- #
# main
# --------------------------------------------------------------------------- #
def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--dry-run", action="store_true", help="parse + map only, no extract/build")
    ap.add_argument("--merge", action="store_true",
                    help="MERGE MODE: section-level run-picking + COFF merge (recovers the "
                         "144 misaligned objects by merging consecutive functions into "
                         "4-aligned multi-function splits). This is the production path.")
    ap.add_argument("--single", action="store_true",
                    help="legacy single-object placement (the original 61-object path)")
    args = ap.parse_args()

    # Default to merge mode (the production path); --single forces the legacy one.
    if args.merge or not args.single:
        merge_main(dry_run=args.dry_run)
        return

    recs = parse_cmake()
    print("parsed %d add_patched_static_lib_object entries" % len(recs))
    name2addr, addr2end, all_addrs = load_symbols()
    import bisect

    # Idempotency: strip any previously-placed CRT split blocks so re-runs do not
    # see their own entries as "claimed" (overlap-dropping themselves) and do not
    # accumulate duplicate configure.py entries. Managed names = all CRT obj names
    # except the two committed by hand.
    managed = {rec["name"] for rec in recs} - EXISTING
    if not args.dry_run:
        SPLITS.write_text(remove_split_blocks(SPLITS.read_text(encoding="latin-1"), managed),
                          encoding="latin-1")
        cf = CONFIGURE.read_text(encoding="latin-1")
        cf = strip_block(cf, CF_BEGIN, CF_END)
        CONFIGURE.write_text(cf, encoding="latin-1")

    claimed = existing_ranges()
    if args.dry_run:
        # In memory, drop ranges belonging to managed names (so dry-run reflects a
        # clean placement even if a previous run left entries on disk).
        managed_ranges = managed_split_ranges(managed)
        claimed = [r for r in claimed if r not in managed_ranges]
    drop_reasons = {"symbol-missing": [], "misaligned": [], "overlap": [],
                    "no-text-syms": [], "interleaved": [], "extract-fail": [], "build-fail": []}

    # ---- extract + map ----
    placed = []                                  # (name, lo, hi)
    placed_ranges = list(claimed)
    for rec in recs:
        name = rec["name"]
        if name in EXISTING:
            continue
        if not args.dry_run:
            ok, log = make_obj(rec)
            if not ok:
                drop_reasons["extract-fail"].append((name, log.strip().splitlines()[-1:] or ""))
                continue
            objpath = CRT_DIR / rec["obj"]
        else:
            # dry-run still needs the obj to read symbols; extract it.
            ok, log = make_obj(rec)
            if not ok:
                drop_reasons["extract-fail"].append((name, ""))
                continue
            objpath = CRT_DIR / rec["obj"]

        tsyms = coff_text_syms(objpath)
        if not tsyms:
            drop_reasons["no-text-syms"].append(name)
            if objpath.exists():
                objpath.unlink()
            continue
        addrs = []
        missing = [s for s in tsyms if s not in name2addr]
        if missing:
            drop_reasons["symbol-missing"].append((name, missing))
            if objpath.exists():
                objpath.unlink()
            continue
        ends = []
        for s in tsyms:
            a = name2addr[s]
            addrs.append(a)
            ends.append(addr2end.get(a, a))
        lo = min(addrs)
        hi = max(ends)
        if lo % 4 != 0:
            drop_reasons["misaligned"].append((name, lo))
            if objpath.exists():
                objpath.unlink()
            continue
        # Interleave guard: the split [lo,hi] must contain ONLY this obj's
        # functions. If a foreign symbol sits between the obj's min and max
        # function, the split would swallow/corrupt non-CRT code -> drop.
        i0 = bisect.bisect_left(all_addrs, min(addrs))
        i1 = bisect.bisect_left(all_addrs, max(addrs))
        span_syms = set(all_addrs[i0:i1 + 1])
        if not set(addrs).issuperset(span_syms):
            drop_reasons["interleaved"].append((name, lo, hi))
            if objpath.exists():
                objpath.unlink()
            continue
        ov = overlaps(lo, hi, placed_ranges)
        if ov:
            drop_reasons["overlap"].append((name, lo, hi, ov))
            if objpath.exists():
                objpath.unlink()
            continue
        # rename obj file to <name>.obj if differs (configure source uses <name>.obj)
        want = CRT_DIR / (name + ".obj")
        if objpath != want:
            if want.exists():
                want.unlink()
            objpath.replace(want)
        placed.append((name, lo, hi))
        placed_ranges.append((lo, hi))

    print("\nmapped cleanly: %d" % len(placed))
    for k, v in drop_reasons.items():
        if v:
            print("  dropped [%s]: %d" % (k, len(v)))

    if args.dry_run:
        print("\n(dry-run) would place %d objects." % len(placed))
        for k, v in drop_reasons.items():
            if v:
                print("--- %s (%d) ---" % (k, len(v)))
                for item in v[:40]:
                    print("   ", item)
        return

    if not placed:
        print("nothing to place; aborting.")
        return

    # ---- splice + build ----
    write_blocks(placed)
    reconfigure()
    ok, log = build_all()
    # find which placed objs failed to build
    failed = [n for n, _, _ in placed if not obj_built(n)]
    if failed:
        print("\nbuild-failed -> dropping %d: %s" % (len(failed), failed[:30]))
        drop_reasons["build-fail"] = failed
        placed = remove_names(placed, failed)
        reconfigure()
        ok2, _ = build_all()
        # second-pass safety: drop anything still not built
        failed2 = [n for n, _, _ in placed if not obj_built(n)]
        if failed2:
            print("still failing -> dropping %d more: %s" % (len(failed2), failed2[:30]))
            drop_reasons["build-fail"] += failed2
            placed = remove_names(placed, failed2)
            reconfigure()
            build_all()

    # ---- report + measure ----
    rep = gen_report()
    mf, cu, cc, mc = global_metrics(rep)
    f, t, mt, n = game_tus(rep)
    print("\n================ RESULTS ================")
    print("CRT objects placed + built: %d / %d candidates" % (len(placed), len(recs) - len(EXISTING)))
    for k, v in drop_reasons.items():
        if v:
            print("  dropped [%s]: %d -> %s" % (k, len(v), [x[0] if isinstance(x, tuple) else x for x in v][:25]))
    print("\nGlobal: matched_functions=%d  complete_units=%d  complete_code=%d  matched_code=%d"
          % (mf, cu, cc, mc))
    print("Game TUs (must be 1876/158): byte-exact %d / %d  TUs %d / %d" % (f, t, mt, n))
    (DTK / "rep.json").unlink(missing_ok=True)


if __name__ == "__main__":
    main()
