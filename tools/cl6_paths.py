#!/usr/bin/env python3
"""Make the MSVC 6 compilers (the 6.4 and 6.5 builds) keep the original build's path names.

The game was compiled from C:\\dev\\MP\\Black\\ and similar directories, and the compiler kept those
paths: `__FILE__` expands to them, and the memory their strings take in the front end decides some
emission orders (the order of a unit's RTTI COMDATs among them, see docs/msvc6_pch.md). The download
step patches the compiler so the build can hand it the original paths while the files are read from
the checkout:

- The build passes each C++ source and include directory as its original path (configure.py's
  ORIGINAL_SOURCE_DIRECTORIES), and sets CL6_MAP to "checkout=original|...": pairs of a checkout
  directory and the original path it stands for, the most specific first.
- Wrappers on the file-access imports of c1xx.dll and mspdb60.dll (fopen, _sopen, CreateFileA,
  ...) apply CL6_MAP backwards, so the files are opened in the checkout.
- The call sites where the compiler turns a relative path into a full one (_fullpath, _getcwd and
  c1xx's canonical file-name helper) apply CL6_MAP forwards to the result, so a name derived from
  the working directory names the original directory instead. Two such sites produce a path that is
  then opened (the PDB) and are left alone.

The code lives in a new section, ".cl6", run before each module's entry point. It is
position-independent, and the base relocations of the replaced operands are retired or moved, so a
module stays correct wherever Windows loads it. With CL6_MAP unset the compiler behaves exactly as
before. c2.dll is not patched (its names do not reach the front end, and tools/c2_patch.py requires
the original file).

The assembled code is checked in (CODE below), so applying the patch needs no assembler:

    python tools/cl6_paths.py apply build/compilers/MSVC/6.5     # done by download_tool.py
    python tools/cl6_paths.py generate                           # rebuild CODE (needs clang)
    python tools/cl6_paths.py run CL6_MAP=... -- cl.exe ...      # run a compile without a shell
"""

import argparse
import hashlib
import json
import struct
import subprocess
import sys
import tempfile
from pathlib import Path
from typing import Dict, List, Tuple

SECTION = b".cl6"
MAP_VARIABLE = "CL6_MAP"
CODE_FILE = Path(__file__).with_name("cl6_paths_code.json")

# c1xx.dll identifies the compiler; cl.exe and mspdb60.dll are the same files in both.
C1XX_SHA256 = {
    "71718c2ba17a0e8c030ce4e29c7904661b513e3937dd701de79fc2af50a28a52": "6.4",
    "f014b3bee650224adf6cb44e51f0eeac5abbf5da666fa299d5250b2f3d1937c6": "6.5",
}

# Call sites whose result the compiler only keeps as a name: (address, kind). call_fp/call_gc are
# `call [_fullpath]`/`call [_getcwd]`, mov_edi_fp is `mov edi, [_fullpath]` (called through edi),
# call_helper a call to c1xx's canonical file-name helper (_fullpath, then lower case).
COMMON_SITES = {
    "cl.exe": [(0x4048F9, "call_gc"), (0x405768, "call_fp")],
    "mspdb60.dll": [(a, "call_fp") for a in (0x103070A9, 0x10307211, 0x1030747A, 0x103074FB, 0x103086B7, 0x1030F3D6, 0x1031BD68)],
}
COMPILERS = {
    "6.5": {
        "helper": 0x10429008,
        "sites": {
            **COMMON_SITES,
            "c1xx.dll": [(0x104A441E, "call_fp"), (0x104A47DA, "mov_edi_fp"), (0x10446A9B, "call_gc")]
            + [(a, "call_helper") for a in (0x10429580, 0x10444F23, 0x10454687, 0x1045FA2A, 0x10474AAC, 0x10489D6B, 0x104907F6, 0x1049B9DF)],
        },
    },
    "6.4": {
        "helper": 0x104251C7,
        "sites": {
            **COMMON_SITES,
            "c1xx.dll": [(0x104A43EE, "call_fp"), (0x104A47AA, "mov_edi_fp"), (0x104473F4, "call_gc")]
            + [(a, "call_helper") for a in (0x10425748, 0x1044587C, 0x10454667, 0x1045FA0A, 0x10474A8C, 0x10489D3B, 0x104907C6, 0x1049B9AF)],
        },
    },
}
# Not patched: the helper's own _fullpath (c1xx 6.5 0x10429139, 6.4 0x104252F8) and the helper call
# that names the PDB (6.5 0x10444EC1, 6.4 0x1044581A): the compiler opens those paths.

