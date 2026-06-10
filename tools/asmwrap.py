#!/usr/bin/env python3
"""asmwrap.py - bank functions by TRANSCRIBING their target asm into a naked MSVC __asm body.

A naked (`__declspec(naked)`) function with the target's instructions transcribed verbatim into
`__asm { ... }` is byte-exact BY CONSTRUCTION (it *is* the target asm) whenever MSVC encodes those
instructions identically -- which it does for the common straight-line forms. This is the src/c
asm-wrap path, automated. Proven: IsOnFire 70->100, GetImpressiveIntensity 0->100 (mov;call _jmp_addr_;ret).

To keep a ~100% positive bank rate, `transcribe` ONLY accepts functions it can render exactly and
SKIPS (returns None) anything risky (rdata/data constants, branch labels [v1], mangled C++ call targets,
unknown operands). Everything accepted is gated, so a rare encoding miss reverts -- never a regression.

Usage:
  python tools/asmwrap.py --one <Name@Class> [--apply]
  python tools/asmwrap.py --survey [MINPCT]            # transcribable near-misses
  python tools/asmwrap.py --sweep [MINPCT] [--apply]
  python tools/asmwrap.py --self-test
"""
import os, re, sys, subprocess
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

# All x86 branch mnemonics (unconditional `jmp` + conditional `jcc` + the `loop`/`jcxz` family). In the
# straight-line `transcribe()` path ANY of these means an internal control-flow edge we won't reproduce
# (it needs label rewriting), so the function is skipped to v1. `transcribe_full()` reuses this same set
# (as `_JCC`) where it DOES rewrite branch targets into MSVC labels.
_BR = {"jmp", "je", "jne", "jz", "jnz", "jg", "jl", "jge", "jle", "ja", "jb", "jae", "jbe",
       "js", "jns", "jo", "jno", "jp", "jnp", "jc", "jnc", "loop", "loope", "loopne", "jcxz", "jecxz"}
# Operands we cannot render verbatim in an MSVC inline-`__asm` block because they reference something the
# assembler can't reproduce: a .rdata/.data byte pool (`rdata_bytes`/`data_bytes`), an MSVC float/xmm
# literal symbol (`__real@`/`__xmm@`), an import thunk (`__imp_`), an `__fp` helper, an absolute-address
# memory ptr (`ptr [0x...`), or an x87 FPU stack slot (`st(...)`). Hitting any of these -> skip (v1).
_BAD_OPND = re.compile(r"rdata_bytes|data_bytes|__real@|__xmm@|__imp_|__fp|ptr \[0x|st\(")

# A direct-address operand the reassembler annotated with its data symbol, e.g.
# "0x00d9d678 /* OFFSET _GSpellSeedInfo_ARRAY_00d9d678 */". The TARGET .obj emits a DIR32 relocation to
# that global; if we transcribe the raw 0x.. the staging hardcodes the address and misses by one arg (the
# DATA_RELOC near-miss class, see nmdiag.py). _data_reloc rewrites it to a relocatable SYMBOL reference --
# `offset SYM` for an immediate, `SYM` inside a `[...]` memory operand -- so MSVC emits the same DIR32 reloc.
# Matches an immediate data-address operand in either reassembler form: the bare `OFFSET _SYM` (the common
# one) or the older `0xADDR /* OFFSET _SYM */`. Group 1 is the symbol (linker name, leading `_`-prefixed).
_OFFSET = re.compile(r"(?:0x[0-9a-fA-F]+\s*/\*\s*)?\bOFFSET\s+(_?\w+)(?:\s*\*/)?")
def _data_reloc(ops):
    """Rewrite each `OFFSET _SYM` immediate-address operand to MSVC inline-asm `offset SYM` (lowercase; the
    C name is the linker name minus the MSVC `_`-prefix, which `extern "C" char SYM[];` re-adds), so the
    compiler emits the SAME DIR32 relocation as the target instead of hardcoding the address (the DATA_RELOC
    near-miss class). Returns (new_ops, {SYMs}) -- the caller declares each SYM extern."""
    syms = set()
    def imm(m):                                        # immediate "OFFSET _SYM" -> "offset SYM"
        s = m.group(1)
        if s.startswith("_"): s = s[1:]               # linker `_`-prefix -> C name (extern "C" re-adds it)
        syms.add(s)
        return "offset " + s
    new = _OFFSET.sub(imm, ops)
    # Memory form: a bare data-global token, e.g. "mov ecx, [_gameThing + eax*4]" -> "[gameThing + eax*4]".
    # `_[A-Za-z]\w+` matches a single-`_`-prefixed global but NOT `__imp_`/`__real`/`__xmm` (double `_`, 2nd
    # char is `_` not a letter, so those are left for _BAD_OPND); a `_jmp_addr_` call target is kept as-is.
    def ref(m):
        s = m.group(0)                                 # whole match (regex below has no capture group)
        if s.startswith("_jmp_addr_"): return s
        c = s[1:]; syms.add(c); return c
    new = re.sub(r"\b_[A-Za-z]\w+\b", ref, new)
    return new, syms

