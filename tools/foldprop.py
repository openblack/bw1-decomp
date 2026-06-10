#!/usr/bin/env python3
"""foldprop.py - fold-propagation: bank a COMDAT-folded function's twins from one verified member.

Functions whose target lives at the SAME address are COMDAT-folded (the linker merged byte-identical
code). objdiff lists them as separate symbols sharing that address/size. If one twin is already
verified (100%), its `this`-relative C body produces the SAME bytes for every twin (identical offsets
and calls are *why* they fold) -> splice that body into each unverified twin and gate -> bank the whole
group for free. This catches wins the fan-out agents can't see (they decompile one function in isolation,
blind to fold relationships).

Grouping is read from the OBJDIFF REPORT's per-function `address` (build-independent; no objdiff calls).
Best run AFTER a banking pass (gate / sweep) so there are more verified members to propagate from.

Usage:
  python tools/foldprop.py --opportunities   # fold groups with a verified member + unverified twins
  python tools/foldprop.py --apply           # propagate verified bodies to twins, gated strict (clean rebuild via ratchet after)
  python tools/foldprop.py --self-test
"""
import os, sys, collections
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

def fold_groups(rep=None, _sb=None):
    """REAL byte-identical groups {bytes_hex: [(unit, mangled, pct)]}. Grouping by the report `address`
    was WRONG (the report address is not a target byte-identity key -> grouped non-folds -> 0/87). Use
    fold_graph (concatenated target bytes from src/asm) = the true COMDAT-fold key. (No-label folded fns
    aren't in src/asm and so aren't here, but those are exactly the ones asmwrap transcribes directly.)"""
    import verify, fold_graph
    rep = rep if rep is not None else verify.load_report()
    pct = {}
    for u in rep.get("units", []):
        for fn in u.get("functions", []):
            pct[fn.get("name")] = (u.get("name"), fn.get("fuzzy_match_percent", 0) or 0)
    G = fold_graph.build(2, sb=_sb)
    out = {}
    for b, syms in G.items():
        # member tuple = (unit, mangled, fuzzy_pct); only symbols present in the report are usable
        members = [(pct[s][0], s, pct[s][1]) for s in syms if s in pct]
        # keep only TRUE multi-symbol fold groups: count distinct mangled names (m[1]), which
        # also dedups the (rare) case of the same symbol appearing twice in the byte bucket
        if len({m[1] for m in members}) > 1:
            out[b] = members
    return out

def opportunities(rep=None, _sb=None):
    """[(group_key, verified_member, [unverified_members])] where the group has >=1 verified + >=1 unverified."""
    out = []
    for k, members in fold_groups(rep, _sb=_sb).items():
        # m[2] = fuzzy_match_percent. The cutoff is exactly 100.0 = byte-exact ("verified"):
        # only a fully-matched member is a trustworthy source to splice from; everything below
        # is an "unverified" twin that could still be banked by inheriting the verified body.
        ver = [m for m in members if m[2] >= 100.0]
        unv = [m for m in members if m[2] < 100.0]
        if ver and unv: out.append((k, ver[0], unv))
    return out

def _cname(mangled):
    """Convert a mangled symbol (e.g. `?Foo@Bar@@...`) to the `method@class` form
    (`Foo@Bar`) used by liftgate/verify, or None if the symbol is unknown to the DB
    or lacks a resolved class+method. Resolution goes through propose._syms() (the
    shared symbol DB built from the black/*.h triples)."""
    import propose
    f = propose._syms().by_mangled.get(mangled)
    return "%s@%s" % (f.method, f.cls) if (f and f.cls and f.method) else None

import re as _re
# Whitelist of CLASS-AGNOSTIC tokens permitted in a transplantable body: C/C++ keywords,
# the builtin scalar types, the project's fixed-width typedefs, and `this`. Any identifier
# NOT in this set is a named member/local/method/class type -> the body is class-specific
# and must NOT be transplanted (see _transplantable).
_ALLOWED = set("""this return if else for while do switch case break continue goto default sizeof
    void char short int long float double unsigned signed bool const static NULL nullptr true false
    uint8_t uint16_t uint32_t uint64_t int8_t int16_t int32_t int64_t bool32_t size_t""".split())
def _transplantable(body):
    """True iff the body is CLASS-AGNOSTIC -> it produces the same bytes in any fold twin. The 1/87
    result came from transplanting NAMED-field/call bodies (resolve to different offsets/symbols in the
    twin's class -> compile-fail or 0%). A body transplants only if every identifier is a keyword/type/
    `this` (offset-literal `*(T*)((char*)this+0xN)`, `__asm{}`, constants) -- no named member, local,
    class type, method call, or `::`.

    Strategy: blank out everything that can legitimately contain non-whitelisted text (__asm blocks,
    numeric literals, string literals) and then require that EVERY remaining identifier is in _ALLOWED.
    Ordering matters: the __asm/number/string substitutions must run BEFORE the identifier scan, or
    e.g. a hex literal or a register name inside an __asm block would be flagged as a named member."""
    if not body or not body.strip(): return False
    b = _re.sub(r"__asm\s*\{[^}]*\}", " ", body)                  # strip __asm blocks (literal asm: transplantable within a fold group)
    if "::" in b or "->" in b: return False                       # class scope / member access (twin offsets/symbols could differ)
    b = _re.sub(r"0x[0-9a-fA-F]+|\b\d+\b", " ", b)               # strip numbers (hex/decimal literals are class-agnostic)
    b = _re.sub(r'"[^"]*"', " ", b)                               # strip strings (string contents aren't identifiers)
    for ident in _re.findall(r"[A-Za-z_]\w*", b):                 # every surviving identifier must be a keyword/type/`this`
        if ident not in _ALLOWED: return False                    # a named member/local/call/type -> NOT class-agnostic
    return True

