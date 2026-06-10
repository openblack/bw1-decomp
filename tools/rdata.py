#!/usr/bin/env python3
"""rdata.py - resolve constants in the read-only data section.

While lifting, you constantly hit `fld dword [rdata_bytes + 0xN]`, `fmul
dword [rdata_bytes + 0xN]`, `cmp eax, [rdata_bytes + 0xN]`, or an absolute
VA like `0x008c5840`. This tool tells you the actual constant stored there,
interpreted as float / uint32 / int32 / raw bytes - so a stub like
`fld [rdata+0x1c840]; ret` becomes a documented `return 0.01f;`.

It parses every `src/asm/unprocessed/{rdata,data}*.asm` dump. Those lines carry a
trailing `// [0xOFFSET] 0x008a9000 + 0xOFFSET = 0xVA` comment, so each `.long`,
`.byte`, and `.float` token can be placed at an exact rdata_bytes offset (and VA,
since image base for the section is 0x008a9000).

Usage:
  python3 tools/rdata.py 0x1c840            # rdata_bytes offset -> value (float/u32/i32)
  python3 tools/rdata.py 0x008c5840         # absolute VA (>= image base, auto-detected)
  python3 tools/rdata.py 0x2060 --data      # offset into .data (data_bytes) instead of .rdata
  python3 tools/rdata.py 0x1c840 -n 4       # show 4 consecutive dwords
  python3 tools/rdata.py --float 0.01       # reverse: which VAs hold this float constant?
  python3 tools/rdata.py --self-test        # assert known constants (run after edits; exit 0/1)

As a library (used by autolift.py to resolve `fld [rdata+N]; ret` stubs):
  from rdata import RData
  rd = RData()
  rd.f32(0x1c840) -> 0.01        # float at rdata_bytes+0x1c840 (or pass an absolute VA)
  rd.u32(off) / rd.i32(off)      # dword as unsigned / signed
  rd.f64(off)                    # 8-byte double (for `qword ptr [rdata_bytes+N]`)
  rd.bytes(off, n)               # n raw bytes (None if any byte is a relocated pointer)
  rd.f32(off, section="data")    # resolve against .data instead of .rdata

Every accessor returns None when the requested bytes are not present in the dump
(unmapped / relocated-pointer slot), so callers can branch on None safely.
And: real_literal("__real@3f800000") -> 1.0 decodes an MSVC float-literal SYMBOL
directly from its name (no .rdata lookup needed).
"""
import re, glob, os, sys, struct

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import corpus
ROOT = corpus.repo_root("src/asm/unprocessed/rdata*.asm", "src/asm/unprocessed/data*.asm")