# File-access imports to wrap: (name, argument count, stdcall, mask of the arguments that are paths).
OPENERS = [
    ("fopen", 2, 0, 1), ("_fsopen", 3, 0, 1), ("_sopen", 4, 0, 1), ("freopen", 3, 0, 1),
    ("_access", 2, 0, 1), ("_stat", 2, 0, 1), ("_unlink", 1, 0, 1), ("remove", 1, 0, 1),
    ("rename", 2, 0, 3), ("_utime", 2, 0, 1), ("CreateFileA", 7, 1, 1), ("FindFirstFileA", 2, 1, 1),
    ("SearchPathA", 6, 1, 3),
]
WRAPPED_MODULES = ("c1xx.dll", "mspdb60.dll")
MODULES = ("cl.exe", "c1xx.dll", "mspdb60.dll")


def _pe(data: bytes):
    import pefile  # only needed when patching

    return pefile.PE(data=data)


def _layout(pe) -> Tuple[int, Dict[str, int], int]:
    """(.cl6 section RVA, import slot VAs by name, entry point VA) of an unpatched module."""
    base = pe.OPTIONAL_HEADER.ImageBase
    align = pe.OPTIONAL_HEADER.SectionAlignment
    last = max(pe.sections, key=lambda s: s.VirtualAddress)
    rva = (last.VirtualAddress + max(last.Misc_VirtualSize, last.SizeOfRawData) + align - 1) & ~(align - 1)
    imports = {i.name.decode(): i.address for e in pe.DIRECTORY_ENTRY_IMPORT for i in e.imports if i.name}
    return rva, imports, base + pe.OPTIONAL_HEADER.AddressOfEntryPoint


TO_CHECKOUT = """# to_checkout(path, buffer): path with the first original prefix of CL6_MAP replaced by its checkout
# directory (written to buffer), or path itself.
to_checkout:
  push ebp
  push ebx
  push esi
  push edi
  mov ebx, dword ptr [esp+20]
  mov ebp, dword ptr [esp+24]
  test ebx, ebx
  jz 8f
  call get_map
  test eax, eax
  jz 8f
  mov esi, eax
0:
  mov edx, esi
1:
  lodsb
  test al, al
  jz 8f
  cmp al, 0x3d
  jne 1b
  mov edi, ebx
2:
  lodsb
  test al, al
  jz 5f
  cmp al, 0x7c
  je 5f
  mov ah, byte ptr [edi]
  inc edi
  test ah, ah
  jz 3f
  or ax, 0x2020
  cmp al, ah
  je 2b
3:
  lodsb
  test al, al
  jz 8f
  cmp al, 0x7c
  jne 3b
  jmp 0b
5:
  push edi
  mov edi, ebp
  mov esi, edx
6:
  lodsb
  cmp al, 0x3d
  je 7f
  stosb
  jmp 6b
7:
  pop esi
71:
  lodsb
  stosb
  test al, al
  jnz 71b
  mov eax, ebp
  jmp 9f
8:
  mov eax, ebx
9:
  pop edi
  pop esi
  pop ebx
  pop ebp
  ret
"""