def full_target(fn):
    """ALL target instructions (mnemonic, operands) from the objdiff report (uncapped, folding-aware)."""
    import iterate, verify
    loc = verify.unit_for_function(fn)
    if not loc: return None
    mg = iterate._mangled_of(fn)
    obj = iterate._diff_json(loc[0], mg)
    L = iterate._sym(obj, "left", mg) if obj else None
    if not L: return None
    out = []
    for w in L.get("instructions", []):
        ins = w.get("instruction", w)
        f = (ins.get("formatted") or "").strip()
        if not f: continue
        p = f.split(None, 1)
        out.append((p[0].split(".")[0], p[1].strip() if len(p) > 1 else ""))
    return out or None

def transcribe(ti):
    """(asm_lines, {extern_sym: asm_label}) for a NAKED __asm body, or None if not safely transcribable."""
    if not ti: return None
    lines, externs = [], {}
    # trailing inter-function padding (nop/int3) is not part of the function
    while ti and ti[-1][0] in ("nop", "int3"): ti = ti[:-1]
    if not ti or ti[-1][0] != "ret": return None            # must be a clean straight-line ret-terminated fn
    for mn, ops in ti:
        if _BAD_OPND.search(ops): return None               # rdata/data constant / import -> skip (v1)
        if mn in _BR:
            return None                                      # internal branch needs label handling -> v1 skip
        if mn in ("call",):
            m = re.match(r"^(_jmp_addr_0x[0-9a-fA-F]+)$", ops.strip())
            if not m: return None                            # mangled/named/indirect call target -> v1 skip
            sym = "jmp_addr_0x" + m.group(1)[len("_jmp_addr_0x"):]
            externs[sym] = m.group(1)
            lines.append("call " + sym); continue
        if mn == "ret":
            # A stdcall ret with a stack-cleanup byte count (`ret 0x4`). MSVC inline asm wants the count
            # in DECIMAL, so convert a `0x..` immediate to int; a bare `ret` (no count) stays `ret`.
            # Precedence: the inner `A if n.startswith('0x') else n` binds first, then `... if n else "ret"`.
            n = ops.strip()
            lines.append("ret " + (str(int(n, 16)) if n.startswith("0x") else n) if n else "ret")
            continue
        if mn in ("nop", "int3"):
            continue
        # standard instruction: MSVC inline-asm Intel syntax == the disassembly form
        if re.search(r"[?@]", ops): return None              # symbol-bearing operand we don't handle -> skip
        lines.append(("%s %s" % (mn, ops)).strip())
    return (lines, externs) if lines else None

