#!/usr/bin/env python3
"""verify.py - close the loop: how byte-exact is a function (or the whole decomp)?

The keystone for the road to 100%. Runs objdiff-cli's report over the configured objdiff
build (staging .obj vs the original .obj) and reports the **fuzzy match %** -- overall, per
unit, or for a single function. This turns every other tool from "documentation-grade" into
"proven": gate autolift/lift_thunks/propose on `verify.py <fn>` showing 100%.

Prereqs (one-time): the objdiff build must be configured --
    export PATH="$PWD/.venv/Scripts:$PATH"      # venv cmake >=3.30
    python configure_objdiff.py                 # builds the staging side + objdiff.json
and objdiff-cli on PATH or at ./objdiff-cli[.exe] (download from the objdiff releases).

Usage:
  python tools/verify.py                         # overall match % + the least-matched units
  python tools/verify.py GetTribalPower@Object   # match % for one function (by name)
  python tools/verify.py --unit Villager         # per-function match for units matching a pattern
  python tools/verify.py --match Villager        # fast single-unit .text match% (no full report)
  python tools/verify.py --refresh ...           # regenerate the report first (after a rebuild)
  python tools/verify.py --self-test             # parser self-test (no build needed)

--unit vs --match: --unit reads the already-generated full report.json and prints the
per-function breakdown for every unit whose name contains the pattern; --match instead runs
objdiff-cli's `diff` on a single unit on the fly (no full report needed) and prints just that
unit's overall .text match%, which is much faster when you only care about one unit.
"""
import os, re, sys, json, subprocess, glob
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
OBJDIFF_DIR = os.path.join(ROOT, "cmake-build-presets", "objdiff")
REPORT = os.path.join(OBJDIFF_DIR, "report.json")

def _cli():
    """Locate the objdiff-cli executable, or return None if it cannot be found.

    Tries, in order: a bare `objdiff-cli`/`objdiff-cli.exe` on PATH, then a copy sitting in
    the repo root. A candidate is treated as a *path* (checked with os.path.exists) when it
    contains a path separator, and as a *bare name* (resolved via shutil.which on PATH) when
    it does not.
    """
    for c in ("objdiff-cli", "objdiff-cli.exe",
              os.path.join(ROOT, "objdiff-cli"), os.path.join(ROOT, "objdiff-cli.exe")):
        # `c` is path-like if it contains either separator (altsep is None on POSIX, so guard
        # it before the `in` test); otherwise it is a bare name to resolve on PATH.
        is_pathlike = (os.path.sep in c) or bool(os.path.altsep and os.path.altsep in c)
        if is_pathlike:
            if os.path.exists(c): return c
        else:
            from shutil import which
            if which(c): return c
    return None

def _normalize_objdiff_json():
    """objdiff-cli on Windows mangles absolute `C:/...` target_paths (C:/ -> C:); make them
    relative to the objdiff dir (matching the already-relative base_path)."""
    cfg = os.path.join(OBJDIFF_DIR, "objdiff.json")
    if not os.path.exists(cfg): return
    with open(cfg, encoding="utf-8") as f:
        d = json.load(f)
    # Absolute objdiff dir as a forward-slash, lowercased prefix (Windows paths are
    # case-insensitive, so compare lowercased) ending in "/" so the slice below leaves a
    # clean relative path.
    prefix = os.path.abspath(OBJDIFF_DIR).replace("\\", "/").lower() + "/"
    changed = 0
    for u in d.get("units", []):
        for k in ("target_path", "base_path"):
            v = u.get(k)
            if isinstance(v, str):
                vp = v.replace("\\", "/")
                # Strip the absolute objdiff-dir prefix (compare lowercased, but keep the
                # original-case tail) to make the path relative, matching base_path's form.
                if vp.lower().startswith(prefix):
                    u[k] = vp[len(prefix):]; changed += 1
    if changed:
        with open(cfg, "w", encoding="utf-8") as f:
            json.dump(d, f, indent=2)

