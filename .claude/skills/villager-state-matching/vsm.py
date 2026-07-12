#!/usr/bin/env python3

"""
Villager state-matching campaign driver (vsm).

JSON-emitting CLI over objdiff-cli for the ~909-function Villager state machine
campaign (24 objdiff units, all methods of the single Villager class grouped
into per-role .cpp files). Modeled on .claude/skills/libcmt-obj-matching/libobj.py:
every subcommand prints exactly one JSON object; working files live beside this
script.

  index    build/refresh vsm_index.json (per-function metadata + callee graph)
  status   per-unit and campaign roll-up
  next     ranked candidate queue (semantically cheapest first)
  claim    lock a unit for one agent          (ledger append)
  release  release a unit lock                (ledger append)
  log      record a per-function attempt      (ledger append)
  report   regenerate vsm_report.md and print summary

Working files (beside this script):
  vsm_index.json   cache, gitignored
  vsm_ledger.jsonl claims + attempts, git-tracked (the resumable queue state)
  vsm_report.md    human-readable progress, git-tracked
"""

import argparse
import datetime
import json
import os
import re
import subprocess
import sys
from typing import Any, Dict, List, Optional

SCRIPT_DIR = os.path.dirname(os.path.realpath(__file__))
ROOT = os.path.abspath(os.path.join(SCRIPT_DIR, "..", "..", ".."))
_exe = ".exe" if os.name == "nt" else ""
OBJDIFF_CLI = os.environ.get("OBJDIFF_CLI", os.path.join(ROOT, "build", "tools", "objdiff-cli" + _exe))
SYMBOLS_TXT = os.path.join(ROOT, "config", "BW1W120", "symbols.txt")
OBJDIFF_JSON = os.path.join(ROOT, "objdiff.json")

INDEX_PATH = os.path.join(SCRIPT_DIR, "vsm_index.json")
LEDGER_PATH = os.path.join(SCRIPT_DIR, "vsm_ledger.jsonl")
REPORT_PATH = os.path.join(SCRIPT_DIR, "vsm_report.md")

MATCH_PCT = 99.995  # float-safe "100%"
WIP_PCT = 15.0      # below this a body is considered an untouched stub

FUN_RE = re.compile(r"FUN_[0-9A-Fa-f]{6,}")


def now_iso() -> str:
    return datetime.datetime.now().strftime("%Y-%m-%dT%H:%M:%S")


def agent_name(cli_value: Optional[str]) -> str:
    return cli_value or os.environ.get("VSM_AGENT") or "main"


def emit(obj: Dict[str, Any], code: int = 0) -> None:
    print(json.dumps(obj, indent=2))
    sys.exit(code)


def short_name(demangled: str, mangled: str) -> str:
    """'public: unsigned int __thiscall Villager::CheckChild(void)' -> 'Villager::CheckChild'"""
    s = demangled or mangled
    s = s.split("(")[0]
    for junk in ("public: ", "protected: ", "private: ", "virtual ", "static "):
        s = s.replace(junk, "")
    m = re.search(r"__(?:thiscall|cdecl|stdcall|fastcall)\s+(.*)$", s)
    if m:
        return m.group(1).strip()
    return s.split()[-1] if " " in s else s


# ---------------------------------------------------------------------------
# Data sources
# ---------------------------------------------------------------------------

def villager_units() -> List[Dict[str, Any]]:
    with open(OBJDIFF_JSON) as f:
        cfg = json.load(f)
    return [u for u in cfg["units"] if "villager" in u["name"].lower()]


def resolve_unit(units: List[Dict[str, Any]], spec: str) -> Optional[Dict[str, Any]]:
    """Accept 'VillagerChild', 'Black/VillagerChild' or the full unit name."""
    spec_l = spec.lower()
    for u in units:
        if u["name"].lower() == spec_l or u["name"].lower().endswith("/" + spec_l):
            return u
    return None


def load_symbol_addrs() -> Dict[str, str]:
    addrs: Dict[str, str] = {}
    line_re = re.compile(r"^(\S+)\s*=\s*\.\w+:(0x[0-9A-Fa-f]+);")
    with open(SYMBOLS_TXT) as f:
        for line in f:
            m = line_re.match(line)
            if m:
                addrs[m.group(1)] = m.group(2).lower()
    return addrs


