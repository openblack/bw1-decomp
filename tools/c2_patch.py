"""Shared machinery for the c2.dll (12.00.8966) logging tools.

The loggers patch a private copy of the unit's c2.dll: each hook replaces a few
whole instructions with a jump to code in the zero padding at the end of .text.
That code saves all registers, prints a line to stderr through MSVCRT's
vfprintf, restores the registers, runs the displaced instructions and jumps
back. The original compiler is never modified, and the patched copy produces
byte-identical objects.

Used by tools/c2-sched-log.py and tools/c2-inline-log.py.
"""

import hashlib
import os
import shutil
import struct
import subprocess
import tempfile
from pathlib import Path

import msvc_probe as mp
from decomp_binary import PE, Coff
from decomp_common import ROOT

EXE = ".exe" if os.name == "nt" else ""
CLANG = f"build/tools/llvm/bin/clang{EXE}"

C2_SHA256 = "d50100ac2380d58f3f6f756961fb1319d35f5248e5fa6cafb866ca657e5dda4a"  # 12.00.8966

IOB, FFLUSH, VFPRINTF = 0x107A0074, 0x107A0094, 0x107A00C4  # MSVCRT IAT slots
STDERR = 0x40  # &_iob[2]: a FILE is 0x20 bytes
CAVE, CAVE_END = 0x10798400, 0x10799000  # zero padding at the end of .text's raw data

PE_HEADER_POINTER = 0x3C  # e_lfanew
OPTIONAL_HEADER_SIZE = 20  # offset of SizeOfOptionalHeader from the PE signature
PE_HEADERS = 24  # signature + COFF file header
SECTION_HEADER = 40
VIRTUAL_SIZE = 8  # offset of VirtualSize in a section header

# Size of what a hook pushes before its body runs (pushfd + pushad): add it to
# an [esp+N] offset of the patched code to read the same slot inside the hook.
HOOK_FRAME = 36

# Offsets of the registers saved by `pushad` on the hook's stack.
SAVED = dict(edi=0, esi=4, ebp=8, esp=12, ebx=16, edx=20, ecx=24, eax=28)


def saved(reg):
    return f"dword ptr [esp+{SAVED[reg]}]"


def frame(offset):
    """The hook-time address of the patched code's [esp+offset]."""
    return f"[esp+{HOOK_FRAME + offset}]"


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


def hook_source(hooks, strings):
    """hooks: [(address, original bytes as hex, displaced instructions, body)]."""
    source = PRELUDE
    for i, (at, orig, displaced, body) in enumerate(hooks):
        back = at + len(orig) // 2
        source += f"\nhook{i}:\n pushfd\n pushad\n{body}\n popad\n popfd\n {displaced}\n jmp_va {back:#x}\n"
    for name, text in strings.items():
        source += f'{name}: .asciz "{text}"\n'
    return source


def assemble(clang, hooks, strings):
    """Assemble the hooks for CAVE. Returns (code, [VA of each hook])."""
    with tempfile.TemporaryDirectory() as tmp:
        asm, obj = Path(tmp) / "hooks.s", Path(tmp) / "hooks.obj"
        asm.write_text(hook_source(hooks, strings))
        subprocess.run([clang, "--target=i386-pc-windows-msvc", "-c", str(asm), "-o", str(obj)], check=True)
        coff = Coff.read(obj)
    text = next(s for s in coff.sections if s.name == ".text")
    if text.relocations:
        raise RuntimeError("hook code needs relocations")
    labels = {s.name: CAVE + s.value for s in coff.symbols.values() if s.section == text.index}
    return coff.bytes(text.index, 0, text.size), [labels[f"hook{i}"] for i in range(len(hooks))]


def patch_c2(clang, original, patched, hooks, strings):
    """Write a logging copy of c2.dll 8966."""
    data = bytearray(Path(original).read_bytes())
    if hashlib.sha256(data).hexdigest() != C2_SHA256:
        raise RuntimeError(f"{original} is not c2.dll 8966. This tool supports only the MSVC 6.5 "
                           "back end used for BW1W120 and BW1W130; configure with `python configure.py --version BW1W120`.")
    text = PE(bytes(data)).section_at(CAVE)

    def offset(va):
        return text.raw_offset + va - text.address

    code, addresses = assemble(clang, hooks, strings)
    if CAVE + len(code) > CAVE_END:
        raise RuntimeError("hook code does not fit in the .text padding")
    assert not any(data[offset(CAVE):offset(CAVE_END)]), "code cave is not zero-filled"
    data[offset(CAVE):offset(CAVE) + len(code)] = code
    for (at, orig, *_), hook in zip(hooks, addresses):
        size = len(orig) // 2
        if data[offset(at):offset(at) + size] != bytes.fromhex(orig):
            raise RuntimeError(f"unexpected bytes at {at:#x}")
        jump = b"\xe9" + struct.pack("<i", hook - (at + 5))
        data[offset(at):offset(at) + size] = jump + b"\x90" * (size - len(jump))

    # Let .text's VirtualSize cover the cave (it stays within the raw size).
    pe_header, = struct.unpack_from("<I", data, PE_HEADER_POINTER)
    optional_size, = struct.unpack_from("<H", data, pe_header + OPTIONAL_HEADER_SIZE)
    header = pe_header + PE_HEADERS + optional_size + SECTION_HEADER * (text.index - 1)
    struct.pack_into("<I", data, header + VIRTUAL_SIZE, text.size)
    patched.unlink(missing_ok=True)
    patched.write_bytes(data)


def compile_logged(unit, work_dir, hooks, strings, extra_args=(), source_override=None):
    """Compile the unit with a logging copy of its compiler.

    Returns (log text, object path, work directory, patched c2 path). With
    source_override, that file is compiled in place of the unit's source,
    using the unit's own command line.
    """
    clang = Path(ROOT) / CLANG
    if not clang.exists():
        raise RuntimeError(f"{CLANG} is missing; run ninja once to download the LLVM toolchain")
    argv, source, _ = mp.compile_command(unit)
    index = next(i for i, a in enumerate(argv) if os.path.basename(a).lower() == "cl.exe")
    compiler = Path(ROOT) / argv[index]
    work = mp.make_workdir(work_dir)
    cc = work / "cc"
    cc.mkdir(exist_ok=True)
    for path in compiler.parent.iterdir():
        if path.is_file() and path.name != "c2.dll" and not (cc / path.name).exists():
            shutil.copy2(path, cc / path.name)
    patch_c2(clang, compiler.parent / "c2.dll", cc / "c2.dll", hooks, strings)

    compiled = source_override or source
    stem = Path(compiled).stem
    obj = f"{work_dir}/{stem}.obj"
    cmd = mp.retarget(argv, source, compiled, obj)
    cmd[index] = str(cc / "cl.exe")  # absolute: Windows resolves a relative program against our directory
    cmd += list(extra_args)
    proc = subprocess.run(cmd, cwd=ROOT, capture_output=True, text=True, errors="replace")
    log = (proc.stdout + proc.stderr).replace("\r", "")
    (work / f"{stem}.log").write_text(log)
    if proc.returncode:
        errors = [l for l in log.splitlines() if " error " in l or "fatal error" in l]
        raise RuntimeError("compile failed:\n" + "\n".join(errors or log.splitlines()[-5:]))
    return log, Path(ROOT) / obj, work, cc / "c2.dll"
