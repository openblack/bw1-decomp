#!/usr/bin/env python3
"""Lift helper: dump one function's symbol-annotated x86 disassembly + its staging stub.

WHAT IT DOES
  Given a function name (or a raw address), this finds that function's body in the
  Black & White disassembly under `src/asm/**/*.asm`, prints it line by line, and then
  prints the matching `src/staging/**/*.cpp` stub. It is the first step of hand-lifting
  a function: you read the real asm next to the (often `return 0;`) stub you must fill in.

  Each asm line is annotated via symbolize.annotate(): call targets are demangled to
  Class::Method, absolute addresses resolve to the nearest data symbol, and
  `[rdata_bytes+N]` / `[__real@...]` constants show their value - so you can read what a
  function does without chasing every address by hand.

INPUTS
  - argv[1]   : `Method@Class`, a mangled/cname symbol, a plain name, or a `0xADDR`.
  - --no-anno : print raw asm without symbol annotation.
  - src/asm/**/*.asm, src/staging/**/*.cpp : the disassembly and stubs to search.

USAGE
  python3 tools/lift.py GetTribalPower@Object
  python3 tools/lift.py SetOnFire@Tree
  python3 tools/lift.py 0x4dc100          # resolve a label-less function by address
  python3 tools/lift.py --self-test       # run pure-logic unit tests (no build/network)
"""
import re, glob, sys, os
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from symbolize import annotate
try:
    from symbols import Symbols; H = Symbols()
except Exception:
    H = None

name = sys.argv[1] if len(sys.argv) > 1 else ""
no_anno = "--no-anno" in sys.argv

# Resolve the user's target into the things we can actually search the asm for: a set of
# label spellings (`targets`) and/or an absolute address (`addr`). The asm is searched by
# label first, then by address (see below), so we try to populate both.
# The resolution ladder below has several tiers because the same function can be named in
# several ways and the symbol DB (H, from symbols.py) may key it under any of them:
#   tier 0 (raw address): `0xADDR` -> look the function up by address (handles label-less
#           / static functions that have no usable asm label at all).
#   tier 1 (direct):      H.resolve() understands the rich `Method@Class` form; we also try
#           by_cname (decorated C-style name) and by_mangled (MSVC `?...@@` name) verbatim.
#   tier 2 (split scan):  if `Method@Class` still didn't resolve (e.g. resolve() is picky),
#           fall back to a linear scan of every cname record for a matching (class, method).
# Each successful tier yields the function's mangled + cname spellings (so the label scan
# can match any of them) and, when known, its address (so the address scan can find it too).
targets = {name}; addr = None
if re.fullmatch(r"0x[0-9a-fA-F]+", name):          # tier 0: raw address (case-insensitive hex), e.g. lift.py 0x4dc100
    addr = int(name, 16); targets = set()
    if H and addr in H.by_addr:
        f = H.by_addr[addr]; targets |= {f.mangled, f.cname}
elif H:
    f = H.resolve(name) or H.by_cname.get(name) or H.by_mangled.get(name)  # tiers 1
    if not f and "@" in name and not name.startswith(("?", "@")):           # tier 2: Method@Class linear scan
        meth, cls = name.split("@", 1)[0], name.split("@", 1)[1]
        f = next((x for x in H.by_cname.values() if x.cls == cls and x.method == meth), None)
    if f:
        targets |= {f.mangled, f.cname}
        if f.addr: addr = int(f.addr, 16)

# x87 floating-point mnemonics. annotate() needs to know an operand belongs to a float op
# (fld=True) so a memory constant like `[__real@3f800000]` or `[rdata_bytes+N]` is decoded
# as a float value (1.0) rather than an integer -- otherwise the annotation would be wrong.
FLOATOP = re.compile(r"\bf(ld|add|mul|sub|subr|div|divr|com|comp|st|ild)\b")
def annot(line):
    """Return `line` with a trailing symbol annotation appended (or unchanged under --no-anno).

    Strips the trailing `// ...` comment first so only the instruction text is annotated,
    and passes fld=True when the mnemonic is an x87 float op so float-constant operands are
    decoded as floats. Returns the right-stripped line (plus annotation, if any)."""
    if no_anno: return line
    opnd = line.split("//", 1)[0]   # annotate only the instruction, not the // address comment
    a = annotate(opnd, fld=bool(FLOATOP.search(opnd)))
    return line.rstrip() + a if a else line.rstrip()

def _read_lines(fpath):
    """Read a .asm file as latin-1 line list; returns None on I/O error (skip the file)."""
    try:
        with open(fpath, encoding="latin-1") as fh: return fh.read().split("\n")
    except OSError as e:
        sys.stderr.write(f"(lift: cannot read {fpath}: {e})\n"); return None