def run_objdiff(unit: str) -> Dict[str, Any]:
    result = subprocess.run(
        [OBJDIFF_CLI, "diff", "-c", "functionRelocDiffs=data_value", "-u", unit, "-o", "-", "--format", "json"],
        capture_output=True,
        cwd=ROOT,
    )
    if result.returncode != 0:
        raise RuntimeError(f"objdiff-cli failed for {unit}: {result.stderr.decode()[:500]}")
    return json.loads(result.stdout)


# ---------------------------------------------------------------------------
# index
# ---------------------------------------------------------------------------

def extract_functions(unit: Dict[str, Any], addrs: Dict[str, str]) -> List[Dict[str, Any]]:
    data = run_objdiff(unit["name"])
    left_syms = data.get("left", {}).get("symbols", [])
    fns = []
    for sym in left_syms:
        if sym.get("kind") != "SYMBOL_FUNCTION" and "instructions" not in sym:
            continue
        size = int(sym.get("size", "0"))
        if size == 0:
            continue
        mangled = sym.get("name", "?")
        demangled = sym.get("demangled_name", mangled)
        mp = sym.get("match_percent")
        if sym.get("target_symbol") is None:
            status = "missing"
        elif mp is not None and mp >= MATCH_PCT:
            status = "match"
        else:
            status = "nonmatching"

        callees: List[str] = []
        has_float = False
        for ins in sym.get("instructions", []):
            i = ins.get("instruction")
            if not i:
                continue
            rel = i.get("relocation")
            if rel is None or rel.get("target_symbol") is None:
                continue
            tname = left_syms[rel["target_symbol"]].get("name", "")
            if tname.startswith("__real@"):
                has_float = True
            parts = i.get("parts", [])
            mnemonic = parts[0].get("opcode", {}).get("mnemonic") if parts else None
            if mnemonic == "call" and tname:
                if tname not in callees:
                    callees.append(tname)

        fns.append({
            "mangled": mangled,
            "name": short_name(demangled, mangled),
            "demangled": demangled,
            "unit": unit["name"],
            "addr": addrs.get(mangled),
            "size": size,
            "match_percent": round(mp, 2) if mp is not None else None,
            "status": status,
            "callees": callees,
            "flags": {
                "has_fun_callee": any(FUN_RE.search(c) for c in callees),
                "has_float_const": has_float,
                "is_fun": bool(FUN_RE.search(mangled)),
                "is_crt_xc": mangled.startswith("crt_xc_"),
            },
        })
    return fns


def unit_mtimes(unit: Dict[str, Any]) -> Dict[str, float]:
    out = {}
    for key in ("target_path", "base_path"):
        p = os.path.join(ROOT, unit[key])
        out[key] = os.path.getmtime(p) if os.path.exists(p) else 0.0
    return out


def load_index() -> Optional[Dict[str, Any]]:
    if not os.path.exists(INDEX_PATH):
        return None
    with open(INDEX_PATH) as f:
        return json.load(f)


def build_index(refresh: bool, only_unit: Optional[str]) -> Dict[str, Any]:
    units = villager_units()
    prev = load_index() or {"units": {}}
    addrs = load_symbol_addrs()
    refreshed = []
    for u in units:
        name = u["name"]
        if only_unit and resolve_unit([u], only_unit) is None:
            continue
        mt = unit_mtimes(u)
        cached = prev["units"].get(name)
        if not refresh and cached and cached.get("mtimes") == mt:
            continue
        prev["units"][name] = {
            "mtimes": mt,
            "source_path": u.get("metadata", {}).get("source_path"),
            "functions": extract_functions(u, addrs),
        }
        refreshed.append(name)
    # reverse caller map over the whole scope
    fan_in: Dict[str, List[str]] = {}
    for uname, ud in prev["units"].items():
        for fn in ud["functions"]:
            for c in fn["callees"]:
                fan_in.setdefault(c, [])
                if fn["mangled"] not in fan_in[c]:
                    fan_in[c].append(fn["mangled"])
    for ud in prev["units"].values():
        for fn in ud["functions"]:
            fn["callers"] = fan_in.get(fn["mangled"], [])
    prev["generated"] = now_iso()
    with open(INDEX_PATH, "w") as f:
        json.dump(prev, f)
    return {"index": prev, "refreshed": refreshed}


