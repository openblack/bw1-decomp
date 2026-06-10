#!/usr/bin/env python3
"""iterate.py - drive a near-miss candidate to byte-exact 100% automatically.

THE RETHINK, INDUSTRIALIZED. A generated C body that compiles-but-isn't-byte-exact (or compile-
fails on a type mismatch) is NOT a dead end - it's a starting point you DRIVE to exact, the way a
matching decomp is actually made. This applies a library of systematic, codegen-correcting variant
transforms (the mismatch classes we keep seeing: integer load WIDTH/SIGN, pointer-load width,
signed-vs-unsigned return, expression re-association) and re-gates each via the objdiff build,
keeping the first that reaches 100%. Every transform that wins is a candidate to fold back into the
generator (propose.py) as a CLASS-WIDE fix - which is how near-misses become exact at scale.

Usage:
  python tools/iterate.py <Name@Class>             # propose a base candidate, then drive to 100%
  python tools/iterate.py <Name@Class> --body "..."# drive a given candidate to 100%
  python tools/iterate.py --diff <Name@Class>      # show the per-instruction objdiff mismatch
  python tools/iterate.py --batch [N]              # auto-iterate every propose candidate (gated, ratcheted)
  python tools/iterate.py --near-miss [MINPCT]     # drive the real MINPCT..99% near-miss population (default 40)
  python tools/iterate.py --reloc [MINPCT]         # rewrite hardcoded .data/.rdata addrs as symbols (default 80)
  python tools/iterate.py --self-test              # pure variant-transform tests (no build)

Library:  from iterate import variants, auto_iterate
"""
import os, re, sys, subprocess
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

# --- variant transforms: a candidate C body -> alternative C bodies to try -----------------
# The set of integer types we substitute into a deref cast. Order matters only cosmetically;
# `variants()` tries them all. We list both narrow and wide, signed and unsigned, because the
# winning width/sign is exactly what we're searching for (movzx/movsx of a byte/word field, etc.).
_INTW = ["uint8_t", "int8_t", "uint16_t", "int16_t", "int32_t", "uint32_t"]
# Matches the cast inside the FIRST integer/bool deref in a body, e.g. the `uint32_t` in
# `*(uint32_t*)(...)`. The alternation lists BOTH the C-keyword spellings (`unsigned int`,
# `short`, `char`, ...) AND the stdint spellings (`uint32_t`, `int8_t`, `bool32_t`, ...) because
# propose.py / the lifters emit a mix of both, and we must recognise either to swap its width/sign.
_DEREF = re.compile(r"\*\((unsigned int|unsigned short|unsigned char|u?int(?:8|16|32)_t|bool32_t"
                    r"|uint|int|short|char)\*\)")
# Matches a POINTER-typed deref cast: group 1 = type name, group 2 = the `*`/`**` run. Used to flip
# `*(T*)` <-> `*(T**)` (a struct field that holds a 4-byte pointer may be loaded as either width).
_PTRDEREF = re.compile(r"\*\(([A-Za-z_][\w:]*)(\*+)\)")       # *(T*) / *(T**) pointer-load width
# Matches a leading `return (intN_t)` cast so we can flip its signedness (signed<->unsigned return).
_RETCAST = re.compile(r"^return \((u?int(?:8|16|32)_t)\)")    # return (intN_t)EXPR;

# --- .data/.rdata reloc constants (shared by reloc_fix and the batch_reloc pre-filter) ------
# Virtual-address window of the win1.41 image's global-data sections (.data/.rdata). A hex literal
# in this range is a candidate global reference worth rewriting as a symbol; one outside it is not.
RELOC_ADDR_LO, RELOC_ADDR_HI = 0x900000, 0xf00000
# Pre-filter: does a body contain a literal that COULD fall in the reloc window? We match 6+ hex
# digits (case-insensitive) starting 0x9..0xf so this agrees with reloc_fix's own scan
# (`0x[0-9a-fA-F]{6,}` + range check) -- if these disagreed, an uppercase or 7-digit literal would
# pass reloc_fix but be filtered out here, silently skipping a valid RELOC near-miss.
_RELOC_LITERAL = re.compile(r"0x[9a-fA-F][0-9a-fA-F]{5,}")

