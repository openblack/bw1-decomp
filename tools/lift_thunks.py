#!/usr/bin/env python3
"""lift_thunks.py - lift FORWARDING-THUNK stubs (a function that just calls/jumps
to another and returns its result) into real one-line C++ delegations.

This is riskier than autolift's getters, so it only AUTO-APPLIES a provably-safe
subset and reports everything else for human review. The risk it avoids:
  * naming a target that has no symbol (`_jmp_addr_0xNNNN`) -> would not compile;
  * a `this`-adjusting thunk (multiple-inheritance: `add ecx,N; jmp T`) -> wrong this;
  * transformed args (arithmetic / this-field reads before the call) -> not a forward;
  * arg/param count mismatch -> wrong call;
  * recursion (target == the stub itself).

Two SAFE shapes are auto-applied:

1. DIRECT forward - a single `call`/tail-`jmp` to a **resolved named member** of the
   stub's own class or a base (validated via symbols.py's hierarchy), `this`
   unchanged, args forwarded verbatim (push/arg count == stub's named params ==
   target's params), result returned or const-replaced. Emitted as
   `Base::Method(param_1, ...);` - explicit qualification = the same NON-virtual
   direct call the asm makes.

2. VIRTUAL self-call - `mov R,[ecx]; <push args>; call/jmp [R+slot]` (call this's own
   vtable). The slot is resolved to a method via vtable.py's AUTHORITATIVE vtable
   arrays (the real `.rdata` `VftableAndRTTI` data, not the drifty header heuristic).
   Emitted as `this->Method(args);` - UNQUALIFIED, so it compiles to the same VIRTUAL
   dispatch the asm performs. Requires: `this` never reloaded, slot resolves to a real
   method that is an ancestor of the stub's class (not __purecall / MI secondary), not
   the stub itself (no recursion). Multi-arg is allowed when the arg ORDER is *proven*:
   an esp-delta tracker maps each `[esp+off]` to a parameter index, and the push
   sequence must be exactly [param_n .. param_1] (cdecl right-to-left) - i.e. a verbatim
   in-order forward. Anything weaker stays REVIEW.

In BOTH shapes the post-call tail may be either a plain forward (`return r;` / a
constant return) OR a recognised branchless idiom decoded by idioms.py - so a body
`r = <call>; <neg;sbb;...>` lifts to `return <call> != 0;`, `return <call> == 0;`,
`return <call> == K;`, or `return <call> ? A : B;` (e.g. `Living::IsStompable`
= `return this->IsDead() == 0;`, `GetCreatureBeliefType` = `this->IsQueryIcon() ? 0xc : 0x13`).

Everything it can't prove (unnamed `_jmp_addr` target, this-adjusting MI thunk,
transformed args, member/param-object virtual calls, UNrecognised post-call code,
count/order mismatch, recursion) is printed under REVIEW with the reason and never written.
NOTE on member/param-object virtual forwards (`this->field->M()`, `param->M()`):
investigated and deliberately NOT auto-applied - the clean candidates are scarce and
need the member field's type / the param's vtable, which the sparse header data doesn't
reliably give; the apparent matches were mostly impure (the indirect call is one step
of real logic) or self-calls with forwarded args. Left as REVIEW leads.

Usage:
  python3 tools/lift_thunks.py                 # dry run: verdicts + SAFE preview
  python3 tools/lift_thunks.py --review        # also list REVIEW candidates + reasons
  python3 tools/lift_thunks.py --apply         # write only the SAFE delegations
  python3 tools/lift_thunks.py --self-test     # assert known thunks classify correctly (exit 0/1)

Depends on tools/symbols.py (call-target resolver) and tools/vtable.py (vtable slots).
"""
import re, glob, os, sys
from collections import Counter
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import corpus
ROOT = corpus.repo_root("src/asm/unprocessed/*.asm")
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from symbols import Symbols
import vtable
import idioms

APPLY   = "--apply"   in sys.argv
REVIEW  = "--review"  in sys.argv
SELFTST = "--self-test" in sys.argv
S = Symbols()

