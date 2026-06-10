#!/usr/bin/env python3
"""permute.py - an MSVC/x86 source PERMUTER for matching decompilation (objdiff-scored).

The research is unanimous: past structural fixes, matching is a BOUNDED SEARCH over
semantically-equivalent C variants (regalloc / instruction-selection / block-order are "compiler
entropy"). decomp-permuter does this for MIPS/PPC/ARM but has NO MSVC/x86 mode -- yet THIS repo has
the real MSVC6 toolchain + objdiff, so we can. This applies semantics-preserving source transforms,
recompiles each via the real toolchain, scores with objdiff, and greedily climbs toward 100%.

Use it as the FINISHER: get a function to a high-but-not-100% near-miss (hand-lift or seed), then
permute the last regalloc/ordering few percent. Transforms (text-level, gate-filtered so invalid
variants just revert): statement swap, decl reorder, commutative-operand swap, temp introduce/inline,
return-expression split, integer width/sign + pointer-width (reuses iterate.variants).

Usage:
  python tools/permute.py <Name@Class> [--body "..."] [--rounds N]   # seed (or current body) -> climb
  python tools/permute.py --self-test
Library: from permute import perturb, climb
"""
import os, re, sys
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

# --- clang-lexer token layer (robust boundaries; falls back to char scan) ------------------
def _lex(body):
    """[(spelling, start_off, end_off)] via the clang LEXER (no includes/resource-dir needed -- a
       snippet lexes fine even when full semantic parse can't). None if libclang unavailable."""
    try:
        import clang.cindex as ci
        wrap = "void _f(){\n" + body + "\n}\n"
        base = wrap.index(body)
        tu = ci.Index.create().parse("_p.cpp", args=["-x", "c++", "-w"],
                                     unsaved_files=[("_p.cpp", wrap)],
                                     options=ci.TranslationUnit.PARSE_INCOMPLETE)
        toks = []
        for t in tu.get_tokens(extent=tu.cursor.extent):
            o = t.extent.start.offset
            if base <= o < base + len(body):
                toks.append((t.spelling, o - base, t.extent.end.offset - base))
        return toks or None
    except Exception:
        return None

def _statements(body):
    """split a C body into top-level statements. Uses clang tokens for correct boundaries (strings,
       comments, nested casts/braces) when available; else a brace/paren-depth char scan."""
    toks = _lex(body)
    if toks:
        out, start, depth = [], 0, 0
        for sp, so, eo in toks:
            if sp in "([{": depth += 1
            elif sp in ")]}": depth -= 1
            if depth == 0 and sp in (";", "}"):
                out.append(body[start:eo].strip()); start = eo
        if body[start:].strip(): out.append(body[start:].strip())
        return [s for s in out if s]
    out, buf, depth = [], "", 0
    for ch in body:
        buf += ch
        if ch in "([{": depth += 1
        elif ch in ")]}": depth -= 1
        if depth == 0 and ch in (";", "}"):
            out.append(buf.strip()); buf = ""
    if buf.strip(): out.append(buf.strip())
    return [s for s in out if s]

def _is_decl(s):
    """Heuristic: is statement `s` a simple local variable declaration (`TYPE name = ...;` or `TYPE name;`)?
       Used to find adjacent decls that are safe to reorder. The regex accepts an optional
       `unsigned`/`const`/`struct`/`enum` prefix run, a type name (possibly namespace-qualified via `:`),
       an optional `*`, then an identifier ending in `=` or `;`. Two exclusions reject false positives:
         - `"return" not in s`         -> a `return ...;` shouldn't look like a decl
         - `"(" not in s.split("=")[0]` -> no `(` left of the `=`, so calls/casts/function-pointer decls
           and initializers like `int x = f();` (where `(` is on the RHS) are kept, but `void f(int a)`
           or `T x(args)` constructor-call forms are rejected (can't be freely reordered)."""
    return bool(re.match(r"(unsigned |const |struct |enum )*[A-Za-z_][\w:]*\s*\*?\s+[A-Za-z_]\w*\s*(=|;)", s)) \
        and "return" not in s and "(" not in s.split("=")[0]

