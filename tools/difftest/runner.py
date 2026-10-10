"""Run a case's trials against both versions, and build or patch the negative controls."""

import math
import os
import random
import time
from dataclasses import dataclass
from pathlib import Path

import capstone

import compare as cmp
import msvc_probe
from decomp_common import ROOT, resolve_unit
from decomp_binary import Unresolved
from emu import Emu, Linker, find_symbol, run_initializers
from inputs import PROFILE_WEIGHTS, PROFILES, FloatSource
from layout import HEAP, HEAP_CLEAR, STATE, STATE_CLEAR

# Half the trials use each x87 precision: 53-bit (MSVC CRT default) and 24-bit (what the game
# sets in LHResetFPU).
FPCWS = (0x27F, 0x07F)
# Re-run fills that decide whether the original's result depends on uninitialised stack.
# Uninitialised locals are often indices or counts, so small values expose dependence
# that large ones hide (an out-of-range index can be clamped the same way every time).
RERUN_FILLS = (0x11111111, 0xFFFFFFF0, 0, 2, 5)
MAX_SHOWN = 8  # differences listed in a failure report


@dataclass(frozen=True)
class Hook:
    """Replace an original function, in both versions, with a Python handler(emu).

    function is looked up in symbols.txt (see emu.find_symbol); operators, which have no
    "Class::Method" spelling, are given mangled."""
    function: str
    handler: object
    pop: int = 0  # bytes the callee pops (0 for __cdecl)
    nargs: int = None  # stack argument dwords to record; defaults to pop // 4
    regs: tuple = ()  # register arguments to record ("ecx", "edx")
    returns_float: bool = False


@dataclass(frozen=True)
class Case:
    """One function under test.

    name is "Class::Method", looked up in our object and in symbols.txt (see
    emu.find_symbol); an overloaded method also needs its full mangled name.
    gen(emu, rng, floats) writes a random state and returns (call, inputs): call is
    {"ecx": this or 0, "args": [dwords]} and inputs a JSON-able description for reports.
    """
    name: str
    unit: str  # objdiff unit name or unique basename
    returns: str  # "int" (EAX), "float" (ST0) or "void"
    gen: object
    pop: int = 0  # bytes the callee pops (0 for __cdecl)
    nargs: int = None  # stack argument dwords; defaults to pop // 4
    hooks: tuple = ()
    mangled: str = None  # for overloads, which "Class::Method" can't tell apart


@dataclass(frozen=True)
class Control:
    """A planted bug (or an equivalent change) and whether the harness must report it.

    edit is (path, old, new) for a source mutant, compiled with the unit's real command;
    patch is (offset, old byte, new byte) inside our loaded copy of the function.
    """
    label: str
    case: str
    expect_fail: bool
    edit: tuple = None
    patch: tuple = None


def object_path(unit):
    return ROOT / resolve_unit(unit=unit)["base_path"]


def nargs_of(x):
    return x.pop // 4 if x.nargs is None else x.nargs


def setup(case, obj, initializers=None, patch=None, own_callees=False):
    """Load both versions; initializers is the original .CRT$XCU range [start, end) to run."""
    emu = Emu()
    # The CRT isn't initialised, so initializers can't register destructors; nothing runs them.
    emu.add_hook(emu.orig("_atexit"), lambda emu: 0, 0, 1, name="_atexit")
    if initializers:
        run_initializers(emu, *initializers)
    linker = Linker(emu, obj, own_callees=own_callees)
    linker.run_static_initializers()
    mangled = find_symbol(linker.defined_names(), case.mangled or case.name)
    ours = linker.load_function(mangled)
    if patch:
        offset, old, new = patch
        current = emu.uc.mem_read(ours + offset, 1)[0]
        if current != old:
            raise ValueError(f"{case.name}+{offset:#x}: expected byte {old:#x}, found {current:#x}")
        emu.uc.mem_write(ours + offset, bytes([new]))
    orig = emu.orig(mangled)
    our_size = linker.coff.section(linker.symbol(mangled).section).size
    emu.coverage = {"orig": (orig, emu.add_coverage(orig, emu.sizes[orig]), emu.sizes[orig]),
                    "ours": (ours, emu.add_coverage(ours, our_size), our_size)}
    for hook in case.hooks:
        hooked = find_symbol(emu.syms, hook.function)
        emu.add_hook(emu.orig(hooked), hook.handler, hook.pop, nargs_of(hook), hook.regs,
                     hook.returns_float, name=hooked)
    return emu