# ---- asm index (handles a label sharing its line with the first instruction) ----
# _LBL matches a leading symbol label: group(1) is the label name (must start with
# one of ? @ . $ - MSVC mangled `?...`, @cname, or a local `.Lbl`/`$` form), group(2)
# is whatever follows the colon on the SAME line (an instruction can share the label's
# line, e.g. `?Name@Class@@...: fld dword ptr [...]  // 0x...`).
_LBL = re.compile(r"^([?@.$][\w?@$.<>]*):\s*(.*)$")
# _INS matches one annotated asm instruction:
#   - an optional `{aa bb cc}` raw-machine-code prefix (skipped, non-capturing),
#   - group(1) = mnemonic (lowercase letters/digits/`.` suffixes, e.g. `mov`, `mov.s`),
#   - group(2) = the operand text (lazy, up to the trailing comment),
#   - group(3) = the hex address from the mandatory `// 0xADDR` annotation (no `0x`).
# The address is the index key (see below). [0-9a-fA-F] accepts either hex case.
_INS = re.compile(r"\s*(?:\{[^}]*\}\s*)?([a-z][a-z0-9.]*)\b(.*?)\s*//\s*0x([0-9a-fA-F]+)")
def _parse(s):
    """Parse one annotated asm line into (mnemonic, operands, hex_addr), or None.

    `s` is a single source-asm line; returns the _INS capture groups (operands
    stripped) or None when the line is not an address-annotated instruction
    (e.g. a blank/comment line or a `.byte` directive)."""
    m = _INS.match(s); return (m.group(1), m.group(2).strip(), m.group(3)) if m else None
# Build asm_fn: hex-address -> list of (mnemonic, operands, addr) for each function.
# Functions are keyed by body[0][2] - the FIRST instruction's address - because the
# staging stubs annotate their origin as `// win1.41 ADDR` where ADDR is exactly that
# first-instruction VA (the label's own VA may differ, e.g. with a shared label line).
asm_fn = {}
for f in glob.glob(os.path.join(ROOT, "src/asm/unprocessed/*.asm")):
    with open(f, encoding="latin-1") as fh:  # latin-1: lossless byte passthrough for asm dumps
        cur = None; body = []
        for l in fh:
            lbl = _LBL.match(l)
            if lbl and lbl.group(1)[0] in "?@":     # a real (mangled/@cname) symbol -> new function
                if cur is not None and body: asm_fn[body[0][2]] = body
                cur = lbl.group(1); body = []
                # the label line may itself carry the first instruction (shared line)
                ins = _parse(lbl.group(2));  body.append(ins) if ins else None
            elif cur is not None:
                # accumulate instructions of the current function (local `.Lbl:` lines
                # still have their trailing instruction parsed via lbl.group(2))
                ins = _parse(lbl.group(2) if lbl else l); body.append(ins) if ins else None
        if cur is not None and body: asm_fn[body[0][2]] = body

# PAT matches one staging stub: a `// win1.41 ADDR ...` origin comment, the C++
# signature line, and the brace body. Named groups:
#   head = origin comment + signature line (re-emitted verbatim when we lift),
#   addr = the win1.41 hex VA (the key into asm_fn; accepts either hex case),
#   sig  = `<ret> Class::Method(params)` with an optional trailing `const`,
#   body = the function body. [^{}]*? is NON-GREEDY and brace-free so it matches a
#          flat (no nested-brace) stub body up to the first closing `}` - exactly the
#          trivial `return 0;`/empty stubs we are allowed to rewrite.
PAT = re.compile(r"(?P<head>// win1\.41 (?P<addr>[0-9a-fA-F]+) [^\n]*\n"
                 r"(?P<sig>[A-Za-z][\w:\*&<> ]+ [\w:]+::[\w~]+\([^;{]*\)(?:\s*const)?)\s*\n)"
                 r"\{(?P<body>[^{}]*?)\n\}", re.S)

def params_of(sig):
    """Return the parameter *names* of a C++ signature as a list.

    `void`/empty param lists -> []. Each entry is the trailing identifier of a
    parameter (the last `[A-Za-z_]\\w*` token), or None if a parameter has no
    name (which later forces a REVIEW - an unnamed param can't be forwarded)."""
    m = re.search(r"\(([^)]*)\)", sig)
    if not m or not m.group(1).strip() or m.group(1).strip() == "void": return []
    out = []
    for p in m.group(1).split(","):
        # the parameter name is the final identifier of `Type name` (e.g. `int param_1`)
        nm = re.search(r"([A-Za-z_]\w*)\s*$", p.strip())
        out.append(nm.group(1) if nm else None)
    return out