def variants(c):
    """systematic codegen-correcting transforms of a near-miss body. ORDER = likelihood."""
    out = []
    seen = {c}
    def add(v):
        if v and v != c and v not in seen: seen.add(v); out.append(v)
    # 1) integer load WIDTH/SIGN on the first deref cast (movzx/movsx of byte/word fields)
    m = _DEREF.search(c)
    if m:
        for w in _INTW:
            add(c[:m.start(1)] + w + c[m.end(1):])
    # 2) pointer-load width: *(T*) <-> *(T**)  (a pointer FIELD holds a 4-byte pointer)
    #    Gating: exclude `char` because `*(char*)` is a byte load (an integer width handled by step 1,
    #    not a pointer field), and re-check _DEREF at the same start so we don't treat an int-type
    #    deref (which _PTRDEREF would ALSO match, since its type group is generic) as a pointer deref
    #    and emit a nonsensical extra `*`.
    m2 = _PTRDEREF.search(c)
    if m2 and m2.group(1) not in ("char",) and not _DEREF.match(c[m2.start():]):
        stars = m2.group(2)
        # Toggle the pointer depth: a single `*` becomes `**` and vice-versa.
        add(c[:m2.start(2)] + ("*" if len(stars) > 1 else "**") + c[m2.end(2):])
    # 3) return-value sign cast (a small idiom returned as signed vs unsigned)
    m3 = _RETCAST.search(c)
    if m3:
        for w in ("int32_t", "uint32_t"):
            add(c[:m3.start(1)] + w + c[m3.end(1):])
    return out

# --- the gate-driven engine (needs the objdiff build) --------------------------------------
def _measure(fn, src, cls, method, body, base_text, splice):
    """splice `body` into base_text, recompile the unit, return (pct or None). leaves src spliced."""
    import verify
    new = splice(base_text, cls, method, body)
    if new is None: return None
    with open(src, "w", encoding="latin-1") as fh: fh.write(new)
    if verify.recompile_unit(src) is not True: return None
    return verify.function_match(fn, refresh=True)

def auto_iterate(fn, base_cand, max_tries=14, verbose=True):
    """gate base_cand; if <100%, try variant fixes; KEEP the 100% winner, else restore original.
       returns {kept, pct, body, tried}."""
    import verify, liftgate
    loc = verify.unit_for_function(fn)
    if not loc or not loc[1]: return {"kept": False, "pct": None, "body": None, "tried": 0, "msg": "no unit"}
    unit, src = loc
    cls, method = (fn.split("@", 1)[1], fn.split("@", 1)[0]) if "@" in fn else (None, fn)
    if not cls: return {"kept": False, "pct": None, "body": None, "tried": 0, "msg": "no class"}
    with open(src, encoding="latin-1") as fh: orig = fh.read()
    best = (None, -1.0)
    tried = 0
    try:
        # measure the base first; only spend variant recompiles on a genuine near-miss
        tried = 1
        pct = _measure(fn, src, cls, method, base_cand, orig, liftgate.splice_body)
        if verbose: print("   base   %-6s  %s" % ("FAIL" if pct is None else "%.1f%%" % pct, base_cand[:70]))
        if pct is not None: best = (base_cand, pct)
        if pct is not None and 0.0 < pct < 100.0:      # genuine near-miss -> spend variant recompiles
            for c in variants(base_cand)[:max_tries - 1]:
                tried += 1
                pctv = _measure(fn, src, cls, method, c, orig, liftgate.splice_body)
                if verbose: print("   try %-2d  %-6s  %s" % (tried, "FAIL" if pctv is None else "%.1f%%" % pctv, c[:70]))
                if pctv is not None and pctv > best[1]: best = (c, pctv)
                if pctv is not None and pctv >= 100.0: break
    finally:
        # Persist the winner if we reached 100%, otherwise restore the original body verbatim, then
        # recompile so the on-disk unit always matches the source we leave behind.
        final_text = liftgate.splice_body(orig, cls, method, best[0]) if best[1] >= 100.0 else orig
        with open(src, "w", encoding="latin-1") as fh: fh.write(final_text)
        verify.recompile_unit(src)
    return {"kept": best[1] >= 100.0, "pct": best[1] if best[1] >= 0 else None, "body": best[0], "tried": tried}

