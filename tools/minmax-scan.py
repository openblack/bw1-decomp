#!/usr/bin/env python3

"""Find hand-expanded min()/max() in source and prove which rewrites keep the bytes.

Decompilers (and agents copying them) spell out windef.h's min/max as ternaries
and if-statements. The original code used the macros:

    #define max(a,b) (((a) > (b)) ? (a) : (b))
    #define min(a,b) (((a) < (b)) ? (a) : (b))

Detected shapes, where {T, F} == {p, q} textually:

    p < q ? T : F                         ternary
    if (p < q) L = R;                     clamp            -> L = max(L, R)
    L = E; if (E < R) L = R;              assign + clamp   -> L = max(E, R)
    L += E; if (L < R) L = R;             (compound too)   -> L = max(L + E, R)
    if (p < q) L = T; else L = F;         if/else select   -> L = min(...)
    if (p < q) return T; return F;        return select    -> return min(...)

(also with >, <=, >=, braces and either operand order). Each candidate gets
up to two spellings: the one that keeps the exact comparison (`a < b ? b : a`
is `max(b, a)`) and the conventional argument order.

Scan only (fast, no compiles):
  python tools/minmax-scan.py src/Black/Fixed.cpp
  python tools/minmax-scan.py --all                 # every .cpp/.h under src/

Verify (compile each rewrite with the unit's real command, compare every
function with the unmodified compile, relocation fields masked):
  python tools/minmax-scan.py --verify src/Black/Fixed.cpp
  python tools/minmax-scan.py --verify --apply src/Black/Fixed.cpp
  python tools/minmax-scan.py --verify --unit Fixed src/Black/MultiMapFixed.h

SAME   every function is byte-identical: the rewrite is safe to apply.
TARGET bytes changed and every changed function now matches the target:
       an improvement, applied too.
DIFF   bytes changed for the worse; listed functions show where.
ERROR  the rewrite does not compile.
SAME* / TARGET* / DIFF*
       min/max are not in scope in this unit; judged with windef.h's
       definitions injected. Never applied: bringing min/max into scope means an
       include (windows.h or minmax.h), which is a human call.

Two-sided clamps (`if (x < lo) x = lo; [else] if (x > hi) x = hi;`, flagged
"saturate" for 0..1) are tried as nested min(max()) both ways, then as
`CLAMP(x, lo, hi);`. CLAMP is the project's own macro from include/re_common.h
(no original clamp macro is known); it expands to exactly the if/else-if chain,
so it fits wherever that chain is the original shape. Where CLAMP is not in
scope it is judged with its definition injected (SAME* / TARGET*), and --apply
adds `#include <re_common.h>` after the file's last #include; the combined
compile below then checks the real file, including the shifted __LINE__.
They also get a probe-only single-expression clamp shape, never applied: a probe
that matches only shows the shape is compatible; if/else chains often compile
to the same bytes as that ternary, so a match alone proves nothing.

--apply writes SAME/TARGET rewrites (first passing spelling per candidate; real
min/max before CLAMP), then recompiles the combined result and reverts if
anything changed versus the individual checks. A header is verified against one unit only (--unit); check
its other consumers with decomp-verify.py before keeping the change.
Probe builds go to build/probe-minmax/.
"""

import argparse
import concurrent.futures as cf
import os
import queue
import re
import shutil
import sys
from pathlib import Path

sys.dont_write_bytecode = True

import msvc_probe as mp
from decomp_common import ROOT

WORK = "build/probe-minmax"

# ---------------------------------------------------------------------------
# Lexical helpers