# --- transforms: a body -> list of variant bodies (semantics-preserving) -------------------
def _swap_adjacent(body):
    """Adjacent-statement swap: emit one variant per pair of neighbouring top-level statements with that
       pair's order exchanged. Reordering two independent statements is value-preserving but shifts the
       compiler's instruction scheduling/regalloc -- a cheap way to hunt the matching block order.
       Pairs are skipped when either statement mentions `return` or contains a `{` brace block, since
       reordering across a return or a control-flow block is not generally safe (the objdiff gate is the
       backstop, but skipping these avoids obviously-broken candidates)."""
    st = _statements(body); out = []
    for i in range(len(st) - 1):
        # don't reorder across a return / a brace block
        if "return" in st[i] or "{" in st[i] or "{" in st[i + 1]: continue
        v = st[:]; v[i], v[i + 1] = v[i + 1], v[i]
        out.append("\n".join(v))
    return out

def _commute(body):
    """Commutative-operand swap: for each mathematically-commutative binary op, emit a variant with
       the two operands of one `A op B` site exchanged (`A op B` -> `B op A`). Reordering the operands
       of `+`/`*`/`==`/`!=`/`&`/`|`/`^` is value-preserving but can flip the compiler's operand/regalloc
       choice -> a different (possibly matching) codegen. One variant per matching site.

       `OPERAND` matches an identifier or number optionally followed by member/array/arrow accessor
       chains (`a`, `a.b`, `a->b->c`, `a[i].f`), so BOTH operands keep their full postfix chain -- the
       earlier version only allowed a bare identifier on the right, which truncated `a + b->c` to the
       malformed `b + a->c`. To avoid corrupting logical operators, `&`/`|` use a negative look-behind
       and look-ahead so a single `&`/`|` inside `&&`/`||` is never treated as a bitwise op."""
    out = []
    # one operand: an ident/number plus any trailing .field / ->field / [index] accessor chain
    OPERAND = r"[A-Za-z_0-9]\w*(?:\s*(?:->|\.)\s*\w+|\s*\[[^\]]*\])*"
    for op in ("+", "*", "==", "!=", "&", "|", "^"):
        eo = re.escape(op)
        # for `&`/`|`, reject a match where the op is one half of a logical `&&`/`||`
        if op in ("&", "|"):
            eo = r"(?<![%s])%s(?![%s])" % (op, eo, op)
        for m in re.finditer(r"(%s)\s*%s\s*(%s)" % (OPERAND, eo, OPERAND), body):
            a, b = m.group(1), m.group(2)
            out.append(body[:m.start()] + "%s %s %s" % (b, op, a) + body[m.end():])
    return out

def _split_return(body):
    """`return EXPR op X;` -> `T t = EXPR; return t op X;` (forces a temp -> shifts regalloc)."""
    out = []
    m = re.match(r"return (.+?)\s*([+\-*/&|^])\s*(.+);", body.strip())
    if m:
        for ty in ("int", "uint32_t"):
            out.append("%s _t = %s;\nreturn _t %s %s;" % (ty, m.group(1), m.group(2), m.group(3)))
    return out

def _reorder_decls(body):
    """Adjacent-declaration reorder: swap two neighbouring local-variable declarations (per `_is_decl`).
       The order in which locals are declared can change which stack slot / register the compiler assigns
       to each, so this is a targeted regalloc perturbation. Only IMMEDIATELY adjacent decls (`b == a+1`,
       i.e. nothing in between) are swapped, so we never move a declaration past an intervening statement
       that might use it."""
    st = _statements(body); decls = [i for i, s in enumerate(st) if _is_decl(s)]
    out = []
    for i in range(len(decls) - 1):
        a, b = decls[i], decls[i + 1]
        if b == a + 1:                                    # only swap decls with no statement between them
            v = st[:]; v[a], v[b] = v[b], v[a]; out.append("\n".join(v))
    return out

