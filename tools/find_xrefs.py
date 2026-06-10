#!/usr/bin/env python3
"""find_xrefs.py — find call sites / references across the WHOLE decomp.

Lesson learned the hard way (Norse fish-food bridge): functions live in THREE places —
  src/c/*.c            (already-decompiled, inline-asm C)
  src/staging/*.cpp    (lifted high-level stubs/bodies)
  src/asm/unprocessed/*.asm  (raw disassembly not yet decompiled)
Searching only the raw asm dump MISSES decompiled call sites. This tool searches all three.

The needle argument is interpreted three ways:
  * plain text          -> case-insensitive substring (a symbol name, partial or full)
  * 0xNNN  (< 0x400000) -> a *vtable offset*; matches `call [reg + 0xNNN]` and the C
                           inline form `[reg + 0xNNN]` (a virtual call through that slot)
  * 0xADDR (>= 0x400000)-> a full *code address*; finds CALLERS of that (often label-less)
                           function, looking for `_jmp_addr_0xADDR` / `.Lbl_addr_0xADDR`
                           refs plus, if symbols.py resolves it, its mangled/c name.

Each matching line is classified by classify(): "CALL", "ref", "def", "decl", or "vtbl?"
(a bare symbol inside a vtable array initializer). By default def/decl/vtbl? lines are
counted but hidden; --defs shows them. --tribe N additionally requires a `push 0xN`
in the window of the 6 lines preceding the match plus the match line itself (used to
pin a GetTribalPower(tribe) call to a tribe).

Usage:
  python3 tools/find_xrefs.py GetTribalPower          # by (partial) symbol name
  python3 tools/find_xrefs.py 0x6c8                    # small value = vtable offset -> finds `call [reg+0x6c8]`
  python3 tools/find_xrefs.py 0x4dc2f0                 # >=0x400000 = code address -> finds CALLERS of that (label-less) function
  python3 tools/find_xrefs.py 0x6c8 --tribe 7          # also require a `push 0x7` near the call
  python3 tools/find_xrefs.py GetSeason --defs         # include the definition/decl lines too
  python3 tools/find_xrefs.py --self-test              # run pure-logic self-tests

Output: file:line  context, grouped, with call sites first. Definitions/decls/vtable-table
entries are labelled so you can tell a *call* from a *declaration*.
"""
import os, re, sys, glob

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
DIRS = [
    ("C",     os.path.join(ROOT, "src", "c"),                "*.c"),
    ("STAGE", os.path.join(ROOT, "src", "staging"),          "*.cpp"),
    ("ASM",   os.path.join(ROOT, "src", "asm", "unprocessed"), "*.asm"),
]

def classify(line):
    """Classify a matching source line into one of five kinds.

    Returns one of:
      "decl"  — a declaration (asm `.extern`/`.globl`, no body);
      "def"   — a definition: a mangled-name label line (`?Name@Class@@...:`)
                or a C-style function-definition header (`Name__Class(...) {`);
      "vtbl?" — a bare `Symbol__Class,` token sitting inside a vtable array
                initializer (an address-of entry, not an actual call);
      "CALL"  — any line containing a `call`;
      "ref"   — anything else (a plain reference to the needle).

    This drives the default suppression of def/decl/vtbl? lines so that a
    bare *call site* can be told apart from a declaration. Heuristic, not a
    parser: it inspects the stripped line text only.
    """
    s = line.strip()
    # Declarations: assembler visibility directives have no executable body.
    if s.startswith(".extern") or s.startswith(".globl"):
        return "decl"
    # Definitions, two shapes:
    #   r'^\?\w.*:\s*$'                 -> an MSVC mangled-name label line, e.g.
    #                                      "?GetSeason@Weather@@QAE_NXZ:" (ends with ':')
    #   r'^[A-Za-z_]\w*__\w.*\(.*\)...' -> a C-style def header, e.g.
    #                                      "GetSeason__7Weather(...) {" (Name__Class(args) [{])
    if re.match(r'^\?\w.*:\s*$', s) or re.match(r'^[A-Za-z_]\w*__\w.*\(.*\)\s*\{?\s*$', s):
        return "def"
    # vtable-table entry: a bare "Symbol__Class," inside an array initializer.
    # Two accepted forms (parenthesised explicitly so the intent is unambiguous —
    # without parens Python would bind the `and` chain to only the second `or` arm):
    #   1. the canonical mangled member token  Name__Class[FQ]...  (optional trailing comma)
    #   2. any other line that is ONLY a trailing-comma'd token: it ends in ',',
    #      is not a call, is not a C inline-asm wrapper, and contains no '(' at all
    #      (a real call/expression would have parentheses somewhere on the line).
    if re.match(r'^\w+__\w+[FQ]\w*,?$', s) or (
            s.endswith(",") and "call" not in s and "asm(" not in s and "(" not in s):
        return "vtbl?"
    if "call" in s:
        return "CALL"
    return "ref"

