#!/usr/bin/env python3
"""textx_holders.py VER LO HI [--apply]

Gives every .text$x funclet in [LO, HI) an explicit holder unit, using funclet_map.py's
attribution: each run goes to the split unit that owns it; runs whose owner lies in code
not split into any unit yet (and any alignment lead-in) are carried by the neighbouring
named unit (lead-in: the following run; unsplit: the preceding run). Writes/replaces the
`.text$x` line of each holder's block in config/VER/splits.txt.

Needed because dtk emits per-function auto units of the .text$x region as plain `.text`,
which lld then orders among the .text units: once any lib object claims its funclets with
an explicit .text$x range, every other funclet run must be claimed explicitly too.
Runs whose owner is in code not split into any unit are carried by the nearest preceding
unit in code order that holds extracted bytes (funclet_map.py marks them "(carried)")."""
import re, subprocess, sys
from pathlib import Path
HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
ver, lo, hi = sys.argv[1], sys.argv[2], sys.argv[3]
out = subprocess.check_output([sys.executable, str(HERE / 'funclet_map.py'), ver, lo, hi], text=True)
runs = []
for line in out.splitlines():
    m = re.match(r'([0-9A-F]{8}) ([0-9A-F]{8}) (.*)$', line)
    if m: runs.append([int(m.group(1), 16), int(m.group(2), 16), m.group(3).replace(' (carried)', '')])
# lead-in -> following run; unsplit/no-owner -> preceding run
merged = []
for a, e, u in runs:
    if u.startswith('('):
        if merged and not u.startswith('(unattributed lead-in'):
            merged[-1][1] = e; continue
        merged.append([a, e, None]); continue
    if merged and merged[-1][2] is None:
        merged[-1][1] = e; merged[-1][2] = u; continue
    if merged and merged[-1][2] == u and merged[-1][1] == a:
        merged[-1][1] = e; continue
    merged.append([a, e, u])
if merged and merged[-1][2] is None:
    sys.exit('trailing run has no named holder')
seen = {}
for a, e, u in merged:
    if u in seen: sys.exit(f'{u} would hold two separate .text$x runs ({seen[u]:08X}, {a:08X}); split by hand')
    seen[u] = a
path = ROOT / 'config' / ver / 'splits.txt'
txt = path.read_text()
for a, e, u in merged:
    al = 4 if a % 4 == 0 else 1
    line = f'\t.text$x     start:0x{a:08X} end:0x{e:08X} align:{al}'
    print(f'{a:08X}-{e:08X} {u}')
    m = re.search(rf'^{re.escape(u)}:\n((?:\t.*\n)*)', txt, re.M)
    if not m: sys.exit(f'no splits block for {u}')
    block = m.group(0)
    if re.search(r'^\t\.text\$x\s', block, re.M):
        nb = re.sub(r'^\t\.text\$x\s[^\n]*', line, block, count=1, flags=re.M)
    else:
        # keep section order: .text$x right after .text
        nb = re.sub(r'(^\t\.text\s[^\n]*\n)', lambda mm: mm.group(1) + line + '\n', block, count=1, flags=re.M)
        if nb == block: nb = block.rstrip('\n') + '\n' + line + '\n'
    txt = txt.replace(block, nb, 1)
if '--apply' in sys.argv:
    path.write_text(txt); print(f'applied to {path}')