def _ast_perturb(src, cls, meth, body):
    """FULL-AST variants of `body`: statement reorder + commutative operand swap + temp introduction,
       driven by clang's REAL AST source extents (semantic, not regex). Splices `body` into the unit,
       reparses, asks clang_ast.sites() for exact character spans, then does string surgery on those
       spans. Returns the list of variant bodies (empty if no LLVM / parse fails / no splice point).
       Needs an LLVM install (clang_ast.available())."""
    try:
        import clang_ast, liftgate
        if not clang_ast.available(): return []
        with open(src, encoding="latin-1") as fh:
            orig = fh.read()
        spliced = liftgate.splice_body(orig, cls, meth, body)
        if spliced is None: return []
        tu = clang_ast.parse(src, unsaved_content=spliced)
        bc = clang_ast.function_body(tu, cls, meth)
        if not bc: return []
        S = clang_ast.sites(bc)
        def body_of(filetext):
            # re-extract just the (trimmed) function body from a rewritten whole-file text, via the
            # liftgate span (sp[0] is the '{', so start at sp[0]+1; sp[1] is the closing '}').
            sp = liftgate._find_body_span(filetext, cls, meth)
            return filetext[sp[0] + 1:sp[1]].strip() if sp else None
        out = []
        st = S["statements"]
        # Adjacent statement swap. (a,b)=span of stmt i, (c,d)=span of stmt i+1. The guard a<b<=c<d
        # asserts the two spans are well-formed and non-overlapping (i precedes i+1). The splice
        # `prefix + [c:d] + gap[b:c] + [a:b] + suffix[d:]` rebuilds the text with the two stmt bodies
        # exchanged while preserving the inter-statement gap (whitespace/comments at [b:c]) in place.
        for i in range(len(st) - 1):                      # adjacent statement swap (exact extents)
            (a, b), (c, d) = st[i], st[i + 1]
            if not (a < b <= c < d): continue
            if "return" in spliced[a:d] or "{" in spliced[a:d]: continue   # never reorder across return/blocks
            v = spliced[:a] + spliced[c:d] + spliced[b:c] + spliced[a:b] + spliced[d:]
            nb = body_of(v)
            if nb: out.append(nb)
        # Commutative operand swap. [la,lb)=left operand span, [ra,rb)=right operand span of one binop;
        # la<lb<=ra<rb guards the two operand spans are ordered and disjoint. The splice swaps the two
        # operand substrings while leaving the operator text in the gap [lb,ra) untouched.
        for (op, la, lb, ra, rb) in S["binops"]:          # commutative operand swap (exact extents)
            if not (la < lb <= ra < rb): continue
            v = spliced[:la] + spliced[ra:rb] + spliced[lb:ra] + spliced[la:lb] + spliced[rb:]
            nb = body_of(v)
            if nb: out.append(nb)
        for (fa, fb, ty, enc) in S.get("subexprs", []):   # type-aware TEMP INTRODUCTION (shifts regalloc)
            if not (enc <= fa < fb): continue
            sub = spliced[fa:fb]
            if sub.strip() in ("", "_tperm") or len(sub) < 3: continue
            v = spliced[:enc] + "%s _tperm = %s;\n    " % (ty, sub) + spliced[enc:fa] + "_tperm" + spliced[fb:]
            nb = body_of(v)
            if nb and "_tperm" in nb: out.append(nb)
        return out
    except Exception:
        return []

def _norm(s):
    """Collapse all runs of whitespace to single spaces and strip ends. Used only as a DEDUP KEY so two
       variants that differ purely in spacing/indentation count as the same candidate (a passthrough for
       a falsy `s`)."""
    return re.sub(r"\s+", " ", s).strip() if s else s
def perturb(body, ctx=None):
    """all one-step semantics-preserving variants of `body` (deduped on NORMALIZED whitespace,
       excludes input). ctx=(src,cls,meth) enables FULL-AST (clang) transforms; else lexer/text."""
    seen = {_norm(body)}; out = []   # seed `seen` with the input so we never re-emit `body` itself
    def add(v):
        # keep `v` only if it's non-empty and whitespace-normalizes to something we haven't yielded yet
        if v and _norm(v) not in seen: seen.add(_norm(v)); out.append(v)
    if ctx:
        for v in _ast_perturb(ctx[0], ctx[1], ctx[2], body): add(v)
    gens = [_swap_adjacent, _commute, _split_return, _reorder_decls]
    try:
        import iterate
        gens.append(iterate.variants)          # width/sign/pointer toggles
    except Exception:
        pass
    for g in gens:
        for v in g(body): add(v)
    return out