def _current_body(src, cls, method):
    """the CURRENT body text of a staging function (the variant base for an already-applied near-miss)."""
    import liftgate
    with open(src, encoding="latin-1") as fh: txt = fh.read()
    span = liftgate._find_body_span(txt, cls, method)
    if not span: return None
    i, j = span
    return txt[i + 1:j].strip()

def batch_nearmiss(min_pct=40.0, limit=None):
    """drive the REAL near-miss population (functions at min_pct..99% in the objdiff report, NOT stubs)
       to 100% via variant fixes on each function's CURRENT body. full-rebuild + ratchet bracketed."""
    import verify, ratchet, propose
    H = propose._syms()
    rep = verify.load_report()
    targets = []
    for u, fn, pct, dem in verify.iter_functions(rep):
        if pct is None or not (min_pct <= pct < 100.0): continue
        if not fn.startswith("?") or fn.startswith("??"): continue       # normal methods only
        f = H.by_mangled.get(fn)
        if f and f.cls and f.method: targets.append(("%s@%s" % (f.method, f.cls), pct))
    targets = list(dict.fromkeys(targets))
    print("[iterate] %d normal-method near-misses at %.0f-99%%" % (len(targets), min_pct))
    subprocess.run(["cmake", "--build", "cmake-build-presets/objdiff"], cwd=ROOT, capture_output=True)
    base_v = ratchet.current_verified()
    applicable = kept = 0
    for i, (fn, pct0) in enumerate(targets):
        if limit and i >= limit: break
        loc = verify.unit_for_function(fn)
        if not loc or not loc[1]: continue
        cls, method = fn.split("@")[1], fn.split("@")[0]
        cur = _current_body(loc[1], cls, method)
        if not cur or not variants(cur): continue                       # no applicable variant -> skip
        applicable += 1
        r = auto_iterate(fn, cur, verbose=False)
        if r["kept"]: kept += 1; print("  [%d] KEPT 100%%  %s  (was %.1f%%)" % (i, fn, pct0))
    print("[iterate] %d had applicable variants; KEPT %d; GUARD: full rebuild + ratchet ..." % (applicable, kept))
    subprocess.run(["cmake", "--build", "cmake-build-presets/objdiff"], cwd=ROOT, capture_output=True)
    final_v = ratchet.current_verified()
    print("[iterate] VERIFIED (full rebuild): %d -> %d  (net %+d)" % (len(base_v), len(final_v), len(final_v) - len(base_v)))
    lost = base_v - final_v
    print("[iterate] *** ALARM %d REGRESSED: %s" % (len(lost), sorted(lost)[:6]) if lost else "[iterate] CLEAN (no regression).")

_SZ = None
def _resolve_data_sym(addr):
    """a .data/.rdata address -> (c_decl_name, offset) for a global symbol ref, or None.
       e.g. 0xd4f6c0 -> ('ReactionInfo_ARRAY_00d4f6b0', 0x10).  Strips MSVC's leading '_'."""
    global _SZ
    if _SZ is None:
        from symbolize import Symbolizer; _SZ = Symbolizer()
    # Symbolizer.resolve() returns a human-readable string; we scrape it for the symbol name + offset.
    # Only .data/.rdata sections name a global we can reference (code/strings/etc. don't apply here).
    s = str(_SZ.resolve(addr))
    if ".data" not in s and ".rdata" not in s: return None
    # Interior-of-a-symbol form, e.g. "interior of _Foo (+0x10)" -> ('Foo', 0x10). The leading `_`
    # (MSVC's C-name decoration) is optional and stripped; the offset is hex.
    m = re.search(r"(?:interior of )?_?([A-Za-z]\w+)\s*\(\+0x([0-9a-fA-F]+)\)", s)
    if not m:
        # Exact-symbol form (offset 0), e.g. "... ] _Foo" after the section bracket.
        m2 = re.search(r"\]\s+_?([A-Za-z]\w+)\b", s)        # exact symbol, offset 0
        return (m2.group(1), 0) if m2 else None
    return (m.group(1), int(m.group(2), 16))