def is_label(l):
    """True if asm line `l` begins a labelled definition we treat as a boundary/target.

    Recognizes the three label spellings emitted by this disassembler: MSVC-mangled names
    (start with '?'), decorated C-style names (start with '@'), and the synthetic
    `_jmp_addr_0x...` labels for label-less jump targets. Requires a ':' BEFORE any `//`
    comment, so a name that only appears inside a comment is not mistaken for a label, and
    local block labels (e.g. `.block_1:`) are excluded because they don't start with ?/@/_jmp."""
    return (l[:1] in "?@" or l.startswith("_jmp_addr_")) and ":" in l.split("//")[0]

# Hard cap on emitted instruction lines: a safety net against runaway output if the
# label/ret-termination heuristics below fail to find the function end (e.g. a function
# with no clean ret + nop padding before the next label). 120 covers virtually every
# hand-lifted function; if a body is genuinely longer it is truncated WITH a marker
# (printed below) so the user is never silently shown a cut-off tail.
BODY_CAP = 120

def dump_body(fpath, lines, i):
    """Print one function's body, starting at line index i (a label line or the function's
    first instruction), with each line symbol-annotated via annot().

    Scans forward until it reaches the function end, detected by either:
      * the next top-level function label (a ?/@ mangled/cname label), or
      * a `ret` whose following non-blank line is nop padding or another label.
    Emits at most BODY_CAP instruction lines; if the body is longer, prints a
    "...(truncated ...)" marker so a cut-off tail is never hidden."""
    print(annot(lines[i]))
    j = i + 1; n = 0
    while j < len(lines) and n < BODY_CAP:
        cur = lines[j]
        if is_label(cur) and cur[:1] in "?@":       # next top-level function -> stop
            break
        if cur.strip(): print(annot(cur))
        # A bare `ret` is NOT enough to stop: x86 functions can contain multiple rets
        # (early-return branches) before the real end. We only treat a ret as the end
        # when what follows it is nop padding (the assembler's inter-function filler) or
        # the next label -- i.e. there is no more real code belonging to this function.
        if re.search(r"\bret\b", cur):
            k = j + 1
            while k < len(lines) and not lines[k].strip(): k += 1   # skip blank lines
            nxt = lines[k].split("//")[0].strip() if k < len(lines) else ""
            if k >= len(lines) or nxt.startswith("nop") or is_label(lines[k]):
                break
        j += 1; n += 1
    # If we stopped because of the instruction cap (not a real function end), tell the
    # user the output was cut so they don't mistake the printed tail for the function's end.
    if n >= BODY_CAP and j < len(lines) and not (is_label(lines[j]) and lines[j][:1] in "?@"):
        print(f"    ...(truncated at {BODY_CAP} instructions; function continues past this point)...")

def _self_test():
    """Pure-logic unit tests for the asm-scanning helpers: label detection, the float-op
    classifier, and dump_body's body-extraction / ret-termination. No build, no network."""
    global no_anno
    no_anno = True                                   # annot() returns lines verbatim -> pure
    ok = True
    def chk(cond, name):
        nonlocal ok; ok &= bool(cond)
        print(f"  {'PASS' if cond else 'FAIL'}  {name}")
    # --- is_label: function labels (?/@) and _jmp_addr_ labels, with a trailing ':' ---
    chk(is_label("?GetTribalPower@Object@@UAEMW4Tribe@@@Z:    push esi  // 0x6c8"),
        "is_label mangled function label")
    chk(is_label("@RemoveMapObjectFromCell__6ObjectFP7MapCell@12:  mov eax  // 0x1"),
        "is_label @cname label")
    chk(is_label("_jmp_addr_0x00639a40:  jmp  // 0x639a40"), "is_label _jmp_addr label")
    chk(not is_label("    mov eax, 0x1  // 0x004dc100"), "is_label rejects plain instruction")
    chk(not is_label(".block_1:  add esp  // 0x2"), "is_label rejects block label (.)")
    chk(not is_label("?Foo@@QAEXXZ  // : 0x1"), "is_label needs a ':' before the comment")
    # --- FLOATOP: x87 float mnemonics get fld-aware annotation ---
    chk(bool(FLOATOP.search("fld dword ptr [x]")) and bool(FLOATOP.search("fmul st0")),
        "FLOATOP matches fld/fmul")
    chk(not FLOATOP.search("mov eax, ebx"), "FLOATOP ignores mov")
    # --- dump_body: extracts label..ret, stops at the nop padding after ret ---
    import io, contextlib
    src = [
        "?Foo@Bar@@QAEHXZ:    mov eax, 0x5  // 0x1000",
        "    ret  // 0x1003",
        "    nop  // 0x1004",
        "?Next@Bar@@QAEHXZ:    push esi  // 0x1005",
    ]
    buf = io.StringIO()
    with contextlib.redirect_stdout(buf): dump_body("<mem>", src, 0)
    out = buf.getvalue().splitlines()
    chk(len(out) == 2 and out[0].startswith("?Foo@Bar") and out[1].strip().startswith("ret"),
        f"dump_body stops at ret+nop padding (got {len(out)} lines)")
    # stops at the NEXT top-level function label even without a ret
    src2 = [
        "?A@C@@QAEXXZ:    mov eax, 0x1  // 0x2000",
        "    mov ecx, eax  // 0x2003",
        "?B@C@@QAEXXZ:    push esi  // 0x2006",
    ]
    buf2 = io.StringIO()
    with contextlib.redirect_stdout(buf2): dump_body("<mem>", src2, 0)
    out2 = buf2.getvalue().splitlines()
    chk(len(out2) == 2 and not any("?B@C" in x for x in out2),
        f"dump_body stops at next function label (got {len(out2)} lines)")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if "--self-test" in sys.argv:
    sys.exit(_self_test())