def mask_source(text):
    """Blank comments, string/char literals and preprocessor lines, keeping offsets."""
    out = list(text)
    i, n = 0, len(text)
    line_start = True
    while i < n:
        c = text[i]
        if line_start and c == "#":
            j = i
            while j < n and text[j] != "\n":
                if text[j] == "\\" and j + 1 < n and text[j + 1] == "\n":
                    j += 1
                j += 1
            for k in range(i, j):
                if out[k] != "\n":
                    out[k] = " "
            i = j
            continue
        if c == "/" and text.startswith("//", i):
            j = text.find("\n", i)
            j = n if j < 0 else j
            for k in range(i, j):
                out[k] = " "
            i = j
            continue
        if c == "/" and text.startswith("/*", i):
            j = text.find("*/", i + 2)
            j = n if j < 0 else j + 2
            for k in range(i, j):
                if out[k] != "\n":
                    out[k] = " "
            i = j
            continue
        if c in "\"'":
            j = i + 1
            while j < n and text[j] != c:
                j += 2 if text[j] == "\\" else 1
            for k in range(i + 1, min(j, n)):
                out[k] = " "
            i = j + 1
            continue
        if c == "\n":
            line_start = True
        elif not c.isspace():
            line_start = False
        i += 1
    masked = "".join(out)
    # Template argument brackets would read as comparisons.
    masked = re.sub(r"\b(static|reinterpret|const|dynamic)_cast\s*<[^<>;]*>",
                    lambda m: m.group(0).replace("<", "(").replace(">", ")"), masked)
    return masked


def norm(expr):
    """Canonical text for comparing operands: no whitespace, no redundant outer parens."""
    s = re.sub(r"\s+", "", expr)
    while s.startswith("(") and s.endswith(")") and close_paren(s, 0) == len(s) - 1:
        s = s[1:-1]
    return s


def close_paren(s, i):
    depth = 0
    for j in range(i, len(s)):
        if s[j] in "([":
            depth += 1
        elif s[j] in ")]":
            depth -= 1
            if depth == 0:
                return j
    return -1


def strip_parens(expr):
    """Original operand text without redundant outer parens."""
    s = expr.strip()
    while s.startswith("(") and s.endswith(")") and close_paren(s, 0) == len(s) - 1:
        s = s[1:-1].strip()
    return s


CMP = re.compile(r"<=|>=|<|>")


def split_compare(masked, text, lo, hi):
    """Split text[lo:hi] at its single top-level relational operator.

    Returns (p, op, q) as original text, or None.
    """
    # A condition wrapped in its own parens: `(a < b) ? a : b`.
    while True:
        while lo < hi and masked[lo].isspace():
            lo += 1
        while hi > lo and masked[hi - 1].isspace():
            hi -= 1
        if lo < hi and masked[lo] == "(" and close_paren(masked, lo) == hi - 1:
            lo, hi = lo + 1, hi - 1
        else:
            break
    depth = 0
    hits = []
    i = lo
    while i < hi:
        c = masked[i]
        if c in "([{":
            depth += 1
        elif c in ")]}":
            depth -= 1
        elif depth == 0:
            two = masked[i:i + 2]
            if two in ("&&", "||", "<<", ">>", "->", "==", "!="):
                if two in ("&&", "||"):
                    return None
                i += 2
                continue
            if c in "?:=" and two not in ("<=", ">="):
                return None
            if c in "<>":
                op = two if two in ("<=", ">=") else c
                hits.append((i, op))
                i += len(op)
                continue
        i += 1
    if len(hits) != 1:
        return None
    pos, op = hits[0]
    p, q = text[lo:pos], text[pos + len(op):hi]
    if not norm(p) or not norm(q):
        return None
    return p, op, q


# ---------------------------------------------------------------------------
# Candidate model


def spellings(p, op, q, t_is_p):
    """Macro spellings for `p OP q ? T : F` with T one of p/q.

    The first keeps the comparison exactly as the macro expands it; the second
    swaps the arguments into the conventional order. `exact` is False for <=/>=,
    which only agree with the macros when the operands compare equal.
    """
    exact = op in ("<", ">")
    less = op[0] == "<"
    a, b = strip_parens(p), strip_parens(q)
    if less and t_is_p:          # p < q ? p : q
        forms = [("min", a, b), ("min", b, a)]
    elif less:                   # p < q ? q : p  ==  q > p ? q : p
        forms = [("max", b, a), ("max", a, b)]
    elif t_is_p:                 # p > q ? p : q
        forms = [("max", a, b), ("max", b, a)]
    else:                        # p > q ? q : p  ==  q < p ? q : p
        forms = [("min", b, a), ("min", a, b)]
    return [f"{m}({x}, {y})" for m, x, y in forms], exact