def reloc_fix(body):
    """rewrite hardcoded .data/.rdata address literals as global-symbol references (emits a DIR32
       reloc -> matches the target). returns (new_body, {extern_decls}) or (None, set())."""
    decls = set(); new = body
    for m in re.finditer(r"0x([0-9a-fA-F]{6,})", body):
        a = int(m.group(1), 16)
        # Keep only literals inside the binary's .data/.rdata virtual-address window. These bounds
        # are the (approximate) section span of the win1.41 image; addresses outside it are not
        # global-data references (code addresses, small immediates, etc.) and must be left alone.
        if not (RELOC_ADDR_LO <= a <= RELOC_ADDR_HI): continue
        r = _resolve_data_sym(a)
        if not r: continue
        sym, off = r
        decls.add(sym)
        ref = "((char*)&%s + 0x%x)" % (sym, off) if off else "((char*)&%s)" % sym
        new = new.replace(m.group(0), ref)
    return (new, decls) if decls else (None, set())

def _insert_externs(text, decls):
    """add `extern \"C\" char <sym>[];` for each decl not already present, after the include block."""
    add = [d for d in decls if ('char %s[]' % d) not in text and (' %s[]' % d) not in text]
    if not add: return text
    block = "".join('extern "C" char %s[];\n' % d for d in sorted(add))
    lines = text.split("\n")
    pos = 0
    for i, l in enumerate(lines):
        if l.startswith("#include") or l.startswith("extern ") or l.startswith("using "):
            pos = i + 1
    lines.insert(pos, block.rstrip("\n"))
    return "\n".join(lines)

def batch_reloc(min_pct=80.0, limit=None):
    """sweep the RELOC near-misses: rewrite hardcoded .data/.rdata addresses as global-symbol refs.
       gated per-function with recompile_unit (avoids the cmake-skip gremlin); ratchet-bracketed."""
    import verify, ratchet, propose, liftgate
    H = propose._syms(); rep = verify.load_report()
    print("[reloc] full-rebuild baseline ...")
    subprocess.run(["cmake", "--build", "cmake-build-presets/objdiff"], cwd=ROOT, capture_output=True)
    base_v = ratchet.current_verified()
    targets = []
    for u, fn, pct, dem in verify.iter_functions(rep):
        if pct is None or not (min_pct <= pct < 100.0): continue
        if not fn.startswith("?") or fn.startswith("??"): continue
        f = H.by_mangled.get(fn)
        if not (f and f.cls and f.method): continue
        loc = verify.unit_for_function("%s@%s" % (f.method, f.cls))
        if not loc or not loc[1]: continue
        cur = _current_body(loc[1], f.cls, f.method)
        # Pre-filter on a shared regex so we don't miss uppercase-hex or 7+digit literals that
        # reloc_fix would actually rewrite (see _RELOC_LITERAL).
        if cur and _RELOC_LITERAL.search(cur):
            targets.append(("%s@%s" % (f.method, f.cls), loc[1], f.cls, f.method, cur, pct))
    print("[reloc] %d near-miss candidates with .data/.rdata literals (>=%.0f%%)" % (len(targets), min_pct))
    kept = 0
    for i, (name, src, cls, meth, cur, pct) in enumerate(targets):
        if limit and i >= limit: break
        nb, decls = reloc_fix(cur)
        if not nb: continue
        with open(src, encoding="latin-1") as fh: orig = fh.read()
        txt = liftgate.splice_body(_insert_externs(orig, decls), cls, meth, nb)
        if txt is None: continue
        with open(src, "w", encoding="latin-1") as fh: fh.write(txt)
        ok = verify.recompile_unit(src) is True
        pct2 = verify.function_match(name, refresh=True) if ok else None
        if pct2 is not None and pct2 >= 100.0:
            kept += 1; print("  KEPT 100%%  %s (was %.1f%%)" % (name, pct))
        else:
            # Reloc rewrite didn't reach 100% -> revert to the original body and rebuild.
            with open(src, "w", encoding="latin-1") as fh: fh.write(orig)
            verify.recompile_unit(src)
    final_v = ratchet.current_verified()
    print("[reloc] KEPT %d; VERIFIED %d -> %d (net %+d)" % (kept, len(base_v), len(final_v), len(final_v) - len(base_v)))
    lost = base_v - final_v
    print(("[reloc] *** ALARM regressions: %s" % sorted(lost)[:6]) if lost else "[reloc] CLEAN (no regression).")