def _source(sec_va: int, imports: Dict[str, int], kinds: set, helper: int, entry_va: int, wraps: List[tuple]) -> str:
    """Assembly of the .cl6 section (Intel syntax, assembled at sec_va)."""

    def disp(target, label):  # from the runtime address of `label` to `target`
        return f"{target:#x} - {sec_va:#x} - ({label} - __start)"

    parts = []
    if wraps:
        writes = "".join(
            f"""
  .byte 0x8d, 0x82
  .long {disp(imports[name], 'pc_init')}
  mov ecx, dword ptr [eax]
  .byte 0x8d, 0x9a
  .long th_{i} + 5 - pc_init
  mov dword ptr [ebx], ecx
  .byte 0x8d, 0x9a
  .long th_{i} - pc_init
  mov dword ptr [eax], ebx"""
            for i, (name, *_) in enumerate(wraps)
        )
        # DllMain(instance, reason, reserved): on DLL_PROCESS_ATTACH point the import slots at the
        # thunks, keeping the original function in each thunk's descriptor; then the real entry.
        parts.append(
            f"""
init:
  cmp dword ptr [esp+8], 1
  jne 1f
  pushad
  call pc_init
pc_init:
  pop edx{writes}
  popad
1:
  .byte 0xe9
  .long {entry_va:#x} - {sec_va:#x} - (. + 4 - __start)
"""
        )
        # A thunk calls `common` with its descriptor as the return address: the original function,
        # argument count, stdcall flag and path-argument mask.
        parts += [f"\nth_{i}:\n  call common\n  .long 0\n  .byte {n}, {std}, {mask}, 0\n" for i, (_, n, std, mask) in enumerate(wraps)]
        parts.append(
            """
common:
  push ebp
  mov ebp, esp
  push ebx
  push esi
  push edi
  mov ebx, dword ptr [ebp+4]
  sub esp, 1040
  mov esi, esp
  movzx ecx, byte ptr [ebx+4]
2:
  dec ecx
  js 3f
  mov eax, dword ptr [ebp+12+ecx*4]
  cmp ecx, 2
  jae 4f
  movzx edx, byte ptr [ebx+6]
  bt edx, ecx
  jnc 4f
  push ecx
  imul edx, ecx, 520
  lea edx, [esi+edx]
  push edx
  push eax
  call to_checkout
  add esp, 8
  pop ecx
4:
  push eax
  jmp 2b
3:
  call dword ptr [ebx]
  xor ecx, ecx
  test byte ptr [ebx+5], 1
  jz 5f
  movzx ecx, byte ptr [ebx+4]
  shl ecx, 2
5:
  lea esp, [ebp-12]
  pop edi
  pop esi
  pop ebx
  pop ebp
  pop edx
  pop edx
  add esp, ecx
  jmp edx

"""
        )
    if kinds & {"call_fp", "mov_edi_fp"}:
        parts.append(
            f"""
# _fullpath(buffer, path, size) of the checkout path an original path stands for, so a path
# the compiler was given comes back as itself; the result is then made original.
fp_hook:
  push ebp
  mov ebp, esp
  sub esp, 520
  mov eax, esp
  push eax
  push dword ptr [ebp+12]
  call to_checkout
  add esp, 8
  push dword ptr [ebp+16]
  push eax
  push dword ptr [ebp+8]
  call pc_fp
pc_fp:
  pop ecx
  .byte 0xff, 0x91
  .long {disp(imports['_fullpath'], 'pc_fp')}
  add esp, 12
  mov esp, ebp
  pop ebp
  jmp to_original
"""
        )
    if "call_gc" in kinds:
        parts.append(
            f"""
gc_hook:
  call pc_gc
pc_gc:
  pop eax
  push dword ptr [esp+8]
  push dword ptr [esp+8]
  .byte 0xff, 0x90
  .long {disp(imports['_getcwd'], 'pc_gc')}
  add esp, 8
  jmp to_original
"""
        )
    if "call_helper" in kinds:
        parts.append(
            f"""
h_hook:
  push dword ptr [esp+12]
  push dword ptr [esp+12]
  push dword ptr [esp+12]
  .byte 0xe8
  .long {helper:#x} - {sec_va:#x} - (. + 4 - __start)
  add esp, 12
  push eax
  mov eax, dword ptr [esp+8]
  call to_original
  pop eax
  ret
"""
        )
    if wraps or kinds & {"call_fp", "mov_edi_fp"}:
        parts.append("\n" + TO_CHECKOUT)
    parts.append(
        f"""
get_map:
  call pc_map
pc_map:
  pop edx
  .byte 0x8d, 0x82
  .long s_map - pc_map
  push eax
  .byte 0xff, 0x92
  .long {disp(imports['getenv'], 'pc_map')}
  pop ecx
  ret

# to_original: eax = a full path the compiler made (or 0); rewrite its first checkout prefix of
# CL6_MAP to the original path in place. Registers are preserved.
to_original:
  test eax, eax
  jz 9f
  pushad
  mov ebx, eax
  call get_map
  test eax, eax
  jz 8f
  mov esi, eax
0:
  mov edi, ebx
1:
  lodsb
  cmp al, 0x3d
  je 2f
  test al, al
  jz 8f
  mov ah, byte ptr [edi]
  inc edi
  test ah, ah
  jz 5f
  or ax, 0x2020
  cmp al, ah
  je 1b
5:
  lodsb
  test al, al
  jz 8f
  cmp al, 0x7c
  jne 5b
  jmp 0b
2:
  mov ebp, esi
  xor ecx, ecx
3:
  mov al, byte ptr [esi+ecx]
  test al, al
  jz 4f
  cmp al, 0x7c
  je 4f
  inc ecx
  jmp 3b
4:
  push ecx
  mov edx, edi
  xor eax, eax
  or ecx, -1
  repne scasb
  not ecx
  pop eax
  lea edi, [ebx+eax]
  mov esi, edx
  cmp edi, esi
  jbe 6f
  lea esi, [esi+ecx-1]
  lea edi, [edi+ecx-1]
  std
  rep movsb
  cld
  jmp 7f
6:
  rep movsb
7:
  mov ecx, eax
  mov esi, ebp
  mov edi, ebx
  rep movsb
8:
  popad
9:
  ret
s_map: .asciz "{MAP_VARIABLE}"
"""
    )
    return ".intel_syntax noprefix\n__start:\n" + "".join(parts)