class Candidate:
    """One hand-expanded select with its macro spellings.

    `alternatives` holds (start, end, replacement) per spelling; spellings can
    replace different spans (a clamp alone, or a clamp with the assignment before it).
    """

    def __init__(self, path, text, start, end, kind, replacements, exact):
        self.path = path
        self.kind = kind
        self.exact = exact
        self.text = text
        self.alternatives = [(start, end, r) for r in replacements]
        self.probes = set()  # alternative indexes reported as evidence, never applied

    def add(self, start, end, replacements, probe=False):
        first = len(self.alternatives)
        self.alternatives += [(start, end, r) for r in replacements]
        if probe:
            self.probes.update(range(first, len(self.alternatives)))

    @property
    def start(self):
        return min(a[0] for a in self.alternatives)

    @property
    def end(self):
        return max(a[1] for a in self.alternatives)

    @property
    def original(self):
        return self.text[self.start:self.end]

    @property
    def line(self):
        return self.text.count("\n", 0, self.start) + 1

    @property
    def replacements(self):
        return [a[2] for a in self.alternatives]

    def apply(self, text, index):
        start, end, replacement = self.alternatives[index]
        assert text[start:end] == self.text[start:end]
        return text[:start] + replacement + text[end:]


def find_boundary_back(masked, i):
    """Start of the expression ending before i: after an unmatched ( or a statement/assignment break."""
    depth = 0
    j = i - 1
    while j >= 0:
        c = masked[j]
        if c in ")]":
            depth += 1
        elif c in "([":
            if depth == 0:
                return j + 1
            depth -= 1
        elif depth == 0:
            if c in ";{},":
                return j + 1
            if c == "=" and masked[j - 1:j] not in ("=", "!", "<", ">") and masked[j + 1:j + 2] != "=":
                return j + 1
            if c == ":" and masked[j - 1:j] != ":" and masked[j + 1:j + 2] != ":":
                return j + 1
            if c == "?":
                return j + 1
        j -= 1
    return 0


def find_boundary_fwd(masked, i, stop=";,)}]"):
    depth = 0
    nested = 0
    j = i
    while j < len(masked):
        c = masked[j]
        if c in "([":
            depth += 1
        elif c in ")]":
            if depth == 0:
                return j
            depth -= 1
        elif depth == 0:
            if c == "?":
                nested += 1
            elif c == ":" and masked[j + 1:j + 2] != ":" and masked[j - 1:j] != ":":
                if nested == 0 and ":" in stop:
                    return j
                nested -= 1
            elif c in stop and c != ":":
                return j
        j += 1
    return -1


def find_ternaries(path, text, masked):
    for m in re.finditer(r"\?", masked):
        qpos = m.start()
        start = find_boundary_back(masked, qpos)
        word = re.match(r"\s*return\b", masked[start:qpos])
        if word:
            start += word.end()
        while start < qpos and masked[start].isspace():
            start += 1
        cmp = split_compare(masked, text, start, qpos)
        if not cmp:
            continue
        colon = find_boundary_fwd(masked, qpos + 1, stop=":")
        if colon < 0 or masked[colon] != ":":
            continue
        end = find_boundary_fwd(masked, colon + 1)
        if end < 0:
            continue
        t, f = text[qpos + 1:colon], text[colon + 1:end]
        while end > colon + 1 and text[end - 1].isspace():
            end -= 1
        p, op, q = cmp
        np_, nq, nt, nf = norm(p), norm(q), norm(t), norm(f)
        if {nt, nf} != {np_, nq} or np_ == nq:
            continue
        forms, exact = spellings(p, op, q, nt == np_)
        # A ternary inside parens keeps them; a bare one in an expression needs none either,
        # because the macro body is fully parenthesised.
        yield Candidate(path, text, start, end, "ternary", forms, exact)


STMT_ASSIGN = re.compile(r"^\s*([^=;{}]+?)\s*(?<![=!<>+\-*/%&|^])=(?!=)\s*([^;{}]+?)\s*;\s*$", re.S)
STMT_COMPOUND = re.compile(r"^\s*([^=;{}]+?)\s*([+\-*/])=(?!=)\s*([^;{}]+?)\s*;\s*$", re.S)
STMT_RETURN = re.compile(r"^\s*return\b\s*([^;{}]+?)\s*;\s*$", re.S)