# --- greedy climb (gate-scored), the search loop -------------------------------------------
def climb(fn, seed, rounds=6, beam=24, verbose=True):
    """greedy hill-climb: from `seed`, try perturbations, keep the best objdiff score, repeat.
       returns {best_body, pct, kept(bool)}. Leaves the 100% winner applied; else restores original."""
    import verify, liftgate
    loc = verify.unit_for_function(fn)
    if not loc or not loc[1]: return {"kept": False, "pct": None, "best_body": None}
    src = loc[1]; cls, meth = fn.split("@", 1)[1], fn.split("@", 1)[0]
    with open(src, encoding="latin-1") as fh:             # latin-1: lossless byte round-trip of the .cpp
        orig = fh.read()
    def score(b):
        """Splice candidate body `b` into the unit, recompile, and return its objdiff match percent.
           Returns None (not a score) when the body cannot be spliced OR the unit fails to compile --
           i.e. None means 'invalid variant, skip it', a float means 'compiled, here is its %'.
           Side effect: leaves `src` on disk holding the spliced source (the finally block restores it)."""
        nt = liftgate.splice_body(orig, cls, meth, b)
        if nt is None: return None                        # body didn't fit the function span -> not a variant
        with open(src, "w", encoding="latin-1") as fh:
            fh.write(nt)
        if verify.recompile_unit(src) is not True: return None   # gate: a variant that won't build is rejected
        return verify.function_match(fn, refresh=True)
    try:
        best, best_pct = seed, (score(seed) or -1.0)
        if verbose: print("  seed %s%%" % (round(best_pct, 1) if best_pct >= 0 else "FAIL"))
        for r in range(rounds):
            cands = perturb(best, ctx=(src, cls, meth))[:beam]
            improved = False
            for c in cands:
                p = score(c)
                if p is not None and p > best_pct:
                    best, best_pct, improved = c, p, True
                    if verbose: print("  round %d: %.1f%%  <- %s" % (r + 1, p, c.replace("\n", " ")[:64]))
                    if p >= 100.0: break
            if best_pct >= 100.0 or not improved: break
    finally:
        # Leave the tree consistent: if we hit a byte-exact match, write the winning body in for keeps;
        # otherwise restore the pristine original. Either way recompile so the on-disk .obj matches the
        # source we leave behind (no stale object from the last trial variant).
        if best_pct >= 100.0:
            winner = liftgate.splice_body(orig, cls, meth, best)
            # `best` already spliced+compiled to reach 100% in score(), so this should not be None;
            # guard anyway so a defensive None can never crash open().write() in the finally path.
            out_text = winner if winner is not None else orig
        else:
            out_text = orig
        with open(src, "w", encoding="latin-1") as fh:
            fh.write(out_text)
        verify.recompile_unit(src)
    return {"kept": best_pct >= 100.0, "pct": best_pct if best_pct >= 0 else None, "best_body": best}

def _self_test():
    ok = True
    def chk(c, n, got=None):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n + ("" if c else "  got: %r" % (got,)))
    chk(_statements("int a = 1;\nreturn a + b;") == ["int a = 1;", "return a + b;"], "statement split")
    chk("return b + a;" in _commute("return a + b;"), "commute +")
    chk("int _t = a;\nreturn _t + b;" in _split_return("return a + b;"), "split return temp")
    v = perturb("int x = f();\nint y = g();\nreturn x + y;")
    chk(any("int y = g();\nint x = f();" in p for p in v), "reorder decls present", None)
    chk(_is_decl("int a = 1;") and not _is_decl("return a;"), "decl detector")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

def _opt_value(args, flag):
    """Return the token after `flag` in `args`, or None if `flag` is absent OR is the final token
       (no value follows it). Guards `args.index(flag)+1` against an out-of-range IndexError so a
       trailing `--rounds`/`--body` yields a friendly usage error instead of a stack trace."""
    if flag not in args:
        return None
    i = args.index(flag) + 1
    return args[i] if i < len(args) else None

if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a: sys.exit(_self_test())
    if not a: print(__doc__); sys.exit(2)
    fn = a[0]
    if "--rounds" in a:
        rv = _opt_value(a, "--rounds")
        if rv is None or not re.fullmatch(r"\d+", rv):   # require a non-negative integer count
            print("--rounds needs a non-negative integer (e.g. --rounds 6)"); sys.exit(2)
        rounds = int(rv)
    else:
        rounds = 6
    if "--body" in a:
        seed = _opt_value(a, "--body")
        if seed is None:                                  # `--body` was the last token: no body given
            print("--body needs a body string (e.g. --body \"return a + b;\")"); sys.exit(2)
    else:
        import iterate, verify
        loc = verify.unit_for_function(fn)
        seed = (iterate._current_body(loc[1], fn.split("@")[1], fn.split("@")[0]) if loc and loc[1] else None) \
            or iterate._base_candidate(fn)
    if not seed: print("no seed body for", fn, "(pass --body)"); sys.exit(1)
    print("[permute] climbing %s ..." % fn)
    r = climb(fn, seed, rounds=rounds)
    print("[permute] %s  pct=%s" % ("KEPT 100%%" if r["kept"] else "best", r["pct"]))
    if r["kept"]: print("  winner:", r["best_body"].replace("\n", " "))