def _assemble(source: str, clang: Path) -> Tuple[bytes, Dict[str, int]]:
    with tempfile.TemporaryDirectory() as tmp:
        Path(tmp, "s.s").write_text(source)
        subprocess.run([str(clang), "--target=i386-pc-windows-msvc", "-c", f"{tmp}/s.s", "-o", f"{tmp}/s.o"], check=True)
        obj = Path(tmp, "s.o").read_bytes()
    _, nsections, _, symtab, nsymbols, opt_size, _ = struct.unpack_from("<HHIIIHH", obj, 0)
    code = None
    for i in range(nsections):
        header = 20 + opt_size + 40 * i
        if obj[header : header + 5] == b".text":
            size, raw = struct.unpack_from("<II", obj, header + 16)
            if struct.unpack_from("<H", obj, header + 32)[0]:
                raise SystemExit("cl6 code needs relocations")
            code = obj[raw : raw + size]
    labels, strings, j = {}, symtab + 18 * nsymbols, 0
    while j < nsymbols:
        entry = symtab + 18 * j
        value, _, _, _, naux = struct.unpack_from("<IhHBB", obj, entry + 8)
        name = obj[entry : entry + 8]
        if name[:4] == b"\0\0\0\0":
            start = strings + struct.unpack_from("<I", name, 4)[0]
            name = obj[start : obj.index(b"\0", start)]
        labels[name.rstrip(b"\0").decode()] = value
        j += 1 + naux
    assert code is not None
    return code, {k: v for k, v in labels.items() if k in ("init", "fp_hook", "gc_hook", "h_hook")}


def generate(compilers: Path, clang: Path) -> None:
    """Assemble the .cl6 code of every module of every known compiler into CODE_FILE."""
    out = {}
    for version, table in COMPILERS.items():
        for module in MODULES:
            pe = _pe((compilers / version / module).read_bytes())
            rva, imports, entry = _layout(pe)
            base = pe.OPTIONAL_HEADER.ImageBase
            wraps = [w for w in OPENERS if w[0] in imports] if module in WRAPPED_MODULES else []
            kinds = {k for _, k in table["sites"][module]}
            code, labels = _assemble(_source(base + rva, imports, kinds, table["helper"], entry, wraps), clang)
            out[f"{version}/{module}"] = {"rva": rva, "code": code.hex(), "labels": labels}
    CODE_FILE.write_text(json.dumps(out, indent=1, sort_keys=True) + "\n")


def _edit_relocations(data: bytearray, pe, changes: Dict[int, object]) -> None:
    """changes: {rva: new rva or None}: retire (type 0) or move a HIGHLOW entry within its page."""
    directory = pe.OPTIONAL_HEADER.DATA_DIRECTORY[5]
    if not directory.Size:
        return
    pos = pe.get_offset_from_rva(directory.VirtualAddress)
    end, done = pos + directory.Size, set()
    while pos < end:
        page, size = struct.unpack_from("<II", data, pos)
        if not size:
            break
        for entry in range(pos + 8, pos + size, 2):
            (value,) = struct.unpack_from("<H", data, entry)
            rva = page + (value & 0xFFF)
            if value >> 12 == 3 and rva in changes:
                new = changes[rva]
                if new is not None and new & ~0xFFF != page:
                    raise SystemExit(f"cl6: relocation at {rva:#x} would leave its page")
                struct.pack_into("<H", data, entry, 0 if new is None else 0x3000 | (new & 0xFFF))
                done.add(rva)
        pos += size
    if done != set(changes):
        raise SystemExit("cl6: missing relocation entries")