def cls_of(sig):
    """Return the class name from a `Ret Class::Method(...)` signature (or None)."""
    m = re.search(r"([\w<>]+)::~?[\w<>]+\s*\(", sig); return m.group(1) if m else None
def method_of(sig):
    """Return the method name (including a leading `~` for destructors) (or None)."""
    m = re.search(r"[\w<>]+::(~?[\w<>]+)\s*\(", sig); return m.group(1) if m else None
def ret_of(sig):
    """Return the return-type text (everything before `Class::Method(`), or '?'."""
    m = re.match(r"\s*(.+?)\s+[\w:]+::[\w~]+\(", sig); return m.group(1).strip() if m else "?"

def classify(addr, sig):
    """-> ('SAFE', code) | ('REVIEW', reason) | ('SKIP', reason)."""
    fn = asm_fn.get(addr)
    if not fn: return ("SKIP", "no-asm")
    tcls, tmeth, params, rt = cls_of(sig), method_of(sig), params_of(sig), ret_of(sig)
    if tcls is None: return ("SKIP", "no-class")

    core = [x for x in fn if x[0] != "nop"]
    calls = [x for x in core if x[0] == "call"]
    jmps  = [x for x in core if x[0] == "jmp" and not x[1].startswith(".")]  # tail jmp (not local block)

    # ---- tail-jmp thunk: body is exactly one jmp ----
    body_ops = [x for x in core if x[0] not in ("pop",)]
    if len(jmps) == 1 and not calls and len(body_ops) == 1:
        op_arg = jmps[0][1]
        if "ptr [" in op_arg:                                   # indirect tail jmp -> virtual self-call
            return _virtual(core, core.index(jmps[0]), op_arg, tcls, tmeth, params, rt, addr, is_jmp=True)
        tgt = S.resolve(op_arg)
        if tgt is None: return ("SKIP", "tail-jmp target unresolved")
        return _delegation(tgt, tcls, tmeth, params, rt, addr, ("plain", None), kind="jmp")

    # ---- call thunk: exactly one call, pure arg-shuffle before, clean tail after ----
    if len(calls) != 1: return ("SKIP", f"{len(calls)} calls / {len(jmps)} jmps (not a single forward)")
    ci = core.index(calls[0]); callop = calls[0][1]
    if "ptr [" in callop or callop.startswith("dword"):        # indirect call -> virtual self-call
        return _virtual(core, ci, callop, tcls, tmeth, params, rt, addr, is_jmp=False)
    tgt = S.resolve(callop)
    if tgt is None: return ("SKIP", "call target unresolved (unnamed/library)")

    this_reg = "ecx"; pushes = 0; this_pushed = False
    for op, arg, _ in core[:ci]:
        dst = arg.split(",")[0].strip()
        if op == "push":
            pushes += 1
            if re.match(r"(ecx|%s)\b" % this_reg, arg): this_pushed = True
        elif op in ("mov", "mov.s") and re.fullmatch(r"(esi|edi),\s*ecx", arg):
            this_reg = dst                                      # prologue: cache this
        elif dst == "ecx":                                      # ecx is the upcoming call's `this`
            if op in ("add", "sub") or (op == "lea" and re.search(r"\[ecx", arg)):
                return ("REVIEW", "this-adjusted (MI thunk: add/sub/lea ecx)")
            return ("REVIEW", "ecx reloaded before call (call is on a different object, not this)")
        elif op in ("mov", "mov.s", "movzx", "movsx", "lea"):
            if re.search(r"\[(ecx|%s)" % this_reg, arg):
                return ("REVIEW", "reads a this-field before call (arg transformed)")
        elif op in ("xor", "xor.s"):
            pass
        else:
            return ("REVIEW", f"non-trivial pre-call op: {op}")
    # tail after the call: a plain forward / const-return, or a branchless idiom
    # (`return Base::Method(args) != 0;` etc.) - decoded by idioms.py.
    tail = idioms.decode_tail(core[ci+1:])
    if tail is None:
        return ("REVIEW", "unrecognised post-call tail (not a plain forward or known idiom)")
    if this_pushed:
        return ("REVIEW", f"this pushed -> free/static forward {tgt.cls}::{tgt.method} (not base-delegation)")
    if pushes != len(params):
        return ("REVIEW", f"arg count mismatch: {pushes} pushed vs {len(params)} params")
    return _delegation(tgt, tcls, tmeth, params, rt, addr, tail, kind="call")