def parse_body(masked, text, i):
    """Parse one statement or a braced single statement starting at i (after an if/else).

    Returns (statement_text, end_offset) or None.
    """
    j = i
    while j < len(masked) and masked[j].isspace():
        j += 1
    if masked[j:j + 1] == "{":
        close = close_paren(masked.replace("{", "(").replace("}", ")"), j)
        if close < 0:
            return None
        inner = masked[j + 1:close]
        if inner.count(";") != 1 or not inner.strip().endswith(";"):
            return None
        return text[j + 1:close], close + 1
    semi = masked.find(";", j)
    if semi < 0 or "{" in masked[j:semi] or "}" in masked[j:semi]:
        return None
    return text[j:semi + 1], semi + 1


def prev_statement(masked, text, if_start):
    """The statement right before if_start, if it ends at a ';' and starts after ; { or }."""
    j = if_start - 1
    while j >= 0 and masked[j].isspace():
        j -= 1
    if j < 0 or masked[j] != ";":
        return None
    k = j - 1
    depth = 0
    while k >= 0:
        c = masked[k]
        if c in ")]":
            depth += 1
        elif c in "([":
            depth -= 1
        elif depth == 0 and c in ";{}":
            break
        k -= 1
    k += 1
    while masked[k].isspace():
        k += 1
    return text[k:j + 1], k


def next_token(masked, i):
    m = re.compile(r"\s*([A-Za-z_]\w*|\S)").match(masked, i)
    return (m.group(1), m.end()) if m else (None, i)


def find_ifs(path, text, masked):
    for m in re.finditer(r"\bif\s*\(", masked):
        if_start = m.start()
        # "else if" chains are not plain selects.
        before = masked[:if_start].rstrip()
        if before.endswith("else"):
            continue
        open_ = m.end() - 1
        close = close_paren(masked, open_)
        if close < 0:
            continue
        cmp = split_compare(masked, text, open_ + 1, close)
        if not cmp:
            continue
        p, op, q = cmp
        np_, nq = norm(p), norm(q)
        if np_ == nq:
            continue
        body = parse_body(masked, text, close + 1)
        if not body:
            continue
        stmt, body_end = body
        tok, after = next_token(masked, body_end)
        has_else = tok == "else"
        indent = text[text.rfind("\n", 0, if_start) + 1:if_start]

        assign = STMT_ASSIGN.match(stmt)
        ret = STMT_RETURN.match(stmt)

        if has_else:
            other = parse_body(masked, text, after)
            if not other:
                continue
            stmt2, end2 = other
            a2 = STMT_ASSIGN.match(stmt2)
            if assign and a2 and norm(assign.group(1)) == norm(a2.group(1)):
                t, f = norm(assign.group(2)), norm(a2.group(2))
                if {t, f} == {np_, nq}:
                    forms, exact = spellings(p, op, q, t == np_)
                    lhs = assign.group(1).strip()
                    yield Candidate(path, text, if_start, end2, "if/else select",
                                    [f"{lhs} = {x};" for x in forms], exact)
            r2 = STMT_RETURN.match(stmt2)
            if ret and r2:
                t, f = norm(ret.group(1)), norm(r2.group(1))
                if {t, f} == {np_, nq}:
                    forms, exact = spellings(p, op, q, t == np_)
                    yield Candidate(path, text, if_start, end2, "return select",
                                    [f"return {x};" for x in forms], exact)
            continue

        if ret:
            # if (p < q) return T; return F;
            nxt = re.compile(r"\s*return\b\s*([^;{}]+?)\s*;").match(masked, body_end)
            if nxt:
                f_text = text[nxt.start(1):nxt.end(1)]
                t, f = norm(ret.group(1)), norm(f_text)
                if {t, f} == {np_, nq}:
                    forms, exact = spellings(p, op, q, t == np_)
                    yield Candidate(path, text, if_start, nxt.end(), "return select",
                                    [f"return {x};" for x in forms], exact)
            continue

        if not assign:
            continue
        lhs, rhs = assign.group(1).strip(), assign.group(2).strip()
        nl, nr = norm(lhs), norm(rhs)

        cand = None
        # if (L < R) L = R;   (either operand order)
        if {np_, nq} == {nl, nr}:
            forms, exact = spellings(p, op, q, np_ == nr)
            l_first = [f for f in forms if f.split("(", 1)[1].startswith(strip_parens(lhs))]
            forms = l_first + [f for f in forms if f not in l_first]
            cand = Candidate(path, text, if_start, body_end, "clamp", [f"{lhs} = {x};" for x in forms], exact)

        # L = E; if (E < R) L = R;   or   if (L < R) L = R after L = E / L += E
        merged = None
        prev = prev_statement(masked, text, if_start)
        if prev:
            merged = assign_clamp(prev, p, op, q, lhs, rhs)
        if merged:
            forms, exact = merged
            if cand:
                cand.kind = "clamp / assign + clamp"
                cand.add(prev[1], body_end, forms)
            else:
                cand = Candidate(path, text, prev[1], body_end, "assign + clamp", forms, exact)
        if cand:
            yield cand


