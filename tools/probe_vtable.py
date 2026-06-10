#!/usr/bin/env python3
r"""probe_vtable.py - compile a probe TU with EXACT Black cflags + /FAcs and
extract each virtual call's emitted vtable byte offset, the COMPILER's ground
truth for vtable layout. Used to verify the Object->...->Living vtable-drift fix.

Each probe fn does a single vcall; in the /FAcs listing that compiles to
`mov eax, DWORD PTR [reg]` (load vptr) then `call DWORD PTR [eax+0xNN]` (or
`jmp`). We report the `+0xNN` per probe fn so it can be checked against the
authoritative struct /* 0xNN */ comment.

Usage:
  python tools/probe_vtable.py            # run the built-in probe set
  python tools/probe_vtable.py --self-test
"""
import os, re, sys, subprocess

DTK = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
VERSION = os.environ.get("BW1_VERSION", "BW1E142")
CL = os.path.join(DTK, "build", "compilers", "MSVC", "6.5", "cl.exe")
CFLAGS = ["/nologo", "/W3", "/O2", "/Og", "/Ob1", "/Zd", "/MT", "/GR", "/TP",
          "/I", "include", "/I", "include/black", "/I", "build/%s/include" % VERSION,
          "/I", "build/compilers/MSVC/6.5/include",
          "/DBUILD_VERSION=2", "/DVERSION_%s" % VERSION, "/DNDEBUG=1"]

# probe fn name -> (declared return-ish, body). One vcall per fn.
PROBES = """\
#include "black/Living.h"
#include "black/Object.h"

extern "C" int p_IsChild(Living* v){ return v->IsChild(); }
extern "C" int p_IsDead(Living* v){ return v->IsDead(); }
extern "C" int p_IsSpellSeed(Object* v){ return v->IsSpellSeedReturnPoint(); }
extern "C" int p_GetFoodType(Object* v){ return (int)v->GetFoodType(); }
extern "C" float p_GetImpressive0(Object* v){ return v->GetImpressiveValue(); }
extern "C" int p_StartOnFire(Object* v){ v->StartOnFire(); return 0; }
extern "C" int p_GetTribalPower(Object* v){ return (int)v->GetTribalPower((TRIBE_TYPE)0); }
"""


def compile_listing(text, name="_probe"):
    src = os.path.join(DTK, "src", "Black", name + ".cpp")
    asm = os.path.join(DTK, "build", name + ".asm")
    obj = os.path.join(DTK, "build", name + ".o")
    open(src, "w", encoding="latin-1").write(text)
    try:
        r = subprocess.run(
            [CL] + CFLAGS + ["/FAcs", "/Fa" + ("build/%s.asm" % name),
                             "/c", "src/Black/%s.cpp" % name, "/Fobuild/%s.o" % name],
            cwd=DTK, capture_output=True, text=True)
        out = (r.stdout or "") + (r.stderr or "")
        listing = open(asm, encoding="latin-1").read() if os.path.exists(asm) else None
        return (listing is not None), out, listing
    finally:
        for f in (src, asm, obj):
            if os.path.exists(f):
                os.remove(f)


def parse_offsets(listing):
    """For each `_p_xxx PROC ... ENDP` block, find the vtable call offset:
    a `call DWORD PTR [reg+NN]` or `jmp DWORD PTR [reg+NN]` (the only indirect
    control-transfer in a one-vcall probe). Returns {fnname: offset_int}."""
    res = {}
    # Split into PROC blocks. MSVC names: _p_IsChild or p_IsChild (extern C).
    for m in re.finditer(r'(?:^|\n)(_?p_\w+)\s+PROC\b(.*?)\bENDP', listing, re.S):
        fn = m.group(1).lstrip('_')
        body = m.group(2)
        # call/jmp DWORD PTR [eax+1704] or [eax+0AF8h] etc.
        cm = re.search(r'(?:call|jmp)\s+DWORD PTR \[\w+(?:\+(\w+))?\]', body)
        if not cm:
            continue
        off = cm.group(1)
        if off is None:
            val = 0
        else:
            off = off.rstrip('hH')
            # MSVC hex literals end in h; a leading-digit hex; decimal otherwise.
            if re.search(r'[a-fA-F]', off) or off.endswith(('h', 'H')):
                val = int(off, 16)
            else:
                # could be decimal; MSVC emits decimal for offsets w/o hex digits
                val = int(off, 10)
        res[fn] = val
    return res


# authoritative struct offsets these probes MUST hit (from black/*.h /* 0xNN */).
# NOTE: GetFoodType is NON-virtual by design (binary symbol ?GetFoodType@Object@@QAE...,
# byte-exact; vtable slot 0x668 is held by the GetFoodType_vslot placeholder). A direct
# call compiles to NO vtable offset, so its expected probe result is None (intentional).
EXPECT = {
    "p_IsChild": 0xaf8,
    "p_IsDead": 0xaf4,
    "p_IsSpellSeed": 0x670,
    "p_GetFoodType": None,          # intentionally non-virtual -> direct call, no [reg+off]
    "p_GetImpressive0": 0x66c,
    "p_StartOnFire": 0x6bc,
    "p_GetTribalPower": 0x6c8,
}


def run():
    ok, out, listing = compile_listing(PROBES)
    if not listing:
        print("COMPILE FAILED:")
        for l in out.splitlines():
            if l.strip() and "Optimizing Compiler" not in l and "Copyright" not in l:
                print(" ", l)
        return None
    offs = parse_offsets(listing)
    return offs


def main():
    self_test = "--self-test" in sys.argv
    offs = run()
    if offs is None:
        sys.exit(2)
    allok = True
    for fn in EXPECT:
        got = offs.get(fn)          # None if no vtable [reg+off] (direct/non-virtual)
        want = EXPECT[fn]           # None = expected non-virtual (direct call)
        status = "PASS" if got == want else "FAIL"
        if got != want:
            allok = False
        gs = ("0x%x" % got) if got is not None else "<none>"
        ws = ("0x%x" % want) if want is not None else "<non-virtual>"
        print("  %-4s %-20s compiled %-13s ... want %s" % (status, fn, gs, ws))
    print("PROBE:", "ALL PASS" if allok else "DRIFT PRESENT")
    if self_test:
        sys.exit(0 if allok else 1)


if __name__ == "__main__":
    main()