def _delegation(tgt, tcls, tmeth, params, rt, addr, tail, kind):
    if tgt.addr and int(tgt.addr, 16) == int(addr, 16):
        return ("SKIP", "target is the stub itself (would recurse)")
    if not S.is_base(tcls, tgt.cls):
        return ("REVIEW", f"target {tgt.cls}::{tgt.method} is not self/base of {tcls}")
    if len(tgt.params) != len(params):
        return ("REVIEW", f"target param count {len(tgt.params)} != {len(params)}")
    if not all(params):
        return ("REVIEW", "an unnamed param can't be forwarded by name")
    # arg ORDER is guaranteed only for a same-method upcast (identical signature) or <=1 arg.
    # If the stub forwards to a DIFFERENT method (tgt.method != tmeth) with >1 arg, we have
    # no proof the asm pushed the params in the source order (a different method may permute
    # them), so emitting `Method(param_1, param_2)` could silently swap them -> REVIEW.
    if tgt.method != tmeth and len(params) > 1:
        return ("REVIEW", f"different-method forward to {tgt.cls}::{tgt.method} with {len(params)} args (arg order unverified)")
    call = f"{tgt.cls}::{tgt.method}({', '.join(params)})"   # static-qualified = non-virtual direct call
    code = idioms.apply(call, tail, rt)
    if code is None:
        return ("REVIEW", f"idiom tail {tail} not renderable for return type {rt}")
    return ("SAFE", code)