# ---- v2: full transcription from src/asm (branches + mangled/named calls + rdata via asm() labels) ----
import glob as _glob
# A label DEFINITION line: `<name>:` optionally followed by the first instruction on the same line
# (group 2). Names may be mangled (`?`), @cname (`@`), local (`.Lbl_addr_`), or range (`start_0x`).
_LBLDEF = re.compile(r"^([A-Za-z_?@.][\w?@$.]*):\s*(.*)$")
_FNLBL = re.compile(r"^(\?|@|_jmp_addr_0x|start_0x)")             # ANY function/range boundary (incl folded thunks)
_INTERNAL = re.compile(r"\.Lbl_addr_0x[0-9a-fA-F]+|start_0x[0-9a-fA-F]+")
_DISP = re.compile(r"^\{disp\d+\}\s*")
# Same x86 jump-mnemonic set used by transcribe(): in transcribe_full() an operand of one of these is a
# branch TARGET (a label/address), not data. Reusing `_BR` instead of re-listing it avoids a copy-paste
# duplicate that could drift out of sync (the two lists were previously byte-identical).
_JCC = _BR

def _san_lbl(name):
    """Turn an internal asm branch token (`.Lbl_addr_0x0060617a` / `start_0x...`) into an MSVC-legal
    inline-asm label (`L_0060617a`). MSVC `__asm` labels can't contain `.`, so we take the hex address
    after the last `0x`, strip any non-hex chars, and prefix `L_`. Deterministic, so a `jcc <token>` and
    the matching `<token>:` definition both map to the SAME label and stay wired together."""
    return "L_" + re.sub(r"[^0-9a-fA-F]", "", name.split("0x")[-1])

_BLOCKS = None
def _build_blocks():
    """parse ALL src/asm ONCE -> {top_level_label: [raw block lines]} (label-line first-instr inlined)."""
    global _BLOCKS
    if _BLOCKS is not None: return _BLOCKS
    _BLOCKS = {}
    for fp in _glob.glob(os.path.join(ROOT, "src/asm/unprocessed", "*.asm")):
        if os.path.basename(fp).startswith(("rdata", "data")): continue
        with open(fp, encoding="latin-1") as fh:
            lines = fh.read().split("\n")
        i, n = 0, len(lines)
        while i < n:
            m = _LBLDEF.match(lines[i].strip())
            if not (m and _FNLBL.match(m.group(1))):         # advance to a function/range boundary
                i += 1; continue
            label, blk = m.group(1), []
            if m.group(2).strip(): blk.append(m.group(2).strip())
            j = i + 1
            while j < n:                                     # collect until the NEXT function/range boundary
                s = lines[j].strip()
                lm = _LBLDEF.match(s)
                if lm and _FNLBL.match(lm.group(1)): break
                if s: blk.append(s)
                j += 1
            if label.startswith(("?", "@")): _BLOCKS[label] = blk    # store only named-function blocks
            i = j
    return _BLOCKS

def _asm_block(fn):
    """raw code lines of fn's body from the cached src/asm index; None if fn has no asm label (folded)."""
    import iterate
    mg = iterate._mangled_of(fn)
    B = _build_blocks()
    if mg in B: return B[mg]
    try:
        import propose; H = propose._syms().by_mangled.get(mg)
        if H and getattr(H, "cname", None) and H.cname in B: return B[H.cname]
    except Exception: pass
    return None

