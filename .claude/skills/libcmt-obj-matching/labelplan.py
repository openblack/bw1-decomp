#!/usr/bin/env python3
"""labelplan.py VER WALKFILE [--apply] [--set NAME=0xADDR ...] [--trust-bytehits]

Applies the "label plan" printed by cppwalk.py to config/VER/symbols.txt so every
COMDAT the lib object folded onto a game copy has that copy labelled with its exact
decorated name and the `comdat` flag:
  ADD-COMDAT          add `comdat` to the existing label
  RENAME <old>        rename the anonymous label at the address
  ADD-LABEL           insert a label (data bins only; carves the containing blob)
  RENAME?/ADD-LABEL?  unique byte hits; applied only with --trust-bytehits
  UNKNOWN             reported; resolve by hand and pass --set NAME=0xADDR
Without --apply it only prints what it would do."""
import re, sys
from pathlib import Path
ROOT = Path(__file__).resolve().parents[3]
ver, walkfile = sys.argv[1], sys.argv[2]
apply = '--apply' in sys.argv
trust = '--trust-bytehits' in sys.argv
manual = {}
for i, a in enumerate(sys.argv):
    if a == '--set':
        n, v = sys.argv[i + 1].rsplit('=', 1); manual[n] = int(v, 16)
path = ROOT / 'config' / ver / 'symbols.txt'
lines = path.read_text().split('\n')
LINE_RE = re.compile(r'^(\S+) = \.(\S+?):0x([0-9A-Fa-f]{8}); // (.*)$')
def parse():
    out = []
    for i, l in enumerate(lines):
        m = LINE_RE.match(l)
        if m:
            sz = re.search(r'size:0x([0-9A-Fa-f]+)', m.group(4))
            out.append((i, m.group(1), m.group(2), int(m.group(3), 16), int(sz.group(1), 16) if sz else 0, m.group(4)))
    return out
def find_exact(name, addr):
    for i, n, sec, a, sz, rest in parse():
        if n == name and a == addr: return i
    return None
def find_at(addr):
    return [(i, n, sec, a, sz, rest) for i, n, sec, a, sz, rest in parse() if a == addr]
def covering(addr):
    best = None
    for row in parse():
        i, n, sec, a, sz, rest = row
        if a < addr < a + sz: best = row
    return best
def tag_near(addr):
    best = None
    for i, n, sec, a, sz, rest in parse():
        if a <= addr and (best is None or a > best[0]): best = (a, sec)
    return best[1] if best else 'rdata'
def with_flags(rest):
    rest = rest.replace(' scope:local', '').replace(' scope:weak', '').rstrip()
    if 'scope:global' not in rest: rest += ' scope:global'
    if not re.search(r'\bcomdat\b', rest): rest += ' comdat'
    return rest
actions = []
plan = []
in_plan = False
for l in open(walkfile):
    if l.startswith('## label plan'): in_plan = True; continue
    if in_plan and l.startswith('## '): in_plan = False
    if not in_plan: continue
    m = re.match(r'\s+(ok-\S+(?: \S+)?|ADD-COMDAT|ADD-LABEL\??|RENAME\?? \S+|UNKNOWN)(?: \([^)]*\))?(?: \(unique byte hit\))?\s+(-|[0-9A-F]{8}) (\S+)\s+(0x[0-9a-f]+) (\S+)\s*$', l)
    if not m:
        if l.strip(): print('?? unparsed:', l.rstrip()[:140])
        continue
    status, addr, b, libsize, name = m.groups()
    plan.append((status, None if addr == '-' else int(addr, 16), b, int(libsize, 16), name))
for name, addr in manual.items():
    plan = [p for p in plan if p[4] != name] + [('SET', addr, '.text', 0, name)]
for status, addr, b, libsize, name in plan:
    if status.startswith('ok-'): continue
    if status == 'UNKNOWN':
        actions.append(f'UNRESOLVED {b} {name}'); continue
    if status.endswith('?') or status.startswith('RENAME?') or status.startswith('ADD-LABEL?'):
        if not trust: actions.append(f'SKIP (byte hit; --trust-bytehits) {addr:08X} {name}'); continue
    if status == 'ADD-COMDAT' or (find_exact(name, addr) is not None):
        i = find_exact(name, addr)
        if i is None: actions.append(f'MISSING label for ADD-COMDAT {name} @{addr:08X}'); continue
        m = LINE_RE.match(lines[i]); new = f'{m.group(1)} = .{m.group(2)}:0x{m.group(3)}; // {with_flags(m.group(4))}'
        if new != lines[i]: actions.append(f'comdat  {addr:08X} {name}'); lines[i] = new
        continue
    at = find_at(addr)
    named_elsewhere = [r for r in parse() if r[1] == name and r[3] != addr]
    if named_elsewhere:
        actions.append(f'CONFLICT {name} already labelled at {named_elsewhere[0][3]:08X}, plan says {addr:08X}; fix by hand'); continue
    if at:
        i, old, sec, a, sz, rest = at[0]
        if b in ('.rdata', '.rdata$r', '.xdata$x', '.data') and sz and libsize and sz < libsize:
            actions.append(f'WARN {name}: game label {old} size {sz:#x} < lib section {libsize:#x}')
        lines[i] = f'{name} = .{sec}:0x{a:08X}; // {with_flags(rest)}'
        actions.append(f'rename  {addr:08X} {old} -> {name}')
        continue
    if b in ('.text', '.text$x') and status != 'SET':
        actions.append(f'MANUAL code label {addr:08X} {name} (no label there; size unknown)'); continue
    cov = covering(addr)
    size = libsize or 4
    kind = 'function' if b.startswith('.text') else 'object'
    if cov:
        i, n, sec, a, sz, rest = cov
        new_rows = [re.sub(r'size:0x[0-9A-Fa-f]+', f'size:0x{addr - a:X}', lines[i])]
        size = min(size, a + sz - addr)
        new_rows.append(f'{name} = .{sec}:0x{addr:08X}; // type:{kind} size:0x{size:X} scope:global comdat')
        if addr + size < a + sz:
            new_rows.append(f'lbl_{addr + size:08X} = .{sec}:0x{addr + size:08X}; // type:object size:0x{a + sz - addr - size:X}')
        lines[i] = '\n'.join(new_rows)
        lines[:] = '\n'.join(lines).split('\n')
        actions.append(f'carve   {addr:08X} {name} out of {n}')
    else:
        sec = tag_near(addr)
        # insert in address order
        rows = parse(); pos = len(lines)
        for i, n, s_, a, sz, rest in rows:
            if a > addr: pos = i; break
        lines.insert(pos, f'{name} = .{sec}:0x{addr:08X}; // type:{kind} size:0x{size:X} scope:global comdat')
        actions.append(f'add     {addr:08X} {name}')
for a in actions: print(a)
if apply:
    path.write_text('\n'.join(lines)); print(f'applied to {path}')
