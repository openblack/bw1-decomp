import sys, re, struct
sys.path.insert(0, str(__import__('pathlib').Path(__file__).resolve().parent)); import libobj as L
ver, objname = sys.argv[1], sys.argv[2]; unknowns = sys.argv[3:]
exe = L.read_exe(ver)
import imgsections as IS
CODE_LO, CODE_HI = IS.ranges(ver, exe)['code']
meta = L.resolve_member(objname); coff = L.CoffObj(L.extract_member(meta['archive'], meta['member']))
syms = {}; by_addr = {}
for line in open(f'config/{ver}/symbols.txt'):
    m = re.match(r'(\S+) = (\S+?):0x([0-9A-Fa-f]+); // (.*)', line)
    if m:
        sz = re.search(r'size:0x([0-9A-Fa-f]+)', m.group(4)); a = int(m.group(3),16)
        syms[m.group(1)] = (a, int(sz.group(1),16) if sz else 0); by_addr.setdefault(a, []).append(m.group(1))
# game copies known from the walk file's resolved lists
known = {}
import os
walkfile = f'build/agent-tools/walk_{ver}_{objname}.txt'
if not os.path.exists(walkfile): walkfile = f'build/agent-tools/walk_{objname}.txt'
for line in open(walkfile):
    m = re.match(r'\s+(\S+)\s+-> ([0-9A-F]{8})', line)
    if m: known[m.group(1)] = int(m.group(2), 16)
    m = re.match(r'\s+(?:RENAME \S+|ADD-COMDAT|ADD-LABEL|ok-comdat)\s+([0-9A-F]{8}) \S+\s+(\S+)', line)
    if m: known[m.group(2)] = int(m.group(1), 16)
def secname(sec):
    for s in coff.symbols:
        if s is not None and s.section == sec.index and s.storage == 2 and not s.name.startswith('.'): return s.name
    return f'{sec.name}#{sec.index}'
def game_seq(va, size):
    out = []; i = va
    while i < va + size - 4:
        op = exe[i-0x400000]
        if op == 0xE8:
            t = i + 5 + struct.unpack_from('<i', exe, i+1-0x400000)[0]
            if CODE_LO <= t < CODE_HI: out.append(('call', t)); i += 5; continue
        if op == 0x68:
            t = struct.unpack_from('<I', exe, i+1-0x400000)[0]
            if CODE_LO <= t < CODE_HI: out.append(('push', t)); i += 5; continue
        i += 1
    return out
for S in unknowns:
    print(f'=== {S[:90]}')
    for sec in coff.sections:
        if not sec.is_code: continue
        refs = [rl for rl in sec.relocs if coff.symbols[rl.sym_index] is not None and coff.symbols[rl.sym_index].name.startswith(S)]
        if not refs: continue
        nm = secname(sec); G = known.get(nm)
        gname = by_addr.get(G, ['?'])[0] if G else None
        print(f'  referenced by {nm[:80]}  game copy: {f"{G:#x} {gname[:40]}" if G else "UNKNOWN"}')
        oseq = [(('call' if rl.type == L.REL_REL32 else 'ref'), coff.symbols[rl.sym_index].name[:55]) for rl in sorted(sec.relocs, key=lambda r: r.offset) if coff.symbols[rl.sym_index] is not None and coff.symbols[rl.sym_index].section != sec.index]
        print('     obj :', ' | '.join(f'{k}:{n}' for k, n in oseq if k == 'call' or n.startswith(S))[:600])
        if G:
            gsz = syms.get(gname, (0, 0x200))[1] or 0x200
            print('     game:', ' | '.join(f'{k}:{t:#x}:{by_addr.get(t, ["?"])[0][:30]}' for k, t in game_seq(G, gsz))[:700])