def assign_clamp(prev, p, op, q, lhs, rhs):
    """Spellings folding the assignment before a clamp into the macro, or None."""
    np_, nq, nl, nr = norm(p), norm(q), norm(lhs), norm(rhs)
    prev_text, _ = prev
    pa = STMT_ASSIGN.match(prev_text)
    pc = STMT_COMPOUND.match(prev_text)
    if pa and norm(pa.group(1)) == nl:
        expr = pa.group(2).strip()
    elif pc and norm(pc.group(1)) == nl:
        # L += E is L = L + E.
        expr = f"{pc.group(1).strip()} {pc.group(2)} {pc.group(3).strip()}"
    else:
        return None
    ne = norm(expr)
    if nr not in (np_, nq):
        return None
    other = nq if np_ == nr else np_
    if other not in (nl, ne):
        return None
    # Rewrite the comparison onto E: the value L holds at the test.
    if np_ == nr:
        p2, q2, t_is_p = rhs, expr, True
    else:
        p2, q2, t_is_p = expr, rhs, False
    forms, exact = spellings(p2, op, q2, t_is_p)
    e_first = [f for f in forms if f.split("(", 1)[1].startswith(strip_parens(expr))]
    forms = e_first + [f for f in forms if f not in e_first]
    return [f"{lhs} = {x};" for x in forms], exact


ZERO = {"0", "0.0", "0.0f", "0.f", "0.0F", "0.F"}
ONE = {"1", "1.0", "1.0f", "1.f", "1.0F", "1.F"}


def clamp_records(text, masked):
    """Every one-sided clamp `if (L < R) L = R;`, including `else if` ones.

    Yields (if_start, body_end, lhs, bound, lower): lower is True when the clamp
    raises L to the bound (a max()), False when it caps it (a min()).
    """
    for m in re.finditer(r"\bif\s*\(", masked):
        open_ = m.end() - 1
        close = close_paren(masked, open_)
        if close < 0:
            continue
        cmp = split_compare(masked, text, open_ + 1, close)
        body = cmp and parse_body(masked, text, close + 1)
        assign = body and STMT_ASSIGN.match(body[0])
        if not assign:
            continue
        p, op, q = cmp
        lhs, rhs = assign.group(1).strip(), assign.group(2).strip()
        np_, nq, nl, nr = norm(p), norm(q), norm(lhs), norm(rhs)
        if {np_, nq} != {nl, nr} or np_ == nq:
            continue
        # L < R or R > L raises L: a lower bound.
        lower = (op[0] == "<") == (np_ == nl)
        yield m.start(), body[1], lhs, rhs, lower