def propagate(apply=False, limit=None):
    """Propagate each verified fold member's class-agnostic body into its unverified twins.

    For every opportunity (a fold group with >=1 verified + >=1 unverified member) this:
      1. resolves the verified member to its source unit (verify.unit_for_function),
      2. extracts its C body (liftgate.extract_body),
      3. skips it unless the body is class-agnostic (_transplantable) -- only such bodies
         reproduce the SAME bytes in a twin's class,
      4. splices that body into each unverified twin under a strict gate (liftgate.gate),
         keeping the edit only when the twin reaches 100% (the gate reverts otherwise).

    apply=False -> dry-run (prints WOULD-propagate lines, makes no edits).
    apply=True  -> performs the gated edits.
    limit       -> stop once `limit` twins have been banked (caps TOTAL banked, across groups).
    Returns the list of newly-banked twin names."""
    import liftgate, verify
    banked, tried = [], 0
    opps = opportunities()
    print("%d fold groups with a verified member + unverified twins" % len(opps))
    for k, ver, unv in opps:
        if limit and len(banked) >= limit: break             # total-bank cap reached -> stop scanning further groups
        vname = _cname(ver[1])
        if not vname: continue
        vloc = verify.unit_for_function(vname)
        if not vloc or not vloc[1]: continue
        # name is `method@class`; split to feed liftgate.extract_body(cls, meth)
        vcls, vmeth = vname.split("@")[1], vname.split("@")[0]
        # latin-1 = lossless byte round-trip for the asm/cpp source (matches liftgate's encoding)
        with open(vloc[1], encoding="latin-1") as _fh:
            vbody = liftgate.extract_body(_fh.read(), vcls, vmeth)
        if not vbody or not vbody.strip(): continue
        if not _transplantable(vbody): continue              # only class-agnostic bodies survive a twin
        for um in unv:
            if limit and len(banked) >= limit: break         # total-bank cap reached -> stop this group too
            uname = _cname(um[1])
            if not uname or uname == vname: continue
            tried += 1
            if not apply:
                print("  WOULD propagate %s -> %s" % (vname, uname)); continue
            r = liftgate.gate(uname, vbody, strict=True)
            ok = "reached 100" in r.get("msg", "")           # liftgate signals a banked 100% match with this exact phrase
            if ok: banked.append(uname)
            print("  %-44s %s  (from %s)" % (uname[:44], "BANK" if ok else r.get("msg", "")[:24], vname[:24]))
    print("\n%s: %d twins tried, %d banked" % ("PROPAGATE" if apply else "DRY-RUN", tried, len(banked)))
    if apply and banked: print("NEXT: ratchet.py record (clean rebuild) then commit")
    return banked

def _self_test():
    """Pure-logic self-test (no objdiff/build needed): drives fold_groups/opportunities with a
    synthetic report + injected symbol->bytes map (_sb) and exercises _transplantable's accept/
    reject rules. Returns a 0/1 exit code."""
    ok = True
    def chk(c, n, got=None):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n + ("" if c else "  got:%r" % (got,)))
    rep = {"units": [{"name": "U1", "functions": [
        {"name": "?A@@x", "fuzzy_match_percent": 100.0},
        {"name": "?B@@x", "fuzzy_match_percent": 75.0},
        {"name": "?C@@x", "fuzzy_match_percent": 60.0}]}]}
    sb = {"?A@@x": "b001c3", "?B@@x": "b001c3", "?C@@x": "33c0c3"}     # A,B byte-identical; C alone
    g = fold_groups(rep, _sb=sb)
    chk(len(g) == 1 and any({m[1] for m in v} == {"?A@@x", "?B@@x"} for v in g.values()), "groups byte-identical A,B (not C)", list(g))
    opp = opportunities(rep, _sb=sb)
    chk(len(opp) == 1 and opp[0][1][1] == "?A@@x" and opp[0][2][0][1] == "?B@@x", "opportunity: A verified -> B twin", opp)
    sb2 = {"?A@@x": "b001c3", "?B@@x": "b001c3"}
    rep2 = {"units": [{"name": "U", "functions": [
        {"name": "?A@@x", "fuzzy_match_percent": 100.0}, {"name": "?B@@x", "fuzzy_match_percent": 100.0}]}]}
    chk(opportunities(rep2, _sb=sb2) == [], "all-verified group -> no opportunity")
    chk(_transplantable("return (*(uint8_t*)((char*)this + 0xb4) >> 1) & 1;"), "offset-literal -> transplantable")
    chk(_transplantable("__asm { xor al, al }"), "__asm -> transplantable")
    chk(_transplantable("return 0;"), "constant -> transplantable")
    chk(not _transplantable("return town_artifact != NULL;"), "named member -> NOT transplantable")
    chk(not _transplantable("GAbodeInfo* _info = (GAbodeInfo*)info; return _info->abodeType;"), "-> member + class -> NOT")
    chk(not _transplantable("return this->GetTown();"), "method call -> NOT (could differ across twins)")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a: sys.exit(_self_test())
    if "--opportunities" in a: propagate(apply=False)
    elif "--apply" in a: propagate(apply=True)
    else: print(__doc__)