def generate_report():
    """Run `objdiff-cli report generate` over the configured build, writing report.json.

    Exits with a friendly message if objdiff-cli is missing or objdiff was never configured.
    Normalizes the objdiff.json paths first (Windows mangling fix) and invokes the CLI with a
    repo-relative `-C` dir / `-o` output, matching how CI generates the report.
    """
    cli = _cli()
    if not cli:
        sys.exit("objdiff-cli not found (PATH or ./objdiff-cli[.exe]). Download from the objdiff releases.")
    if not os.path.exists(os.path.join(OBJDIFF_DIR, "objdiff.json")):
        sys.exit("objdiff not configured: run `python configure_objdiff.py` first.")
    _normalize_objdiff_json()
    print("[verify] generating objdiff report ...", file=sys.stderr)
    rel = os.path.relpath(OBJDIFF_DIR, ROOT).replace("\\", "/")      # CI-style relative -C
    r = subprocess.run([os.path.abspath(cli), "-C", rel, "report", "generate", "-o", "report.json"],
                       cwd=ROOT, capture_output=True, text=True)     # -o is relative to -C dir
    if r.returncode != 0:
        sys.exit("[verify] objdiff-cli failed:\n" + (r.stderr or r.stdout))

def load_report():
    """Return the parsed objdiff report.json, generating it first if it does not yet exist."""
    if not os.path.exists(REPORT):
        generate_report()
    with open(REPORT, encoding="utf-8") as f:
        return json.load(f)

# --- fast single-unit primitives (the gate's hot path) ---------------------------------------
import functools as _ft
@_ft.lru_cache(maxsize=1)
def _objdiff_cfg():
    """Return (cached) the parsed objdiff.json config (its `units` list maps names -> paths)."""
    with open(os.path.join(OBJDIFF_DIR, "objdiff.json"), encoding="utf-8") as f:
        return json.load(f)
@_ft.lru_cache(maxsize=1)
def _compile_commands():
    """staging source file (normalized) -> compile-command entry."""
    with open(os.path.join(OBJDIFF_DIR, "compile_commands.json"), encoding="utf-8") as f:
        cc = json.load(f)
    return {e["file"].replace("\\", "/"): e for e in cc if "src/staging" in e["file"].replace("\\", "/")}

def unit_for_function(q):
    """which objdiff unit (and staging source) contains function q? -> (unit_name, staging_src) or None."""
    rep = load_report()
    for un, fn, pct, dem in find_or_iter(rep, q):
        for u in _objdiff_cfg().get("units", []):
            if u.get("name") == un:
                base = u.get("base_path", "")
                # base_path: CMakeFiles/runblack_objdiff_staging.dir/src/staging/<stem>.cpp.obj
                m = re.search(r"src/staging/(.+?)\.obj$", base.replace("\\", "/"))
                src = os.path.join(ROOT, "src", "staging", m.group(1)) if m else None
                return un, (src.replace("\\", "/") if src else None)
    return None

def find_or_iter(rep, q):
    hits = find_function(rep, q)
    return hits if hits else []

def recompile_unit(staging_src):
    """rebuild just one staging .obj via its compile_commands entry. returns True/err."""
    key = os.path.abspath(staging_src).replace("\\", "/")
    e = _compile_commands().get(key)
    if not e:
        # try a looser match on basename
        base = os.path.basename(key)
        e = next((v for k, v in _compile_commands().items() if k.endswith("/" + base)), None)
    if not e:
        return "no compile command for %s" % staging_src
    cmd = e.get("command") or e.get("arguments")
    # A well-formed compile_commands.json entry always carries a `directory`; guard so a
    # malformed/foreign entry returns a clean message instead of raising KeyError.
    if "directory" not in e:
        return "compile command for %s has no 'directory'" % staging_src
    r = subprocess.run(cmd if isinstance(cmd, list) else cmd, shell=not isinstance(cmd, list),
                       cwd=e["directory"], capture_output=True, text=True)
    return True if r.returncode == 0 else ("compile failed:\n" + (r.stderr or r.stdout)[-1500:])

