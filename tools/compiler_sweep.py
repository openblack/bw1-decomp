#!/usr/bin/env python3
r"""compiler_sweep.py - find WHICH MSVC6 build byte-matches a TU/function.

The BW1E142 binary is a multi-year PATCHWORK: its Rich header (see docs/port-banks/
10-compiler-rich-header.md) shows objects built by several cl.exe builds (C++ dominated by
12.00.8966, C by a 12.00.8047 beta, plus 8799/8447/8168). dtk uses ONE substitute (12.00.8804),
which byte-matches most functions but diverges on register-allocation-sensitive ones. To reproduce
the game faithfully we must do the SAME per-object "Frankenstein" build -- each object compiled by
the build that actually produced it.

This tool sweeps a TU across EVERY available cl.exe build and reports, per build, the TU's byte-exact
count + which functions newly match -- empirically attributing each object to its original compiler
AND closing residuals as more builds are obtained.

Usage:
  python tools/compiler_sweep.py --list                 # discovered compiler builds
  python tools/compiler_sweep.py <TU>                    # sweep one TU (e.g. Abode) across all builds
  python tools/compiler_sweep.py <TU> --sym <mangled>    # focus one function
  python tools/compiler_sweep.py --self-test
Register extra obtained builds by dropping them under build/compilers/<name>/.../cl.exe (any depth)
or listing dirs in the env var COMPILER_SWEEP_DIRS (os.pathsep-separated).
"""
import os, re, sys, json, subprocess, glob

DTK = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
VERSION = os.environ.get("BW1_VERSION", "BW1E142")
OBJDIFF = os.path.join(DTK, "build", "tools", "objdiff-cli.exe")


def _c2_version(cl):
    """The codegen identity is c2.dll (the back-end), NOT cl.exe (a thin driver that's only ever
    8168 or 8804). The PE Rich header @comp.id records the c2 build per object, so we key compilers
    by their sibling c2.dll version. Returns e.g. '8966' (SP5), '8799' (SP4), '8447' (SP3)..."""
    d = os.path.dirname(cl)
    for name in ("c2.dll", "C2.DLL"):
        p = os.path.join(d, name)
        if os.path.exists(p):
            try:
                import pefile
                pe = pefile.PE(p, fast_load=True)
                pe.parse_data_directories([pefile.DIRECTORY_ENTRY['IMAGE_DIRECTORY_ENTRY_RESOURCE']])
                fi = pe.VS_FIXEDFILEINFO[0]
                ms, ls = fi.FileVersionMS, fi.FileVersionLS
                return "%d.%d.%d" % (ms >> 16, ms & 0xFFFF, ls >> 16)
            except Exception:
                return None
    return None


def discover_compilers():
    """Find every cl.exe under build/compilers + COMPILER_SWEEP_DIRS, keyed by c2.dll (codegen) build.
    Same-cl.exe toolchains (all SP3-6 ship cl 8804) are kept DISTINCT by their c2.dll, which is what
    actually drives codegen. Each cl.exe loads the c2.dll in its own dir (we put that dir on PATH)."""
    roots = [os.path.join(DTK, "build", "compilers")]
    roots += [d for d in os.environ.get("COMPILER_SWEEP_DIRS", "").split(os.pathsep) if d]
    seen, out = {}, []
    for root in roots:
        for cl in glob.glob(os.path.join(root, "**", "[Cc][Ll].[Ee][Xx][Ee]"), recursive=True):
            c2 = _c2_version(cl)
            # Keyed by c2 (codegen identity). Skip the Processor Pack (c2 13.x) and anything unreadable.
            # Also skip builds NEWER than the newest the binary actually used (8966=SP5): SP6 (9782) and
            # later post-date BW1E142, so they can never be the original compiler -- pointless in the sweep.
            if not c2 or not c2.startswith("12."):
                continue
            try:
                if int(c2.split(".")[-1]) > 8966:
                    continue
            except ValueError:
                continue
            sp = {"12.0.8047": "beta", "12.0.8168": "RTM", "12.0.8447": "SP3", "12.0.8799": "SP4",
                  "12.0.8966": "SP5", "12.0.9782": "SP6"}.get(c2, "?")
            ver = "c2-%s(%s)" % (c2.split(".")[-1], sp)
            if ver not in seen:
                seen[ver] = cl
                out.append({"version": ver, "cl": cl})
    return out


