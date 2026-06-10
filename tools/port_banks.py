#!/usr/bin/env python3
"""port_banks.py (v2) - port bw1-decomp banked C bodies into dtk src/Black/*.cpp, UNIT-AWARE.

Both the c-banked (ratchet `c/<class-unit>`) AND the asm-banked (ratchet `asm/<reassemble-unit>`) are
CLEAN C in src/staging -- each verified body lives in ITS unit's file. v2 sources every banked function
from its own unit's staging file (`src/staging/<unit.split('/')[-1]>.cpp`), matched by ADDRESS
(ratchet mangled -> dtk symbols.txt addr -> staging `// win1.41 <addr>`), so the old c/asm dedup ambiguity
is gone. ~430 c-banked + ~1400 asm-banked are clean C with ZERO address overlap -> ~1830 portable
(proven: a sample reassemble range gave 72/73 byte-exact).

Usage:
  port_banks.py <TU.cpp> <LO_hex> <HI_hex>   # port one TU range (unit-aware)
  port_banks.py --batch                       # tile asm-banked reassemble ranges into TUs (splits+configure+write)
  port_banks.py --self-test
"""
import re, glob, sys, os
from collections import defaultdict

DTK = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
DECOMP = os.environ.get("BW1_DECOMP", os.path.join(os.path.dirname(DTK), "bw1-decomp"))
VERSION = os.environ.get("BW1_VERSION", "BW1E142")
STMT = re.compile(r"(return|goto|break|continue|delete|throw|if|for|while|do|else|case|default|switch)\b")


def _symbols():
    sym = {}
    for line in open(os.path.join(DTK, "config", VERSION, "symbols.txt"), encoding="latin-1"):
        m = re.match(r"\s*(\S+)\s*=\s*\.text:0x([0-9A-Fa-f]+)", line)
        if m:
            sym[m.group(1)] = int(m.group(2), 16)
    return sym


def banked_units():
    """{addr: staging_file_path} for ALL banked functions (c/ + asm/), from the ratchet + symbols.txt.

    Each ratchet entry is `<unit>::<mangled>`; the verified C body lives in `src/staging/<basename(unit)>.cpp`.
    Maps mangled -> addr (dtk symbols.txt) so we can pick out the body by its `// win1.41 <addr>` marker."""
    sys.path.insert(0, os.path.join(DECOMP, "tools"))
    cwd = os.getcwd(); os.chdir(DECOMP)
    import ratchet
    v = ratchet._load(); entries = list(v.keys()) if isinstance(v, dict) else list(v)
    os.chdir(cwd)
    sym = _symbols(); out = {}
    for e in entries:
        if "::" not in e:
            continue
        unit, mg = e.split("::", 1)
        if mg in sym:
            out[sym[mg]] = os.path.join(DECOMP, "src", "staging", unit.split("/")[-1] + ".cpp")
    return out


def _is_decl(s):
    """True file-scope declaration (caller passes only depth-0 lines; statements/comments excluded)."""
    return bool(s) and s.endswith(";") and not s.startswith(("*", "/")) and not STMT.match(s)


def gather_range(lo, hi, addr_file):
    """Gather banked functions in [lo, hi) -- each body from its OWN unit file -- + depth-0 decls + includes."""
    byfile = defaultdict(set)
    for a, f in addr_file.items():
        if lo <= a < hi:
            byfile[f].add(a)
    funcs = {}; includes = set(); decls = []
    for f, addrs in byfile.items():
        if not os.path.exists(f):
            continue
        lines = open(f, encoding="latin-1").read().split("\n"); i = 0; depth = 0
        while i < len(lines):
            line = lines[i]; s = line.strip()
            m = re.match(r"// win1\.41 ([0-9a-fA-F]+) ", s)
            if m and depth == 0:
                a = int(m.group(1), 16); k = i + 1; d = 0; started = False; end = None
                while k < len(lines):
                    d += lines[k].count("{") - lines[k].count("}")
                    if "{" in lines[k]:
                        started = True
                    if started and d <= 0:
                        end = k; break
                    k += 1
                if end is not None:
                    if a in addrs:
                        funcs[a] = "\n".join(lines[i:end + 1])
                    i = end + 1; continue
            if depth == 0:
                s2 = re.sub(r"\s*//.*$", "", line).strip()
                if s2.startswith("#include"):
                    includes.add(s2)
                elif _is_decl(s2):
                    decls.append(s2)
            depth += line.count("{") - line.count("}"); i += 1
    seen = set(); dd = [d for d in decls if not (d in seen or seen.add(d))]
    return funcs, sorted(includes), dd


def write_tu(tu_cpp, funcs, includes, decls):
    body = "\n".join(includes) + "\n\n" + "\n".join(decls) + "\n\n" + "\n\n".join(funcs[a] for a in sorted(funcs)) + "\n"
    open(os.path.join(DTK, "src", "Black", tu_cpp), "w", encoding="latin-1").write(body)


def port(tu_cpp, lo, hi, addr_file=None):
    if addr_file is None:
        addr_file = banked_units()
    funcs, inc, dec = gather_range(lo, hi, addr_file)
    write_tu(tu_cpp, funcs, inc, dec)
    print("%s: %d banked fns, %d includes, %d decls" % (tu_cpp, len(funcs), len(inc), len(dec)))
    return len(funcs)