def unit_match(unit_name):
    """fast: objdiff diff one unit -> .text match% (no full report)."""
    u = next((x for x in _objdiff_cfg().get("units", []) if x.get("name") == unit_name), None)
    if not u: return None
    cli = _cli()
    if not cli:
        # Match generate_report()'s graceful failure instead of crashing in os.path.abspath(None).
        sys.exit("objdiff-cli not found (PATH or ./objdiff-cli[.exe]). Download from the objdiff releases.")
    out = os.path.join(OBJDIFF_DIR, "_unit_diff.json")
    r = subprocess.run([os.path.abspath(cli), "diff", "-1", u["target_path"], "-2", u["base_path"],
                        "-o", "_unit_diff.json", "--format", "json"],
                       cwd=OBJDIFF_DIR, capture_output=True, text=True)
    if r.returncode != 0 or not os.path.exists(out): return None
    with open(out, encoding="utf-8") as f:
        d = json.load(f)
    for sec in d.get("left", {}).get("sections", []):
        if sec.get("name") == ".text": return sec.get("match_percent")
    return None

def function_match(q, refresh=True):
    """per-function fuzzy match% (q resolved via symbols.py). refresh -> regenerate report (0.4s) first."""
    if refresh:
        generate_report()
    with open(REPORT, encoding="utf-8") as f:
        rep = json.load(f)
    hits = find_function(rep, q)
    return max((h[2] for h in hits if h[2] is not None), default=None)

# --- schema-tolerant accessors (objdiff report fields have shifted across versions) ----------
def _pct(obj):
    """pull a fuzzy/match percent out of a node, wherever the version stashed it."""
    if obj is None: return None
    # Newer objdiff nests the percent under a "measures" sub-object; older versions put the keys
    # directly on the node -- so unwrap "measures" if present, else read the node itself.
    m = obj.get("measures", obj) if isinstance(obj, dict) else None
    if not isinstance(m, dict): return None
    # Accept every spelling objdiff has used across versions: snake_case and camelCase of the
    # "fuzzy"/"matched-code"/"match" percent. First numeric hit wins.
    for k in ("fuzzy_match_percent", "fuzzyMatchPercent", "match_percent", "matched_code_percent",
              "matchedCodePercent"):
        if k in m and isinstance(m[k], (int, float)): return float(m[k])
    return None

def _units(rep):       return rep.get("units") or rep.get("Units") or []
def _name(node):       return node.get("name") or node.get("Name") or "?"
def _functions(unit):  return unit.get("functions") or unit.get("Functions") or []
def _demangled(fn):    return (fn.get("metadata") or {}).get("demangled_name") or ""

def iter_functions(rep):
    for u in _units(rep):
        un = _name(u)
        for fn in _functions(u):
            yield un, _name(fn), _pct(fn), _demangled(fn)

def overall(rep):
    """Top-level fuzzy match% for the whole decomp (or None if the report lacks it).

    _pct already unwraps a nested "measures" object, so _pct(rep) covers both the wrapped and
    unwrapped report shapes -- no separate fallback is needed.
    """
    return _pct(rep)

# --- name resolution: map Name@Class -> the symbol spellings objdiff prints -------------------
def _name_variants(q):
    out = {q}
    try:
        from symbols import Symbols
        H = Symbols()
        f = H.resolve(q) or H.by_cname.get(q) or H.by_mangled.get(q)
        if not f and "@" in q and not q.startswith(("?", "@")):
            meth, cls = q.split("@", 1)[0], q.split("@", 1)[1]
            f = next((x for x in H.by_cname.values() if x.cls == cls and x.method == meth), None)
        if f: out |= {f.mangled, f.cname, "%s::%s" % (f.cls, f.method)}
    except Exception:
        pass
    return {v for v in out if v}