def tu_build(tu):
    """From build.ninja, return (source_path, cflags_list) for this TU's .o compile."""
    nj = os.path.join(DTK, "build.ninja")
    txt = open(nj, encoding="utf-8").read().split("\n")
    obj = "build/%s/src/Black/%s.o" % (VERSION, tu)
    for i, ln in enumerate(txt):
        if ln.startswith("build " + obj.replace("/", "\\")) or ln.startswith("build " + obj):
            src = ln.split(": cl ", 1)[1].split(" |")[0].strip() if ": cl " in ln else None
            # cflags is on a following indented line, possibly continued with `$`
            cf = ""
            for j in range(i, min(i + 12, len(txt))):
                if txt[j].strip().startswith("cflags ="):
                    cf = txt[j].split("=", 1)[1]
                    k = j
                    while cf.rstrip().endswith("$"):
                        cf = cf.rstrip()[:-1] + " " + txt[k + 1]
                        k += 1
                    break
            return src, cf.split()
    return None, None


def compile_with(cl, src, cflags, obj):
    env = dict(os.environ)
    env["PATH"] = os.path.dirname(cl) + os.pathsep + env.get("PATH", "")
    r = subprocess.run([cl] + cflags + ["/c", src, "/Fo" + obj],
                       cwd=DTK, capture_output=True, text=True, env=env)
    return os.path.exists(os.path.join(DTK, obj)), (r.stdout or "") + (r.stderr or "")


def tu_scores(tu):
    """objdiff report -> {symbol: fuzzy_match_percent} for this TU (None if unit absent)."""
    rep = os.path.join(DTK, "_sweep_rep.json")
    subprocess.run([OBJDIFF, "report", "generate", "-p", ".", "-o", rep], cwd=DTK, capture_output=True, text=True)
    if not os.path.exists(rep):
        return {}
    d = json.load(open(rep)); os.remove(rep)
    for u in d.get("units", []):
        if u.get("name", "").endswith("/" + tu) or u.get("name", "").endswith("/Black/" + tu):
            return {fn.get("name"): fn.get("fuzzy_match_percent") for fn in u.get("functions", [])}
    return {}


def sweep(tu, focus=None):
    src, cflags = tu_build(tu)
    if not src:
        print("TU %s not found in build.ninja" % tu); return
    obj = "build/%s/src/Black/%s.o" % (VERSION, tu)
    comps = discover_compilers()
    print("TU %s  src=%s  builds=%d" % (tu, src, len(comps)))
    results = {}
    for c in comps:
        ok, out = compile_with(c["cl"], src, cflags, obj)
        if not ok:
            errs = [l.strip() for l in out.splitlines() if "error" in l.lower()][:1]
            print("  %-12s COMPILE FAIL %s" % (c["version"], errs)); continue
        sc = tu_scores(tu)
        exact = sum(1 for v in sc.values() if v == 100)
        results[c["version"]] = sc
        extra = ""
        if focus:
            extra = "  %s=%.2f" % (focus.split("@")[0][:20], sc.get(focus, float("nan")))
        print("  %-12s byte-exact %d/%d%s" % (c["version"], exact, len(sc), extra))
    # per-function winners: functions matched by a build OTHER than the default
    if results and not focus:
        base = max(results, key=lambda v: sum(1 for x in results[v].values() if x == 100))
        wins = {}
        for ver, sc in results.items():
            for sym, v in sc.items():
                if v == 100:
                    wins.setdefault(sym, []).append(ver)
        only = {s: vs for s, vs in wins.items() if len(vs) < len(results)}
        if only:
            print("  functions whose match DEPENDS on the build (%d):" % len(only))
            for s, vs in list(only.items())[:20]:
                print("    %-50s matched by: %s" % (s[:50], ",".join(vs)))
    print("  (NOTE: leaves %s built by the LAST swept compiler; rebuild via ninja to restore default)" % obj)


def _self_test():
    ok = True
    def chk(c, n):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n)
    comps = discover_compilers()
    chk(len(comps) >= 1, "discovered >=1 compiler (%s)" % ",".join(c["version"] for c in comps))
    src, cf = tu_build("Abode")
    chk(src is not None and "Abode.cpp" in (src or ""), "parsed Abode build src=%s" % src)
    chk(cf is not None and "/O2" in (cf or []), "parsed Abode cflags (/O2 present)")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1


if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a:
        sys.exit(_self_test())
    if "--list" in a or not a:
        for c in discover_compilers():
            print("%-14s %s" % (c["version"], c["cl"]))
        sys.exit(0)
    tu = a[0]
    focus = a[a.index("--sym") + 1] if "--sym" in a else None
    sweep(tu, focus)
