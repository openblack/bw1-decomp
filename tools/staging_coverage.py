#!/usr/bin/env python3
"""staging_coverage.py — measure progress toward 100% lifted staging, and prioritize what's next.

src/staging/*.cpp holds the high-level reimplementation. Most functions are still STUBS
(`return 0;`, `return;`, or empty `{}`). This counts real-vs-stub bodies so you can:
  * track the overall % lifted (the road to "perfect staging 100%"),
  * see which files hold the most remaining work,
  * (with --callers) prioritize the stubs that the most code depends on.

How it classifies a function
  A definition is a "plausible signature line" (`... Name(...)` with no `;`, optionally
  trailing `const`) immediately followed by a line that is just `{`. The body is read to
  the matching brace; a function counts as a STUB when its body (ignoring blank lines and
  `//` comments) is empty, or is a single `return 0;` / `return 0xNN;` / `return;`. Note
  the signature regex deliberately allows a trailing `const` so `const` methods are NOT
  missed (an earlier regex under-counted them).

Inputs/outputs
  Reads `src/staging/*.cpp` (and, only with --callers, `src/asm/unprocessed/*.asm`).
  No build, no network. Prints a human report (or CSV with --csv).

Usage:
  python3 tools/staging_coverage.py                # overall % + worst files
  python3 tools/staging_coverage.py --list FILEPAT # list the stub function names in matching files
  python3 tools/staging_coverage.py --callers      # rank remaining stubs by #call-sites (lift these first)
  python3 tools/staging_coverage.py --csv          # machine-readable per-file rows
  python3 tools/staging_coverage.py --self-test    # verify the stub/real classifier + regexes
"""
import os, re, glob, sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
STAGE = os.path.join(ROOT, "src", "staging")
ASM   = glob.glob(os.path.join(ROOT, "src", "asm", "unprocessed", "*.asm"))

# a function: a line that looks like a definition `... Name(...)` then `{` then body then `}`
sig_re  = re.compile(r'^[A-Za-z].*[\w>~]\s*\([^;{}]*\)\s*(?:const\s*)?$')   # plausible signature line (no ; ); allow trailing const
name_re = re.compile(r'([A-Za-z_][\w]*(?:::~?[A-Za-z_][\w]*)?)\s*\([^;{}]*\)\s*(?:const\s*)?$')
# A stub body is one of: `return <0-or-0xHEX literal>;`, `return;`, or a blank line
# (the empty alternation `|` matches the all-whitespace inner line of an empty `{}`).
# This intentionally treats any constant auto-stub return (e.g. `return 0;`, `return 0x0;`)
# as a STUB. The `0x[0-9a-fA-F]+` branch requires at least one hex digit, so a malformed
# `return 0x;` (no digits) is NOT accepted — this is the tightened `+`-not-`*` fix.
stub_body = re.compile(r'^\s*(return\s+(?:0x[0-9a-fA-F]+|0)\s*;|return\s*;|)\s*$')

# Strips // line-comments and string/char literals from one source line so that braces
# appearing inside them are NOT counted by the brace-depth body scan. Without this, a
# body line like `s = "}";` or `// {` would mis-balance the depth counter and either
# truncate the body early or run past its real end, misclassifying the function.
_lit_re = re.compile(r'"(?:\\.|[^"\\])*"|\'(?:\\.|[^\'\\])*\'')
def _strip_code(line):
    """Return `line` with // comments and string/char literals removed (brace-safe)."""
    line = re.sub(r'//.*$', '', line)        # drop trailing line-comment
    line = _lit_re.sub('', line)             # drop "..." and '...' literals (escapes handled)
    return line

def classify(path):
    """Read a .cpp file and return (real, stub) lists of function names."""
    try:
        with open(path, encoding="latin-1") as fh:
            L = fh.read().splitlines()
    except OSError as e:
        print("warning: cannot read %s: %s" % (path, e), file=sys.stderr)
        return [], []
    return classify_text(L)

