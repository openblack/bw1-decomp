#!/usr/bin/env python3
"""chainwalk.py VER OBJ1[,OBJ2...] BIN=0xSTART ... [--skip=BIN ...] [--gap OBJ:BIN=0xADDR ...]

Walks several lib objects in link order with cppwalk.py, starting each object's bins
where the previous object's present sections ended (bins with no present section keep
their start). Writes build/agent-tools/walk_<VER>_<OBJ>.txt and prints a summary.
--gap OBJ:BIN=0xADDR overrides the start of BIN for OBJ (an unrelated object sits between)."""
import re, subprocess, sys
from pathlib import Path
HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
ver = sys.argv[1]; objs = sys.argv[2].split(',')
starts = {}; skips = []; gaps = {}
args = sys.argv[3:]
i = 0
while i < len(args):
    a = args[i]
    if a.startswith('--skip='): skips.append(a)
    elif a == '--gap':
        o, rest = args[i + 1].split(':', 1); b, v = rest.split('='); gaps.setdefault(o, {})[b] = int(v, 16); i += 1
    else:
        b, v = a.split('='); starts[b] = int(v, 16)
    i += 1
out_dir = ROOT / 'build' / 'agent-tools'; out_dir.mkdir(parents=True, exist_ok=True)
for o in objs:
    cur = dict(starts); cur.update(gaps.get(o, {}))
    cmd = [sys.executable, str(HERE / 'cppwalk.py'), ver, o] + [f'{b}=0x{v:X}' for b, v in cur.items()] + skips
    res = subprocess.run(cmd, cwd=ROOT, capture_output=True, text=True)
    (out_dir / f'walk_{ver}_{o}.txt').write_text(res.stdout + res.stderr)
    print(f'== {o}')
    for line in res.stdout.splitlines():
        m = re.match(r'## (\S+): (\d+)/(\d+) present\s+range 0x([0-9a-f]+)-0x([0-9a-f]+)', line)
        if m:
            b = m.group(1); print('  ', line[3:].strip()[:100])
            starts[b] = int(m.group(5), 16)
        elif line.startswith('## .bss') or line.startswith('## COMMON') or 'none present' in line or 'no anchor' in line:
            print('  ', line[3:].strip()[:100])
    if res.returncode: print(res.stderr[-800:]); break
