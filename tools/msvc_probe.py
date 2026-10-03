"""Shared helpers for compiler-probing tools (inline-budget.py, tiebreak-probe.py).

Probes reuse the exact compile command Ninja uses for a unit's object, so flags,
include paths and the compiler binary always match the real build. Object bytes
are compared per function with relocation fields masked, which is the same
standard as a strict objdiff match on code bytes.
"""

import hashlib
import os
import shlex
import shutil
import subprocess
from pathlib import Path

from decomp_binary import Coff
from decomp_common import ROOT, resolve_unit

REL32 = 0x14


def compile_command(unit):
    """Return (argv, source, obj) for the unit's base object, as Ninja would run it."""
    obj = unit["base_path"]
    out = subprocess.run(["ninja", "-t", "commands", obj], cwd=ROOT, capture_output=True, text=True, check=True)
    line = out.stdout.strip().splitlines()[-1]
    argv = shlex.split(line, posix=os.name != "nt")
    source = next(a for a in argv if a.endswith((".cpp", ".c")) and not a.startswith("/"))
    return argv, source, obj


def retarget(argv, source, new_source, new_obj, src_root=None):
    """Rewrite a compile command to build new_source into new_obj.

    With src_root, every include path under src/ is redirected to the copy at src_root/src.
    """
    result = []
    skip = False
    for i, arg in enumerate(argv):
        if skip:
            skip = False
            continue
        if arg == source:
            result.append(new_source)
        elif arg.startswith("/Fo"):
            result.append("/Fo" + new_obj)
        elif arg.startswith("/Fd"):
            result.append("/Fd" + new_obj + ".pdb")
        elif src_root and arg == "/I" and i + 1 < len(argv) and argv[i + 1].replace("\\", "/").startswith("src"):
            result += ["/I", os.path.join(src_root, argv[i + 1])]
            skip = True
        else:
            result.append(arg)
    return result


def run_compile(argv):
    proc = subprocess.run(argv, cwd=ROOT, capture_output=True, text=True)
    errors = [l for l in (proc.stdout + proc.stderr).splitlines() if " error " in l or "fatal error" in l]
    return proc.returncode == 0, errors


def functions(path):
    """Map function symbol name -> (bytes with relocation fields zeroed, [REL32 call target names])."""
    coff = Coff.read(path)
    syms = list(coff.symbols.values())
    result = {}
    for sym in syms:
        if sym.section <= 0 or not (sym.type & 0x20) or sym.name.startswith(("$", "gap_")):
            continue
        sec = coff.section(sym.section)
        if sec.bss:
            continue
        ends = [s.value for s in syms
                if s.section == sym.section and s.value > sym.value and (s.type & 0x20)
                and not s.name.startswith(("$", "gap_"))]
        end = min(ends) if ends else sec.size
        data = bytearray(coff.bytes(sym.section, sym.value, end - sym.value))
        calls = []
        for reloc in sec.relocations:
            if sym.value <= reloc.offset < end and reloc.width:
                for k in range(reloc.width):
                    if reloc.offset - sym.value + k < len(data):
                        data[reloc.offset - sym.value + k] = 0
                if reloc.type == REL32:
                    calls.append(coff.symbols[reloc.symbol_index].name)
        result[sym.name] = (bytes(data), calls)
    return result


def find(funcs, needle):
    hits = [name for name in funcs if needle in name]
    if len(hits) != 1:
        raise ValueError(f"{needle!r} matches {len(hits)} functions: {hits[:5]}")
    return hits[0]


def same_code(target, ours):
    """True when our function bytes equal the target's leading bytes.

    Target extents can run into padding or unnamed gap bytes, so only our length is compared.
    """
    ours = ours.rstrip(b"\x90\xcc")
    return bool(ours) and target[: len(ours)] == ours


def digest(data):
    return hashlib.sha1(data.rstrip(b"\x90\xcc")).hexdigest()[:8]


def make_workdir(path, copy_src=False):
    path = Path(ROOT) / path
    path.mkdir(parents=True, exist_ok=True)
    if copy_src and not (path / "src").exists():
        shutil.copytree(Path(ROOT) / "src", path / "src")
    return path


def unit_for(source=None, unit=None):
    return resolve_unit(unit=unit, source=source)
