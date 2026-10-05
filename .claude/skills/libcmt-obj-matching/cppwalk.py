#!/usr/bin/env python3
"""cppwalk.py VER OBJ [bin=0xSTART | bin=<0xEND ...] [--quiet]

Positional walk of a COMDAT-heavy lib object. For each output bin (.text, .text$x, .rdata,
.rdata$r, .xdata$x, .data, .CRT$XCU) the object's sections are walked in object order; a
section whose reloc-masked bytes match at the running position is 'present', otherwise it was
folded onto an earlier copy. bin=0xSTART walks forward from START; bin=<0xEND walks backward
from END (the bin's end in the image, i.e. the next object's start); without either, every
section with a unique image hit is tried as anchor and the walk with most present sections wins.
Prints the bin ranges, the per-section verdicts, and for every folded symbol the address the
surviving sections point at (the copy the original link kept)."""
import sys, re, struct, os, io, subprocess
_REAL_STDOUT = sys.stdout
sys.stdout = io.StringIO()
FORCED_FOLDED = {int(x) for x in os.environ.get('CPPWALK_FORCED', '').split(',') if x}
CONFIRMED = set()   # low-information sections whose presence the following layout proves
sys.path.insert(0, str(__import__('pathlib').Path(__file__).resolve().parent))
import libobj as L
IMAGE_BASE = 0x400000
ver, objname = sys.argv[1], sys.argv[2]
quiet = '--quiet' in sys.argv
starts, ends = {}, {}
for a in sys.argv[3:]:
    if a.startswith('--'): continue
    k, v = a.split('=')
    if v.startswith('<'): ends[k] = int(v[1:], 16)
    else: starts[k] = int(v, 16)
exe = L.read_exe(ver)
import imgsections as IS
BIN_RANGES = IS.ranges(ver, exe)
CODE_LO, CODE_HI = BIN_RANGES['code']
skip = [a[7:] for a in sys.argv if a.startswith('--skip=')]
def bin_search(sec, b):
    lo_, hi_ = BIN_RANGES.get(b, (0x401000, len(exe) + IMAGE_BASE))
    pat = re.compile(b'(?=' + L.masked_pattern(sec) + b')', re.S)
    return [m.start() + IMAGE_BASE for m in pat.finditer(exe, lo_ - IMAGE_BASE, hi_ - IMAGE_BASE)]
meta = L.resolve_member(objname); coff = L.CoffObj(L.extract_member(meta['archive'], meta['member']))
def bin_of(sec):
    n = sec.name
    if n.startswith('.text$'): return n
    if n.startswith('.rdata$'): return n
    if n.startswith('.text'): return '.text'
    if n.startswith('.rdata'): return '.rdata'
    if n.startswith('.data'): return '.data'
    return n
def align_of(sec):
    al = (sec.characteristics >> 20) & 0xF
    return 1 << (al - 1) if al else 1
def rawsize(sec):
    return struct.unpack_from('<I', coff.blob, 20 + (sec.index - 1) * 40 + 16)[0]
def secsize(sec): return len(sec.data) or rawsize(sec)
def fixed_bytes(sec):
    holes = set()
    for r in sec.relocs:
        for k in range(4): holes.add(r.offset + k)
    return sum(1 for i in range(len(sec.data)) if i not in holes)
pats = {}
IMG_LO, IMG_HI = BIN_RANGES['image']
def relocs_plausible(sec, va):
    """every DIR32/REL32 relocation of the section, read from the image at va, must land inside the image"""
    off = va - IMAGE_BASE
    for rl in sec.relocs:
        if rl.offset + 4 > len(sec.data): continue
        inl = struct.unpack_from('<I', sec.data, rl.offset)[0]
        if rl.type == L.REL_DIR32:
            tgt = struct.unpack_from('<I', exe, off + rl.offset)[0] - inl
        elif rl.type == L.REL_REL32:
            tgt = va + rl.offset + 4 + struct.unpack_from('<i', exe, off + rl.offset)[0] - inl
        else: continue
        if not (IMG_LO <= tgt < IMG_HI): return False
    return True
def _rd(va):
    o = va - IMAGE_BASE
    if o < 0 or o + 4 > len(exe): return None
    return struct.unpack_from('<I', exe, o)[0]
def _r0_name(r0):
    """class part of the type descriptor's name (`.?AVfoo@std@@` -> `foo@std@@`), or None"""
    if r0 is None: return None
    o = r0 + 8 - IMAGE_BASE
    if o < 0 or o >= len(exe): return None
    b = exe[o:o + 256]
    if not b.startswith((b'.?AV', b'.?AU')) or b'\0' not in b: return None
    return b[4:b.index(b'\0')].decode(errors='replace')
