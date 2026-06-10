#!/usr/bin/env python3
"""Tests for tools/mac_symbols.py — run:  python tools/test_mac_symbols.py ["<Black & White.bin>"]

A. demangler unit tests — REAL mangled strings from the binary, expectations derived by
   hand (the Abode ctor cross-checks the original lift provenance comment).
B. synthetic PEF tests — handcrafted traceback tables covering every optional field
   (parminfo / hand_mask / ctl_info / alloca), exact addresses, and a false-positive trap.
C. real-binary integration — extract + validate must pass, known names must be present.
"""
import struct
import sys
import os

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from mac_symbols import demangle, extract, validate, BASE  # noqa: E402

FAILS = []


def check(label, got, want):
    if got != want:
        FAILS.append(f"{label}\n    got:  {got!r}\n    want: {want!r}")
        print(f"  FAIL {label}")
    else:
        print(f"  ok   {label}")


# ---------------- A. demangler ----------------
def test_demangler():
    print("A. demangler (real strings, hand-derived)")
    cases = [
        # ctor whose signature is independently known from the lift provenance comment:
        # "Abode::Abode(MapCoords const &, GAbodeInfo const *, Town *, float, float, float, int)"
        (".__ct__5AbodeFRC9MapCoordsPC10GAbodeInfoP4Townfffi",
         "Abode::Abode(const MapCoords&, const GAbodeInfo*, Town*, float, float, float, int)"),
        (".__ct__5AbodeFv", "Abode::Abode()"),
        (".__dt__19CreatureVisionStateFv", "CreatureVisionState::~CreatureVisionState()"),
        (".CalculatePosToLookAt__19CreatureVisionStateFUsUsP9MapCoords",
         "CreatureVisionState::CalculatePosToLookAt(unsigned short, unsigned short, MapCoords*)"),
        (".CanBeSetOnFire__11FixedObjectFP8Creature", "FixedObject::CanBeSetOnFire(Creature*)"),
        (".GetPercentFull__5FieldFv", "Field::GetPercentFull()"),
        # const member operators
        (".__pl__7LHPointCFRC7LHPoint", "LHPoint::operator+(const LHPoint&) const"),
        (".__eq__10LH_USER_IDCFRC10LH_USER_ID", "LH_USER_ID::operator==(const LH_USER_ID&) const"),
        # operator alternation must prefer the longest key (apl, not pl)
        ("__apl__7LHPointFRC7LHPoint", "LHPoint::operator+=(const LHPoint&)"),
        # nested namespace scope (Q2)
        (".AEOpenApp__Q213SamsUtilities9UGameworkFPC6AEDescP6AEDescl",
         "SamsUtilities::UGamework::AEOpenApp(const AEDesc*, AEDesc*, long)"),
        # template class scope: length-prefixed verbatim; RCP = ref to const pointer
        (".AddAt__27GJVector<P14DisplayGesture>FlRCP14DisplayGesture",
         "GJVector<P14DisplayGesture>::AddAt(long, DisplayGesture* const&)"),
        ("__dt__27GJVector<P14DisplayGesture>Fv",
         "GJVector<P14DisplayGesture>::~GJVector()"),
        # modifier order: PC = pointer to const; CP = const pointer
        ("Take__5ThingFPC5Thing", "Thing::Take(const Thing*)"),
        ("Take__5ThingFCP5Thing", "Thing::Take(Thing* const)"),
        # arrays and basic-type soup
        ("Fill__5ThingFA8_iUl", "Thing::Fill(int[8], unsigned long)"),
        # global function with params
        ("DoStuff__FPCcl", "DoStuff(const char*, long)"),
        # plain C / unknown shapes -> None (caller falls back to mangled)
        ("main", None),
        (".ProcessEvents", None),
        ("__sinit_Abode_cpp", None),
    ]
    for mangled, want in cases:
        check(f"demangle {mangled[:50]}", demangle(mangled), want)


# ---------------- B. synthetic PEF ----------------
CONT = 0x80


