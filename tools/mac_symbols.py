#!/usr/bin/env python3
"""Extract EVERY function name from the un-stripped Mac PEF binary (Black & White.bin)
into reference/mac_symbols.tsv — the canonical naming ground truth for the decomp.

How (PEF/XCOFF): each PowerPC function is followed by an AIX traceback table:
  +0 version(0)  +1 lang  +2..+7 flag/param bytes, then in order:
  [parminfo u32 if fixedparms+floatparms>0] [tb_offset u32] [hand_mask u32 if int_hndl]
  [ctl_info u32*(1+n) if has_ctl] [name_len u16 + name if name_present]
  [alloca_reg u8 if uses_alloca]
We find every length-prefixed printable name in the code section and accept it only if
a table start T parses forward through the exact field chain to land precisely on the
name_len field (q == P) AND tb_offset yields a sane word-aligned function start.
The double anchor makes false positives effectively impossible.

Validation (every run, hard-fails on regression):
  1. completeness — every literal `__ct__<digit/Q>` / `__dt__<digit/Q>` byte pattern in
     the code section must fall inside a captured name (0 missed).
  2. tiling — function intervals must never overlap.
  3. demangle — % fully parsed (mangled column stays the ground truth regardless).

Address note: addr = 0x10000000 + code-section offset (THIS binary's layout). The
`mac <addr>` numbers in old lift comments came from a different Mac build (non-constant
delta) — cross-reference lifts BY NAME, not by address.

Usage:  python tools/mac_symbols.py "<Black & White.bin>" [out.tsv]
Tests:  python tools/test_mac_symbols.py "<Black & White.bin>"
"""
import bisect
import re
import struct
import sys

BASE = 0x10000000


def u16(d, o):
    return struct.unpack(">H", d[o:o+2])[0]


def u32(d, o):
    return struct.unpack(">I", d[o:o+4])[0]


def code_section(data):
    assert data[:4] == b'Joy!' and data[4:8] == b'peff', "not a PEF container"
    sec_count = u16(data, 32)
    o = 40
    for _ in range(sec_count):
        _n, _defA, tot, _u, _p, cont = struct.unpack(">iIIIII", data[o:o+24])
        if data[o+24] == 0:  # sectionKind 0 = code
            return cont, tot
        o += 28
    raise SystemExit("no code section")


def validate_table(data, P, cont, end):
    """P = offset of the name_len u16. Return (fs, T, tab_end) if a traceback table
    starting at some T parses exactly onto P, else None."""
    nl = u16(data, P)
    for T in range(max(cont, P - 64), P - 7):
        if data[T] != 0:                       # version byte must be 0
            continue
        b2, b3 = data[T+2], data[T+3]
        if not ((b3 >> 6) & 1) or not ((b2 >> 5) & 1):   # name_present, has_tboff
            continue
        fixed = data[T+6]
        floatp = data[T+7] >> 1
        variants = (4, 0) if (fixed + floatp) > 0 else (0, 4)
        for parm in variants:
            p = T + 8 + parm
            if p + 4 > P:
                continue
            tb = u32(data, p)
            q = p + 4
            if (b3 >> 7) & 1:                  # int_hndl -> hand_mask
                q += 4
            if (b2 >> 3) & 1:                  # has_ctl -> count + words
                if q + 4 > P:
                    continue
                q += 4 + 4 * u32(data, q)
            if q != P:                         # chain must land exactly on name_len
                continue
            fs = T - tb
            if tb <= 0 or fs < cont or fs >= T or (fs & 3):
                continue
            tab_end = P + 2 + nl
            if (b3 >> 5) & 1:                  # uses_alloca -> trailing reg byte
                tab_end += 1
            return fs, T, tab_end
    return None


def extract(data):
    """Return (cont, tot, funcs, rejected); funcs: fs -> (T, name_pos, name, tab_end)."""
    cont, tot = code_section(data)
    end = cont + tot
    funcs = {}
    rejected = []
    for m in re.finditer(rb'[\x21-\x7e]{3,}', data[cont:end]):
        S, E = cont + m.start(), cont + m.end()
        hit = False
        # the u16 length prefix sits right before the name; the name may start 1-2
        # bytes into the printable run if the length byte itself is printable.
        for off in range(0, min(3, E - S - 2)):
            p = S + off
            if p - 2 < cont:
                continue
            nl = u16(data, p - 2)
            # no 255 cap: huge template names (std::map<...>) exceed it legitimately
            if not (3 <= nl <= 4000 and p + nl <= E):
                continue
            r = validate_table(data, p - 2, cont, end)
            if r is None:
                continue
            fs, T, tab_end = r
            name = data[p:p+nl].decode('latin1')
            prev = funcs.get(fs)
            if prev is None or prev[3] < tab_end:
                funcs[fs] = (T, p, name, tab_end)
            hit = True
            break
        if not hit and b'__' in m.group() and len(m.group()) >= 8:
            rejected.append((S, m.group()[:60]))
    return cont, tot, funcs, rejected