def ensure_index() -> Dict[str, Any]:
    idx = load_index()
    if idx is None:
        idx = build_index(refresh=True, only_unit=None)["index"]
    return idx


def all_functions(idx: Dict[str, Any]) -> List[Dict[str, Any]]:
    out = []
    for ud in idx["units"].values():
        out.extend(ud["functions"])
    return out


# ---------------------------------------------------------------------------
# ledger
# ---------------------------------------------------------------------------

def ledger_records() -> List[Dict[str, Any]]:
    if not os.path.exists(LEDGER_PATH):
        return []
    recs = []
    with open(LEDGER_PATH) as f:
        for line in f:
            line = line.strip()
            if line:
                recs.append(json.loads(line))
    return recs


def ledger_append(rec: Dict[str, Any]) -> None:
    with open(LEDGER_PATH, "a") as f:
        f.write(json.dumps(rec) + "\n")


def current_claims() -> Dict[str, str]:
    """unit name -> agent, for claims without a later release."""
    claims: Dict[str, str] = {}
    for rec in ledger_records():
        if rec.get("type") == "claim":
            claims[rec["unit"]] = rec["agent"]
        elif rec.get("type") == "release":
            claims.pop(rec["unit"], None)
    return claims


def deferred_functions() -> Dict[str, str]:
    """mangled -> ts of most recent 'deferred' attempt."""
    out: Dict[str, str] = {}
    for rec in ledger_records():
        if rec.get("type") == "attempt" and rec.get("result") == "deferred":
            out[rec["function"]] = rec["ts"]
        elif rec.get("type") == "attempt" and rec.get("result") == "matched":
            out.pop(rec["function"], None)
    return out


# ---------------------------------------------------------------------------
# commands
# ---------------------------------------------------------------------------

def cmd_index(args) -> None:
    res = build_index(refresh=args.refresh, only_unit=args.unit)
    idx = res["index"]
    emit({
        "units": len(idx["units"]),
        "functions": len(all_functions(idx)),
        "refreshed": res["refreshed"],
        "index_path": os.path.relpath(INDEX_PATH, ROOT),
    })


def unit_rollup(fns: List[Dict[str, Any]]) -> Dict[str, Any]:
    total_b = sum(f["size"] for f in fns)
    matched_b = sum(f["size"] for f in fns if f["status"] == "match")
    weighted_b = sum(f["size"] * (f["match_percent"] or 0.0) / 100.0 for f in fns if f["status"] != "missing")
    return {
        "functions": len(fns),
        "matched": sum(1 for f in fns if f["status"] == "match"),
        "wip": sum(1 for f in fns if f["status"] == "nonmatching" and (f["match_percent"] or 0) >= WIP_PCT),
        "stub": sum(1 for f in fns if f["status"] == "nonmatching" and (f["match_percent"] or 0) < WIP_PCT),
        "missing": sum(1 for f in fns if f["status"] == "missing"),
        "bytes_total": total_b,
        "bytes_matched": matched_b,
        "bytes_weighted": round(weighted_b),
    }


def cmd_status(args) -> None:
    idx = ensure_index()
    claims = current_claims()
    per_unit = {}
    for uname in sorted(idx["units"]):
        if args.unit and not uname.lower().endswith(args.unit.lower()):
            continue
        r = unit_rollup(idx["units"][uname]["functions"])
        if uname in claims:
            r["claimed_by"] = claims[uname]
        per_unit[uname] = r
    tot = unit_rollup([f for u in per_unit for f in idx["units"][u]["functions"]])
    emit({"generated": idx.get("generated"), "campaign": tot, "units": per_unit})


def candidate_score(fn: Dict[str, Any], status_by_mangled: Dict[str, str]) -> float:
    in_scope_callees = [c for c in fn["callees"] if c in status_by_mangled]
    all_matched = bool(in_scope_callees) and all(status_by_mangled[c] == "match" for c in in_scope_callees)
    score = 0.0
    score += 10.0 * len(fn.get("callers", []))
    score -= fn["size"] / 32.0
    score -= 2.0 * len(fn["callees"])
    if fn["flags"]["has_float_const"]:
        score -= 8.0
    if all_matched or not fn["callees"]:
        score += 5.0
    return round(score, 2)