def transcribe_full(fn, check=True):
    """(asm_lines, decl_txt) for a NAKED __asm body: transcribe the target's INSTRUCTIONS (MSVC re-encodes
    them; matches for the common forms). Internal branches -> MSVC labels; `_jmp_addr_` calls -> plain
    extern (MSVC6 `_`-prefix). Cross-checks the src/asm block vs the objdiff REPORT (COMDAT-folding can
    mislabel a block) -> None on mismatch. Skips rdata/data const + mangled/named call (-> v3). NOTE: raw
    `_emit` of the bytes was tried and REGRESSED (objdiff mis-frames raw bytes after a reloc: DestroyedBy-
    Effect 100%->98.3%); mnemonic transcription is the proven path (banked 83). Encoding-incompatible forms
    land <100% and revert cleanly -- the GATE is the byte-exact guarantee."""
    blk = _asm_block(fn)
    if not blk: return None
    body, prev_ret = [], False
    for s in blk:                                                # truncate at terminal ret + nop alignment
        code = _DISP.sub("", s.split("//", 1)[0].strip())
        if not code: continue
        mn0 = code.split(None, 1)[0].split(".")[0]
        if prev_ret and mn0 in ("nop", "int3"): break
        body.append(code); prev_ret = (mn0 == "ret")
    while body and re.match(r"^(nop|int3)\b", body[-1]): body.pop()
    if not body: return None
    if check:                                                   # CROSS-CHECK vs report (objdiff; skip in fast scan)
        rep = full_target(fn)
        if not rep: return None
        rmn = [m for m, _ in rep]
        while rmn and rmn[-1] in ("nop", "int3"): rmn.pop()
        # COMDAT-folding guard: a folded block can carry the WRONG function's label. Compare the src/asm
        # mnemonic stream (dropping pure label lines, and stripping any `.size` suffix) against the objdiff
        # report's mnemonics; any divergence means the block isn't really this function -> bail (None).
        if [c.split(None, 1)[0].split(".")[0] for c in body if not _LBLDEF.match(c)] != rmn: return None
    lines, externs, data_ext = [], set(), set()   # data_ext = data globals referenced via /* OFFSET SYM */
    for code in body:
        lm = _LBLDEF.match(code)
        if lm and _INTERNAL.search(lm.group(1) + ":"):
            # An INTERNAL local label (`.Lbl_addr_`/`start_`): emit it as an MSVC `L_<hex>:` label, then
            # continue processing whatever instruction shared the label's line (label-line first-instr).
            lines.append("%s:" % _san_lbl(lm.group(1))); code = lm.group(2).strip()
            if not code: continue
        elif lm:
            return None                                          # a NAMED/mangled label inside the body -> not transcribable
        mn = code.split(None, 1)[0].split(".")[0]
        ops = code[len(code.split(None, 1)[0]):].strip()
        ops, dsyms = _data_reloc(ops)                            # OFFSET _SYM -> offset SYM (DIR32 reloc)
        data_ext |= dsyms
        if re.search(r"rdata_bytes|data_bytes|__real@|__xmm@|__imp_|st\(", ops): return None
        if mn in _JCC:
            t = ops.strip()
            # Branch target rewriting: an internal target -> the matching MSVC `L_<hex>` label (kept
            # inside the body); a `_jmp_addr_0x..` target -> a plain extern (MSVC6 strips the leading `_`,
            # so the C symbol is `jmp_addr_0x..`); anything else (mangled/named/indirect) -> bail.
            if _INTERNAL.search(t): lines.append("%s %s" % (mn, _san_lbl(t))); continue
            m2 = re.match(r"^_jmp_addr_0x([0-9a-fA-F]+)$", t)
            if m2: s = "jmp_addr_0x" + m2.group(1); externs.add(s); lines.append("%s %s" % (mn, s)); continue
            return None
        if mn == "call":
            m2 = re.match(r"^_jmp_addr_0x([0-9a-fA-F]+)$", ops.strip())
            if not m2: return None
            s = "jmp_addr_0x" + m2.group(1); externs.add(s); lines.append("call " + s); continue
        if mn == "ret":
            # See transcribe(): MSVC inline asm wants the stdcall cleanup byte count in decimal, so a
            # `0x..` immediate is converted; a bare `ret` (no operand) stays `ret`.
            n = ops.strip()
            lines.append("ret " + (str(int(n, 16)) if n.startswith("0x") else n) if n else "ret"); continue
        if mn in ("nop", "int3"): continue
        if re.search(r"[?@]", ops): return None
        lines.append(("%s %s" % (mn, ops)).strip())
    if not lines: return None
    decl = "".join('extern "C" void %s(void);\n' % s for s in sorted(externs))
    decl += "".join('extern "C" char %s[];\n' % s for s in sorted(data_ext))   # data-reloc globals
    return lines, decl

