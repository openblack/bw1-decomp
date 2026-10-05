#!/usr/bin/env python3
"""funclet_map.py VER LO HI -- map every byte of the .text$x funclet range [LO, HI) to the
split unit that owns it, without relying on symbols.txt labels.

Every C++ EH frame in the image has a handler thunk in .text$x
    mov eax, <FuncInfo>   (B8 imm32)      jmp ___CxxFrameHandler   (E9 rel32)
pushed by its owner's prolog (68 <thunk>). The FuncInfo (magic 0x19930520) lists the
owner's other funclets: unwind actions (unwind map) and catch handlers (try-block map).
Each funclet extends to the next funclet start; runs of consecutive funclets with the
same owning unit are printed as `start end unit`."""
import re, struct, sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parent))
import imgsections as IS
BASE = 0x400000
ver = sys.argv[1]; lo, hi = int(sys.argv[2], 16), int(sys.argv[3], 16)
exe = (IS.ROOT / 'orig' / ver / 'runblack-decrypted.exe').read_bytes()
R = IS.ranges(ver, exe)
rd = lambda va: struct.unpack_from('<I', exe, va - BASE)[0]
units = []; cur = None
for line in open(IS.ROOT / 'config' / ver / 'splits.txt'):
    if not line.startswith('\t') and line.strip().endswith(':'): cur = line.strip()[:-1]
    elif line.startswith('\t') and cur and cur != 'Sections':
        m = re.match(r'\t\.text\s+start:0x([0-9A-Fa-f]+)\s+end:0x([0-9A-Fa-f]+)', line)
        if m: units.append((int(m.group(1), 16), int(m.group(2), 16), cur))
units.sort()
# units linked from source for this version cannot hold extracted bytes
cfg = (IS.ROOT / 'configure.py').read_text()
linked_src = set()
for m in re.finditer(r'\b(?:Object|GameCodeObject|IntelObject)\((Matching|MatchingFor\([^)]*\)|NonMatching|Equivalent)\s*,\s*"([^"]+)"', cfg):
    st_, name_ = m.group(1), m.group(2)
    if st_ == 'Matching' or (st_.startswith('MatchingFor') and f'"{ver}"' in st_): linked_src.add(name_)
def carrier_of(va):
    """an owner in code not split into any unit: its funclets are carried by the nearest
    preceding unit in code order that is neither a lib object nor linked from source"""
    best = None
    for s, e, n in units:
        if s > va: break
        if n.startswith('lib/') or '/lib/' in n or n in linked_src: continue
        best = n
    return best
def unit_of(va):
    for s, e, n in units:
        if s <= va < e: return n
    c = carrier_of(va)
    return f'{c} (carried)' if c else '(unsplit)'
# owners register the thunk either with `push thunk` (68 imm32, inline SEH prolog) or with
# `mov eax, thunk ; call __EH_prolog` (B8 imm32 E8 rel32, the library code's prolog)
pushes = {}
t0, t1 = R['.text']
for i in range(t0 - BASE, t1 - BASE - 9):
    if exe[i] == 0x68 or (exe[i] == 0xB8 and exe[i + 5] == 0xE8):
        pushes.setdefault(struct.unpack_from('<I', exe, i + 1)[0], []).append(i + BASE)
x0, x1 = R['.text$x']; d0, d1 = R['.xdata$x']
owner_of = {}   # funclet start -> (owner VA, kind)
for i in range(max(lo, x0) - BASE, min(hi, x1) - BASE - 9):
    if exe[i] != 0xB8 or exe[i + 5] != 0xE9: continue
    fi = struct.unpack_from('<I', exe, i + 1)[0]
    if not (R["image"][0] <= fi < R["image"][1] - 4) or rd(fi) != 0x19930520: continue
    thunk = i + BASE
    p = pushes.get(thunk, [])
    owner = p[0] if p else None
    owner_of[thunk] = (owner, 'thunk')
    maxstate, punwind, ntry, ptry = rd(fi + 4), rd(fi + 8), rd(fi + 12), rd(fi + 16)
    for k in range(maxstate if punwind else 0):
        act = rd(punwind + 8 * k + 4)
        if act and lo <= act < hi: owner_of.setdefault(act, (owner, 'unwind'))
    for t in range(ntry if ptry else 0):
        e = ptry + 0x14 * t
        ncatch, parr = rd(e + 12), rd(e + 16)
        for c in range(ncatch if parr else 0):
            h = rd(parr + 0x10 * c + 12)
            if h and lo <= h < hi: owner_of.setdefault(h, (owner, 'catch'))
starts = sorted(owner_of)
runs = []
for j, a in enumerate(starts):
    end = starts[j + 1] if j + 1 < len(starts) else hi
    owner, kind = owner_of[a]
    u = unit_of(owner) if owner else '(no owner)'
    if runs and runs[-1][2] == u and runs[-1][1] == a: runs[-1][1] = end
    else: runs.append([a, end, u])
if starts and starts[0] > lo: print(f'{lo:08X} {starts[0]:08X} (unattributed lead-in)')
for a, e, u in runs: print(f'{a:08X} {e:08X} {u}')
if '--verbose' in sys.argv:
    for a in starts: print(f'   {a:08X} {owner_of[a][1]:6s} owner={owner_of[a][0] and hex(owner_of[a][0])}')