def classify_text(L):
    """Pure classifier: given source lines, return (real_names, stub_names).

    Factored out of classify() so the stub-vs-real logic is testable without a file."""
    real=[]; stub=[]
    i=0
    while i < len(L):
        if sig_re.match(L[i]) and i+1 < len(L) and L[i+1].strip()=="{":
            nm = name_re.search(L[i]); name = nm.group(1) if nm else L[i].strip()[:60]
            # Collect the body until the brace depth returns to 0 (the matching `}`).
            # Braces are counted on a comment/literal-stripped copy of each line so that
            # `{`/`}` inside strings, char literals, or // comments don't skew the depth
            # (see _strip_code). Naive `count`-based balancing is otherwise correct for
            # well-formed C++ but would mis-balance on those cases.
            depth=0; body=[]; j=i+1
            while j < len(L):
                code = _strip_code(L[j])
                depth += code.count("{") - code.count("}")
                if depth==0: break
                if j>i+1: body.append(L[j])
                j+=1
            inner=[b for b in body if b.strip() and not b.strip().startswith("//")]
            is_stub = (len(inner)==0) or (len(inner)==1 and stub_body.match(inner[0]))
            (stub if is_stub else real).append(name)
            i=j+1
        else:
            i+=1
    return real, stub

def _self_test():
    """Verify the pure stub/real classifier + signature/name/stub regexes. No I/O, no build."""
    ok = True
    def chk(cond, name):
        """Assert `cond`, print PASS/FAIL with `name`, and fold the result into `ok`."""
        nonlocal ok
        ok &= bool(cond)
        print(("  PASS " if cond else "  FAIL ") + name)

    # --- a synthetic translation unit exercising both verdicts ---
    src = "\n".join([
        "int Foo::Bar()",                 # real: has a non-trivial body
        "{",
        "    return this->x + 1;",
        "}",
        "",
        "int Foo::StubInt()",             # stub: single `return 0;`
        "{",
        "    return 0;",
        "}",
        "",
        "void Foo::StubVoid()",           # stub: single `return;`
        "{",
        "    return;",
        "}",
        "",
        "void Foo::Empty()",              # stub: empty body
        "{",
        "}",
        "",
        "uint32_t Foo::StubHex()",        # stub: `return 0x0;`
        "{",
        "    return 0x0;",
        "}",
        "",
        "bool Foo::IsReady() const",      # real AND const: regex must match the const sig
        "{",
        "    return this->ready;",
        "}",
        "",
        "void Foo::CommentOnly()",        # stub: body is only a comment
        "{",
        "    // TODO: lift this",
        "}",
    ]).splitlines()
    real, stub = classify_text(src)
    chk("Foo::Bar" in real, "non-trivial body classified REAL")
    chk("Foo::StubInt" in stub, "`return 0;` classified STUB")
    chk("Foo::StubVoid" in stub, "`return;` classified STUB")
    chk("Foo::Empty" in stub, "empty `{}` classified STUB")
    chk("Foo::StubHex" in stub, "`return 0x0;` classified STUB")
    chk("Foo::CommentOnly" in stub, "comment-only body classified STUB")
    # the regression the CLAUDE.md note is about: const methods must be counted (and as REAL here)
    chk("Foo::IsReady" in real, "const method captured & classified REAL (const-regex FIX holds)")
    chk(len(real) == 2 and len(stub) == 5, "exactly 2 real / 5 stub in the synthetic TU")

    # --- regex-level checks ---
    chk(sig_re.match("bool Foo::IsReady() const"), "sig_re matches a trailing-const signature")
    chk(sig_re.match("int Foo::Bar()"), "sig_re matches a plain signature")
    chk(not sig_re.match("int Foo::Bar();"), "sig_re rejects a declaration (trailing ;)")
    chk(not sig_re.match("    x = foo(1);"), "sig_re rejects an ordinary call statement")
    m = name_re.search("bool Foo::IsReady() const")
    chk(m and m.group(1) == "Foo::IsReady", "name_re extracts qualified name from const sig")
    dn = name_re.search("Foo::~Foo()")
    chk(dn and dn.group(1) == "Foo::~Foo", "name_re extracts a destructor name")
    chk(stub_body.match("return 0;") and stub_body.match("return;")
        and stub_body.match("") and stub_body.match("return 0x1a;"),
        "stub_body matches the stub forms")
    chk(not stub_body.match("return this->x;"), "stub_body rejects a real return")

    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if "--self-test" in sys.argv:
    sys.exit(_self_test())