def find_two_sided(path, text, masked):
    """`if (x < lo) x = lo; [else] if (x > hi) x = hi;` in either order.

    Spellings: nested min/max in both nestings, then CLAMP. A probe-only single-expression
    clamp shows whether a lost CLAMP-style macro (one test chain, one store) fits
    where nested min/max does not; it is evidence, never applied.
    """
    recs = list(clamp_records(text, masked))
    by_start = {r[0]: r for r in recs}
    for a in recs:
        tok, after = next_token(masked, a[1])
        nxt = after if tok == "else" else a[1]
        while nxt < len(masked) and masked[nxt].isspace():
            nxt += 1
        b = by_start.get(nxt)
        if not b or norm(a[2]) != norm(b[2]) or a[4] == b[4]:
            continue
        lhs = a[2]
        lo, hi = (a[3], b[3]) if a[4] else (b[3], a[3])
        kind = "two-sided clamp"
        if norm(lo) in ZERO and norm(hi) in ONE:
            kind += " (saturate 0..1)"
        if a[4]:
            forms = [f"{lhs} = min(max({lhs}, {lo}), {hi});", f"{lhs} = max(min({lhs}, {hi}), {lo});"]
        else:
            forms = [f"{lhs} = max(min({lhs}, {hi}), {lo});", f"{lhs} = min(max({lhs}, {lo}), {hi});"]
        forms.append(f"CLAMP({lhs}, {lo}, {hi});")
        c = Candidate(path, text, a[0], b[1], kind, forms, True)
        if a[4]:
            shape = f"{lhs} = {lhs} < {lo} ? {lo} : ({lhs} > {hi} ? {hi} : {lhs});"
        else:
            shape = f"{lhs} = {lhs} > {hi} ? {hi} : ({lhs} < {lo} ? {lo} : {lhs});"
        c.add(a[0], b[1], [shape], probe=True)
        yield c


def scan(path):
    text = Path(path).read_text(encoding="latin-1")
    masked = mask_source(text)
    found = list(find_ternaries(path, text, masked)) + list(find_ifs(path, text, masked))
    # Drop candidates nested inside a larger one (a ternary inside an if/else select).
    found.sort(key=lambda c: (c.start, -(c.end - c.start)))
    result = []
    for c in found:
        if result and c.start < result[-1].end:
            continue
        result.append(c)
    # Two-sided clamps overlap their one-sided halves on purpose: each half may still
    # be a macro when the pair is not. --apply resolves the overlap, widest first.
    result += find_two_sided(path, text, masked)
    result.sort(key=lambda c: (c.start, -(c.end - c.start)))
    return text, result


# ---------------------------------------------------------------------------
# Verification


# windef.h's definitions, for units where neither windows.h nor minmax.h is in scope.
# `#line 1` keeps __LINE__ (assert and operator new line arguments) unchanged.
INJECT = ("#ifndef max\n#define max(a,b) (((a) > (b)) ? (a) : (b))\n#endif\n"
          "#ifndef min\n#define min(a,b) (((a) < (b)) ? (a) : (b))\n#endif\n#line 1\n")

RE_COMMON = "include/re_common.h"
CLAMP_INCLUDE = "#include <re_common.h> /* For CLAMP */"


def clamp_inject():
    """re_common.h's CLAMP definition, for units where it is not in scope."""
    text = (Path(ROOT) / RE_COMMON).read_text(encoding="latin-1")
    m = re.search(r"^#define CLAMP\(.*?(?<!\\)\r?$", text, re.M | re.S)
    if not m:
        raise SystemExit(f"no CLAMP definition in {RE_COMMON}")
    return "#ifndef CLAMP\n" + m.group(0).replace("\r", "") + "\n#endif\n#line 1\n"


def add_clamp_include(text):
    """Insert CLAMP_INCLUDE after the last #include line."""
    nl = "\r\n" if "\r\n" in text else "\n"
    last = None
    for m in re.finditer(r"^[ \t]*#[ \t]*include\b.*$", text, re.M):
        last = m
    if last is None:
        return CLAMP_INCLUDE + nl + text
    eol = text.find("\n", last.end())
    at = len(text) if eol < 0 else eol + 1
    return text[:at] + CLAMP_INCLUDE + nl + text[at:]


