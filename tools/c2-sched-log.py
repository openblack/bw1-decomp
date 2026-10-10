#!/usr/bin/env python3

"""Log the MSVC6 (c2.dll 8966) instruction scheduler's decisions for one unit.

See docs/msvc6_scheduler.md for the model behind the output.

The tool patches a private copy of the unit's c2.dll so that its list scheduler
prints every window, ready list and issued node to stderr. It then compiles the
unit with its exact Ninja command and prints a readable schedule. The original
compiler is never modified, and the patched copy produces byte-identical objects.
Only the BW1W120 compiler (MSVC 6.5, c2.dll 8966) is supported.

Usage:
  # Every function of the unit with its window sizes (! = cut at 81 nodes)
  python tools/c2-sched-log.py --source src/Black/GestureSystemSamples.cpp

  # One function: per window, one line per node in issue order; -r adds ready lists
  python tools/c2-sched-log.py --source src/Black/GestureSystemSamples.cpp \\
      -f CalculateForJunctionMerge -r

Node lines read:

  cycle  s<seq>  p<priority> (h<height> d<out-degree> m<mem> [b7] [x87])  e<earliest>  instruction  -> s<succ>/<latency>

seq is the node's position in IL (pre-schedule) order within its window; s?
is a successor outside the window. A trailing "!=N" means the logged priority
differs from the /G6 formula N. Nodes that emit nothing (op 354, e.g. from
redundant parentheses) show as "nop-node". To try a source variant, edit the
source and rerun.

The patched compiler, object, /FAs listing and raw log go to build/probe-sched/.
The hooks are assembled with the project's LLVM clang (build/tools/llvm/bin/clang).
"""

import argparse
import hashlib
import os
import re
import shutil
import struct
import subprocess
import sys
import tempfile
from dataclasses import dataclass, field
from pathlib import Path

sys.dont_write_bytecode = True

import msvc_probe as mp
from decomp_binary import PE, Coff
from decomp_common import ROOT

WORK = "build/probe-sched"
EXE = ".exe" if os.name == "nt" else ""
CLANG = f"build/tools/llvm/bin/clang{EXE}"

C2_SHA256 = "d50100ac2380d58f3f6f756961fb1319d35f5248e5fa6cafb866ca657e5dda4a"  # 12.00.8966

# c2.dll preferred VAs, from the address table in docs/msvc6_scheduler.md.
SCHEDULER_ENTRY = 0x107374AA
WINDOW_BUILT = 0x1073754E
ISSUE_NODE = 0x1073B06B
ISSUE_NODE_CALLEE = 0x1073B669  # the call the issue hook displaces
CYCLE_START = 0x1073B176
EMIT_INSTRUCTION = 0x1078CEFB
READY = 0x1079F278  # ready list head
CYCLE = 0x1079F238  # current cycle
WINDOW = 0x1079F268  # current window list head
WEIGHTS = 0x10799204  # pointer to the per-CPU priority weight row
OPNAMES, OPCOUNT = 0x107A5A90, 270  # opcode name pointer table

IOB, FFLUSH, VFPRINTF = 0x107A0074, 0x107A0094, 0x107A00C4  # MSVCRT IAT slots
STDERR = 0x40  # &_iob[2]: a FILE is 0x20 bytes
CAVE, CAVE_END = 0x10798400, 0x10799000  # zero padding at the end of .text's raw data
FCOUNT = 0x1079F910  # function counter: past .bssbe's VirtualSize, in its last page

PE_HEADER_POINTER = 0x3C  # e_lfanew
OPTIONAL_HEADER_SIZE = 20  # offset of SizeOfOptionalHeader from the PE signature
PE_HEADERS = 24  # signature + COFF file header
SECTION_HEADER = 40
VIRTUAL_SIZE = 8  # offset of VirtualSize in a section header

NOP = 354  # IL node that emits nothing
WINDOW_NODES = 81

# Offsets of the registers saved by `pushad` on the hook's stack.
SAVED = dict(edi=0, esi=4, ebp=8, esp=12, ebx=16, edx=20, ecx=24, eax=28)


def saved(reg):
    return f"dword ptr [esp+{SAVED[reg]}]"