def _rtti_class(sym):
    """the class an RTTI/vtable COMDAT describes, from its decorated name"""
    for pre, suf in (('??_R4', '6B@'), ('??_7', '6B@'), ('??_R3', '8'), ('??_R2', '8')):
        if sym.startswith(pre) and sym.endswith(suf): return pre, sym[len(pre):-len(suf)]
    if sym.startswith('??_R1') and sym.endswith('8'):
        m = re.match(r'\?\?_R1(?:\??(?:[0-9]|[A-P]+@)){4}(.*)8$', sym)
        if m: return '??_R1', m.group(1)
    return None, None
def rtti_semantic_ok(sec, va):
    """for vtables and RTTI records (almost all pointers, so the masked byte pattern fits
    any similar record) follow the pointers to the type descriptor and compare its name
    with the class the section describes"""
    kind, cls = _rtti_class(symname(sec))
    if kind is None: return True
    base = va
    if kind == '??_7':
        r4 = _rd(base)                       # section starts with the locator pointer
        name = _r0_name(_rd(r4 + 0xC)) if r4 else None
    elif kind == '??_R4':
        name = _r0_name(_rd(base + 0xC))
    elif kind == '??_R3':
        r2 = _rd(base + 0xC); r1 = _rd(r2) if r2 else None
        name = _r0_name(_rd(r1)) if r1 else None
    elif kind == '??_R2':
        r1 = _rd(base); name = _r0_name(_rd(r1)) if r1 else None
    else:   # ??_R1: describes one base class; its descriptor is the base's
        name = _r0_name(_rd(base))
    return name is None or name == cls
def matches_at(sec, va):
    off = va - IMAGE_BASE
    if off < 0 or off + len(sec.data) > len(exe): return False
    if sec.index not in pats: pats[sec.index] = re.compile(L.masked_pattern(sec), re.S)
    if pats[sec.index].match(exe, off, off + len(sec.data)) is None: return False
    if sec.relocs and fixed_bytes(sec) < 8 and not relocs_plausible(sec, va): return False
    if not rtti_semantic_ok(sec, va): return False
    return True
bins = {}
for sec in coff.sections:
    if sec.name.startswith('.drectve') or sec.name.startswith('.debug') or sec.is_discardable: continue
    if not sec.loaded: continue
    bins.setdefault(bin_of(sec), []).append(sec)
def _symname(sec):
    n = coff.defining_symbol(sec.index)
    if n and not n.startswith('.'): return n
    # COMDAT symbol at a nonzero offset (vtables: ??_7 sits 4 bytes in, after the RTTI locator)
    for s_ in coff.symbols:
        if s_ is not None and s_.section == sec.index and s_.storage == 2 and s_.name and not s_.name.startswith('.'):
            return s_.name
    return f'{sec.name}#{sec.index}'
symname = _symname
def symoff(sec):
    """offset of the naming symbol inside its section (0 for ordinary COMDATs, 4 for vtables)"""
    n = symname(sec)
    for s_ in coff.symbols:
        if s_ is not None and s_.section == sec.index and s_.name == n: return s_.value
    return 0
AMBIG_FIXED = 4
def next_solid(secs, i):
    """index of the next section after i with enough fixed bytes to be decisive, or None"""
    for j in range(i + 1, len(secs)):
        if secsize(secs[j]) and fixed_bytes(secs[j]) >= AMBIG_FIXED: return j
    return None
def solid_matches_from(secs, j, pos):
    """does the next solid section j land (with alignment) on a match when walking from pos?
    Sections between are skipped as folded/present according to a plain match."""
    sec = secs[j]; al = align_of(sec)
    p = (pos + al - 1) & ~(al - 1)
    return matches_at(sec, p)
def walk_forward(secs, i0, va0):
    res = [None] * len(secs); pos = va0
    for i in range(i0, len(secs)):
        sec = secs[i]; al = align_of(sec); sz = secsize(sec)
        p = (pos + al - 1) & ~(al - 1)
        if sz == 0: res[i] = ('empty', p); continue
        anchored = (i == i0 and va0 is not None and i0 != 0)
        ok = (anchored or matches_at(sec, p)) and sec.index not in FORCED_FOLDED
        if ok and not anchored and fixed_bytes(sec) < AMBIG_FIXED:
            # ambiguous content: keep it only if the next solid section still lands right
            j = next_solid(secs, i)
            if j is not None:
                with_it = solid_matches_from(secs, j, p + sz)
                without = solid_matches_from(secs, j, pos)
                if without and not with_it: ok = False
                if with_it and not without: CONFIRMED.add(sec.index)
        if ok:
            res[i] = ('present', p); pos = p + sz
        else: res[i] = ('folded', None)
    return res