class RData:
    """Sparse byte map of the .rdata/.data sections, keyed by ABSOLUTE VA.

    Both sections annotate tokens as `// [0xSECTION_OFFSET] 0xBASE + 0xOFFSET = 0xVA`,
    but .rdata (base 0x008a9000) and .data (base 0x009c6000) reuse the same small
    offsets - so we key by the unambiguous VA each line states, and remember each
    section's base so an `rdata_bytes + 0xN` reference can be resolved to a VA.
    """
    # Matches the trailing address comment each token line carries, e.g.
    #   .float 0.01  // [0x1c840] 0x008a9000 + 0x1c840 = 0x008c5840
    # group(1) = the section offset (the `[0x...]` part)
    # group(2) = the per-line section base (the `0x...` just before the `+`)
    # We capture both so the VA is always taken from the line, never guessed.
    LINE = re.compile(r"//\s*\[0x([0-9a-fA-F]+)\]\s*0x([0-9a-fA-F]+)\s*\+")
    RDATA_BASE = 0x008a9000
    DATA_BASE  = 0x009c6000
    def __init__(self, root=ROOT, verbose=False):
        """Build the sparse VA->byte map from the rdata/data asm dumps.

        Globs `src/asm/unprocessed/{rdata,data}*.asm` under `root`, parses every
        token line's trailing address comment (see LINE) for its (offset, base),
        and lays each `.long/.byte/.float` directive's bytes into `self.mem`
        keyed by absolute VA. `verbose=True` prints a load summary (and any
        no-data warning) to stderr."""
        self.mem = {}                       # VA -> byte (int)
        self.bases = set()
        files = sorted(glob.glob(os.path.join(root, "src/asm/unprocessed/rdata*.asm"))) + \
                sorted(glob.glob(os.path.join(root, "src/asm/unprocessed/data*.asm")))
        self.nfiles = 0
        for f in files:
            self.nfiles += 1
            # latin-1: lossless byte passthrough for these ASCII-ish asm dumps;
            # `with` so the handle is closed promptly (matters on Windows).
            with open(f, encoding="latin-1") as fh:
                for line in fh:
                    m = self.LINE.search(line)
                    if not m:
                        continue
                    off  = int(m.group(1), 16)
                    base = int(m.group(2), 16)
                    self.bases.add(base)
                    self._emit(line.split("//", 1)[0], base + off)   # key by VA
        if verbose:
            print(f"[rdata] {self.nfiles} files, {len(self.mem)} bytes mapped, "
                  f"bases={{{', '.join('0x%x'%b for b in sorted(self.bases))}}}", file=sys.stderr)
        # Warn loudly if the asm dumps were not found: every lookup will then
        # miss (mem is empty) and norm() falls back to the hardcoded bases, so a
        # silent empty result would otherwise look like "constant not present".
        if not self.mem:
            print(f"[rdata] WARNING: no rdata/data bytes loaded from {root!r} "
                  f"(found {self.nfiles} files) - all lookups will return None.",
                  file=sys.stderr)

    def _emit(self, code, off):
        """Lay the bytes of one `.long`/`.byte`/`.float`/`.single` directive into
        `self.mem`, starting at absolute VA `off`.

        Multiple comma-separated tokens on one directive are laid out
        consecutively (advancing `off` by each token's width: 4/1/4 bytes). A
        token that does not parse as a number (a relocated symbol, see NB below)
        is skipped but its slot is still advanced over, so subsequent tokens land
        at the correct VA."""
        code = code.strip()
        # NB: .long tokens can be relocated SYMBOLS (vtable/RTTI pointers), not numbers.
        # Skip those - just advance the offset, leaving them unmapped (they are not
        # constants; bytes()/u32() correctly return None for a pointer slot).
        if code.startswith(".long"):
            for tok in code[5:].split(","):
                tok = tok.strip()
                if not tok: continue
                # int(tok, 0) auto-detects 0x/0o/0b/decimal; mask to 32 bits.
                try: v = int(tok, 0) & 0xFFFFFFFF
                # not a literal (relocated pointer) -> leave 4 bytes unmapped.
                except ValueError: off += 4; continue
                # little-endian: byte k holds bits [8k .. 8k+8) of the dword.
                for k in range(4): self.mem[off+k] = (v >> (8*k)) & 0xFF
                off += 4
        elif code.startswith(".byte"):
            for tok in code[5:].split(","):
                tok = tok.strip()
                if not tok: continue
                try: self.mem[off] = int(tok, 0) & 0xFF
                except ValueError: pass     # 1-byte slot stays unmapped
                off += 1
        elif code.startswith(".float") or code.startswith(".single"):
            for tok in code.split(None, 1)[1].split(","):
                tok = tok.strip()
                if not tok: continue
                # struct.pack("<f") gives the exact little-endian IEEE-754 bytes.
                try: packed = struct.pack("<f", float(tok))
                except ValueError: off += 4; continue    # leave 4 bytes unmapped
                for k, byte in enumerate(packed):
                    self.mem[off+k] = byte
                off += 4

    # ---- offset/VA normalisation ----
    def norm(self, addr, section="rdata"):
        """Accept an absolute VA, or a section offset; return the absolute VA.

        A value >= the section's own base is treated as an already-absolute VA;
        a smaller value is an offset into `section` ('rdata' or 'data') and gets
        the base added. The threshold is the *section-specific* base (RDATA_BASE
        for 'rdata', DATA_BASE for 'data'), not min(self.bases) - otherwise a
        legitimate large .data offset (one that exceeds RDATA_BASE) would be
        misread as an absolute VA. We still fall back to RDATA_BASE/DATA_BASE
        even when no asm files were loaded, so an absolute VA is never
        double-based in that degenerate (no-data) state.

        FOOT-GUN: a small VA below the section base cannot be told apart from an
        offset; in practice rdata/data offsets are tiny (< 0x100000) and VAs are
        huge (>= 0x008a9000), so the split is unambiguous for real inputs."""
        base = self.DATA_BASE if section == "data" else self.RDATA_BASE
        # >= the section base -> already an absolute VA; otherwise add the base.
        if addr >= base:
            return addr
        return base + addr

    def _bin_secs(self):
        """Lazily map the real binary's sections (VA->bytes) as a FALLBACK for VAs not
        present in the asm-corpus dump. Sharpened from real lifting use: the asm dump only
        carries .rdata bytes that appear as `.float`/`.byte` tokens, so a legitimate const
        like 0x8aa398 (=0.0f) read 'not mapped' until we also consult the binary itself.
        Returns [] (graceful no-op) where the binary isn't present (e.g. the bw1-decomp
        checkout) so behaviour there is unchanged."""
        if not hasattr(self, "_bsecs"):
            self._bsecs = []
            try:
                import pefile, glob
                hits = glob.glob(os.path.join(ROOT, "orig", "*", "runblack-decrypted.exe")) or \
                       glob.glob(os.path.join(os.path.dirname(ROOT), "bw1-dtk", "orig", "*", "runblack-decrypted.exe"))
                if hits:
                    pe = pefile.PE(hits[0], fast_load=True); b = pe.OPTIONAL_HEADER.ImageBase
                    self._bsecs = [(b+s.VirtualAddress, b+s.VirtualAddress+s.Misc_VirtualSize, s.get_data())
                                   for s in pe.sections]
            except Exception:
                self._bsecs = []
        return self._bsecs

    def bytes(self, addr, n, section="rdata"):
        """Return `n` raw bytes at `addr` (offset or VA), or None if ANY of the
        n bytes is unmapped (e.g. a relocated-pointer slot, or beyond the dump).
        Falls back to reading the real binary for VAs absent from the asm dump.
        All the typed accessors below build on this."""
        va = self.norm(addr, section)
        if any((va+k) not in self.mem for k in range(n)):
            for a, b, d in self._bin_secs():               # binary fallback
                if a <= va and va+n <= b: return d[va-a:va-a+n]
            return None
        return bytes(self.mem[va+k] for k in range(n))

    def u32(self, addr, section="rdata"):
        """The 4-byte little-endian dword at `addr` as an unsigned int (or None)."""
        b = self.bytes(addr, 4, section); return None if b is None else struct.unpack("<I", b)[0]
    def i32(self, addr, section="rdata"):
        """The 4-byte little-endian dword at `addr` as a signed int (or None)."""
        b = self.bytes(addr, 4, section); return None if b is None else struct.unpack("<i", b)[0]
    def f32(self, addr, section="rdata"):
        """The 4-byte IEEE-754 single at `addr` as a Python float (or None)."""
        b = self.bytes(addr, 4, section); return None if b is None else struct.unpack("<f", b)[0]
    def f64(self, addr, section="rdata"):
        """The 8-byte IEEE-754 double at `addr` as a Python float (or None).
        For `qword ptr [rdata_bytes+N]` operands (x87 double-precision loads)."""
        b = self.bytes(addr, 8, section); return None if b is None else struct.unpack("<d", b)[0]