rows=[]
for f in sorted(glob.glob(os.path.join(STAGE,"*.cpp"))):
    r,s = classify(f)
    if r or s: rows.append((os.path.basename(f), len(r), len(s), r, s))

# Totals across all files: TR=real, TS=stub, TOT=total. `TR+TS or 1` guards against a
# divide-by-zero when there are no functions at all (empty repo / no staging dir), so the
# percentage math below is always safe. The per-file `(r+s) or 1` guards do the same.
TR=sum(x[1] for x in rows); TS=sum(x[2] for x in rows); TOT=TR+TS or 1

if "--csv" in sys.argv:
    print("file,real,stub,pct");
    for fn,r,s,_,_ in rows: print("%s,%d,%d,%.1f"%(fn,r,s,100*r/((r+s)or 1)))
    sys.exit()

if "--list" in sys.argv:
    # --list takes a following regex pattern; guard against it being the last arg.
    idx = sys.argv.index("--list")
    if idx+1 >= len(sys.argv):
        sys.exit("usage: --list <filepat>  (regex matched against base file names)")
    pat=sys.argv[idx+1]
    for fn,r,s,_,stubs in rows:
        if re.search(pat,fn) and stubs:
            print("\n%s — %d stubs:"%(fn,len(stubs)))
            for n in stubs: print("   "+n)
    sys.exit()

if "--callers" in sys.argv:
    # Rank remaining stubs by how many times their (unqualified) name appears as a `call`
    # in the unprocessed asm. NOTE: this ranking is APPROXIMATE, not exact — the unqualified
    # short name conflates identically-named methods across different classes, and a short
    # name can also match as a substring inside a longer mangled symbol. It is meant only as
    # a rough "lift these first" priority, not a precise call count.
    def _read(f):
        """Read an asm file as latin-1 (lossless byte passthrough); '' on OSError."""
        try:
            with open(f, encoding="latin-1") as fh: return fh.read()
        except OSError as e:
            print("warning: cannot read %s: %s" % (f, e), file=sys.stderr); return ""
    blob="\n".join(_read(f) for f in ASM)
    counts={}
    for fn,r,s,_,stubs in rows:
        for n in stubs:
            short=n.split("::")[-1]
            if len(short)<5: continue   # skip very short names: too many spurious substring hits
            # Match the bare method name (\b word-boundaries) on any line containing `call`.
            # re.escape guards regex-special chars; short is ASCII so this is case-exact.
            counts[n]=len(re.findall(r'call[^\n]*\b%s\b'%re.escape(short), blob))
    print("=== remaining stubs ranked by #asm call-sites (lift these first) ===")
    for n,c in sorted(counts.items(), key=lambda kv:-kv[1])[:40]:
        if c: print("  %4d  %s"%(c,n))
    sys.exit()

print("=== bw1-decomp staging coverage ===")
print("  %d / %d functions lifted = %.1f%%   (%d stubs remain)"%(TR,TOT,100*TR/TOT,TS))
print("\n=== files with the most remaining stubs ===")
for fn,r,s,_,_ in sorted(rows,key=lambda x:-x[2])[:20]:
    bar="#"*int(20*r/((r+s)or 1))
    print("  %-46s %4d stub / %4d  [%-20s] %.0f%%"%(fn,s,r+s,bar,100*r/((r+s)or 1)))
print("\nTips: --list <filepat> (names), --callers (priority by call-sites), --csv. "
      "Trivial getters/setters: run tools/autolift.py --apply first.")