def classify_needle(needle):
    """Classify the needle into ('addr'|'off'|'name', hexval_or_None).

    'addr' = a full code address (>= 0x400000, find callers of that function);
    'off'  = a small hex value (a vtable offset);  'name' = a plain text symbol.
    Pure: no file/symbol-table access.
    """
    is_hex = bool(re.fullmatch(r'0x[0-9a-fA-F]+', needle))
    if not is_hex:
        return "name", None
    hexval = int(needle, 16)
    return ("addr" if hexval >= 0x400000 else "off"), hexval

def build_patterns(needle, tribe=None):
    """Build the (pat, pat2, push_pat) regex triple for a needle.

    pat      = primary matcher; pat2 = optional secondary (the C-inline vtable form);
    push_pat = optional `push 0x<tribe>` filter (None unless --tribe given).
    Pure aside from an optional symbols.py lookup for code-address needles (best effort).
    """
    kind, hexval = classify_needle(needle)
    if kind == "addr":
        h = "%x" % hexval
        # A label-less target has no symbolic name, so callers reference it by the
        # synthetic address labels the disassembler emits: `_jmp_addr_0xADDR` and
        # `.Lbl_addr_0xADDR`. The `0x0*` allows zero-padded forms (e.g. 0x004dc2f0
        # vs 0x4dc2f0) to both match. If symbols.py can resolve the address to a
        # real function we also match its mangled + C names (best effort).
        alts = [r'_jmp_addr_0x0*%s' % h, r'\.Lbl_addr_0x0*%s' % h]
        try:
            from symbols import Symbols
            f = Symbols().by_addr.get(hexval)
            if f: alts += [re.escape(f.mangled), re.escape(f.cname)]
        except Exception:
            pass
        pat = re.compile(r'(?:call|jmp)\b.*(?:%s)\b' % "|".join(alts), re.I)
        pat2 = None
    elif kind == "off":
        off = needle.lower().replace("0x","")
        # A vtable offset is a virtual call through `[this_ptr + 0xNNN]`. NOTE: these
        # two regexes assume the exact disassembly spacing produced by our dumps —
        # `[exx + 0xNNN]` with single spaces around `+` and a two-letter e-register
        # (eax/ecx/...). Differently-spaced asm would silently not match.
        #   pat  = the asm call form:  `call dword ptr [eax + 0x6c8]`
        #   pat2 = the C-inline form:  `... [eax + 0x6c8] ...` (a lifted vcall)
        # `0x0*` again tolerates leading zeros in the offset.
        pat = re.compile(r'call\s+dword ptr \[e[a-z][a-z] \+ 0x0*%s\]' % re.escape(off), re.I)
        pat2 = re.compile(r'\[e[a-z][a-z] \+ 0x0*%s\]' % re.escape(off), re.I)
    else:
        # Plain name needle: a literal, case-insensitive substring match.
        pat = re.compile(re.escape(needle), re.I)
        pat2 = None

    # --tribe filter: a word-bounded `push 0x<tribe>` (leading zeros tolerated),
    # used to pin a generic per-tribe call (e.g. GetTribalPower) to one tribe.
    push_pat = re.compile(r'push\s+0x0*%s\b' % tribe.lower().replace("0x",""), re.I) if tribe else None
    return pat, pat2, push_pat