def _patch_module(path: Path, version: str, code_table: dict) -> bool:
    data = bytearray(path.read_bytes())
    pe = _pe(bytes(data))
    if any(s.Name.rstrip(b"\0") == SECTION for s in pe.sections):
        return False  # already patched
    table = COMPILERS[version]
    entry = code_table[f"{version}/{path.name}"]
    code, labels = bytes.fromhex(entry["code"]), entry["labels"]
    rva, imports, _ = _layout(pe)
    if rva != entry["rva"]:
        raise SystemExit(f"{path}: unexpected layout")
    base = pe.OPTIONAL_HEADER.ImageBase
    sec_va = base + rva
    file_align = pe.OPTIONAL_HEADER.FileAlignment
    section_align = pe.OPTIONAL_HEADER.SectionAlignment
    offset = lambda va: pe.get_offset_from_rva(va - base)

    relocations: Dict[int, object] = {}
    for at, kind in table["sites"][path.name]:
        if kind == "call_fp":
            old = b"\xff\x15" + struct.pack("<I", imports["_fullpath"])
            new = b"\xe8" + struct.pack("<i", sec_va + labels["fp_hook"] - (at + 5)) + b"\x90"
            relocations[at + 2 - base] = None
        elif kind == "call_gc":
            old = b"\xff\x15" + struct.pack("<I", imports["_getcwd"])
            new = b"\xe8" + struct.pack("<i", sec_va + labels["gc_hook"] - (at + 5)) + b"\x90"
            relocations[at + 2 - base] = None
        elif kind == "call_helper":
            old = b"\xe8" + struct.pack("<i", table["helper"] - (at + 5))
            new = b"\xe8" + struct.pack("<i", sec_va + labels["h_hook"] - (at + 5))
        else:  # mov_edi_fp: `mov edi, imm32`, whose absolute operand is one byte earlier
            old = b"\x8b\x3d" + struct.pack("<I", imports["_fullpath"])
            new = b"\xbf" + struct.pack("<I", sec_va + labels["fp_hook"]) + b"\x90"
            relocations[at + 2 - base] = at + 1 - base
        if data[offset(at) : offset(at) + len(old)] != old:
            raise SystemExit(f"{path}: unexpected bytes at {at:#x}")
        data[offset(at) : offset(at) + len(old)] = new
    _edit_relocations(data, pe, relocations)

    # The new section's raw data goes after everything in the file (debug data included).
    raw_size = (len(code) + file_align - 1) & ~(file_align - 1)
    raw_offset = (len(data) + file_align - 1) & ~(file_align - 1)
    data += bytes(raw_offset - len(data)) + code + bytes(raw_size - len(code))
    header = pe.sections[-1].get_file_offset() + 40
    if header + 40 > pe.OPTIONAL_HEADER.SizeOfHeaders:
        raise SystemExit(f"{path}: no room for a section header")
    data[header : header + 40] = struct.pack("<8sIIIIIIHHI", SECTION, len(code), rva, raw_size, raw_offset, 0, 0, 0, 0, 0xE0000060)
    struct.pack_into("<H", data, pe.FILE_HEADER.get_file_offset() + 2, pe.FILE_HEADER.NumberOfSections + 1)
    optional = pe.OPTIONAL_HEADER.get_file_offset()
    struct.pack_into("<I", data, optional + 56, (rva + len(code) + section_align - 1) & ~(section_align - 1))
    if "init" in labels:
        struct.pack_into("<I", data, optional + 16, rva + labels["init"])  # entry point
        iat = pe.OPTIONAL_HEADER.DATA_DIRECTORY[12]
        for s in pe.sections:  # the initializer writes the import slots
            if s.VirtualAddress <= iat.VirtualAddress < s.VirtualAddress + s.Misc_VirtualSize:
                struct.pack_into("<I", data, s.get_file_offset() + 36, s.Characteristics | 0x80000000)
    if pe.OPTIONAL_HEADER.CheckSum:
        struct.pack_into("<I", data, optional + 64, _pe(bytes(data)).generate_checksum())
    path.write_bytes(data)
    return True


def apply(compiler_dir: Path) -> None:
    """Patch a downloaded MSVC 6 directory in place. Other compilers and patched copies are left alone."""
    c1xx = compiler_dir / "c1xx.dll"
    if not c1xx.exists():
        return
    version = C1XX_SHA256.get(hashlib.sha256(c1xx.read_bytes()).hexdigest())
    if version is None:
        return  # patched already, or a compiler this patch does not cover
    code_table = json.loads(CODE_FILE.read_text())
    for module in MODULES:
        _patch_module(compiler_dir / module, version, code_table)