# Extracts the raw machine-code bytes the reassembler annotates at the end of each instruction line,
# e.g. "... // 0x0047b150  8b8960010000" -> "8b8960010000".
_BYTESRE2 = re.compile(r"//\s*0x[0-9a-fA-F]+\s+([0-9a-fA-F]+)\s*$")
# Operands that carry an EXTERNAL relocation we cannot reproduce by emitting literal bytes (the reloc
# target's address differs in the staging image): a named/mangled call symbol (_jmp_addr_, ?mangled,
# @cname), or a .data/.rdata reference. (An absolute-address immediate is NOT matched here on purpose --
# it's indistinguishable from a plain constant by regex; the gate reverts the rare real-reloc case.)
_EXTSYM = re.compile(r"_jmp_addr_|\?|@\w|rdata_bytes|data_bytes|__real|__xmm|__imp")

def transcribe_emit(fn, check=True):
    """NO-CALL functions: `_emit` the EXACT target bytes -> byte-exact, beating the MSVC6 inline-asm-vs-
    codegen ENCODING WALL (the original was MSVC6 codegen; _emit lays its bytes down verbatim). No reloc
    boundary (no call) so objdiff frames it correctly (the _emit regression was reloc-boundary-specific).
    Skips any EXTERNAL reloc operand (call/data/absolute-addr) -> None (those need the mnemonic path or v3)."""
    blk = _asm_block(fn)
    if not blk: return None
    items = []
    for s in blk:
        bm = _BYTESRE2.search(s)
        if not bm: continue
        code = _DISP.sub("", s.split("//", 1)[0].strip())
        lm = _LBLDEF.match(code)
        if lm: code = lm.group(2).strip()
        if not code: continue
        mn = code.split(None, 1)[0].split(".")[0]
        ops = code[len(code.split(None, 1)[0]):].strip()
        items.append((mn, ops, bm.group(1).lower()))
    trunc = []
    for it in items:
        if trunc and trunc[-1][0] == "ret" and it[0] in ("nop", "int3"): break
        trunc.append(it)
    while trunc and trunc[-1][0] in ("nop", "int3"): trunc.pop()
    if not trunc or trunc[-1][0] != "ret": return None
    for mn, ops, byts in trunc:
        # A `call` (always external) and an external `jmp` carry an address-dependent rel32 we cannot
        # emit as literal bytes -> those go to the mnemonic path. An INTERNAL jmp (`.Lbl_addr_`/`start_`)
        # keeps its rel within the byte-identical function, so _emit is fine for it.
        if mn == "call": return None
        if mn == "jmp" and not _INTERNAL.search(ops): return None
        # NOTE asymmetry: an external UNCONDITIONAL jmp is rejected explicitly above, but an external
        # CONDITIONAL Jcc is caught only by the `_EXTSYM` test below (its target is a `_jmp_addr_`/mangled
        # symbol, which `_EXTSYM` matches). An INTERNAL Jcc keeps its rel within the byte-identical
        # function, so emitting its bytes is safe. The check=True cross-check is the final backstop.
        if _EXTSYM.search(ops): return None                       # call/data/rdata/external-jcc reloc -> reloc
        # Any data-global reference (`OFFSET _SYM` immediate or `[_SYM ...]` memory) carries a DIR32 reloc
        # we can't emit as literal bytes -> defer to the MNEMONIC path (transcribe_full -> `offset SYM`/
        # `[SYM]`); _emit would hardcode the address. (`_jmp_addr_` calls are handled above, so excluded.)
        if re.search(r"\b_[A-Za-z]\w+\b", ops) and "_jmp_addr_" not in ops: return None
    if check:
        rep = full_target(fn)
        if not rep: return None
        rmn = [m for m, _ in rep]
        while rmn and rmn[-1] in ("nop", "int3"): rmn.pop()
        if [m for m, _, _ in trunc] != rmn: return None
    lines = []
    for mn, ops, byts in trunc:
        for i in range(0, len(byts), 2):
            lines.append("_emit 0x%s" % byts[i:i + 2])
    return (lines, "") if lines else None