def real_literal(sym):
    """Decode an MSVC float-literal SYMBOL (the constant is encoded in its name) to a
    Python float, or None. Forms:
      __real@<8 hex>          -> IEEE-754 single  (e.g. __real@3f800000  = 1.0)
      __real@<16 hex>         -> IEEE-754 double  (e.g. __real@3fe0000000000000 = 0.5)
      __real@N@<20 hex>       -> x87 80-bit extended (e.g. __real@4@3fff8000000000000000 = 1.0)
    These name the operand of `fld [__real@...]` etc., so no .rdata lookup is needed."""
    m = re.fullmatch(r"__real@(?:\d+@)?([0-9a-fA-F]+)", sym)
    if not m: return None
    h = m.group(1)
    if len(h) <= 8:  return struct.unpack(">f", bytes.fromhex(h.rjust(8, "0")))[0]
    if len(h) <= 16: return struct.unpack(">d", bytes.fromhex(h.rjust(16, "0")))[0]
    h = h.rjust(20, "0"); b = bytes.fromhex(h)           # 80-bit extended: 2 byte sign/exp + 8 byte mantissa
    se = int.from_bytes(b[:2], "big"); man = int.from_bytes(b[2:10], "big")
    # Top bit of the 16-bit sign/exponent word is the sign; low 15 bits are the
    # biased exponent (bias 16383).
    sign = -1.0 if (se >> 15) else 1.0; exp = se & 0x7fff
    if exp == 0 and man == 0: return 0.0
    # x87 extended stores the leading 1 EXPLICITLY, so `man` is the full 64-bit
    # integer mantissa (value 1.fff... << 63). value = man * 2^(exp-bias-63):
    # the extra -63 un-scales that integer mantissa back to the 1.f form.
    return sign * man * 2.0 ** (exp - 16383 - 63)

def _fmt_float(x):
    """Compact, round-trippable float literal (so autolift output is faithful).
    Prefers plain decimal over scientific notation when both round-trip."""
    if x != x or x in (float("inf"), float("-inf")): return repr(x)
    bits = struct.pack("<f", x)
    # Brute-force candidate literals at increasing precision (both %g and %f
    # forms) and keep only those that pack back to the EXACT same 4 bytes - i.e.
    # they round-trip through float32 losslessly.
    cands = []
    for p in range(1, 10):
        for s in (f"{x:.{p}g}", f"{x:.{p}f}"):
            if struct.pack("<f", float(s)) == bits:
                cands.append(s)
    if not cands: return repr(x)
    # rank: no exponent first, then shorter (the tuple sorts False<True, then len)
    return min(cands, key=lambda s: ("e" in s or "E" in s, len(s)))