def walk_backward(secs, i0, end0):
    """fill res[0..i0-1] walking backward from end0 (= start of secs[i0] or bin end)."""
    res = [None] * len(secs); end = end0
    for i in range(i0 - 1, -1, -1):
        sec = secs[i]; al = align_of(sec); sz = secsize(sec); found = None
        if sz:
            for k in range(0, 16):
                p = end - k - sz
                if p < IMAGE_BASE: break
                if p % al: continue
                if sec.index not in FORCED_FOLDED and matches_at(sec, p): found = p; break
        if found is not None: res[i] = ('present', found); end = found
        else: res[i] = ('folded', None) if sz else ('empty', end)
    return res
def merge(a, b):
    return [x if x is not None else y for x, y in zip(a, b)]
def run(secs, anchor_idx, anchor_va):
    f = walk_forward(secs, anchor_idx, anchor_va)
    if anchor_idx > 0:
        b = walk_backward(secs, anchor_idx, anchor_va)
        f = merge(f, b)
    return f
report = {}
pending = []
for b, secs in bins.items():
    if b in skip:
        print(f'## {b}: skipped'); report[b] = None; continue
    if b in starts:
        res = walk_forward(secs, 0, starts[b]); mode = 'start'
    elif b in ends:
        res = walk_backward(secs, len(secs), ends[b]); mode = 'end'
    else:
        best = None; mode = 'auto'
        tried = 0
        for i, sec in enumerate(secs):
            if fixed_bytes(sec) < 12 or not sec.data: continue
            if tried >= 6: break
            hits = bin_search(sec, b)
            if len(hits) != 1: continue
            tried += 1
            r = run(secs, i, hits[0])
            score = sum(1 for x in r if x and x[0] == 'present')
            if best is None or score > best[0]: best = (score, r, i, hits[0])
        if best is None:
            report[b] = None; mode = 'pending'; res = None
        else:
            res = best[1]; mode = f'auto(anchor #{best[2]} @{best[3]:#x})'
    if res is None:
        pending.append(b); continue
    present = [(r[1], secsize(secs[i])) for i, r in enumerate(res) if r and r[0] == 'present']
    lo = min(p for p, s in present) if present else None
    hi = max(p + s for p, s in present) if present else None
    report[b] = (lo, hi, res)
    print(f'## {b}: {len(present)}/{len(secs)} present  range {lo:#x}-{hi:#x}  [{mode}]' if present else f'## {b}: none present ({len(secs)} sections) [{mode}]')
    if not quiet:
        for i, sec in enumerate(secs):
            st, p = res[i]; ps = '-' if p is None else f'{p:08X}'
            print(f'   {st:7s} {ps:>8} {secsize(sec):5x} al={align_of(sec):<2} fx={fixed_bytes(sec):<4} comdat={int(sec.is_comdat)} {symname(sec)[:95]}')
# ---- second pass: reloc-anchored search for bins without a byte anchor ----
BIN_RANGES = globals().get('BIN_RANGES')
known = {}
syms = L.load_symbols(ver)
for sec in coff.sections:
    pass
def build_known_map():
    """symbol name -> VA: symbols defined in present sections of this object, then symbols.txt"""
    km = {}
    sec_va = {}
    for b_, r_ in report.items():
        if not r_: continue
        for i_, sec_ in enumerate(bins[b_]):
            if r_[2][i_] and r_[2][i_][0] == 'present': sec_va[sec_.index] = r_[2][i_][1]
    for s_ in coff.symbols:
        if s_ is not None and s_.section in sec_va and s_.name not in km:
            km[s_.name] = sec_va[s_.section] + s_.value
    for n_, (sec_, a_) in syms.items():
        km.setdefault(n_, a_)
    return km