def _base_candidate(fn):
    """propose a starting candidate for a function (forward-call / getter / arithmetic / ...)."""
    import propose
    a = propose._addr(fn)
    if a is None: return None
    body = propose._bodies_for_addrs({a}).get(a)
    if not body: return None
    rt, pn, pt = propose._staging_sig(fn)
    return propose._translate(body, rt or "uint32_t", pn, pt)

def batch(limit=None):
    """auto-iterate EVERY propose candidate to 100%, gated + ratcheted (full-rebuild authoritative)."""
    import propose, verify, ratchet
    stubs = propose._enum_stubs()
    print("[iterate] %d stubs; proposing base candidates ..." % len(stubs))
    bodies = propose._bodies_for_addrs({propose._addr(n) for n, *_ in stubs if propose._addr(n)})
    cands = []
    for n, rt, f, c, m, pn, pt in stubs:
        b = bodies.get(propose._addr(n))
        if not b: continue
        try: base = propose._translate(b, rt or "uint32_t", pn, pt)
        except Exception: base = None
        # Keep every translatable base candidate. (auto_iterate measures the base FIRST and only
        # spends variant recompiles on a genuine near-miss, so candidates without variants are still
        # worth gating -- the base itself may already be byte-exact.)
        if base: cands.append((n, base))
    print("[iterate] %d candidates; GUARD: full rebuild for authoritative baseline ..." % len(cands))
    subprocess.run(["cmake", "--build", "cmake-build-presets/objdiff"], cwd=ROOT, capture_output=True)
    base_v = ratchet.current_verified()
    kept = 0
    for i, (n, base) in enumerate(cands):
        if limit and i >= limit: break
        r = auto_iterate(n, base, verbose=False)
        if r["kept"]:
            kept += 1
            print("  [%d/%d] KEPT 100%%  %s  (%d tries)" % (i + 1, len(cands), n, r["tried"]))
    print("[iterate] driving done; KEPT %d; GUARD: full rebuild + ratchet ..." % kept)
    subprocess.run(["cmake", "--build", "cmake-build-presets/objdiff"], cwd=ROOT, capture_output=True)
    final_v = ratchet.current_verified()
    lost = base_v - final_v
    print("[iterate] VERIFIED (full rebuild): %d -> %d  (net %+d)" % (len(base_v), len(final_v), len(final_v) - len(base_v)))
    if lost: print("[iterate] *** ALARM: %d functions REGRESSED: %s" % (len(lost), sorted(lost)[:8]))
    else: print("[iterate] CLEAN (no regression).")

# --- diagnostic: the per-instruction objdiff mismatch (exposes NEW class-wide fixes) --------
def _diff_json(unit, mangled=None):
    """run objdiff-cli diff for a unit (whole obj) -> parsed JSON, or None."""
    import verify, json
    cfg = verify._objdiff_cfg()
    u = next((x for x in cfg.get("units", []) if x.get("name") == unit), None)
    if not u: return None
    cmd = [os.path.abspath(verify._cli()), "diff", "-1", u["target_path"], "-2", u["base_path"],
           "-o", "-", "--format", "json"]
    r = subprocess.run(cmd, cwd=verify.OBJDIFF_DIR, capture_output=True, text=True)
    if r.returncode != 0: return None
    try: return json.loads(r.stdout)
    except Exception: return None

def _sym(obj, side, mangled):
    """find the symbol record for `mangled` on one `side` ('left'/'right') of an objdiff JSON object.
       Tries an exact name match first, then falls back to a substring match (handles COMDAT-folded
       or otherwise-suffixed symbol names). Returns the symbol dict, or None."""
    return next((s for s in obj[side]["symbols"] if s.get("name") == mangled), None) \
        or next((s for s in obj[side]["symbols"] if mangled in str(s.get("name", ""))), None)