def compile_variant(ctx, rel_file, new_text, tag):
    slot = ctx["slots"].get()
    work = mp.make_workdir(f"{WORK}/w{slot}", copy_src=True)
    rel_src = os.path.relpath(work, ROOT)
    path = work / rel_file
    original = path.read_text(encoding="latin-1")
    try:
        path.write_text(new_text, encoding="latin-1")
        obj = f"{rel_src}/{tag}.obj"
        argv = mp.retarget(ctx["argv"], ctx["source"], f"{rel_src}/{ctx['source']}", obj, src_root=rel_src)
        ok, errors = mp.run_compile(argv)
        if not ok:
            return None, "; ".join(errors[:2]) or "compile failed"
        return mp.functions(Path(ROOT) / obj), None
    finally:
        path.write_text(original, encoding="latin-1")
        ctx["slots"].put(slot)


def judge(ctx, funcs):
    """Return (verdict, changed function names)."""
    base = ctx["base"]
    changed = sorted(n for n in set(base) | set(funcs)
                     if mp.digest(base.get(n, (b"",))[0]) != mp.digest(funcs.get(n, (b"",))[0]))
    if not changed:
        return "SAME", changed
    target = ctx["target"]
    if all(n in funcs and n in target and mp.same_code(target[n][0], funcs[n][0]) for n in changed):
        return "TARGET", changed
    return "DIFF", changed


def verify(cands, text, rel_file, unit, jobs):
    argv, source, _ = mp.compile_command(unit)
    slots = queue.Queue()
    for k in range(jobs):
        slots.put(k)
    ctx = dict(argv=argv, source=source, slots=slots)
    base, err = compile_variant(ctx, rel_file, text, "base")
    if base is None:
        raise SystemExit(f"unmodified source does not compile: {err}")
    ctx["base"] = base
    ctx["target"] = mp.functions(Path(ROOT) / unit["target_path"]) if Path(ROOT, unit["target_path"]).exists() else {}

    jobs_list = [(ci, fi, c, form) for ci, c in enumerate(cands) for fi, form in enumerate(c.replacements)]

    def run(item):
        ci, fi, c, form = item
        variant = c.apply(text, fi)
        funcs, err = compile_variant(ctx, rel_file, variant, f"c{ci}_{fi}")
        injected = False
        if funcs is None and re.search(r"'(min|max)' : undeclared", err):
            funcs, err = compile_variant(ctx, rel_file, INJECT + variant, f"c{ci}_{fi}i")
            injected = True
        elif funcs is None and re.search(r"'CLAMP' : undeclared", err):
            funcs, err = compile_variant(ctx, rel_file, clamp_inject() + variant, f"c{ci}_{fi}i")
            injected = True
        if funcs is None:
            return ci, fi, "ERROR", [err]
        verdict, changed = judge(ctx, funcs)
        # A starred verdict needs min/max brought into scope before it can be applied.
        return ci, fi, verdict + ("*" if injected else ""), changed

    with cf.ThreadPoolExecutor(jobs) as ex:
        results = list(ex.map(run, jobs_list))
    table = {}
    for ci, fi, verdict, changed in results:
        table.setdefault(ci, {})[fi] = (verdict, changed)
    return ctx, table


# ---------------------------------------------------------------------------