def validate(data, cont, tot, funcs, rejected):
    end = cont + tot
    ordered = sorted(funcs.items())
    report = []
    ok = True

    # 1. completeness: every raw ctor/dtor marker must be inside a captured name
    blob = data[cont:end]
    spans = sorted((np, np + len(nm)) for _fs, (_T, np, nm, _e) in funcs.items())
    starts = [s for s, _ in spans]
    for marker in (rb'__ct__[0-9Q]', rb'__dt__[0-9Q]'):
        raw_pos = [cont + m.start() for m in re.finditer(marker, blob)]
        missed = []
        for rp in raw_pos:
            i = bisect.bisect_right(starts, rp) - 1
            if i < 0 or rp >= spans[i][1]:
                missed.append(rp)
        tag = marker.decode()
        report.append(f"completeness {tag}: raw={len(raw_pos)} captured={len(raw_pos)-len(missed)} missed={len(missed)}")
        if missed:
            ok = False
            for rp in missed[:5]:
                report.append(f"  MISSED @0x{rp:x}: {data[rp-8:rp+40]!r}")

    # 2. tiling: [fs, tab_end) intervals must not overlap
    overlaps = 0
    for i in range(len(ordered) - 1):
        if ordered[i+1][0] < ordered[i][1][3]:
            overlaps += 1
    report.append(f"tiling: functions={len(ordered)} overlaps={overlaps}")
    if overlaps:
        ok = False

    # 3. coverage accounting (informational)
    named_bytes = sum(T - fs for fs, (T, _p, _n, _e) in ordered)
    report.append(f"coverage: named-function bytes {named_bytes}/{tot} = {100*named_bytes/tot:.1f}% "
                  f"(rest = nameless fns, jump tables, data, padding)")
    report.append(f"rejected name-like runs (informational): {len(rejected)}")
    return ok, report


# ---------------- CodeWarrior (MW PPC) demangler ----------------
BASIC = {'v': 'void', 'i': 'int', 'l': 'long', 's': 'short', 'c': 'char', 'b': 'bool',
         'f': 'float', 'd': 'double', 'w': 'wchar_t', 'x': 'long long', 'e': '...'}
OPS = {'nw': 'operator new', 'dl': 'operator delete', 'vn': 'operator new[]',
       'vd': 'operator delete[]',
       'pl': 'operator+', 'mi': 'operator-', 'ml': 'operator*', 'dv': 'operator/',
       'md': 'operator%', 'er': 'operator^', 'ad': 'operator&', 'or': 'operator|',
       'co': 'operator~', 'nt': 'operator!', 'as': 'operator=',
       'apl': 'operator+=', 'ami': 'operator-=', 'amu': 'operator*=', 'adv': 'operator/=',
       'aor': 'operator|=', 'aer': 'operator^=', 'aad': 'operator&=',
       'als': 'operator<<=', 'ars': 'operator>>=',
       'eq': 'operator==', 'ne': 'operator!=', 'lt': 'operator<', 'gt': 'operator>',
       'le': 'operator<=', 'ge': 'operator>=', 'pp': 'operator++', 'mm': 'operator--',
       'cl': 'operator()', 'vc': 'operator[]', 'rf': 'operator->', 'cm': 'operator,',
       'rs': 'operator>>', 'ls': 'operator<<', 'aa': 'operator&&', 'oo': 'operator||'}
_OPS_RE = '|'.join(sorted(OPS, key=len, reverse=True))


def _ident(s):
    """len-prefixed identifier; the length covers template text verbatim."""
    j = 0
    while j < len(s) and s[j].isdigit():
        j += 1
    if j == 0:
        return None
    ln = int(s[:j])
    if ln == 0 or len(s) < j + ln:
        return None
    return s[j:j+ln], s[j+ln:]


def _scope(s):
    if s[:1] == 'Q' and len(s) > 1 and s[1].isdigit():
        n = int(s[1])
        s = s[2:]
        parts = []
        for _ in range(n):
            r = _ident(s)
            if r is None:
                return None
            part, s = r
            parts.append(part)
        return "::".join(parts), s
    return _ident(s)