def _xlate(fn):
    """(lines, decl_txt) for fn's NAKED __asm body. Routing:
      1. transcribe_emit -- NO-CALL functions: `_emit` the exact target bytes (byte-exact; beats the
         MSVC6 inline-asm-vs-codegen encoding wall). Returns None if the fn has a call/jmp/data reloc.
      2. transcribe_full -- CALL-bearing functions: mnemonic transcription (emits `call jmp_addr_X`).
      3. report-based straight-line transcribe -- COMDAT-folded functions (no own asm label)."""
    blk = _asm_block(fn)
    if blk:
        tr = transcribe_emit(fn) or transcribe_full(fn)
        if tr: return tr
    ti = full_target(fn)
    t2 = transcribe(ti) if ti else None
    if not t2: return None
    lines, externs = t2
    return lines, "".join('extern "C" void %s(void);\n' % s for s in externs)

def apply_wrap(fn, lines, decl_txt):
    """DESTRUCTIVELY rewrite fn's staging .cpp: splice the transcribed `__asm { ... }` body in via
    liftgate.splice_body, then prepend the `extern "C"` call-target decls (`decl_txt`) and a
    `__declspec(naked)` qualifier onto the function's signature line. Returns the edited source path, or
    None if the unit/signature can't be located or the function is already naked. Callers (gated_one) must
    have content-backed up the file first -- this writes in place and only the recompile-gate reverts it."""
    import verify, liftgate
    loc = verify.unit_for_function(fn)
    if not loc or not loc[1]: return None
    src, cls, meth = loc[1], fn.split("@")[1], fn.split("@")[0]
    with open(src, encoding="latin-1") as fh:
        text = fh.read()
    body = "__asm {\n" + "".join("        %s\n" % l for l in lines) + "    }"
    new = liftgate.splice_body(text, cls, meth, body)
    if new is None: return None
    # Match the function's signature line: `[ret-type ]Cls::Meth(<args>)` on its own line. `[^\n/]*`
    # before the name excludes `//`-comment lines, and the `(?m)^...$` anchors it to a full line so we
    # don't match a forward declaration with a trailing `;` (which wouldn't end the line at `)`).
    pat = re.compile(r"(?m)^([^\n/]*\b%s::%s\s*\([^\n]*\))\s*$" % (re.escape(cls), re.escape(meth)))
    m = pat.search(new)
    if not m: return None
    # Idempotent: if the def is ALREADY `__declspec(naked)` (a prior transcription / kept near-miss we are
    # re-improving), splice_body has already replaced its body -- don't re-add the qualifier, and prepend
    # only the decls not already present (avoids duplicates on re-application).
    needed = "".join(d + "\n" for d in decl_txt.splitlines() if d.strip() and d not in new)
    prefix = "" if "__declspec(naked)" in m.group(1) else "__declspec(naked) "
    new = new[:m.start()] + needed + prefix + m.group(1) + new[m.end():]
    with open(src, "w", encoding="latin-1") as fh:
        fh.write(new)
    return src

def _report_pct(fn):
    """fn's CURRENT match% from a fast per-unit objdiff diff (no full-report regen)."""
    import iterate, verify
    loc = verify.unit_for_function(fn)
    if not loc: return None
    mg = iterate._mangled_of(fn)
    obj = iterate._diff_json(loc[0], mg)
    L = iterate._sym(obj, "left", mg) if obj else None
    return L.get("match_percent") if L else None