def _virtual(core, ci, operand, tcls, tmeth, params, rt, addr, is_jmp):
    """Virtual SELF-call forward: `mov R,[ecx]; call/jmp [R+slot]` -> `this->Method(args)`.
    Emits an UNQUALIFIED (virtual) call - the asm dispatches through this's vtable,
    so we must NOT static-qualify. Only the strict, provable subset is SAFE."""
    # Parse the indirect operand `[callreg]` or `[callreg + 0xSLOT]`: group(1)=register
    # holding the vtable pointer, group(2)=optional vtable slot offset (hex, either case).
    mm = re.search(r"\[(\w+)(?:\s*\+\s*0x([0-9a-fA-F]+))?\]", operand)
    if not mm: return ("REVIEW", "indirect target unparsed")
    callreg, slotoff = mm.group(1), int(mm.group(2) or "0", 16)

    # The call register must hold this's vtable: `mov callreg,[ecx]` with ecx == this
    # throughout. We also track the esp delta from entry so each `[esp+off]` resolves to
    # a parameter index (param_k at entry [esp + 4*k]; delta moves with push/pop/esp ops),
    # which lets us PROVE the pushed args reconstruct param_1..param_n in order.
    vtable_loaded = False; this_pushed = False
    delta = 0                       # current esp - entry esp (push -> -4)
    reg_param = {}                  # reg -> source param index (from `mov reg,[esp+off]`)
    push_seq = []                   # param index of each push, in push order
    for op, arg, _ in core[:ci]:
        dst = arg.split(",")[0].strip()
        if op == "push":
            # IMPORTANT ordering: a `push dword ptr [esp+off]` reads at the CURRENT delta,
            # so resolve the source param index FIRST, THEN decrement delta by 4 (the push
            # lowers esp). param_k lives at entry-esp + 4*k, so index = (delta + off)/4.
            src = arg.strip()
            if re.fullmatch(r"ecx", src): this_pushed = True; push_seq.append("this")
            elif src in reg_param:    push_seq.append(reg_param[src])
            else:
                pm = re.fullmatch(r"dword ptr \[esp \+ 0x([0-9a-fA-F]+)\]", src)
                push_seq.append(((delta + int(pm.group(1), 16)) // 4) if pm else None)
            delta -= 4
        elif op == "sub" and re.match(r"esp,\s*0x([0-9a-fA-F]+)", arg):     # `sub esp,N`: stack grows
            delta -= int(re.match(r"esp,\s*0x([0-9a-fA-F]+)", arg).group(1), 16)
        elif op == "add" and re.match(r"esp,\s*0x([0-9a-fA-F]+)", arg):     # `add esp,N`: stack shrinks
            delta += int(re.match(r"esp,\s*0x([0-9a-fA-F]+)", arg).group(1), 16)
        elif dst == "ecx":
            return ("REVIEW", "ecx changed before virtual call (not a this-> call)")
        elif op in ("mov", "mov.s") and dst == callreg and re.fullmatch(r"%s, dword ptr \[ecx\]" % callreg, arg):
            vtable_loaded = True                                # callreg = this->vtable
        elif dst == callreg:
            return ("REVIEW", f"{callreg} (vtable reg) reloaded from non-this")
        elif op in ("mov", "mov.s") and re.search(r", dword ptr \[esp \+ 0x([0-9a-fA-F]+)\]$", arg):
            # `mov dst, [esp+off]` caches a stack param into a register; record which
            # param index dst now holds so a later `push dst` resolves to that param.
            off = int(re.search(r"\[esp \+ 0x([0-9a-fA-F]+)\]", arg).group(1), 16)
            reg_param[dst] = (delta + off) // 4                 # dst now holds param_k
        elif op in ("mov", "mov.s", "movzx", "movsx", "lea"):
            if re.search(r"\[ecx", arg):
                return ("REVIEW", "reads a this-field before virtual call (arg transformed)")
            reg_param.pop(dst, None)                            # dst clobbered with a non-param value
        elif op in ("xor", "xor.s"):
            reg_param.pop(dst, None)
        else:
            return ("REVIEW", f"non-trivial pre-call op: {op}")
    if not vtable_loaded:
        return ("REVIEW", "vtable register not loaded from [ecx] (member/param virtual call)")
    if this_pushed:
        return ("REVIEW", "this pushed into a virtual call (unusual)")
    pushes = len(push_seq)

    # tail after the call: a plain forward / const-return, or a branchless idiom
    # (`return this->Pred() != 0;`, `return this->Pred() ? A : B;` ...) via idioms.py.
    tail = idioms.decode_tail([] if is_jmp else core[ci+1:])
    if tail is None:
        return ("REVIEW", "unrecognised post-call tail (not a plain forward or known idiom)")

    tgt = vtable.slot(tcls, slotoff)                            # REAL vtable resolution
    if tgt is None:
        return ("REVIEW", f"vtable slot +0x{slotoff:x} unresolved (__purecall/thunk/missing)")
    if tgt.method == tmeth or (tgt.addr and int(tgt.addr, 16) == int(addr, 16)):
        return ("SKIP", "virtual call resolves to self (would recurse)")
    if not S.is_base(tcls, tgt.cls):
        return ("REVIEW", f"slot method {tgt.cls}::{tgt.method} not an ancestor of {tcls} (MI secondary vtable?)")
    if len(tgt.params) != len(params):
        return ("REVIEW", f"slot param count {len(tgt.params)} != {len(params)}")
    if not all(params):
        return ("REVIEW", "an unnamed param can't be forwarded by name")
    n = len(params)
    if pushes != n:
        return ("REVIEW", f"{pushes} pushed vs {n} params")
    # PROVE verbatim in-order forward: args are pushed right-to-left, so the push
    # sequence must be [param_n, ..., param_1]; reversed == [1..n].
    if n > 0 and push_seq != list(range(n, 0, -1)):
        return ("REVIEW", f"arg order unproven (push sequence {push_seq} != reverse param order)")
    args = ", ".join(params)
    call = f"this->{tgt.method}({args})"                        # UNQUALIFIED -> virtual dispatch (matches asm)
    code = idioms.apply(call, tail, rt)
    if code is None:
        return ("REVIEW", f"idiom tail {tail} not renderable for return type {rt}")
    return ("SAFE", code)

# ---- self-test ----
def self_test():
    """Classify a fixed table of known thunks and assert each lands as expected.

    This 8-case table is the de-facto spec: it covers both SAFE shapes (direct
    call/tail-jmp, virtual self-call with 1 and 2 args) and several post-call
    idiom tails, plus NOT-SAFE cases (an unresolved/missing target, an
    undecoded byte-sbb idiom). Returns 0 if all cases match, 1 otherwise."""
    cases = [   # (addr, expect-substring-in-code | None=must-not-be-SAFE)
        ("00607260", "Object::RemoveMapObjectFromCell(param_1)"),   # direct call thunk
        ("004e4070", "this->CanBeStolenByCreature(param_1)"),       # virtual self-call, 1 arg (slot 0x390)
        ("00420460", "this->SetupFleeFromObject(param_1, param_2)"),# virtual self-call, 2 args (esp-delta order proof)
        ("00608b10", "this->IsRock() ? 0xc : 0x13"),               # virtual+sel idiom; slot 0x1f0=IsRock per BINARY (old asm-corpus drift said IsQueryIcon)
        ("004172c0", "this->IsDead() == 0"),                        # virtual + !r idiom (neg;sbb;inc)
        ("007752a0", "MobileObject::Save(file) != 0"),             # direct + bool-normalise idiom (neg;sbb;neg)
        ("0074c140", None),                                          # no usable asm here -> SKIP (any non-SAFE)
        ("005f16f0", None),                                          # ReactToCreaturePriority: byte sbb idiom -> not decoded
    ]
    ok = True
    for addr, want in cases:
        sig = None
        # locate the staging stub whose `// win1.41 ADDR` matches this case's addr
        for f in glob.glob(os.path.join(ROOT, "src/staging/**/*.cpp"), recursive=True):
            with open(f, encoding="latin-1") as fh:
                for m in PAT.finditer(fh.read()):
                    if m.group("addr") == addr: sig = m.group("sig"); break
            if sig: break
        verdict, payload = classify(addr, sig) if sig else ("SKIP", "no stub")
        if want is None:
            good = verdict != "SAFE"
            print(f"  {'PASS' if good else 'FAIL'}  @{addr} expected NOT-SAFE -> {verdict}: {payload}")
        else:
            good = verdict == "SAFE" and want in payload
            print(f"  {'PASS' if good else 'FAIL'}  @{addr} -> {verdict}: {payload!r}")
        ok &= good
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if SELFTST:
    sys.exit(self_test())

# ---- main scan ----
counts = Counter(); safe = []; reviews = []
for f in sorted(glob.glob(os.path.join(ROOT, "src/staging/**/*.cpp"), recursive=True)):
    with open(f, encoding="latin-1") as fh:
        t = fh.read()
    def repl(m):
        # only consider trivial stubs (`return 0;` or empty); leave any real body alone
        if m.group("body").strip() not in ("return 0;", ""): return m.group(0)
        verdict, payload = classify(m.group("addr"), m.group("sig"))
        counts[verdict] += 1
        if verdict == "SAFE":
            safe.append((m.group("sig").split("::",1)[0].split()[-1] + "::" + (method_of(m.group("sig")) or "?"), payload))
            if APPLY:    # rewrite the stub body with the proven one-line delegation
                return m.group("head") + "{\n    " + payload + "\n}"
        elif verdict == "REVIEW":
            reviews.append((m.group("sig"), payload))
        return m.group(0)
    new = PAT.sub(repl, t)
    if APPLY and new != t:
        with open(f, "w", encoding="latin-1") as fh:
            fh.write(new)

print(f"{'APPLIED' if APPLY else 'dry-run'} — thunk verdicts: "
      f"SAFE={counts['SAFE']}  REVIEW={counts['REVIEW']}  SKIP={counts['SKIP']}")
print("\n=== SAFE delegations" + (" (written)" if APPLY else " (preview)") + " ===")
for name, code in safe:
    print(f"  {name:48} {code.replace(chr(10),' ')}")
if REVIEW:
    print("\n=== REVIEW (not applied) — reasons ===")
    rc = Counter(r for _, r in reviews)
    for reason, n in rc.most_common():
        print(f"  {n:4}  {reason}")
    print("\n  examples:")
    for sig, reason in reviews[:15]:
        print(f"    {sig[:60]:62} | {reason}")
elif not APPLY:
    print("\n(use --review to see REVIEW candidates, --apply to write the SAFE set)")