known_map = build_known_map()
def known_va(name): return known_map.get(name)
MAX_HITS = 4000
for b in list(pending):
    secs = bins[b]
    lo, hi = BIN_RANGES.get(b, (0x401000, len(exe) + IMAGE_BASE))
    best = None
    tried = 0
    for i, sec in enumerate(secs):
        if not sec.data or not sec.relocs: continue
        if not any(known_va(coff.symbols[rl.sym_index].name) is not None for rl in sec.relocs if coff.symbols[rl.sym_index] is not None): continue
        if tried >= 12: break
        tried += 1
        pat = re.compile(b'(?=' + L.masked_pattern(sec) + b')', re.S)
        hits = []
        for m_ in pat.finditer(exe, lo - IMAGE_BASE, hi - IMAGE_BASE):
            hits.append(m_.start() + IMAGE_BASE)
            if len(hits) > MAX_HITS: break
        if not hits: continue
        if len(hits) > MAX_HITS:
            # too unspecific to scan exhaustively: only keep candidates on the section's own alignment
            al_ = align_of(sec)
            hits = [h for h in hits if h % al_ == 0][:MAX_HITS]
        # keep hits whose relocations resolve to known addresses
        good = []
        for h in hits:
            ok = 0; bad = 0
            for rl in sec.relocs:
                sym = coff.symbols[rl.sym_index]
                if sym is None: continue
                kv = known_va(sym.name)
                if kv is None: continue
                inl = struct.unpack_from('<I', sec.data, rl.offset)[0]
                if rl.type == L.REL_DIR32:
                    tgt = struct.unpack_from('<I', exe, h + rl.offset - IMAGE_BASE)[0] - inl
                elif rl.type == L.REL_REL32:
                    tgt = h + rl.offset + 4 + struct.unpack_from('<i', exe, h + rl.offset - IMAGE_BASE)[0] - inl
                else: continue
                if tgt == kv: ok += 1
                else: bad += 1
            if ok and not bad: good.append(h)
        if len(good) == 1:
            r = run(secs, i, good[0])
            score = sum(1 for x in r if x and x[0] == 'present')
            if best is None or score > best[0]: best = (score, r, i, good[0])
    if best is None:
        print(f'## {b}: no anchor ({len(secs)} sections)'); report[b] = None; continue
    res = best[1]
    present = [(r[1], secsize(secs[i])) for i, r in enumerate(res) if r and r[0] == 'present']
    lo2 = min(p for p, s_ in present); hi2 = max(p + s_ for p, s_ in present)
    report[b] = (lo2, hi2, res)
    print(f'## {b}: {len(present)}/{len(secs)} present  range {lo2:#x}-{hi2:#x}  [reloc-anchor #{best[2]} @{best[3]:#x}]')
    if not quiet:
        for i, sec in enumerate(secs):
            st, p = res[i]; ps = '-' if p is None else f'{p:08X}'
            print(f'   {st:7s} {ps:>8} {secsize(sec):5x} al={align_of(sec):<2} fx={fixed_bytes(sec):<4} comdat={int(sec.is_comdat)} {symname(sec)[:95]}')
# ---- .bss: base address of each of the object's .bss sections (and COMMONs), from the
# DIR32 relocations of the present sections ----
bss_secs = {sec.index: sec for sec in coff.sections if sec.name.startswith('.bss')}
bss_base = {}; common_va = {}
for b_, r_ in report.items():
    if not r_: continue
    for i_, sec_ in enumerate(bins[b_]):
        st_ = r_[2][i_]
        if not (st_ and st_[0] == 'present'): continue
        va_ = st_[1]
        for rl in sec_.relocs:
            if rl.type != L.REL_DIR32 or rl.offset + 4 > len(sec_.data): continue
            sym_ = coff.symbols[rl.sym_index]
            if sym_ is None: continue
            inl = struct.unpack_from('<I', sec_.data, rl.offset)[0]
            val = struct.unpack_from('<I', exe, va_ + rl.offset - IMAGE_BASE)[0]
            if sym_.section in bss_secs:
                bss_base.setdefault(sym_.section, set()).add(val - inl - sym_.value)
            elif sym_.section == 0 and sym_.value > 0:
                common_va.setdefault(sym_.name, set()).add(val - inl)
for idx_, bases in sorted(bss_base.items()):
    sz_ = rawsize(bss_secs[idx_])
    print(f'## .bss section #{idx_} size {sz_:#x} align {align_of(bss_secs[idx_])}: base ' + ','.join(f'{x:08X}' for x in sorted(bases)))
for n_, vs in sorted(common_va.items()):
    print(f'## COMMON {n_} at ' + ','.join(f'{x:08X}' for x in sorted(vs)))
print('## folded-targets (symbol -> address the surviving sections point at)')
present_va = {}
for b, r in report.items():
    if not r: continue
    for i, sec in enumerate(bins[b]):
        if r[2][i] and r[2][i][0] == 'present': present_va[sec.index] = r[2][i][1]
folded_names = set()
for b, r in report.items():
    if not r: continue
    for i, sec in enumerate(bins[b]):
        if r[2][i] and r[2][i][0] == 'folded': folded_names.add(symname(sec))