def gated_one(fn, apply=False, min_keep=100.0):
    """Transcribe fn, splice the naked __asm body, recompile, and KEEP per the regression-proof policy in
    nearmiss.should_keep: min_keep=100 banks only byte-exact; min_keep=90 ALSO keeps >=90% IMPROVEMENTS as
    hand-analysis seeds (logged to the near-miss ledger). A kept body always raises the match% (never
    lowers it), and a <100% near-miss never enters the verified ratchet -> nothing else regresses."""
    import verify, nearmiss
    tr = _xlate(fn)                                       # transcribe_full cross-checks vs report internally
    if not tr: return {"fn": fn, "msg": "not safely transcribable (rdata/mangled-call/folding/none)"}
    lines, decl_txt = tr
    if not apply: return {"fn": fn, "lines": lines}
    loc = verify.unit_for_function(fn)
    if not loc or not loc[1]: return {"fn": fn, "msg": "no staging unit"}
    src = loc[1]
    before = _report_pct(fn)
    with open(src, encoding="latin-1") as fh:            # CONTENT backup (NOT git checkout, which is
        backup = fh.read()                              # destructive -> would erase OTHER banks in this file)
    if apply_wrap(fn, lines, decl_txt) is None:
        return {"fn": fn, "msg": "could not rewrite def"}
    rc = verify.recompile_unit(src)
    after = _report_pct(fn) if rc is True else None
    keep, is_nm = nearmiss.should_keep(before, after, min_keep)
    if not keep:
        with open(src, "w", encoding="latin-1") as fh:  # restore the pre-edit content, then rebuild it back
            fh.write(backup)
        verify.recompile_unit(src)
    elif is_nm:
        nearmiss.log_near_miss(fn, before, after, loc[0])
    msg = ("KEEP near-miss %.1f%% (was %.1f%%)" % (after, before or 0.0)) if (keep and is_nm) else \
          ("KEEP 100%%" if keep else "REVERT: %s" % (after if rc is True else str(rc)[:80]))
    return {"fn": fn, "before": before, "after": after, "kept": keep, "near_miss": is_nm, "msg": msg}

def candidates(min_pct=0.0):
    """Enumerate near-miss functions worth sweeping: every function in the objdiff report with a match% in
    [min_pct, 100.0) (i.e. not yet byte-exact) whose mangled name resolves to a class+method AND that the
    FAST scan (no objdiff cross-check) believes is transcribable by EITHER path -- transcribe_full
    (mnemonic, call-bearing) or transcribe_emit (exact-byte, no-call). Returns a list of (name, pct).
    The cheap check=False scan is just a pre-filter; gated_one re-runs the full cross-checked transcribe
    + recompile gate before banking, so a false positive here costs only a wasted attempt, never a bank."""
    import verify, propose
    rep = verify.load_report(); H = propose._syms(); out = []
    for u, fn, pct, dem in verify.iter_functions(rep):
        if pct is None or not (min_pct <= pct < 100.0): continue
        f = H.by_mangled.get(fn)
        if not (f and f.cls and f.method): continue
        name = "%s@%s" % (f.method, f.cls)
        # Fast scan (no cross-check objdiff). Include BOTH paths so no-call `_emit`-only wins aren't missed:
        # transcribe_full (mnemonic, call-bearing) OR transcribe_emit (exact-byte, no-call).
        if transcribe_full(name, check=False) or transcribe_emit(name, check=False):
            out.append((name, pct))
    return out

def sweep(min_pct=0.0, apply=False, min_keep=100.0):
    """Transcribe + gate every candidate. min_keep=100 banks only byte-exact; min_keep=90 ALSO keeps
    >=90% improvements as near-miss seeds (logged for hand-analysis), never regressing anything."""
    cands = candidates(min_pct)
    print("%d transcribable candidates (min_keep=%g)" % (len(cands), min_keep))
    banked = near = miss = 0
    for name, pct in cands:
        if not apply:
            print("  WOULD %s" % name[:50]); continue
        r = gated_one(name, apply=True, min_keep=min_keep)
        if r.get("kept") and not r.get("near_miss"): banked += 1
        elif r.get("kept"): near += 1
        else: miss += 1
        print("  %-46s %s" % (name[:46], r.get("msg", "")))
    print("\n%s: %d candidates, %d banked, %d near-miss-kept, %d miss" % ("SWEEP" if apply else "DRY", len(cands), banked, near, miss))
    return banked, near, miss