def oneline(s, width=70):
    s = re.sub(r"\s+", " ", s).strip()
    return s if len(s) <= width else s[:width - 3] + "..."


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("files", nargs="*", help="source or header files to scan")
    ap.add_argument("--all", action="store_true",
                    help="every .cpp/.c/.h under src/; with --verify, headers are listed but skipped")
    ap.add_argument("--kind", help="only candidates whose kind contains this text (e.g. two-sided)")
    ap.add_argument("--verify", action="store_true", help="compile each rewrite and compare bytes")
    ap.add_argument("--apply", action="store_true", help="with --verify: write the safe rewrites")
    ap.add_argument("--unit", help="objdiff unit to compile a header against (default: the file's own unit)")
    ap.add_argument("-j", "--jobs", type=int, default=max(1, (os.cpu_count() or 2) // 2))
    args = ap.parse_args(argv)
    if args.apply and not args.verify:
        ap.error("--apply needs --verify")
    files = [Path(f) for f in args.files]
    if args.all:
        if args.unit:
            ap.error("--all picks each file's own unit; --unit is for one header")
        files = sorted(p for p in (Path(ROOT) / "src").rglob("*") if p.suffix in (".cpp", ".c", ".h")
                       and "zlib" not in p.parts)
    if not files:
        ap.error("no files given")

    status = 0
    for path in files:
        path = path.resolve()
        rel = os.path.relpath(path, ROOT)
        text, cands = scan(path)
        if args.kind:
            cands = [c for c in cands if args.kind in c.kind]
        if not cands:
            if not args.all:
                print(f"{rel}: no candidates")
            continue
        if not args.verify:
            for c in cands:
                flag = "" if c.exact else "  [<=/>=: not an exact macro]"
                print(f"{rel}:{c.line}: {c.kind}: {oneline(c.original)}{flag}")
                print(f"    -> {oneline(c.replacements[0])}")
                clamp = [r for r in c.replacements[1:] if r.startswith("CLAMP(")]
                if clamp:
                    print(f"    -> {oneline(clamp[0])}")
            continue

        if args.unit:
            unit = mp.unit_for(unit=args.unit)
        elif path.suffix == ".h":
            if args.all:
                print(f"{rel}: header with {len(cands)} candidate(s); skipped, verify with --unit <consumer>")
                continue
            ap.error(f"{rel} is a header; pass --unit to pick a consumer to compile")
        else:
            try:
                unit = mp.unit_for(source=rel)
            except ValueError as e:
                if not args.all:
                    raise SystemExit(str(e))
                print(f"{rel}: {len(cands)} candidate(s); skipped, {e}")
                continue
        shutil.rmtree(Path(ROOT) / WORK, ignore_errors=True)
        ctx, table = verify(cands, text, rel, unit, args.jobs)

        chosen = []
        for ci, c in enumerate(cands):
            print(f"{rel}:{c.line}: {c.kind}: {oneline(c.original)}")
            pick = None
            for fi, form in enumerate(c.replacements):
                verdict, changed = table[ci][fi]
                detail = ""
                if verdict == "ERROR":
                    detail = "  " + oneline(changed[0], 90)
                elif changed:
                    detail = "  " + ", ".join(changed[:4]) + (" ..." if len(changed) > 4 else "")
                print(f"    {verdict:<6} {oneline(form)}{detail}")
                if fi in c.probes:
                    print("           ^ probe only (single-expression clamp shape): evidence, not applied")
                    continue
                if pick is None and verdict in ("SAME", "TARGET"):
                    pick = fi
                # A missing CLAMP only needs re_common.h, which --apply adds.
                if pick is None and verdict in ("SAME*", "TARGET*") and form.startswith("CLAMP("):
                    pick = fi
            if pick is not None:
                chosen.append((c, pick))

        if not args.apply or not chosen:
            continue
        spans = []
        for c, pick in sorted(chosen, key=lambda x: (x[0].alternatives[x[1]][0], -x[0].alternatives[x[1]][1])):
            start, end, _ = c.alternatives[pick]
            if spans and start < spans[-1][1]:
                continue
            spans.append((start, end, c, pick))
        chosen = [(c, pick) for _, _, c, pick in spans]
        new_text = text
        for c, pick in reversed(chosen):
            new_text = c.apply(new_text, pick)
        needs_include = any(table[cands.index(c)][pick][0].endswith("*") and c.replacements[pick].startswith("CLAMP(")
                            for c, pick in chosen)
        if needs_include:
            new_text = add_clamp_include(new_text)
        funcs, err = compile_variant(ctx, rel, new_text, "combined")
        if funcs is None:
            print(f"  combined rewrite failed to compile, not applied: {err}")
            status = 1
            continue
        verdict, changed = judge(ctx, funcs)
        if verdict == "DIFF":
            print(f"  combined rewrite changed {', '.join(changed[:4])}; not applied")
            status = 1
            continue
        path.write_text(new_text, encoding="latin-1")
        extra = f", added {CLAMP_INCLUDE.split(' /*')[0]}" if needs_include else ""
        print(f"  applied {len(chosen)} rewrite(s) to {rel} ({verdict}{extra})")
    return status


if __name__ == "__main__":
    sys.exit(main())