# Helpers for tools that rerun compile commands (msvc_probe.py, decomp-verify.py). The build
# sets CL6_MAP in each cl command: `CL6_MAP='...' cmd` on POSIX, `cmd /c set "CL6_MAP=..." && cmd`
# on Windows. Tools run commands without a shell, through `cl6_paths.py run` instead.


def split_env(words: List[str]) -> Tuple[Dict[str, str], List[str]]:
    """The environment a parsed command line sets, and the command it runs."""
    env: Dict[str, str] = {}
    words = list(words)
    if len(words) > 4 and [w.lower() for w in words[:3]] == ["cmd", "/c", "set"] and words[4] == "&&":
        name, _, value = words[3].partition("=")
        return {name: value}, words[5:]
    while words and "=" in words[0] and words[0].split("=", 1)[0].isidentifier():
        name, _, value = words.pop(0).partition("=")
        env[name] = value
    return env, words


def launcher(env: Dict[str, str], words: List[str]) -> List[str]:
    """argv running words with env added, without a shell."""
    if not env:
        return list(words)
    return [sys.executable, str(Path(__file__)), "run", *(f"{k}={v}" for k, v in env.items()), "--", *words]


def launcher_map(argv: List[str]) -> "str | None":
    """The CL6_MAP a launcher argv sets, or None."""
    if len(argv) > 2 and argv[1] == str(Path(__file__)) and argv[2] == "run":
        for word in argv[3 : argv.index("--")]:
            if word.startswith(MAP_VARIABLE + "="):
                return word[len(MAP_VARIABLE) + 1 :]
    return None


def with_pairs(argv: List[str], pairs: List[Tuple[str, str]]) -> List[str]:
    """A launcher argv with (checkout, original) pairs put ahead of its CL6_MAP."""
    result = list(argv)
    for i, word in enumerate(result[: result.index("--")]):
        if word.startswith(MAP_VARIABLE + "="):
            front = "|".join(f"{c}={o}" for c, o in pairs)
            result[i] = f"{MAP_VARIABLE}={front}|{word[len(MAP_VARIABLE) + 1:]}" if front else word
    return result


def windows_path(path) -> str:
    """A host path as the compiler sees it: native on Windows, the Z: drive under wibo or wine."""
    import os

    full = os.path.abspath(path)
    return full if os.name == "nt" else "Z:" + full.replace("/", "\\")


def host_path(path: str) -> str:
    """The host path of a compiler-side path from windows_path()."""
    import os

    if os.name == "nt":
        return path
    return path[2:].replace("\\", "/") if path[:2].lower() == "z:" else path


def _pairs(cl6_map: str) -> List[Tuple[str, str]]:
    return [tuple(p.split("=", 1)) for p in cl6_map.split("|") if "=" in p]


def _prefixed(path: str, prefix: str) -> bool:
    return path.lower().startswith(prefix.lower()) and (len(path) == len(prefix) or path[len(prefix)] in "\\/")


def to_original(cl6_map: str, path: str) -> "str | None":
    """The original path of a compiler-side checkout path, as the compiler keeps it."""
    for checkout, original in _pairs(cl6_map):
        if _prefixed(path, checkout):
            return original + path[len(checkout):]
    return None


def to_checkout(cl6_map: str, path: str) -> "str | None":
    """The compiler-side checkout path the compiler opens for an original path."""
    for checkout, original in _pairs(cl6_map):
        if _prefixed(path, original):
            return checkout + path[len(original):]
    return None


def run(argv: List[str]) -> int:
    """`run NAME=VALUE... -- command...`: run command with the variables set."""
    import os

    split = argv.index("--")
    env = dict(os.environ, **dict(w.split("=", 1) for w in argv[:split]))
    return subprocess.run(argv[split + 1 :], env=env).returncode


def main() -> None:
    if len(sys.argv) > 1 and sys.argv[1] == "run":
        sys.exit(run(sys.argv[2:]))
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    sub = parser.add_subparsers(dest="command", required=True)
    a = sub.add_parser("apply", help="patch a compiler directory in place")
    a.add_argument("compiler_dir", type=Path)
    g = sub.add_parser("generate", help=f"assemble {CODE_FILE.name} from unpatched compilers")
    g.add_argument("--compilers", type=Path, default=Path("build/compilers/MSVC"), help="directory holding 6.4/ and 6.5/ unpatched")
    g.add_argument("--clang", type=Path, default=Path("build/tools/llvm/bin/clang"))
    args = parser.parse_args()
    if args.command == "apply":
        apply(args.compiler_dir)
    else:
        generate(args.compilers, args.clang)


if __name__ == "__main__":
    main()