def main():
    """CLI entry: parse argv, scan all three decomp tiers, print grouped hits.

    argv[1] is the needle (symbol name / vtable offset / code address — see the
    module docstring). Flags: --defs (also print def/decl/vtbl? lines) and
    --tribe N (require a `push 0x<N>` near each match). Records def/decl/vtbl?
    lines quietly even when hidden so the trailing summary can count them.
    """
    if len(sys.argv) < 2:
        print(__doc__); sys.exit(1)
    needle = sys.argv[1]
    show_defs = "--defs" in sys.argv
    tribe = None
    if "--tribe" in sys.argv:
        ti = sys.argv.index("--tribe")
        # Guard against `--tribe` given as the final argument (no value follows).
        if ti + 1 >= len(sys.argv):
            print("error: --tribe requires a value (a tribe index, e.g. --tribe 7)")
            sys.exit(2)
        tribe = sys.argv[ti + 1]
        # Validate the value is a tribe number (decimal or 0x-hex); a non-numeric
        # token would otherwise be spliced raw into the push-filter regex.
        if not re.fullmatch(r'0x[0-9a-fA-F]+|\d+', tribe):
            print("error: --tribe value %r is not a number (expected e.g. 7 or 0x7)" % tribe)
            sys.exit(2)

    pat, pat2, push_pat = build_patterns(needle, tribe)

    hits = {"CALL": [], "ref": [], "def": [], "decl": [], "vtbl?": []}
    for tag, d, gl in DIRS:
        for f in glob.glob(os.path.join(d, gl)):
            try:
                # latin-1 = lossless byte passthrough for raw asm dumps (no decode
                # errors on any byte); `with` ensures the handle is closed promptly.
                with open(f, encoding="latin-1") as fh:
                    lines = fh.read().splitlines()
            except Exception:
                continue
            rel = os.path.relpath(f, ROOT).replace("\\", "/")
            for i, ln in enumerate(lines):
                m = pat.search(ln) or (pat2 and pat2.search(ln))
                if not m:
                    continue
                kind = classify(ln)
                if kind in ("def", "decl", "vtbl?") and not show_defs:
                    # still record defs/decls quietly for the summary
                    hits.setdefault(kind, []).append((rel, i+1, ln.strip(), tag))
                    continue
                # tribe filter: require a `push 0x<tribe>` near the match. The
                # window is the 6 lines preceding the match plus the match line
                # itself (i-6 .. i inclusive); the argument is usually pushed just
                # before the call, so a small look-back pins it to the right tribe.
                if push_pat:
                    window = lines[max(0,i-6):i+1]
                    if not any(push_pat.search(w) for w in window):
                        continue
                hits.setdefault(kind, []).append((rel, i+1, ln.strip(), tag))

    order = ["CALL", "ref"] + (["def", "decl", "vtbl?"] if show_defs else [])
    total_calls = len(hits["CALL"]) + len(hits["ref"])
    for k in order:
        if not hits[k]:
            continue
        print("\n=== %s (%d) ===" % (k, len(hits[k])))
        for rel, lno, txt, tag in hits[k]:
            print("  [%-5s] %s:%d  %s" % (tag, rel, lno, txt[:140]))
    # summary of suppressed defs/decls
    if not show_defs:
        ndef = len(hits.get("def", [])) + len(hits.get("decl", [])) + len(hits.get("vtbl?", []))
        print("\n(%d call/ref sites; %d def/decl/vtable-entry lines hidden — pass --defs to show)" % (total_calls, ndef))

def _self_test():
    ok = True
    def chk(cond, msg):
        nonlocal ok; ok &= bool(cond)
        print(f"  {'PASS' if cond else 'FAIL'}  {msg}")

    # --- classify_needle: text vs vtable offset vs code address ---
    chk(classify_needle("GetTribalPower") == ("name", None), "plain text -> name")
    chk(classify_needle("0x6c8") == ("off", 0x6c8), "small hex -> off")
    chk(classify_needle("0x4dc2f0") == ("addr", 0x4dc2f0), "big hex -> addr")
    chk(classify_needle("0x400000") == ("addr", 0x400000), "boundary 0x400000 -> addr")
    chk(classify_needle("0x3fffff") == ("off", 0x3fffff), "just below boundary -> off")

    # --- build_patterns: vtable offset matches both asm + C-inline forms ---
    pat, pat2, push = build_patterns("0x6c8")
    chk(pat.search("    call dword ptr [eax + 0x6c8]") is not None, "off pat matches asm call")
    chk(pat.search("    call dword ptr [eax + 0x06c8]") is not None, "off pat tolerates leading zero")
    chk(pat.search("    call dword ptr [eax + 0x1c]") is None, "off pat rejects other offset")
    chk(pat2.search("    x = vtable[eax + 0x6c8];") is not None, "off pat2 matches C inline")
    chk(push is None, "no --tribe -> push_pat is None")

    # --- build_patterns: name needle is a literal, case-insensitive substring ---
    npat, npat2, _ = build_patterns("GetSeason")
    chk(npat.search("    call ?GetSeason@Weather@@") is not None, "name pat matches")
    chk(npat.search("getseason()") is not None, "name pat is case-insensitive")
    chk(npat2 is None, "name needle has no pat2")

    # --- build_patterns: --tribe builds a push filter ---
    _, _, push7 = build_patterns("0x6c8", tribe="7")
    chk(push7.search("    push 0x7") is not None, "tribe push_pat matches push 0x7")
    chk(push7.search("    push 0x07") is not None, "tribe push_pat tolerates leading zero")
    chk(push7.search("    push 0x70") is None, "tribe push_pat is word-bounded")

    # --- classify: distinguish CALL / def / decl / ref ---
    chk(classify("    call ?GetSeason@Weather@@QAE_NXZ") == "CALL", "classify CALL")
    chk(classify(".extern ?GetSeason@Weather@@QAE_NXZ") == "decl", "classify decl (.extern)")
    chk(classify(".globl ?Foo@Bar@@QAEXXZ") == "decl", "classify decl (.globl)")
    chk(classify("?GetSeason@Weather@@QAE_NXZ:") == "def", "classify def (label)")
    chk(classify("    mov eax, 0x6c8") == "ref", "classify plain ref")

    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if __name__ == "__main__":
    if "--self-test" in sys.argv:
        sys.exit(_self_test())
    main()