# Explicit encodings: clang would pick a 16-bit push for a label defined later,
# and the absolute targets must become rel32 without relocations.
PRELUDE = f"""
.intel_syntax noprefix
.set CAVE, {CAVE:#x}
.macro push_va label
  .byte 0x68
  .long \\label - __start + CAVE
.endm
.macro jmp_va address
  .byte 0xe9
  .long \\address - (CAVE + . + 4 - __start)
.endm
.macro call_va address
  .byte 0xe8
  .long \\address - (CAVE + . + 4 - __start)
.endm
__start:
logf:
  push ebp
  mov ebp, esp
  lea eax, [ebp+12]
  push eax
  push dword ptr [ebp+8]
  mov eax, dword ptr [{IOB:#x}]
  add eax, {STDERR:#x}
  push eax
  call dword ptr [{VFPRINTF:#x}]
  add esp, 12
  mov eax, dword ptr [{IOB:#x}]
  add eax, {STDERR:#x}
  push eax
  call dword ptr [{FFLUSH:#x}]
  add esp, 4
  pop ebp
  ret
"""

STRINGS = {
    "nl": "\\n",
    "fmtF": "@F #%d\\n",
    "fmtE": "@E %08x op=%d\\n",
    "fmtS": "@S cyc=%d node=%08x ins=%08x op=%d prio=%d earliest=%d seq=%d f39=%02x f3a=%02x "
            "height=%d degree=%d succ:",
    "fmtEdge": " %08x/%d",
    "fmtR": "@R cyc=%d ready:",
    "fmtRn": " %d/%d/%d",
    "fmtL": "@L row=%08x",
    "fmtLn": " %d",
}

# (address, original bytes, displaced instructions, hook body). Each hook saves
# all registers, logs, restores them, runs the displaced instructions and jumps
# back to the next original instruction. Log lines (on stderr):
#   @F #n                         n-th function given to the scheduler
#   @L row=<weights> op...        one window's IL nodes in IL order
#   @R cyc=c ready: prio/earliest/seq...  ready list at the start of a cycle, best first
#   @S cyc=c node ins op prio earliest seq f39 f3a height degree succ: node/latency...
#   @E ins op=n                   every emitted instruction, in final order
HOOKS = [
    (SCHEDULER_ENTRY, "515557" "8bfa" "8be9", "push ecx\n push ebp\n push edi\n mov edi, edx\n mov ebp, ecx", f"""
      inc dword ptr [{FCOUNT:#x}]
      push dword ptr [{FCOUNT:#x}]
      push_va fmtF
      call logf
      add esp, 8
    """),
    # ecx = instruction
    (EMIT_INSTRUCTION, "83ec44" "57" "8bf9", "sub esp, 0x44\n push edi\n mov edi, ecx", f"""
      mov esi, {saved("ecx")}
      push dword ptr [esi+4]
      push esi
      push_va fmtE
      call logf
      add esp, 12
    """),
    # esi = node
    (ISSUE_NODE, "8b4e1c" "e8f6050000", f"mov ecx, dword ptr [esi+0x1c]\n call_va {ISSUE_NODE_CALLEE:#x}", f"""
      mov esi, {saved("esi")}
      movzx eax, word ptr [esi+0x22]
      push eax
      movzx eax, word ptr [esi+0x34]
      push eax
      movzx eax, byte ptr [esi+0x3a]
      push eax
      movzx eax, byte ptr [esi+0x39]
      push eax
      movzx eax, word ptr [esi+0x36]
      push eax
      push dword ptr [esi+0x30]
      push dword ptr [esi+0x2c]
      mov eax, dword ptr [esi+0x1c]
      mov ecx, -1
      test eax, eax
      je snull
      mov ecx, dword ptr [eax+4]
     snull:
      push ecx
      push eax
      push esi
      push dword ptr [{CYCLE:#x}]
      push_va fmtS
      call logf
      add esp, 48
      mov edi, dword ptr [esi+0xc]
     eloop:
      test edi, edi
      je edone
      movzx eax, word ptr [edi+0x14]
      push eax
      push dword ptr [edi+0xc]
      push_va fmtEdge
      call logf
      add esp, 12
      mov edi, dword ptr [edi]
      jmp eloop
     edone:
      push_va nl
      call logf
      add esp, 4
    """),
    (CYCLE_START, "83ec0c" "53" "55", "sub esp, 0xc\n push ebx\n push ebp", f"""
      push dword ptr [{CYCLE:#x}]
      push_va fmtR
      call logf
      add esp, 8
      mov esi, dword ptr [{READY:#x}]
     rloop:
      test esi, esi
      je rdone
      movzx eax, word ptr [esi+0x36]
      push eax
      push dword ptr [esi+0x30]
      push dword ptr [esi+0x2c]
      push_va fmtRn
      call logf
      add esp, 16
      mov esi, dword ptr [esi+0x10]
      jmp rloop
     rdone:
      push_va nl
      call logf
      add esp, 4
    """),
    # saved eax = last node of the window
    (WINDOW_BUILT, "8b0d68f27910", f"mov ecx, dword ptr [{WINDOW:#x}]", f"""
      push dword ptr [{WEIGHTS:#x}]
      push_va fmtL
      call logf
      add esp, 8
      mov esi, dword ptr [{WINDOW:#x}]
      mov edi, {saved("eax")}
     lloop:
      test esi, esi
      je ldone
      push dword ptr [esi+4]
      push_va fmtLn
      call logf
      add esp, 8
      cmp esi, edi
      je ldone
      mov esi, dword ptr [esi]
      jmp lloop
     ldone:
      push_va nl
      call logf
      add esp, 4
    """),
]