def _rows(sym):
    """[(formatted, diff_kind)] for a symbol's instructions."""
    out = []
    for w in (sym or {}).get("instructions", []):
        ins = w.get("instruction", w)
        out.append((ins.get("formatted", "?"), w.get("diff_kind", "")))
    return out

def _mangled_of(fn):
    import propose
    H = propose._syms()
    f = H.resolve(fn) or H.by_cname.get(fn)
    if not f and "@" in fn:
        meth, cls = fn.split("@", 1)[0], fn.split("@", 1)[1]
        f = next((x for x in H.by_cname.values() if x.cls == cls and x.method == meth), None)
    return getattr(f, "mangled", None) or fn

def diff_cause(fn):
    """classify a near-miss: returns (match%, cause, target_rows, base_rows).

    `cause` is one of: 'match' (no diffs), 'extra/missing-instr (boundary or multi-block)',
    'arg/reloc-mismatch (hardcoded addr vs symbol)', 'instr-form (encoding/opcode)', or an
    'other:<kinds>' fallback. The diagnostic-only paths ('no-unit', 'diff-failed',
    'symbol-not-found') are returned when the diff couldn't be produced. `target_rows`/`base_rows`
    are each a list of (formatted_instruction, diff_kind) pairs (see _rows)."""
    import verify
    loc = verify.unit_for_function(fn)
    if not loc: return (None, "no-unit", [], [])
    obj = _diff_json(loc[0], _mangled_of(fn))
    if not obj: return (None, "diff-failed", [], [])
    mg = _mangled_of(fn)
    L, R = _sym(obj, "left", mg), _sym(obj, "right", mg)
    if not L or not R: return (None, "symbol-not-found", [], [])
    lr, rr = _rows(L), _rows(R)
    pct = L.get("match_percent")
    # Collect the non-trivial objdiff diff_kind tags from both sides. objdiff emits values from a
    # fixed `DIFF_*` vocabulary (DIFF_NONE / DIFF_DELETE / DIFF_INSERT / DIFF_ARG_MISMATCH /
    # DIFF_OP_MISMATCH / DIFF_REPLACE / ...); DIFF_NONE means that instruction matched, so drop it.
    kinds = [k for _, k in lr + rr if k and k != "DIFF_NONE"]
    # Classify by the most actionable cause first. Each branch is matched on a SPECIFIC token (not a
    # loose letter pair) so unrelated kinds aren't misclassified -- e.g. "OP_MISMATCH" instead of a
    # bare "OP", which would also match strings like "DIFF_REPLACE_OPERAND" or any tag containing OP.
    if not kinds:
        cause = "match"
    elif any("DELETE" in k or "INSERT" in k for k in kinds):
        # An instruction is present on one side only -> the body is truncated or spans extra blocks.
        cause = "extra/missing-instr (boundary or multi-block)"
    elif any("ARG_MISMATCH" in k or "RELOC" in k.upper() for k in kinds):
        # Same opcode, different operand: usually a hardcoded address that should be a symbol reloc.
        cause = "arg/reloc-mismatch (hardcoded addr vs symbol)"
    elif any("REPLACE" in k or "OP_MISMATCH" in k for k in kinds):
        # Different opcode/encoding at the same position -> an instruction-form mismatch.
        cause = "instr-form (encoding/opcode)"
    else:
        cause = "other:" + ",".join(sorted(set(kinds)))[:40]
    return (pct, cause, lr, rr)

def show_diff(fn):
    """print the per-instruction target-vs-base mismatch + the classified cause."""
    pct, cause, lr, rr = diff_cause(fn)
    print("%s   match=%s%%   CAUSE: %s" % (fn, pct, cause))
    for k in range(max(len(lr), len(rr))):
        a, ak = lr[k] if k < len(lr) else ("", "")
        b, bk = rr[k] if k < len(rr) else ("", "")
        mark = "  " if (a == b and not ak and not bk) else ">>"
        print("   %s TGT %-34s | BASE %-34s %s" % (mark, a, b, (ak or bk)))