def find_function(rep, q):
    variants = _name_variants(q)                          # mangled, cname, Class::method, raw q
    cppname = next((v for v in variants if "::" in v), None)
    hits = []
    for un, fn, pct, dem in iter_functions(rep):
        # Match either an exact symbol spelling (fn in variants) or the demangled name: equal to
        # the Class::method form, or that name followed by '(' -- the '\bNAME\(' form tolerates a
        # trailing parameter list / overload signature in objdiff's demangled output.
        if fn in variants or (cppname and (dem == cppname or re.search(r'\b%s\(' % re.escape(cppname), dem))):
            hits.append((un, fn, pct, dem))
    return hits

def _bar(pct):
    """Render a percent as a 10-cell ASCII progress bar + the numeric value (or '?' if None)."""
    if pct is None: return "    ?    "
    n = int(round(pct / 10)); return "[" + "#" * n + " " * (10 - n) + "] %5.1f%%" % pct

def _self_test():
    sample = {"measures": {"fuzzy_match_percent": 26.1},
              "units": [{"name": "Villager.cpp", "measures": {"fuzzy_match_percent": 6.0},
                         "functions": [{"name": "?GetTribalPower@Object@@UAEMW4TRIBE_TYPE@@@Z",
                                        "measures": {"fuzzy_match_percent": 100.0}},
                                       {"name": "@__ct__8VillagerFv", "measures": {"fuzzy_match_percent": 0.0}}]}]}
    ok = True
    def chk(c, n):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n)
    chk(abs(overall(sample) - 26.1) < 1e-6, "overall percent parsed")
    fns = list(iter_functions(sample)); chk(len(fns) == 2, "iterate functions")
    chk(fns[0][2] == 100.0, "function percent parsed")
    hits = find_function(sample, "?GetTribalPower@Object@@UAEMW4TRIBE_TYPE@@@Z")
    chk(len(hits) == 1 and hits[0][2] == 100.0, "find function by exact symbol")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

def _opt_value(a, flag):
    """Return the argument following `flag` in arg list `a`, exiting with a usage error if it
    is missing (so `--unit`/`--match` with no value give a friendly message, not IndexError)."""
    i = a.index(flag)
    if i + 1 >= len(a):
        sys.exit("usage: %s expects a value (e.g. `%s Villager`)" % (flag, flag))
    return a[i + 1]

def main():
    """CLI dispatch. See the module docstring for the full flag/usage surface."""
    a = sys.argv[1:]
    if "--self-test" in a: sys.exit(_self_test())
    if "--match" in a:                                # fast single-unit diff (no full report)
        # --match runs objdiff-cli `diff` on one unit and prints just its .text match%; unlike
        # --unit it does not need (and does not read) the full report.json.
        un = _opt_value(a, "--match")
        print("%s  %s" % (_bar(unit_match(un)), un)); return
    if "--refresh" in a: generate_report(); a = [x for x in a if x != "--refresh"]
    rep = load_report()
    ov = overall(rep)
    if "--unit" in a:
        pat = _opt_value(a, "--unit")
        for u in _units(rep):
            if pat.lower() in _name(u).lower():
                print("\n%s   %s" % (_name(u), _bar(_pct(u))))
                for fn in _functions(u):
                    print("   %s  %s" % (_bar(_pct(fn)), _name(fn)))
        return
    pos = [x for x in a if not x.startswith("-")]
    if pos:
        q = pos[0]; hits = find_function(rep, q)
        if not hits: print("(no function matching %r in the objdiff report)" % q); return
        for un, fn, pct, dem in sorted(hits, key=lambda h: -(h[2] or 0)):
            print("%s  %-40s  [%s]" % (_bar(pct), dem or fn, un))
        return
    # default: overall + the least-matched units (where the work is)
    print("OVERALL match: %s" % _bar(ov))
    units = [(_name(u), _pct(u)) for u in _units(rep)]
    worst = sorted([u for u in units if u[1] is not None], key=lambda u: u[1])[:15]
    print("\nleast-matched units (lift these):")
    for n, p in worst: print("  %s  %s" % (_bar(p), n))

if __name__ == "__main__":
    main()