def hook_source():
    source = PRELUDE
    for i, (at, orig, displaced, body) in enumerate(HOOKS):
        back = at + len(orig) // 2
        source += f"\nhook{i}:\n pushfd\n pushad\n{body}\n popad\n popfd\n {displaced}\n jmp_va {back:#x}\n"
    for name, text in STRINGS.items():
        source += f'{name}: .asciz "{text}"\n'
    return source


def assemble(clang):
    """Assemble the hooks for CAVE. Returns (code, [VA of each hook])."""
    with tempfile.TemporaryDirectory() as tmp:
        asm, obj = Path(tmp) / "hooks.s", Path(tmp) / "hooks.obj"
        asm.write_text(hook_source())
        subprocess.run([clang, "--target=i386-pc-windows-msvc", "-c", str(asm), "-o", str(obj)], check=True)
        coff = Coff.read(obj)
    text = next(s for s in coff.sections if s.name == ".text")
    if text.relocations:
        raise RuntimeError("hook code needs relocations")
    labels = {s.name: CAVE + s.value for s in coff.symbols.values() if s.section == text.index}
    return coff.bytes(text.index, 0, text.size), [labels[f"hook{i}"] for i in range(len(HOOKS))]


def patch_c2(clang, original, patched):
    """Write a logging copy of c2.dll 8966."""
    data = bytearray(Path(original).read_bytes())
    if hashlib.sha256(data).hexdigest() != C2_SHA256:
        raise RuntimeError(f"{original} is not c2.dll 8966. This tool supports only the MSVC 6.5 "
                           "back end used for BW1W120; configure with `python configure.py --version BW1W120`.")
    text = PE(bytes(data)).section_at(CAVE)

    def offset(va):
        return text.raw_offset + va - text.address

    code, hooks = assemble(clang)
    if CAVE + len(code) > CAVE_END:
        raise RuntimeError("hook code does not fit in the .text padding")
    assert not any(data[offset(CAVE):offset(CAVE_END)]), "code cave is not zero-filled"
    data[offset(CAVE):offset(CAVE) + len(code)] = code
    for (at, orig, *_), hook in zip(HOOKS, hooks):
        size = len(orig) // 2
        jump = b"\xe9" + struct.pack("<i", hook - (at + 5))
        data[offset(at):offset(at) + size] = jump + b"\x90" * (size - len(jump))

    # Let .text's VirtualSize cover the cave (it stays within the raw size).
    pe_header, = struct.unpack_from("<I", data, PE_HEADER_POINTER)
    optional_size, = struct.unpack_from("<H", data, pe_header + OPTIONAL_HEADER_SIZE)
    header = pe_header + PE_HEADERS + optional_size + SECTION_HEADER * (text.index - 1)
    struct.pack_into("<I", data, header + VIRTUAL_SIZE, text.size)
    patched.unlink(missing_ok=True)
    patched.write_bytes(data)


def opcode_names(c2):
    pe = PE.read(c2)
    names = {NOP: "nop-node"}
    for i in range(OPCOUNT):
        pointer, = struct.unpack("<I", pe.bytes(OPNAMES + 4 * i, 4))
        sec = pe.section_at(pointer)
        start = sec.raw_offset + pointer - sec.address
        names[i] = pe.data[start:pe.data.index(b"\0", start)].decode("ascii")
    return names