def run_case(case, trials, seed=1234, obj=None, initializers=None, patch=None, own_callees=False):
    """Run trials; return a result dict with per-class counts and the first failure of each."""
    try:
        emu = setup(case, obj or object_path(case.unit), initializers, patch, own_callees)
    except Unresolved as exc:
        return {"name": case.name, "skipped": f"unresolved symbol: {exc}"}
    nargs = nargs_of(case)
    result = {"name": case.name, "trials": trials, "pass": 0, "both_stopped_identically": 0,
              "max_ulp": 0, "first": {}, **{c: 0 for c in cmp.CLASSES}}
    started = time.time()
    for trial in range(trials):
        rng = random.Random(seed * 1_000_003 + trial)
        profile = rng.choices(PROFILES, weights=PROFILE_WEIGHTS)[0]
        fpcw = FPCWS[trial % 2]
        emu.uc.mem_write(STATE, b"\0" * STATE_CLEAR)
        emu.uc.mem_write(HEAP, b"\0" * HEAP_CLEAR)
        emu.trial_ctx = {}
        call, inputs = case.gen(emu, rng, FloatSource(rng, profile))
        fill = rng.choice([0, rng.randint(0, 90), rng.getrandbits(32)])

        def run(side, stack_fill):
            address, _, size = emu.coverage[side]
            out = emu.call(address, ecx=call["ecx"], args=call["args"], returns=case.returns,
                           fpcw=fpcw, stack_fill=stack_fill, size=size)
            emu.restore(out)
            return out

        a, b = run("orig", fill), run("ours", fill)
        differences = cmp.compare(case.returns, a, b, nargs)
        if not differences:
            result["pass"] += 1
            result["both_stopped_identically"] += bool(a["error"])
            emu.end_trial()
            continue
        # Where does the original's own outcome change with the stack contents? Differences
        # there come from reading uninitialised memory, a bug the original has too.
        unstable = {d.key for f in RERUN_FILLS
                    for d in cmp.compare(case.returns, a, run("orig", f), nargs)}
        kind, ulp = cmp.classify(differences, unstable)
        result[kind] += 1
        result["max_ulp"] = max(result["max_ulp"], ulp or 0)
        if kind not in result["first"]:
            shown = [d.text for d in differences[:MAX_SHOWN]]
            if len(differences) > MAX_SHOWN:
                shown.append(f"... {len(differences)} differences in all")
            result["first"][kind] = {
                "trial": trial, "seed": seed, "profile": profile, "fpcw": f"{fpcw:#x}",
                "stack_fill": f"{fill:#x}", "inputs": jsonable(inputs),
                "args": [f"{x & 0xFFFFFFFF:#x}" for x in call["args"]], "differences": shown,
                "orig": summarize(a, case.returns), "ours": summarize(b, case.returns),
                "uninitialised_stack_reads": {"orig": sites(a), "ours": sites(b)}}
        emu.end_trial()
    result["gating_failures"] = sum(result[c] for c in cmp.GATING)
    result["coverage"] = {side: coverage(emu, *emu.coverage[side]) for side in ("orig", "ours")}
    result["seconds"] = round(time.time() - started, 1)
    return result


def coverage(emu, start, seen, size):
    disassembler = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_32)
    code = bytes(emu.uc.mem_read(start, size))
    instructions = [i.address for i in disassembler.disasm(code, start)]
    while instructions and code[instructions[-1] - start] in (0x90, 0xCC):  # padding
        instructions.pop()
    missed = [f"+{a - start:#x}" for a in instructions if a not in seen]
    return {"covered": len(instructions) - len(missed), "total": len(instructions), "missed": missed}


def sites(outcome):
    return [(f"{eip:#x}", offset - (1 << 32) if offset >= 1 << 31 else offset)
            for eip, offset, _ in outcome["uninit_stack_read_sites"]]


def summarize(outcome, returns):
    out = {"error": outcome["error"], "fault": outcome["fault"]}
    if returns == "int":
        out["eax"] = f"{outcome['eax']:#x}"
    if returns == "float":
        out["st0"] = repr(cmp.x87_to_float(outcome["st0"]))
    return out


def jsonable(x):
    if isinstance(x, float):
        return x if math.isfinite(x) else repr(x)
    if isinstance(x, dict):
        return {k: jsonable(v) for k, v in x.items()}
    if isinstance(x, (list, tuple)):
        return [jsonable(v) for v in x]
    return x


def compile_mutant(unit, edit, workdir):
    """Compile the unit with one source edit, using Ninja's exact command; return the object."""
    path, old, new = edit
    entry = resolve_unit(unit=unit)
    argv, source, _ = msvc_probe.compile_command(entry)
    work = msvc_probe.make_workdir(workdir, copy_src=True)
    target = work / path
    text = (ROOT / path).read_text(encoding="latin-1")
    if text.count(old) != 1:
        raise ValueError(f"control edit anchor occurs {text.count(old)} times in {path}")
    target.write_text(text.replace(old, new), encoding="latin-1")
    try:
        rel = os.path.relpath(work, ROOT)
        obj = f"{rel}/{Path(source).stem}.mutant.obj"
        ok, errors = msvc_probe.run_compile(
            msvc_probe.retarget(argv, source, f"{rel}/{source}", obj, src_root=rel))
    finally:
        target.write_text(text, encoding="latin-1")
    if not ok:
        raise RuntimeError(f"mutant compile failed: {'; '.join(errors[:2])}")
    return ROOT / obj