def cmd_next(args) -> None:
    idx = ensure_index()
    claims = current_claims()
    me = agent_name(args.agent)
    deferred = deferred_functions()
    generated = idx.get("generated", "")
    status_by_mangled = {f["mangled"]: f["status"] for f in all_functions(idx)}

    cands = []
    for uname, ud in idx["units"].items():
        if args.unit:
            if not uname.lower().endswith(args.unit.lower()):
                continue
        elif uname in claims and claims[uname] != me:
            continue
        for fn in ud["functions"]:
            if fn["status"] not in ("nonmatching", "missing"):
                continue
            if fn["size"] > args.max_size:
                continue
            if fn["flags"]["is_crt_xc"]:
                continue
            if not args.all and (fn["flags"]["has_fun_callee"] or fn["flags"]["is_fun"]):
                continue
            if fn["mangled"] in deferred and deferred[fn["mangled"]] >= generated:
                continue
            fn = dict(fn)
            fn["score"] = candidate_score(fn, status_by_mangled)
            fn["callee_status"] = {c: status_by_mangled.get(c, "external") for c in fn["callees"]}
            cands.append(fn)

    cands.sort(key=lambda f: -f["score"])
    if args.wave:
        emit({"waves": compute_waves(idx)})
    out = [{
        "name": f["name"],
        "mangled": f["mangled"],
        "unit": f["unit"],
        "addr": f["addr"],
        "size": f["size"],
        "match_percent": f["match_percent"],
        "score": f["score"],
        "flags": f["flags"],
        "callees": f["callee_status"],
        "fan_in": len(f.get("callers", [])),
    } for f in cands[: args.count]]
    emit({"candidates": out, "total_eligible": len(cands)})


def compute_waves(idx: Dict[str, Any]) -> List[Dict[str, Any]]:
    fns = {f["mangled"]: f for f in all_functions(idx)}
    wave: Dict[str, int] = {}

    def wave_of(m: str, stack: frozenset) -> int:
        if m in wave:
            return wave[m]
        if m in stack:  # recursion cycle -> break at 0
            return 0
        deps = [c for c in fns[m]["callees"] if c in fns and c != m]
        w = 0 if not deps else 1 + max(wave_of(c, stack | {m}) for c in deps)
        wave[m] = w
        return w

    for m in fns:
        wave_of(m, frozenset())
    grouped: Dict[int, List[str]] = {}
    for m, w in wave.items():
        grouped.setdefault(w, []).append(fns[m]["name"])
    return [{"wave": w, "count": len(v), "functions": sorted(v)} for w, v in sorted(grouped.items())]


def cmd_claim(args) -> None:
    units = villager_units()
    u = resolve_unit(units, args.unit)
    if u is None:
        emit({"error": f"unknown unit '{args.unit}'"}, 1)
    me = agent_name(args.agent)
    claims = current_claims()
    holder = claims.get(u["name"])
    if holder and holder != me:
        emit({"error": f"unit {u['name']} already claimed by '{holder}'"}, 1)
    ledger_append({"ts": now_iso(), "type": "claim", "unit": u["name"], "agent": me})
    emit({"claimed": u["name"], "agent": me})


def cmd_release(args) -> None:
    units = villager_units()
    u = resolve_unit(units, args.unit)
    if u is None:
        emit({"error": f"unknown unit '{args.unit}'"}, 1)
    me = agent_name(args.agent)
    ledger_append({"ts": now_iso(), "type": "release", "unit": u["name"], "agent": me})
    emit({"released": u["name"], "agent": me})


def cmd_log(args) -> None:
    idx = ensure_index()
    fn = None
    for f in all_functions(idx):
        if f["mangled"] == args.function or f["name"] == args.function or args.function in f["mangled"]:
            fn = f
            break
    rec = {
        "ts": now_iso(),
        "type": "attempt",
        "agent": agent_name(args.agent),
        "function": fn["mangled"] if fn else args.function,
        "name": fn["name"] if fn else None,
        "unit": fn["unit"] if fn else None,
        "addr": fn["addr"] if fn else None,
        "size": fn["size"] if fn else None,
        "pct_before": fn["match_percent"] if fn else None,
        "pct_after": args.pct,
        "result": args.result,
        "idioms": args.idiom or [],
        "notes": args.notes,
    }
    ledger_append(rec)
    emit({"logged": rec})