def compile_logged(unit):
    """Compile the unit with a logging copy of its compiler. Returns (log, listing, c2 copy)."""
    clang = Path(ROOT) / CLANG
    if not clang.exists():
        raise RuntimeError(f"{CLANG} is missing; run ninja once to download the LLVM toolchain")
    argv, source, _ = mp.compile_command(unit)
    index = next(i for i, a in enumerate(argv) if os.path.basename(a).lower() == "cl.exe")
    compiler = Path(ROOT) / argv[index]
    work = mp.make_workdir(WORK)
    cc = work / "cc"
    cc.mkdir(exist_ok=True)
    for path in compiler.parent.iterdir():
        if path.is_file() and path.name != "c2.dll":
            shutil.copy2(path, cc / path.name)
    patch_c2(clang, compiler.parent / "c2.dll", cc / "c2.dll")

    stem = Path(source).stem
    cmd = mp.retarget(argv, source, source, f"{WORK}/{stem}.obj")
    cmd[index] = f"{WORK}/cc/cl.exe"
    cmd += ["/FAs", f"/Fa{WORK}/{stem}.asm"]
    proc = subprocess.run(cmd, cwd=ROOT, capture_output=True, text=True, errors="replace")
    log = (proc.stdout + proc.stderr).replace("\r", "")
    (work / f"{stem}.log").write_text(log)
    if proc.returncode:
        errors = [l for l in log.splitlines() if " error " in l or "fatal error" in l]
        raise RuntimeError("compile failed:\n" + "\n".join(errors or log.splitlines()[-5:]))
    return log, (work / f"{stem}.asm").read_text(errors="replace"), cc / "c2.dll"


@dataclass
class Node:
    cycle: int
    ins: str
    op: int
    prio: int
    earliest: int
    seq: int
    f39: int
    f3a: int
    height: int
    degree: int
    succs: list = field(default_factory=list)  # [(seq, latency)]; seq "?" when outside the window


@dataclass
class Window:
    ops: list  # IL opcodes in IL order


@dataclass
class Ready:
    cycle: int
    entries: list  # [(prio, earliest, seq)], best first


@dataclass
class Function:
    ordinal: int
    events: list = field(default_factory=list)  # Window, Ready and Node records in log order
    emitted: list = field(default_factory=list)  # [(ins, op)] in final order
    name: str = None
    text: dict = field(default_factory=dict)  # ins -> listing text

    @property
    def windows(self):
        return [e for e in self.events if isinstance(e, Window)]


NODE_LINE = re.compile(r"@S cyc=(\d+) node=([0-9a-f]+) ins=([0-9a-f]+) op=(\d+) prio=(\d+) earliest=(\d+) "
                       r"seq=(\d+) f39=([0-9a-f]+) f3a=([0-9a-f]+) height=(\d+) degree=(\d+) succ:(.*)")


def parse_log(log):
    """Scheduler log text -> [Function]."""
    funcs = []
    window = []  # [(node address, Node, [(successor address, latency)])] of the current window

    def close_window():
        seqs = {address: node.seq for address, node, _ in window}
        for _, node, succs in window:
            node.succs = [(seqs.get(a, "?"), latency) for a, latency in succs]
        window.clear()

    for line in log.splitlines():
        if line.startswith("@F "):
            close_window()
            funcs.append(Function(int(line.split("#")[1])))
        elif not funcs:
            continue
        elif line.startswith("@L "):
            close_window()
            funcs[-1].events.append(Window([int(op) for op in line.split()[2:]]))
        elif line.startswith("@R "):
            cycle = int(line.split()[1].split("=")[1])
            entries = [tuple(map(int, e.split("/"))) for e in line.split("ready:")[1].split()]
            funcs[-1].events.append(Ready(cycle, entries))
        elif line.startswith("@S "):
            m = NODE_LINE.match(line)
            node = Node(int(m[1]), m[3], int(m[4]), int(m[5]), int(m[6]), int(m[7]), int(m[8], 16),
                        int(m[9], 16), int(m[10]), int(m[11]))
            succs = [(a, int(latency)) for a, latency in re.findall(r"([0-9a-f]{8})/(\d+)", m[12])]
            window.append((m[2], node, succs))
            funcs[-1].events.append(node)
        elif line.startswith("@E "):
            funcs[-1].emitted.append((line.split()[1], int(line.split("op=")[1])))
    close_window()
    return funcs


def listing(text):
    """/FAs listing text -> [(demangled name, [(mnemonic, text)])] in listing order."""
    procs, current = [], None
    for line in text.splitlines():
        if re.search(r"\sPROC\s", line):
            symbol, _, comment = line.partition(";")
            name = comment.split(", COMDAT")[0].strip()
            current = []
            procs.append((symbol.split()[0] if name in ("", "COMDAT") else name, current))
        elif re.search(r"\sENDP\b", line):
            current = None
        elif current is not None:
            m = re.match(r"^\t([a-z][a-z0-9]*)\b", line)
            if m:
                current.append((m.group(1), re.sub(r"\s+", " ", line.split(";")[0]).strip()))
    return procs