# --- self-test (pure transforms) -----------------------------------------------------------
def _self_test():
    ok = True
    def chk(c, n, got=None):
        nonlocal ok; ok = ok and c
        print(("  PASS " if c else "  FAIL ") + n + ("" if c else "   got: %r" % (got,)))
    v = variants("return *(uint32_t*)((char*)this + 0x10);")
    chk("return *(uint8_t*)((char*)this + 0x10);" in v, "int-width variant present")
    chk("return *(int16_t*)((char*)this + 0x10);" in v, "int-sign/width variant present")
    chk("return *(uint32_t*)((char*)this + 0x10);" not in v, "original excluded")
    v2 = variants("return *(GInterface*)((char*)this + 0x14);")
    chk("return *(GInterface**)((char*)this + 0x14);" in v2, "pointer-width variant present")
    v3 = variants("return (int32_t)(-1);")
    chk("return (uint32_t)(-1);" in v3, "return-sign variant present")
    vb = variants("return (bool32_t)(*(bool32_t*)((char*)this + 0xb4) >> 1 & 1);")
    chk("return (bool32_t)(*(uint8_t*)((char*)this + 0xb4) >> 1 & 1);" in vb,
        "bool32_t deref gets width variants (byte field)", [x for x in vb if "uint8" in x])
    chk(len(variants("return Object::Foo();")) == 0, "no spurious variants for a plain call")
    # reloc_fix: pure transform (symbol resolution stubbed)
    global _resolve_data_sym
    _orig_rds = _resolve_data_sym
    _resolve_data_sym = lambda a: ("ReactionInfo_ARRAY_00d4f6b0", 0x10) if a == 0xd4f6c0 else None
    nb, decls = reloc_fix("return *(uint8_t*)0xd4f6c0;")
    chk(nb == "return *(uint8_t*)((char*)&ReactionInfo_ARRAY_00d4f6b0 + 0x10);", "reloc_fix rewrites addr->sym", nb)
    chk(decls == {"ReactionInfo_ARRAY_00d4f6b0"}, "reloc_fix collects extern decl")
    txt = _insert_externs("#include <x.h>\nGBaseInfo* C::m() {}\n", {"ReactionInfo_ARRAY_00d4f6b0"})
    chk('extern "C" char ReactionInfo_ARRAY_00d4f6b0[];' in txt and txt.index("extern") > txt.index("#include"),
        "extern inserted after includes")
    _resolve_data_sym = _orig_rds
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a: sys.exit(_self_test())
    if "--diff" in a:
        di = a.index("--diff")
        # --diff needs the Name@Class to inspect as its next token.
        if di + 1 >= len(a): print("usage: iterate.py --diff <Name@Class>"); sys.exit(2)
        show_diff(a[di + 1]); sys.exit()
    if "--reloc" in a:
        idx = a.index("--reloc")
        mp = float(a[idx + 1]) if idx + 1 < len(a) and a[idx + 1].replace(".", "").isdigit() else 80.0
        batch_reloc(mp); sys.exit()
    if "--near-miss" in a:
        idx = a.index("--near-miss")
        mp = float(a[idx + 1]) if idx + 1 < len(a) and a[idx + 1].replace(".", "").isdigit() else 40.0
        batch_nearmiss(mp); sys.exit()
    if "--batch" in a:
        idx = a.index("--batch")
        n = int(a[idx + 1]) if idx + 1 < len(a) and a[idx + 1].isdigit() else None
        batch(n); sys.exit()
    if not a: print(__doc__); sys.exit(2)
    fn = a[0]
    # `--body "..."` overrides the auto-proposed base candidate; require its value to follow it.
    if "--body" in a:
        bi = a.index("--body")
        if bi + 1 >= len(a): print("usage: iterate.py <Name@Class> --body \"<C body>\""); sys.exit(2)
        body = a[bi + 1]
    else:
        body = _base_candidate(fn)
    if not body: print("no base candidate for", fn); sys.exit(1)
    print("[iterate] driving %s to 100%% ..." % fn)
    r = auto_iterate(fn, body)
    print("[iterate] %s  pct=%s  tried=%d" % ("KEPT 100%" if r["kept"] else "no 100%", r["pct"], r["tried"]))
    if r["kept"]: print("   winning body:", r["body"])