seen = {}
for idx, va in present_va.items():
    sec = coff.sections[idx - 1]
    for rl in sec.relocs:
        sym = coff.symbols[rl.sym_index]
        if sym is None or sym.name not in folded_names: continue
        inl = struct.unpack_from('<I', sec.data, rl.offset)[0]
        if rl.type == L.REL_DIR32:
            tgt = struct.unpack_from('<I', exe, va + rl.offset - IMAGE_BASE)[0] - inl
        elif rl.type == L.REL_REL32:
            tgt = va + rl.offset + 4 + struct.unpack_from('<i', exe, va + rl.offset - IMAGE_BASE)[0] - inl
        else: continue
        seen.setdefault(sym.name, set()).add(tgt)
for n, vs in sorted(seen.items()):
    print(f'   {n[:90]:90s} -> {",".join(f"{v:08X}" for v in sorted(vs))}')
# ---- vtable mapping: a folded vtable whose game copy is known names every virtual it points at ----
sec_by_name = {}
for b, r in report.items():
    if not r: continue
    for i, sec in enumerate(bins[b]):
        if r[2][i] and r[2][i][0] == 'folded': sec_by_name[symname(sec)] = sec
syms_txt = L.load_symbols(ver)
def rd32(va): return struct.unpack_from('<I', exe, va - IMAGE_BASE)[0]
vt_resolved = {}
for name, sec in list(sec_by_name.items()):
    if not name.startswith('??_7'): continue
    game = sorted(seen.get(name, []))
    if not game:
        # locate through the RTTI locator: the vtable section's first reloc is the ??_R4 pointer
        r4 = next((coff.symbols[rl.sym_index].name for rl in sec.relocs if rl.offset == 0), None)
        r4va = sorted(seen.get(r4, [])) or ([syms_txt[r4][1]] if r4 in syms_txt else [])
        if r4va:
            pat = struct.pack('<I', r4va[0])
            lo_, hi_ = BIN_RANGES['.rdata']
            hits = [i + IMAGE_BASE + 4 for i in range(lo_ - IMAGE_BASE, hi_ - IMAGE_BASE, 4) if exe[i:i+4] == pat]
            if len(hits) == 1: game = hits
    if not game: continue
    G = game[0]
    # validate: entries must be code addresses
    n_entries = sum(1 for rl in sec.relocs if rl.offset >= 4)
    if not all(CODE_LO <= rd32(G + 4 * k) < CODE_HI for k in range(n_entries)):
        print(f'   (vtable {name[:60]}: game copy {G:#x} rejected, entries not code)'); continue
    for rl in sec.relocs:
        if rl.offset < 4: continue
        tgt_name = coff.symbols[rl.sym_index].name
        va = rd32(G + rl.offset - 4)
        vt_resolved.setdefault(tgt_name, set()).add(va)
        if tgt_name.startswith('??_E'): vt_resolved.setdefault('??_G' + tgt_name[4:], set()).add(va)
    seen.setdefault(name, set()).add(G)
for n_, vs in vt_resolved.items():
    if n_ in folded_names: seen.setdefault(n_, set()).update(vs)
if vt_resolved:
    print('## vtable-resolved (virtuals located through the game copy of a folded vtable)')
    for n_, vs in sorted(vt_resolved.items()): print(f'   {n_[:90]:90s} -> {",".join(f"{v:08X}" for v in sorted(vs))}')
# ---- symbols defined by lib members already linked for this version: nothing to label ----
lib_defined = set()
cfg_txt = open('configure.py').read()
for mm in re.finditer(r'LibObject\((Matching|MatchingFor\([^)]*\)), "(\w+)", "([^"]+)"(?![^\n]*module=)', cfg_txt):
    if mm.group(1) != 'Matching' and ver not in mm.group(1): continue
    arch, member = mm.group(2), mm.group(3).encode().decode('unicode_escape')
    if member.replace('\\', '/').rsplit('/', 1)[-1] == meta['member'].replace('\\', '/').rsplit('/', 1)[-1]: continue
    try:
        c2 = L.CoffObj(L.extract_member(arch, member))
    except Exception:
        continue
    lib_defined.update(c2.defined_externals())