def align(emitted, lines, names):
    """Map emitted instruction ids to listing text, skipping at most 3 listing lines per match."""
    text, j = {}, 0
    for ins, op in emitted:
        if op == NOP:
            continue
        name = names.get(op, "j?")  # ops past the table are branch pseudo-ops
        jump = name.startswith(("j", "_jcc"))
        for k in range(j, min(j + 4, len(lines))):
            if lines[k][0] == name or (jump and lines[k][0].startswith("j")):
                text[ins] = lines[k][1]
                j = k + 1
                break
    return text


def name_functions(funcs, procs, names):
    """Match scheduled functions to listing PROCs by their emitted instructions.

    Discarded inline functions are scheduled too but have no PROC, so the
    scheduler's ordinals have gaps.
    """
    start = 0
    for name, lines in procs:
        for k in range(start, len(funcs)):
            count = sum(1 for _, op in funcs[k].emitted if op != NOP)
            text = align(funcs[k].emitted, lines, names)
            if count and lines and len(text) >= 0.9 * max(count, len(lines)):
                funcs[k].name, funcs[k].text = name, text
                start = k + 1
                break


def priority(node, x87):
    """The /G6 priority (weight row 3, see docs/msvc6_scheduler.md).

    c2 adds the f3a bit-1 term only for x87 instructions (instruction kind
    0x4000). The log does not carry the kind, so callers pass the opcode
    name's "f" prefix instead.
    """
    return (((node.height + node.degree) << 10) + ((node.f3a & 1) << 15) + ((node.f39 >> 7 & 1) << 23)
            + (x87 and node.f3a >> 1 & 1))


def summary(func):
    sizes = " ".join(f"{len(w.ops)}{'!' if len(w.ops) >= WINDOW_NODES else ''}"
                     for w in func.windows if len(w.ops) > 2)
    return f"#{func.ordinal:<3} {func.name[:70]:<70} windows: {sizes}"


def show(func, names, ready):
    print("=" * 24, f"#{func.ordinal} {func.name}")
    windows = 0
    for event in func.events:
        if isinstance(event, Window):
            windows += 1
            nops = [k for k, op in enumerate(event.ops) if op == NOP]
            full = " FULL (cut at the limit)" if len(event.ops) >= WINDOW_NODES else ""
            print("-" * 10, f"window {windows}: {len(event.ops)} nodes{full}, {len(nops)} nop-nodes"
                  + (f" at {nops}" if nops else ""))
        elif isinstance(event, Ready):
            if ready:
                print(f"     ready@{event.cycle}: " + " ".join(f"s{s}:{p}/e{e}" for p, e, s in event.entries))
        else:
            op = names.get(event.op, str(event.op))
            x87 = op.startswith("f")
            flags = (" b7" if event.f39 & 0x80 else "") + (" x87" if x87 else "")
            text = func.text.get(event.ins, op)
            succs = " ".join(f"s{seq}/{latency}" for seq, latency in event.succs)
            expected = priority(event, x87)
            check = "" if expected == event.prio else f" !={expected}"
            print(f"{event.cycle:>4} s{event.seq:<3} p{event.prio:<7}(h{event.height:<3} d{event.degree:<2} "
                  f"m{event.f3a & 1}{flags}) e{event.earliest:<3} {text[:44]:<44} -> {succs}{check}")


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--source", help="source file of the unit (e.g. src/Black/GestureSystemSamples.cpp)")
    ap.add_argument("--unit", help="objdiff unit name instead of --source")
    ap.add_argument("-f", "--function", action="append", default=[],
                    help="substring of the demangled function name (repeatable); omit for a summary")
    ap.add_argument("-r", "--ready", action="store_true", help="also print the ready list before each cycle")
    args = ap.parse_args(argv)

    try:
        log, asm, c2 = compile_logged(mp.unit_for(source=args.source, unit=args.unit))
    except (OSError, ValueError, RuntimeError, subprocess.CalledProcessError) as exc:
        print(f"error: {exc}", file=sys.stderr)
        return 1

    names = opcode_names(c2)
    funcs = parse_log(log)
    name_functions(funcs, listing(asm), names)
    for func in funcs:
        if func.name is None:
            continue
        if not args.function:
            print(summary(func))
        elif any(s in func.name for s in args.function):
            show(func, names, args.ready)
    return 0


if __name__ == "__main__":
    sys.exit(main())
