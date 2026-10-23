"""Shared helpers for compiler-probing tools (inline-budget.py, tiebreak-probe.py).

Probes reuse the exact compile command Ninja uses for a unit's object, so flags,
include paths and the compiler binary always match the real build. Object bytes
are compared per function with relocation fields masked, which is the same
standard as a strict objdiff match on code bytes.
"""

import hashlib
import os
import re
import shlex
import shutil
import subprocess
import threading
from pathlib import Path

from decomp_binary import Coff
from decomp_common import ROOT, resolve_unit

REL32 = 0x14


def ninja_command(target):
    """The command Ninja runs to build target, as argv."""
    out = subprocess.run(["ninja", "-t", "commands", "-s", target], cwd=ROOT, capture_output=True, text=True, check=True)
    return shlex.split(out.stdout.strip().splitlines()[-1], posix=os.name != "nt")


def compile_command(unit):
    """Return (argv, source, obj) for the unit's base object, as Ninja would run it."""
    obj = unit["base_path"]
    argv = ninja_command(obj)
    source = next(a for a in argv if a.endswith((".cpp", ".c")) and not a.startswith("/"))
    return argv, source, obj


def _redirect_includes(argv, src_root):
    """Redirect every include path under src/ to the copy at src_root/src."""
    result = []
    skip = False
    for i, arg in enumerate(argv):
        if skip:
            skip = False
        elif src_root and arg == "/I" and i + 1 < len(argv) and argv[i + 1].replace("\\", "/").startswith("src"):
            result += ["/I", os.path.join(src_root, argv[i + 1])]
            skip = True
        else:
            result.append(arg)
    return result


LINE = re.compile(rb'^#line \d+ "(.*)"\s*$', re.M)
# Options a preprocessor (/E) run of a compile leaves out: its outputs and debug information.
OUTPUT_OPTIONS = ("/Yc", "/Yu", "/Fp", "/Fo", "/Fd", "/Z7", "/Zi", "/ZI", "/Zd")
OUTPUT_OPTIONS += tuple("-" + option[1:] for option in OUTPUT_OPTIONS)


def files_read(argv, cwd=ROOT):
    """Every file a compile reads, from a preprocessor (/E) run of it: cl 6 cannot list them."""
    words = [w for w in argv if w not in ("/c", "-c") and not w.startswith(OUTPUT_OPTIONS)]
    out = subprocess.run(words + ["/E"], cwd=cwd, capture_output=True)
    if out.returncode:
        raise RuntimeError("preprocessor run failed: " + " ".join(words[:3]))
    names = (m.decode("latin-1").replace("\\\\", "\\").replace("\\", "/") for m in LINE.findall(out.stdout))
    return list(dict.fromkeys(names))


_private_pchs = {}
_private_pch_locks = {}
_lock = threading.Lock()


def private_pch(pch, out_dir, src_root=None):
    """Compile Ninja's precompiled header pch into out_dir, from the sources at src_root (the
    tree itself by default), and return (pch, pdb or None) there.

    Ninja does not rebuild a precompiled header when a header it reads changes, so tools that
    recompile units use their own copy. It is compiled again only when its command or a file
    it read last time differs.
    """
    command = _redirect_includes(ninja_command(pch), src_root)
    private = os.path.join(out_dir, os.path.basename(pch))
    pdb = None
    for i, arg in enumerate(command):
        if arg.startswith("/Fp"):
            command[i] = "/Fp" + private
        elif arg.startswith("/Fo"):
            command[i] = "/Fo" + private + ".o"
        elif arg.startswith("/Fd"):
            pdb = os.path.join(out_dir, os.path.basename(arg[3:]))
            command[i] = "/Fd" + pdb
        elif src_root and arg.startswith("src/") and arg.endswith((".cpp", ".c")):
            command[i] = os.path.join(src_root, arg)

    def digest(files):
        result = hashlib.sha1(repr(command).encode())
        for name in files:
            path = Path(ROOT) / name
            result.update(name.encode() + (path.read_bytes() if path.is_file() else b"-"))
        return result.hexdigest()

    key = (pch, out_dir)
    with _lock:
        lock = _private_pch_locks.setdefault(key, threading.Lock())
    with lock:
        known = _private_pchs.get(key)
        if known and (Path(ROOT) / private).is_file() and digest(known[1]) == known[0]:
            return private, pdb
        os.makedirs(Path(ROOT) / out_dir, exist_ok=True)
        if pdb:
            Path(ROOT, pdb).unlink(missing_ok=True)
        ok, errors = run_compile(command)
        if not ok:
            raise RuntimeError(f"precompiled header {pch} failed in {out_dir}: " + "; ".join(errors[:2]))
        files = files_read(command)
        _private_pchs[key] = (digest(files), files)
    return private, pdb


def retarget(argv, source, new_source, new_obj, src_root=None):
    """Rewrite a compile command to build new_source into new_obj.

    With src_root, every include path under src/ is redirected to the copy at src_root/src.
    A /Yu command reads its own copy of the precompiled header, compiled from those sources,
    and keeps its PDB name with a copy of the PDB that built the header (cl requires both
    with /Zi).
    """
    uses_pch = any(arg.startswith("/Yu") for arg in argv)
    uses_pch_pdb = uses_pch and "/Zi" in argv
    pch = next((arg[3:] for arg in argv if arg.startswith("/Fp")), None)
    pch_pdb = None
    if uses_pch:
        if src_root:
            out_dir = os.path.join(src_root, "pch")
        else:
            out_dir = os.path.join("build", "probe-pch", os.path.relpath(os.path.dirname(pch), "build"))
        pch, pch_pdb = private_pch(pch, out_dir, src_root)
    result = []
    for arg in _redirect_includes(argv, src_root):
        if arg == source:
            result.append(new_source)
        elif arg.startswith("/Fo"):
            result.append("/Fo" + new_obj)
        elif arg.startswith("/Fd") and uses_pch_pdb:
            pdb = os.path.join(os.path.splitext(new_obj)[0], os.path.basename(arg[3:]))
            os.makedirs(Path(ROOT) / os.path.dirname(pdb), exist_ok=True)
            shutil.copyfile(Path(ROOT) / pch_pdb, Path(ROOT) / pdb)
            result.append("/Fd" + pdb)
        elif arg.startswith("/Fd"):
            result.append("/Fd" + new_obj + ".pdb")
        elif arg.startswith("/Fp") and uses_pch:
            result.append("/Fp" + pch)
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