# ---- throw-info chain: __TI2X -> __CTA2X -> __CT... -> copy ctor, through the game's copy of __TI ----
def resolve_ti_chain():
    out = {}
    for name, sec in sec_by_name.items():
        if not name.startswith('__TI'): continue
        tiva = sorted(seen.get(name, []))
        if not tiva:
            hits = bin_search(sec, '.xdata$x') if fixed_bytes(sec) >= 8 else []
            if len(hits) == 1: tiva = hits
        if not tiva: continue
        T = tiva[0]; seen.setdefault(name, set()).add(T)
        cta_name = next((coff.symbols[rl.sym_index].name for rl in sec.relocs if rl.offset == 0xc), None)
        if not cta_name: continue
        A = rd32(T + 0xc); out.setdefault(cta_name, set()).add(A)
        cta_sec = sec_by_name.get(cta_name)
        if not cta_sec: continue
        for rl in sorted(cta_sec.relocs, key=lambda r: r.offset):
            ct_name = coff.symbols[rl.sym_index].name
            C = rd32(A + rl.offset); out.setdefault(ct_name, set()).add(C)
            ct_sec = sec_by_name.get(ct_name)
            if ct_sec:
                for r2 in ct_sec.relocs:
                    out.setdefault(coff.symbols[r2.sym_index].name, set()).add(rd32(C + r2.offset))
    return out
ti_res = resolve_ti_chain()
for n_, vs in ti_res.items():
    if n_ in folded_names: seen.setdefault(n_, set()).update(vs)
if ti_res:
    print('## throw-info-resolved')
    for n_, vs in sorted(ti_res.items()): print(f'   {n_[:90]:90s} -> {",".join(f"{v:08X}" for v in sorted(vs))}')
# ---- data-follow: a folded data section whose game copy is known (and byte-verified) names
# every symbol its relocations point at (RTTI R4 -> R3 -> R2 -> R1 -> R0, vtables, EH tables) ----
def labelled_data_copy(name, sec):
    a = symlines_byname_early.get(name)
    if a is None: return None
    base = a - symoff(sec)
    return a if matches_at(sec, base) else None
symlines_byname_early = {}
for line in open(f'config/{ver}/symbols.txt'):
    m = re.match(r'(\S+) = (\S+?):0x([0-9A-Fa-f]+);', line)
    if m: symlines_byname_early.setdefault(m.group(1), int(m.group(3), 16))
def data_follow():
    added = {}
    for name, sec in sec_by_name.items():
        if sec.is_code: continue
        G = sorted(seen.get(name, []))
        if not G:
            a = labelled_data_copy(name, sec)
            if a is None: continue
            G = [a]; seen.setdefault(name, set()).add(a)
        base = G[0] - symoff(sec)
        for rl in sec.relocs:
            if rl.type != L.REL_DIR32: continue
            tsym = coff.symbols[rl.sym_index]
            if tsym is None or tsym.name.startswith(('$', '.')): continue
            inl = struct.unpack_from('<I', sec.data, rl.offset)[0]
            t = rd32(base + rl.offset) - inl
            if not (IMG_LO <= t < IMG_HI): continue
            for tname in (tsym.name, '??_G' + tsym.name[4:] if tsym.name.startswith('??_E') else None):
                if tname and tname in folded_names and not seen.get(tname):
                    added.setdefault(tname, set()).add(t)
    for k, v in added.items(): seen.setdefault(k, set()).update(v)
    return added
data_res = {}
for _round in range(4):
    got = data_follow()
    if not got: break
    for k, v in got.items(): data_res.setdefault(k, set()).update(v)
if data_res:
    print('## data-follow-resolved (relocations of folded data sections read through their game copies)')
    for n_, vs in sorted(data_res.items()): print(f'   {n_[:90]:90s} -> {",".join(f"{v:08X}" for v in sorted(vs))}')
# ---- call/push pairing: a folded code section with a known game copy names its callees in order ----
symlines_cache = {}
symlines_byname = {}
for line in open(f'config/{ver}/symbols.txt'):
    m = re.match(r'(\S+) = (\S+?):0x([0-9A-Fa-f]+); // (.*)', line)
    if m:
        sz = re.search(r'size:0x([0-9A-Fa-f]+)', m.group(4))
        symlines_cache[int(m.group(3), 16)] = (m.group(1), int(sz.group(1), 16) if sz else 0)
        symlines_byname[m.group(1)] = int(m.group(3), 16)
def code_targets(va, size):
    out = []; i = va
    while i < va + size - 4:
        op = exe[i - IMAGE_BASE]
        if op == 0xE8:
            t = i + 5 + struct.unpack_from('<i', exe, i + 1 - IMAGE_BASE)[0]
            if CODE_LO <= t < CODE_HI: out.append(('call', t)); i += 5; continue
        if op == 0x68:
            t = struct.unpack_from('<I', exe, i + 1 - IMAGE_BASE)[0]
            if CODE_LO <= t < CODE_HI: out.append(('push', t)); i += 5; continue
        i += 1
    return out