found = False
# Address-scan pattern: this disassembler tags each instruction with its VA in a trailing
# `// 0x<8-hex-digits>` comment (zero-padded to 8). We match that exact format to find the
# instruction at `addr` when a function has no usable asm label of its own (see tier 0 above).
# This depends on the disassembler's `// 0x%08x` comment convention; a different width/format
# would not match.
ADDRC = re.compile(r"//\s*0x%08x(?:\s|$)" % addr) if addr is not None else None
for fpath in glob.glob(os.path.join(ROOT, "src/asm/**/*.asm"), recursive=True):
    if os.path.basename(fpath).startswith(("rdata", "data")): continue
    lines = _read_lines(fpath)
    if lines is None: continue
    # 1) by label
    for i, l in enumerate(lines):
        if not is_label(l): continue
        lbl = l.split(":", 1)[0]
        if not any(t and t in lbl for t in targets): continue
        print(f"### ASM {os.path.relpath(fpath, ROOT)}:{i+1}  (by label)")
        dump_body(fpath, lines, i)
        found = True; break
    if found: break
    # 2) by address (handles label-less / static functions, e.g. Tree::SetOnFire @0x74c140)
    if ADDRC is not None:
        for i, l in enumerate(lines):
            if ADDRC.search(l):
                print(f"### ASM {os.path.relpath(fpath, ROOT)}:{i+1}  (by address 0x{addr:x}; no asm label)")
                dump_body(fpath, lines, i)
                found = True; break
        if found: break
        continue
if not found and "@" in name and not name.startswith(("?", "@")):
    # 3) report fallback: COMDAT-folded / cross-tier functions have NO own asm label, so the label/addr
    #    scans above miss them. Get the target instructions from the objdiff report (already symbolized;
    #    reads the target .obj only via objdiff-cli -> race-free alongside a running fan-out).
    try:
        sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
        import iterate, verify
        loc = verify.unit_for_function(name)
        mg = iterate._mangled_of(name)
        obj = iterate._diff_json(loc[0], mg) if loc else None
        L = iterate._sym(obj, "left", mg) if obj else None
        if L and L.get("instructions"):
            print(f"### TARGET asm (objdiff report; COMDAT-folded / no own asm label) — {mg}")
            for w in L["instructions"]:
                ins = w.get("instruction", w)
                print("    " + (ins.get("formatted") or "?"))
            found = True
    except Exception as e:
        sys.stderr.write(f"(lift: report fallback failed: {e})\n")
if not found:
    print(f"(no asm body found for {name!r}; it may be inlined - check the staging stub)")

# staging stub
# Turn a `Method@Class` target into the `Class::Method` spelling used in the staging .cpp;
# a bare/mangled name is searched verbatim.
cls, fn = (name.split("@")[1], name.split("@")[0]) if "@" in name and not name.startswith(("?", "@")) else (None, name)
pat = f"{cls}::{fn}" if cls else fn
for fpath in glob.glob(os.path.join(ROOT, "src/staging/**/*.cpp"), recursive=True):
    try:
        with open(fpath, encoding="latin-1") as fh:
            t = fh.read()
    except OSError as e:
        sys.stderr.write(f"(lift: cannot read {fpath}: {e})\n"); continue
    # Match the stub's definition: `Class::Method(<params>) [const]` then a brace body.
    # Assumptions (and their limits):
    #   * `\([^;{}]*\)` - the param list is free of ';' '{' '}', so a forward declaration
    #     (ends in ';' before any '{') is skipped, and a brace-init default arg (e.g.
    #     `= Foo{}`) would NOT match (rare in these simple stubs).
    #   * `\{(.*?)\n\}` - the body is captured non-greedily up to the FIRST line that is
    #     a lone '}' at column 0 (the staging stubs are formatted that way); a nested block
    #     whose closing brace sits at column 0 would cut the capture short.
    m = re.search(re.escape(pat) + r"\([^;{}]*\)(?:\s*const)?\s*\n\{(.*?)\n\}", t, re.S)
    if m:
        print(f"\n### STAGING {os.path.relpath(fpath, ROOT)} : {pat}\n{{{m.group(1)}\n}}")
        break