def _one_type(s, depth=0):
    """Parse one type; modifiers apply right-to-left (PC10X = 'const X*',
    CP10X = 'X* const')."""
    if depth > 12 or not s:
        return None
    mods = []
    while s and s[0] in 'PRCUS':
        mods.append(s[0])
        s = s[1:]
    if not s:
        return None
    if s[0] == 'M':                            # member pointers: bail to raw
        return None
    if s[0] == 'A':                            # array A<n>_<type>
        mo = re.match(r'A(\d+)_', s)
        if not mo:
            return None
        r = _one_type(s[mo.end():], depth + 1)
        if r is None:
            return None
        base, rest = r
        base += f"[{mo.group(1)}]"
    elif s[0] == 'F':                          # function type: bail to raw
        return None
    elif s[0].isdigit() or s[0] == 'Q':
        r = _scope(s)
        if r is None:
            return None
        base, rest = r
    elif s[0] in BASIC:
        base, rest = BASIC[s[0]], s[1:]
    else:
        return None
    for c in reversed(mods):                   # innermost modifier is rightmost
        if c == 'P':
            base += '*'
        elif c == 'R':
            base += '&'
        elif c == 'C':
            base = ('const ' + base) if base[-1] not in '*&' else (base + ' const')
        elif c == 'U':
            base = 'unsigned ' + base
        elif c == 'S':
            base = 'signed ' + base
    return base, rest


def _param_list(s):
    if s == 'v':
        return ''
    out = []
    while s:
        r = _one_type(s)
        if r is None:
            return None
        t, s = r
        out.append(t)
    return ", ".join(out)


def demangle(m):
    """Full demangle or None (caller falls back to the mangled ground truth)."""
    try:
        if m.startswith('.'):
            m = m[1:]
        tail = None
        if m.startswith('__ct__') or m.startswith('__dt__'):
            dt = m[2:4] == 'dt'
            r = _scope(m[6:])
            if r is None:
                return None
            cls, tail = r
            leaf = cls.split('::')[-1].split('<')[0]
            base = f"{cls}::{'~' if dt else ''}{leaf}"
        else:
            mo = re.match(r'^(__(?:%s))__((?:Q\d|\d).*)$' % _OPS_RE, m)
            if mo is None:
                mo = re.match(r'^([A-Za-z_][A-Za-z_0-9]*)__((?:Q\d|\d).*)$', m)
            if mo is not None:
                meth, rest = mo.group(1), mo.group(2)
                if meth.startswith('__'):
                    meth = OPS[meth[2:]]
                r = _scope(rest)
                if r is None:
                    return None
                cls, tail = r
                base = f"{cls}::{meth}"
            else:
                mo = re.match(r'^([A-Za-z_][A-Za-z_0-9]*)__(C?)F(.*)$', m)
                if mo is None:
                    return None                # plain C symbol or unknown shape
                ps = _param_list(mo.group(3))
                if ps is None:
                    return None
                cst = ' const' if mo.group(2) else ''
                return f"{mo.group(1)}({ps}){cst}"
        const = ''
        if tail[:1] == 'C':
            const, tail = ' const', tail[1:]
        if tail[:1] == 'F':
            ps = _param_list(tail[1:])
            if ps is None:
                return None
            return f"{base}({ps}){const}"
        if tail == '' and not const:
            return base
        return None
    except Exception:
        return None


def run(path, out):
    data = open(path, "rb").read()
    cont, tot, funcs, rejected = extract(data)
    ok, report = validate(data, cont, tot, funcs, rejected)

    full = fallback = 0
    with open(out, "w", encoding="utf-8", newline="\n") as f:
        f.write("# mac_addr\tmangled\tdemangled\n")
        f.write("# source: Mac PEF traceback tables; addr = 0x10000000 + code-section offset\n")
        f.write("# NOTE: old lift-comment mac addrs came from a DIFFERENT Mac build - match by NAME\n")
        for fs in sorted(funcs):
            name = funcs[fs][2]
            dm = demangle(name)
            if dm:
                full += 1
            else:
                fallback += 1
                dm = name.lstrip('.')
            f.write(f"0x{BASE + (fs - cont):08x}\t{name}\t{dm}\n")

    print(f"named functions: {len(funcs)}  ->  {out}")
    for line in report:
        print("  " + line)
    print(f"  demangle: full={full} fallback={fallback} ({100*full/max(1, len(funcs)):.1f}% full)")
    print("VALIDATION " + ("OK" if ok else "FAILED"))
    return ok


if __name__ == "__main__":
    src = sys.argv[1] if len(sys.argv) > 1 else "Black & White.bin"
    dst = sys.argv[2] if len(sys.argv) > 2 else "reference/mac_symbols.tsv"
    sys.exit(0 if run(src, dst) else 1)