def _existing_ranges():
    """Assigned .text ranges from splits.txt (TU entries only; the Sections: header has no start/end)."""
    out = []
    for line in open(os.path.join(DTK, "config", VERSION, "splits.txt"), encoding="latin-1"):
        m = re.search(r"\.text\s+start:0x([0-9A-Fa-f]+)\s+end:0x([0-9A-Fa-f]+)", line)
        if m:
            out.append((int(m.group(1), 16), int(m.group(2), 16)))
    return out


def _overlaps(lo, hi, ranges):
    return any(lo < r1 and r0 < hi for r0, r1 in ranges)


def all_units():
    """{addr: reassemble_file} for ALL win1.41 functions in reassemble files (deduped, lowest-numbered wins).
    Used by --batch-full to ALSO port the UNBANKED clean-C drafts.
    CAVEAT (measured): net-LOSS as-is -- unverified drafts compile-fail in ~half the TUs and take their TU's
    VERIFIED banks down with them (got 1251 vs the banked-only 1696); drafts only match ~7.5%. Would need a
    per-TU compile-fallback (full -> banked-only on failure) to be net-positive. Kept as a diagnostic."""
    out = {}
    for f in sorted(glob.glob(os.path.join(DECOMP, "src", "staging", "runblack.reassemble.*.cpp"))):
        for line in open(f, encoding="latin-1"):
            m = re.match(r"// win1\.41 ([0-9a-fA-F]+) ", line.strip())
            if m:
                out.setdefault(int(m.group(1), 16), f)
    return out


def batch(addr_file=None):
    """Tile the reassemble ranges into dtk TUs: write each + append splits.txt + configure.py.

    addr_file: {addr: staging_file} to port (default banked_units(); pass all_units() for full drafts).
    Skips any range overlapping an already-assigned TU. Tight function-span ranges avoid split overlaps."""
    if addr_file is None:
        addr_file = banked_units()
    size = {}
    for line in open(os.path.join(DTK, "config", VERSION, "symbols.txt"), encoding="latin-1"):
        m = re.match(r"\s*\S+\s*=\s*\.text:0x([0-9A-Fa-f]+).*?size:0x([0-9A-Fa-f]+)", line)
        if m:
            size[int(m.group(1), 16)] = int(m.group(2), 16)
    reasm = []
    for f in glob.glob(os.path.join(DECOMP, "src", "staging", "runblack.reassemble.*.cpp")):
        m = re.search(r"reassemble\.\d+\.([0-9a-fA-F]+)-([0-9a-fA-F]+)\.cpp$", os.path.basename(f))
        if not m:
            continue
        flo, fhi = int(m.group(1), 16), int(m.group(2), 16)
        addrs = [a for a in addr_file if flo <= a < fhi]
        if addrs:                                       # TIGHT range = banked-function span (boundary-aligned,
            reasm.append((min(addrs), max(a + size.get(a, 1) for a in addrs)))   # avoids loose-edge overlaps)
    reasm.sort()
    existing = _existing_ranges()
    splits_add = []; cfg_add = []; written = 0; total = 0; skipped = 0
    for lo, hi in reasm:
        if _overlaps(lo, hi, existing):
            skipped += 1; continue
        funcs, inc, dec = gather_range(lo, hi, addr_file)
        if not funcs:
            continue
        name = "Bank_%06x" % lo
        write_tu(name + ".cpp", funcs, inc, dec)
        splits_add.append("\nBlack/%s.cpp:\n\t.text       start:0x%08X end:0x%08X\n" % (name, lo, hi))
        cfg_add.append('            Object(NonMatching, "Black/%s.cpp"),\n' % name)
        existing.append((lo, hi)); written += 1; total += len(funcs)
    sp = os.path.join(DTK, "config", VERSION, "splits.txt")
    open(sp, "a", encoding="latin-1").write("".join(splits_add))
    cf = os.path.join(DTK, "configure.py"); t = open(cf, encoding="latin-1").read()
    anchor = '            Object(NonMatching, "Black/Abode.cpp"),\n'
    open(cf, "w", encoding="latin-1").write(t.replace(anchor, anchor + "".join(cfg_add), 1))
    print("batch: wrote %d TUs, %d banked functions (%d reassemble ranges skipped for overlap)" % (written, total, skipped))
    return written


def _self_test():
    ok = True
    def chk(c, n):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n)
    chk(_is_decl('extern "C" GGame* game;') and _is_decl("Town* x;"), "decl recognised")
    chk(not _is_decl("return 0;") and not _is_decl(""), "statement/empty not a decl")
    chk(_overlaps(0x10, 0x20, [(0x18, 0x30)]) and not _overlaps(0x10, 0x20, [(0x20, 0x30)]), "overlap (half-open)")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1


if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a:
        sys.exit(_self_test())
    if "--batch-full" in a:
        batch(all_units())
    elif "--batch" in a:
        batch()
    elif len(a) == 3:
        port(a[0], int(a[1], 16), int(a[2], 16))
    else:
        print(__doc__)
