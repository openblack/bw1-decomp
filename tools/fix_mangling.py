#!/usr/bin/env python3
r"""fix_mangling.py - fix self-class back-reference MSVC name-mangling in symbols.txt.

THE BUG (proven byte-exact): MSVC mangles a method of class C that takes a C* / C& / C-by-value param
using a NAME BACK-REFERENCE -- `?M@C@@...PAV1@@Z` where `1` points back at the earlier "C" -- NOT the
spelled-out `?M@C@@...PAVC@@@Z`. dtk's symbols.txt was reconstructed with the spelled-out form for many
such symbols, so our (correct) compiler output `PAV1@` never matched the target name and the function
scored 0% no matter how faithfully it was lifted.
  PROVEN: ?CanBeEatenByCreature@Creature@@UAEIPAVCreature@@@Z (0%) ->
          ?CanBeEatenByCreature@Creature@@UAEIPAV1@@Z          (100%)

This rewrites the spelled-out self-class form to the back-ref form for single-level classes `?word@C@@`.
CONSERVATIVE: only when the class name appears EXACTLY ONCE as a type in the signature (avoids the
distinct TYPE-back-reference rules that kick in for two identical params). Safe to over-apply: a
wrongly-changed name only affects an UNdecompiled target (it stays 0%); a byte-exact target already uses
the back-ref form, so it never matches the spelled-out pattern and is left untouched. ALWAYS re-split
(`rm build/<VER>/config.json && ninja`) + confirm global matched does not DROP after --apply.

Usage:
  python tools/fix_mangling.py            # dry-run: list the fixes it would make
  python tools/fix_mangling.py --apply
  python tools/fix_mangling.py --self-test
"""
import re, sys, os

DTK = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
VER = os.environ.get("BW1_VERSION", "BW1E142")
SYMS = os.path.join(DTK, "config", VER, "symbols.txt")

def fix_symbol(sym):
    """Self-class back-ref correction for a single-level `?method@Class@@<sig>` symbol.
    Returns the corrected mangled name, or None if nothing to change."""
    m = re.match(r'\?([A-Za-z_]\w*)@([A-Za-z_]\w*)@@(.+)$', sym)
    if not m:
        return None  # skip ??ctor/operator/templates/nested-namespace symbols
    method, cls, sig = m.group(1), m.group(2), m.group(3)
    # class/struct type references to the SELF class, e.g. V<cls>@@ (class) or U<cls>@@ (struct),
    # with any preceding cv/ptr/ref qualifier (P/A/PA/AB/PB...). Exactly one => unambiguous back-ref to 1.
    occ = re.findall(r'[VU]' + re.escape(cls) + r'@@', sig)
    if len(occ) != 1:
        return None
    newsig = re.sub(r'([VU])' + re.escape(cls) + r'@@', r'\g<1>1@', sig, count=1)
    return ("?%s@%s@@%s" % (method, cls, newsig)) if newsig != sig else None

def scan(apply=False):
    lines = open(SYMS, encoding="latin-1").read().split("\n")
    fixes = []
    for i, ln in enumerate(lines):
        m = re.match(r'(\?\S+)\s*=\s*(\.text:0x[0-9a-fA-F]+;.*)$', ln)  # hex is MIXED case (0x473FF0)!
        if not m:
            continue
        new = fix_symbol(m.group(1))
        if new and new != m.group(1):
            fixes.append((i, m.group(1), new))
            if apply:
                lines[i] = "%s = %s" % (new, m.group(2))
    if apply:
        open(SYMS, "w", encoding="latin-1", newline="\n").write("\n".join(lines))
    print("self-class back-ref mangling fixes: %d%s" % (len(fixes), " (APPLIED)" if apply else " (dry-run)"))
    for _, old, new in fixes[:30]:
        print("  %s\n   -> %s" % (old, new))
    if len(fixes) > 30:
        print("  ... +%d more" % (len(fixes) - 30))
    if apply:
        print("\nNEXT: rm build/%s/config.json && ninja <your .o> ; verify global matched did NOT drop." % VER)

def self_test():
    ok = True
    def chk(c, n):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n)
    chk(fix_symbol("?CanBeEatenByCreature@Creature@@UAEIPAVCreature@@@Z")
        == "?CanBeEatenByCreature@Creature@@UAEIPAV1@@Z", "self-class ptr param -> PAV1@")
    chk(fix_symbol("?IsCreature@Creature@@UAEIPAVCreature@@@Z")
        == "?IsCreature@Creature@@UAEIPAV1@@Z", "IsCreature(Creature*) -> PAV1@")
    chk(fix_symbol("?IsReachable@Creature@@UAEIXZ") is None, "no self-class param -> unchanged")
    chk(fix_symbol("?Foo@Door@@QAEXPAVCreature@@@Z") is None, "param is a DIFFERENT class -> unchanged")
    chk(fix_symbol("?Two@C@@QAEXPAVC@@PAVC@@@Z") is None, "two self-class params (type-backref) -> skip")
    chk(fix_symbol("??0Creature@@QAE@PAV0@@Z") is None, "ctor (??0) -> skip (handled separately)")
    chk(fix_symbol("?Ref@C@@QAEXAAVC@@@Z") == "?Ref@C@@QAEXAAV1@@Z", "self-class REF param -> AAV1@")
    # line-regex must accept MIXED-CASE hex addresses (the bug that silently skipped 21 symbols)
    chk(bool(re.match(r'(\?\S+)\s*=\s*(\.text:0x[0-9a-fA-F]+;.*)$',
        "?CanBeFoughtByCreature@Creature@@UAEIPAVCreature@@@Z = .text:0x004740A0; // type:function")),
        "line-regex accepts uppercase-hex address 0x004740A0")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a:
        sys.exit(self_test())
    scan(apply="--apply" in a)