pair_res = {}
for _round in range(3):
    for fname, fsec in sec_by_name.items():
        if not fsec.is_code: continue
        G = sorted(seen.get(fname, []))
        if not G: continue
        G = G[0]
        gsize = symlines_cache.get(G, (None, 0))[1]
        if not gsize: continue
        obj_seq = []
        for rl in sorted(fsec.relocs, key=lambda r: r.offset):
            sym = coff.symbols[rl.sym_index]
            if sym is None or sym.section == fsec.index: continue
            if rl.type == L.REL_REL32: obj_seq.append(('call', sym.name))
            elif rl.type == L.REL_DIR32 and rl.offset >= 1 and fsec.data[rl.offset - 1] == 0x68 and sym.section > 0 and coff.sections[sym.section - 1].is_code:
                obj_seq.append(('push', sym.name))
        game_seq = code_targets(G, gsize)
        if not obj_seq or not game_seq: continue
        def known_of(nm):
            k = sorted(seen.get(nm, []))
            if not k and nm in symlines_byname: k = [symlines_byname[nm]]
            return k
        # single code push on both sides: pair directly
        op = [(i, nm) for i, (k, nm) in enumerate(obj_seq) if k == 'push']
        gp = [(i, t) for i, (k, t) in enumerate(game_seq) if k == 'push']
        if len(op) == 1 and len(gp) == 1:
            nm, t = op[0][1], gp[0][1]
            if nm in folded_names and not seen.get(nm):
                pair_res.setdefault(nm, set()).add(t); seen.setdefault(nm, set()).add(t)
        # anchor-aligned pairing: walk both sequences, syncing on items whose address is already known
        oi = gi = 0
        while oi < len(obj_seq) and gi < len(game_seq):
            k1, nm = obj_seq[oi]; k2, t = game_seq[gi]
            kn = known_of(nm)
            if kn:
                if t in kn: oi += 1; gi += 1; continue
                # the game copy has extra items before this anchor: skip game items until the anchor
                j = next((x for x in range(gi, len(game_seq)) if game_seq[x][1] in kn), None)
                if j is None: break
                gi = j; continue
            # unknown obj item: pair it only if the next obj anchor lines up after exactly one game item
            nxt = next((x for x in range(oi + 1, len(obj_seq)) if known_of(obj_seq[x][1])), None)
            if nxt is not None and nxt - oi == 1 and gi + 1 < len(game_seq) and game_seq[gi + 1][1] in known_of(obj_seq[nxt][1]) and k1 == k2:
                if nm in folded_names and not seen.get(nm):
                    pair_res.setdefault(nm, set()).add(t); seen.setdefault(nm, set()).add(t)
                oi += 1; gi += 1; continue
            break
if pair_res:
    print('## call-pairing-resolved (callees matched in order against the game copy of the caller)')
    for n_, vs in sorted(pair_res.items()): print(f'   {n_[:90]:90s} -> {",".join(f"{v:08X}" for v in sorted(vs))}')
unref = folded_names - set(seen)
print(f'## folded but unreferenced by survivors: {len(unref)}')
for n in sorted(unref): print('   ', n[:100])
# ---- label plan: what symbols.txt needs for every folded COMDAT ----
symlines = {}
for line in open(f'config/{ver}/symbols.txt'):
    m = re.match(r'(\S+) = (\S+?):0x([0-9A-Fa-f]+); // (.*)', line)
    if m: symlines[m.group(1)] = (m.group(2), int(m.group(3), 16), m.group(4))
by_addr = {}
for n_, (sec_, a_, rest_) in symlines.items(): by_addr.setdefault(a_, []).append(n_)
lib_ranges = []
cur_unit = None
for line in open(f'config/{ver}/splits.txt'):
    if not line.startswith('\t') and line.strip().endswith(':'): cur_unit = line.strip()[:-1]
    elif line.startswith('\t') and cur_unit and cur_unit.startswith('lib/'):
        mm = re.match(r'\t(\S+)\s+start:0x([0-9A-Fa-f]+)\s+end:0x([0-9A-Fa-f]+)', line)
        if mm: lib_ranges.append((int(mm.group(2), 16), int(mm.group(3), 16), cur_unit))
def in_lib_unit(va):
    for lo_, hi_, u in lib_ranges:
        if lo_ <= va < hi_: return u
    return None