def _self_test():
    ok = True
    def chk(c, n, got=None):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n + ("" if c else "  got:%r" % (got,)))
    tr = transcribe([("mov", "ecx, [ecx + 0x160]"), ("call", "_jmp_addr_0x004ef4f0"), ("ret", "0x4")])
    chk(tr and tr[0] == ["mov ecx, [ecx + 0x160]", "call jmp_addr_0x004ef4f0", "ret 4"] and "jmp_addr_0x004ef4f0" in tr[1],
        "transcribe mov;call _jmp_addr_;ret 4", tr)
    chk(transcribe([("fld", "dword ptr [rdata_bytes + 0x10]"), ("ret", "")]) is None, "rdata const -> skip")
    chk(transcribe([("je", ".Lbl_addr_0x100"), ("ret", "")]) is None, "internal branch -> skip (v1)")
    chk(transcribe([("call", "?Foo@Bar@@QAEXXZ"), ("ret", "")]) is None, "mangled call -> skip (v1)")
    chk(transcribe([("xor", "eax, eax"), ("ret", "")])[0] == ["xor eax, eax", "ret"], "plain straight-line")
    chk(transcribe([("mov", "eax, [ecx]"), ("ret", ""), ("nop", "")])[0] == ["mov eax, [ecx]", "ret"], "strips trailing nop pad")
    chk(_san_lbl(".Lbl_addr_0x0060617a") == "L_0060617a", "label sanitize", _san_lbl(".Lbl_addr_0x0060617a"))
    chk(_DISP.sub("", "{disp8} je .Lbl_addr_0x100") == "je .Lbl_addr_0x100", "strip {disp} prefix")
    chk("je" in _JCC and "call" not in _JCC, "jcc set")
    dr, ds = _data_reloc("ecx, OFFSET _GSpellSeedInfo_ARRAY_00d9d678")
    chk(dr == "ecx, offset GSpellSeedInfo_ARRAY_00d9d678" and "GSpellSeedInfo_ARRAY_00d9d678" in ds,
        "data-reloc immediate OFFSET -> offset SYM", (dr, ds))
    dr2, ds2 = _data_reloc("ecx, dword ptr [_gameThing + eax*4]")
    chk(dr2 == "ecx, dword ptr [gameThing + eax*4]" and "gameThing" in ds2, "data-reloc memory [_SYM]", (dr2, ds2))
    chk(_data_reloc("_jmp_addr_0x00637cc0")[0] == "_jmp_addr_0x00637cc0", "data-reloc leaves _jmp_addr_ call target")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a: sys.exit(_self_test())
    # Pick the optional positional MINPCT (the survey/sweep floor): the first bare numeric token. The
    # `.replace(".","").isdigit()` test accepts plain ints and dotted decimals (e.g. "90", "90.0") while
    # rejecting flags like "--sweep"; it does NOT accept negatives or scientific notation (none are valid
    # match%). Defaults to 0.0 when no numeric token is present.
    mp = next((float(x) for x in a if x.replace(".", "").isdigit()), 0.0)
    import nearmiss
    mk = nearmiss.MIN_NEAR if "--keep-near-miss" in a else 100.0   # keep >=MIN_NEAR(80%) improvements as seeds
    import json
    if "--one" in a:
        i = a.index("--one")
        if i + 1 >= len(a):                            # guard: `--one` with no Name@Class following it
            sys.exit("usage: --one <Name@Class> [--apply]")
        print(json.dumps(gated_one(a[i + 1], apply="--apply" in a, min_keep=mk), indent=2, default=str))
    elif "--survey" in a: sweep(mp, apply=False, min_keep=mk)
    elif "--sweep" in a: sweep(mp, apply="--apply" in a, min_keep=mk)
    else: print(__doc__)