def self_test():
    """Assert known constants resolve - the contract for upstream (run after edits)."""
    rd = RData()
    cases = [   # (addr, kind, expected, note)
        (0x1c840,   "f32", 0.01,  "Object::GetRainCoolingMultiplier"),
        (0x008c5840,"f32", 0.01,  "  ...same, by absolute VA"),
        (0x2414,    "f32", 10.0,  ".float 10.0 token"),
        (0x2418,    "f32", 4.0,   ".float 4.0 token"),
        (0x241c,    "f32", 100.0, ".float 100.0 token"),
        (0x3420,    "f32", 0.65,  "Animal::GetHoldLoweringMultiplier"),
    ]
    ok = True
    for addr, kind, exp, note in cases:
        got = getattr(rd, kind)(addr)
        good = got is not None and abs(got - exp) < 1e-6
        ok &= good
        print(f"  {'PASS' if good else 'FAIL'}  {kind}(0x{addr:x}) = {got!r:<10} expect {exp:<8} {note}")
    rcases = [   # MSVC float-literal symbols (value encoded in the name)
        ("__real@3f800000", 1.0, "single 1.0"),
        ("__real@447a0000", 1000.0, "single 1000.0"),
        ("__real@3fe0000000000000", 0.5, "double 0.5"),
        ("__real@4@3fff8000000000000000", 1.0, "x87 ext 1.0"),
        ("__real@4@00000000000000000000", 0.0, "x87 ext 0.0"),
        ("__real@4@4000c000000000000000", 3.0, "x87 ext 3.0"),
    ]
    for sym, exp, note in rcases:
        got = real_literal(sym)
        good = got is not None and abs(got - exp) < 1e-6
        ok &= good
        print(f"  {'PASS' if good else 'FAIL'}  real_literal({sym}) = {got!r:<8} expect {exp:<8} {note}")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

def _arg_after(a, flag, conv, what):
    """Return the argument following `flag`, converted by `conv`.

    Guards the common `a[a.index(flag)+1]` foot-gun: exits with a clear usage
    message (instead of a raw IndexError/ValueError) when `flag` is the last
    token or its value cannot be parsed by `conv` (e.g. int(...,16)/float)."""
    i = a.index(flag)
    if i + 1 >= len(a):
        sys.exit(f"error: {flag} requires a {what} argument")
    try:
        return conv(a[i+1])
    except ValueError:
        sys.exit(f"error: {flag} expects a {what}, got {a[i+1]!r}")

if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a:
        sys.exit(self_test())
    section = "data" if "--data" in a else "rdata"
    rd = RData(verbose=True)
    if "--float" in a:
        target = _arg_after(a, "--float", float, "decimal float")
        tb = struct.pack("<f", target)
        hits = [va for va in sorted(rd.mem)
                if va % 4 == 0 and all((va+k) in rd.mem for k in range(4))
                and bytes(rd.mem[va+k] for k in range(4)) == tb]
        print(f"float {target} (= 0x{struct.unpack('<I',tb)[0]:08x}) found at {len(hits)} VAs:")
        for va in hits[:40]:
            sec = "rdata" if va < rd.DATA_BASE else "data"
            print(f"  VA 0x{va:08x}  ({sec}_bytes+0x{va-(rd.RDATA_BASE if sec=='rdata' else rd.DATA_BASE):x})")
        sys.exit()
    if not a:
        print(__doc__); sys.exit()
    # int(x, 16) accepts an optional 0x prefix and BOTH upper- and lower-case
    # hex digits, so no extra case handling is needed here.
    try:
        addr = int(a[0], 16)
    except ValueError:
        sys.exit(f"error: ADDR must be hex (offset or absolute VA), got {a[0]!r}")
    n = _arg_after(a, "-n", int, "count") if "-n" in a else 1
    va = rd.norm(addr, section)
    # Echo the section-relative offset: if the user typed an absolute VA
    # (va == addr) recompute the offset by subtracting the section base;
    # otherwise they already typed the offset, so just show it back.
    sec_base = rd.RDATA_BASE if section == "rdata" else rd.DATA_BASE
    disp_off = addr if va != addr else va - sec_base
    print(f"VA 0x{va:08x}  ({section}_bytes+0x{disp_off:x}):")
    for i in range(n):
        v = va + i*4
        u = rd.u32(v)
        if u is None:
            print(f"  VA 0x{v:08x}: <not mapped>"); continue
        print(f"  VA 0x{v:08x} = 0x{u:08x}   u32={u:<12} i32={rd.i32(v):<12} f32={_fmt_float(rd.f32(v))}")