print('## label plan (folded COMDATs: what the game copy needs in symbols.txt)')
for b, r in report.items():
    if not r: continue
    for i, sec in enumerate(bins[b]):
        if not (r[2][i] and r[2][i][0] == 'folded'): continue
        name = symname(sec)
        if name.startswith('.'):   # unnamed section (associative EH table/funclet): follows its parent
            continue
        tgt = sorted(seen.get(name, []))
        cand = None
        if not tgt and name not in symlines and sec.data and fixed_bytes(sec) >= 8:
            hits = bin_search(sec, b)
            if len(hits) == 1: cand = hits[0]
        if name in lib_defined and not tgt:
            print(f'   {"ok-lib-defined":40s} {"-":>8} {b:8s} {secsize(sec):#x} {name}'); continue
        if tgt and in_lib_unit(tgt[0]):
            print(f'   {"ok-lib " + in_lib_unit(tgt[0]).split("/")[-1]:40s} {tgt[0]:08X} {b:8s} {secsize(sec):#x} {name}'); continue
        if name in symlines:
            sec_, a_, rest_ = symlines[name]
            status = 'ok-comdat' if 'comdat' in rest_ else 'ADD-COMDAT'
            where = f'{a_:08X}'
            if tgt and a_ not in tgt: status += f' (WRONG-ADDR: refs -> {",".join(f"{t:08X}" for t in tgt)})'
        elif tgt:
            a_ = tgt[0]; where = f'{a_:08X}'
            existing = by_addr.get(a_, [])
            status = f'RENAME {existing[0]}' if existing else 'ADD-LABEL'
        elif cand is not None:
            cand += symoff(sec)
            where = f'{cand:08X}'; existing = by_addr.get(cand, [])
            status = f'RENAME? {existing[0]} (unique byte hit)' if existing else 'ADD-LABEL? (unique byte hit)'
        else:
            where = '-'; status = 'UNKNOWN'
        print(f'   {status:40s} {where:>8} {b:8s} {secsize(sec):#x} {name}')

# ---- consistency: a low-information section (few fixed bytes: "", 1-byte `ret` stubs,
# all-pointer tables) is only present if the references to it from other present sections
# point at the claimed address; otherwise it was folded and the walk is redone ----
def _check_consistency():
    pres = {}
    for b_, r_ in report.items():
        if not r_: continue
        for i_, sec_ in enumerate(bins[b_]):
            if r_[2][i_] and r_[2][i_][0] == 'present': pres[sec_.index] = (sec_, r_[2][i_][1])
    defined_in = {}
    for s_ in coff.symbols:
        if s_ is not None and s_.section in pres and s_.name and not s_.name.startswith('.'):
            defined_in[s_.name] = (s_.section, s_.value)
    bad = set()
    votes = {}
    for idx_, (sec_, va_) in pres.items():
        for rl in sec_.relocs:
            sy = coff.symbols[rl.sym_index]
            if sy is None or sy.name not in defined_in: continue
            tidx, tval = defined_in[sy.name]
            if tidx == idx_: continue
            tsec, tva = pres[tidx]
            if fixed_bytes(tsec) >= 8 or not tsec.is_comdat: continue   # plain sections are never folded
            inl = struct.unpack_from('<I', sec_.data, rl.offset)[0]
            if rl.type == L.REL_DIR32: got = struct.unpack_from('<I', exe, va_ + rl.offset - IMAGE_BASE)[0] - inl
            elif rl.type == L.REL_REL32: got = va_ + rl.offset + 4 + struct.unpack_from('<i', exe, va_ + rl.offset - IMAGE_BASE)[0] - inl
            else: continue
            votes.setdefault(tidx, []).append(got == tva + tval)
    for tidx, v in votes.items():
        if v and not any(v): bad.add(tidx)
    # no references at all: a section with almost no fixed bytes needs other evidence
    for idx_, (sec_, va_) in pres.items():
        if idx_ in votes or fixed_bytes(sec_) >= 4 or idx_ in CONFIRMED or not sec_.is_comdat: continue
        if _rtti_class(symname(sec_))[0] is not None: continue   # vtable/RTTI: type-name checked
        bad.add(idx_)
    return bad
_bad = _check_consistency()
_out = sys.stdout.getvalue()
sys.stdout = _REAL_STDOUT
if _bad - FORCED_FOLDED and os.environ.get('CPPWALK_DEPTH', '0') < '3':
    env = dict(os.environ, CPPWALK_FORCED=','.join(str(x) for x in sorted(FORCED_FOLDED | _bad)),
               CPPWALK_DEPTH=str(int(os.environ.get('CPPWALK_DEPTH', '0')) + 1))
    r_ = subprocess.run([sys.executable] + sys.argv, env=env, capture_output=True, text=True)
    sys.stdout.write(r_.stdout); sys.stderr.write(r_.stderr)
else:
    if FORCED_FOLDED:
        _out = '## consistency: forced folded (references point elsewhere): ' + ', '.join(symname(coff.sections[i - 1])[:60] for i in sorted(FORCED_FOLDED)) + '\n' + _out
    sys.stdout.write(_out)