def _table(fs, T, name, fixed=0, floatp=0, int_hndl=False, ctl=None, alloca=False):
    b2 = 0x20 | (0x08 if ctl is not None else 0)            # has_tboff | has_ctl
    b3 = 0x40 | (0x80 if int_hndl else 0) | (0x20 if alloca else 0)  # name | hndl | alloca
    t = bytes([0, 0, b2, b3, 0, 0, fixed, (floatp << 1)])
    if fixed + floatp > 0:
        t += struct.pack(">I", 0)                           # parminfo
    t += struct.pack(">I", T - fs)                          # tb_offset
    if int_hndl:
        t += struct.pack(">I", 0)                           # hand_mask
    if ctl is not None:
        t += struct.pack(">I", len(ctl)) + b''.join(struct.pack(">I", c) for c in ctl)
    t += struct.pack(">H", len(name)) + name.encode()
    if alloca:
        t += b'\x1f'
    while len(t) % 4:
        t += b'\x00'
    return t


def build_pef(funcs):
    """funcs: list of (name, n_code_words, table_kwargs). Returns (data, expected
    {addr: name})."""
    body = b''
    expected = {}
    for name, words, kw in funcs:
        fs = CONT + len(body)
        code = b'\x60\x00\x00\x00' * (words - 1) + b'\x4e\x80\x00\x20'
        T = fs + len(code)
        body += code + _table(fs, T, name, **kw)
        expected[BASE + (fs - CONT)] = name
    # false-positive trap: printable string with a plausible u16 length prefix
    # but no traceback table anywhere before it.
    trap = b'fake__9NotATableFv'
    body += b'\x00' * 6 + struct.pack(">H", len(trap)) + trap + b'\x00' * 6
    hdr = b'Joy!' + b'peff' + b'pwpc' + struct.pack(">IIIII", 1, 0, 0, 0, 1)
    hdr += struct.pack(">HH", 1, 1) + struct.pack(">I", 0)  # secCount, instCount, reservedA
    sec = struct.pack(">iIIIII", -1, 0, len(body), len(body), len(body), CONT)
    sec += bytes([0, 0, 4, 0])                              # kind=0 (code)
    data = hdr + sec
    data += b'\x00' * (CONT - len(data)) + body
    return data, expected


def test_synthetic():
    print("B. synthetic PEF traceback tables")
    data, expected = build_pef([
        ("simple__4TestFv",            4, {}),
        ("withparms__4TestFiil",       6, {"fixed": 2, "floatp": 1}),
        ("withhndl__4TestFv",          3, {"int_hndl": True}),
        ("withctl__4TestFv",           5, {"ctl": [0x1234, 0x5678]}),
        ("withalloca__4TestFv",        3, {"alloca": True}),
        ("kitchen__4TestFiifd",        8, {"fixed": 3, "floatp": 2, "int_hndl": True,
                                           "ctl": [1], "alloca": True}),
    ])
    cont, tot, funcs, rejected = extract(data)
    got = {BASE + (fs - cont): v[2] for fs, v in funcs.items()}
    check("synthetic: all six variants extracted at exact addresses", got, expected)
    check("synthetic: false-positive trap rejected",
          any('NotATable' in v[2] for v in funcs.values()), False)
    ok, report = validate(data, cont, tot, funcs, rejected)
    check("synthetic: validation passes", ok, True)


# ---------------- C. real binary ----------------
def test_real(path):
    print("C. real binary integration")
    data = open(path, "rb").read()
    cont, tot, funcs, rejected = extract(data)
    names = {v[2] for v in funcs.values()}
    check("real: function count >= 7000", len(funcs) >= 7000, True)
    for must in (".__dt__19CreatureVisionStateFv",
                 ".__ct__5AbodeFRC9MapCoordsPC10GAbodeInfoP4Townfffi",
                 ".CalculatePosToLookAt__19CreatureVisionStateFUsUsP9MapCoords",
                 ".__dt__11SetupButtonFv"):
        check(f"real: contains {must[:46]}", must in names, True)
    ok, report = validate(data, cont, tot, funcs, rejected)
    for line in report:
        print("    " + line)
    check("real: validation (completeness + tiling) passes", ok, True)


def main():
    test_demangler()
    test_synthetic()
    binpath = sys.argv[1] if len(sys.argv) > 1 else None
    if binpath and os.path.exists(binpath):
        test_real(binpath)
    else:
        print("C. real binary integration SKIPPED (no path given)")
    print()
    if FAILS:
        print(f"{len(FAILS)} FAILURE(S):")
        for f in FAILS:
            print("  - " + f)
        sys.exit(1)
    print("ALL TESTS PASSED")


if __name__ == "__main__":
    main()