def cmd_report(args) -> None:
    idx = ensure_index()
    recs = ledger_records()
    claims = current_claims()
    lines = ["# Villager state-matching campaign", "",
             f"_Generated {now_iso()} from index of {idx.get('generated')}_", ""]
    tot = unit_rollup(all_functions(idx))
    lines.append(f"**Campaign: {tot['matched']}/{tot['functions']} functions matched "
                 f"({tot['bytes_matched']}/{tot['bytes_total']} bytes, "
                 f"{100.0 * tot['bytes_weighted'] / max(tot['bytes_total'], 1):.1f}% weighted)**")
    lines += ["", "| Unit | fns | matched | wip | stub | missing | bytes | claimed |",
              "|---|---|---|---|---|---|---|---|"]
    for uname in sorted(idx["units"]):
        r = unit_rollup(idx["units"][uname]["functions"])
        short = uname.split("/", 1)[1]
        lines.append(f"| {short} | {r['functions']} | {r['matched']} | {r['wip']} | {r['stub']} "
                     f"| {r['missing']} | {r['bytes_matched']}/{r['bytes_total']} | {claims.get(uname, '')} |")
    deferred = [r for r in recs if r.get("type") == "attempt" and r.get("result") == "deferred"]
    if deferred:
        lines += ["", "## Deferred functions", ""]
        seen = set()
        for r in reversed(deferred):
            if r["function"] in seen:
                continue
            seen.add(r["function"])
            lines.append(f"- `{r.get('name') or r['function']}` ({r.get('unit')}, {r.get('pct_after')}%) — {r.get('notes') or 'no notes'}")
    idioms: Dict[str, int] = {}
    for r in recs:
        for i in r.get("idioms") or []:
            idioms[i] = idioms.get(i, 0) + 1
    if idioms:
        lines += ["", "## Idiom tally", ""]
        for i, n in sorted(idioms.items(), key=lambda kv: -kv[1]):
            lines.append(f"- {i}: {n}")
    with open(REPORT_PATH, "w") as f:
        f.write("\n".join(lines) + "\n")
    emit({"report": os.path.relpath(REPORT_PATH, ROOT), "campaign": tot,
          "attempts": sum(1 for r in recs if r.get("type") == "attempt"),
          "deferred": len({r['function'] for r in deferred})})


def main() -> None:
    p = argparse.ArgumentParser(description="Villager state-matching campaign driver")
    sub = p.add_subparsers(dest="cmd", required=True)

    sp = sub.add_parser("index", help="build/refresh the function index")
    sp.add_argument("--refresh", action="store_true", help="force re-run objdiff on all units")
    sp.add_argument("--unit", help="only refresh one unit")
    sp.set_defaults(fn=cmd_index)

    sp = sub.add_parser("status", help="per-unit and campaign roll-up")
    sp.add_argument("--unit")
    sp.set_defaults(fn=cmd_status)

    sp = sub.add_parser("next", help="ranked candidate queue")
    sp.add_argument("-n", "--count", type=int, default=10)
    sp.add_argument("--unit")
    sp.add_argument("--max-size", type=int, default=600)
    sp.add_argument("--all", action="store_true", help="include functions with FUN_* callees")
    sp.add_argument("--wave", action="store_true", help="print topological wave assignment instead")
    sp.add_argument("--agent")
    sp.set_defaults(fn=cmd_next)

    sp = sub.add_parser("claim", help="lock a unit")
    sp.add_argument("--unit", required=True)
    sp.add_argument("--agent")
    sp.set_defaults(fn=cmd_claim)

    sp = sub.add_parser("release", help="release a unit lock")
    sp.add_argument("--unit", required=True)
    sp.add_argument("--agent")
    sp.set_defaults(fn=cmd_release)

    sp = sub.add_parser("log", help="record an attempt")
    sp.add_argument("--function", required=True, help="mangled or short name (substring ok)")
    sp.add_argument("--result", required=True, choices=["matched", "improved", "deferred"])
    sp.add_argument("--pct", type=float)
    sp.add_argument("--idiom", action="append", help="cheat-sheet slug, repeatable")
    sp.add_argument("--notes")
    sp.add_argument("--agent")
    sp.set_defaults(fn=cmd_log)

    sp = sub.add_parser("report", help="regenerate vsm_report.md")
    sp.set_defaults(fn=cmd_report)

    args = p.parse_args()
    args.fn(args)


if __name__ == "__main__":
    main()
