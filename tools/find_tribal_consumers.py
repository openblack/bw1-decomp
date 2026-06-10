#!/usr/bin/env python3
"""find_tribal_consumers.py — find EVERY tribe-Wonder power consumer across the decomp.

A Wonder boosts its tribe's activity by reading a per-tribe power slot on the owning GPlayer.
GPlayer has TWO per-tribe float arrays (Player.h field_0x68 + field_0xb8):
  +0x68 [eff]    "effective" power  — read by Object::GetTribalPower (default 1.0)
                 consumers: AZTEC worship, JAPANESE hunger, EGYPTIAN wood, INDIAN food-desire, NORSE fishing
  +0xb8 [wonder] "wonder accumulator" — written by Wonder::AddToPlayer (+= power)
                 consumer: INDIAN villager speed (SetStateSpeed reads +0xc8 directly)
Slot offset for tribe N: 0x68+N*4 (eff) and 0xb8+N*4 (wonder). Both arrays default ~1.0.

This uses a per-function REGISTER SIMULATOR (not a fuzzy window) so it is false-positive-free:
  - "holders" = registers currently holding the GPlayer (from call[vt+0x1c] or a GetPlayer/GetHolder call)
  - a CALL clobbers caller-saved eax/ecx/edx (callee-saved ebx/esi/edi/ebp survive); the seeding call re-adds eax
  - mov X,Y propagates holder-ness (X<-Y); mov X,[mem] / lea X / pop X clear X
  - holders are CLEARED at every label (proc or .Lbl) and at ret  -> only straight-line, provable holders count
A genuine consumer = a FIXED-offset read [holder + slot]. Indexed [reg+reg*4+0x68] reads are the
generic getters themselves (excluded). Idiom (B): push 0x<tribe>; call GetTribalPower/clone.

Still: TREAT HITS AS LEADS until you read the asm — this tool earned its precision by catching its
own FPs (GInterfaceStatus +0xbc/+0xc8 fields, coords objects). Use --all to also dump every
fixed-slot read regardless of holder (manual-review safety net).

Inputs: the decomp's src/c, src/staging and src/asm/unprocessed trees (no build/network).
The per-tribe slot map is: tribe N at 0x68+N*4 (effective power) and 0xb8+N*4 (wonder
accumulator), tribes ordered CELTIC, AFRICAN, AZTEC, JAPANESE, INDIAN, EGYPTIAN, GREEK,
NORSE, TIBETAN (indices 0..8).

Usage:
  python3 tools/find_tribal_consumers.py            # verified reads + tribe calls + summary
  python3 tools/find_tribal_consumers.py --all      # also dump every fixed-slot read
  python3 tools/find_tribal_consumers.py --self-test # run pure-logic self-tests
"""
import os, re, glob, sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
_T = ["CELTIC","AFRICAN","AZTEC","JAPANESE","INDIAN","EGYPTIAN","GREEK","NORSE","TIBETAN"]
SLOT = {0x68+i*4: "%s[eff]"%t for i,t in enumerate(_T)}
SLOT.update({0xb8+i*4: "%s[wonder]"%t for i,t in enumerate(_T)})
IDX = {i:t for i,t in enumerate(_T)}
ALLMODE = "--all" in sys.argv
REGS = {"eax","ebx","ecx","edx","esi","edi","ebp"}
CALLER_SAVED = {"eax","ecx","edx"}

DIRS = [("C","src/c","*.c"),("STAGE","src/staging","*.cpp"),("ASM","src/asm/unprocessed","*.asm")]

# --- Regex table -------------------------------------------------------------
# These patterns target the project's asm-dump syntax: a 2-letter general
# register is written `eXX`, a fixed displacement as `[eXX + 0xNN]`, an indexed
# read as `[eXX + eYY * 0x4 + 0xNN]`, and each line may carry a trailing
# `// 0x<va>` source-address comment. Hex literals are matched case-insensitively
# ([0-9a-fA-F]) so both `0x6C8` and `0x6c8` style dumps are recognized.

# A line that BEGINS a new scope: a mangled `?Name@...` label, a label-less
# `_jmp_addr_0x..`/`.Lbl_addr_..` block, a `LAB_..` label, or any `name:` label.
# Crossing one of these makes the register-holder state uncertain, so it is reset.
is_label   = re.compile(r'^\s*(\?|_jmp_addr_0x|\.Lbl_addr_|LAB_|[A-Za-z_][\w@?$]*:)')
# `call [eXX + 0x1c]` — the base-vtable slot that returns the owning GPlayer/Town
# (this is how a consumer obtains the holder pointer it then indexes).
call_1c    = re.compile(r'call\s+(?:dword ptr )?\[e[a-z][a-z] \+ 0x1c\]')
call_getp  = re.compile(r'call\s+\?Get(Player|Holder)@')          # name-based GPlayer getters
any_call   = re.compile(r'\bcall\b')
ret_re     = re.compile(r'\bret\b')
mov_rr     = re.compile(r'mov(?:\.s)?\s+(e[a-z][a-z]),\s*(e[a-z][a-z])\b')          # mov X, Y (reg<-reg)
mov_rm     = re.compile(r'mov(?:\.s)?\s+(e[a-z][a-z]),\s*(?:dword ptr )?\[')         # mov X, [mem]
lea_re     = re.compile(r'lea\s+(e[a-z][a-z]),')
pop_re     = re.compile(r'\bpop\s+(e[a-z][a-z])')
# A FIXED-offset deref `[eXX + 0xNN]`: captures base reg + offset. The `0x0*`
# tolerates leading zeros (`0x068`); the {2,8} hex-width bound matches a real
# field displacement (>=2 digits, i.e. >=0x10) while rejecting tiny offsets.
slot_fixed = re.compile(r'\[(e[a-z][a-z]) \+ 0x0*([0-9a-fA-F]{2,8})\]')              # FIXED offset only
# An INDEXED deref `[eXX + eYY * 0x4 + 0xNN]`: this is the generic per-tribe
# getter (`array[tribe]`), NOT a hardcoded single-tribe consumer, so it is excluded.
slot_idx   = re.compile(r'\[e[a-z][a-z] \+ e[a-z][a-z] ?\* ?0x4 \+ 0x0*[0-9a-fA-F]{2,8}\]')
# Idiom (B): a call to Object::GetTribalPower, either virtually through vtable
# offset 0x6c8 (`call [eXX + 0x6c8]`) or directly to its win1.41 VA 0x0073e5e0.
# The direct branch is anchored to a `0x`-prefixed address token (word boundary)
# so the literal cannot match an unrelated displacement/comment elsewhere on the line.
gtp_call   = re.compile(r'call\s+(?:dword ptr \[e[a-z][a-z] \+ 0x6c8\]|\b0x0*0073e5e0\b)', re.IGNORECASE)
# `push 0x<tribe>` immediately before a (B) call — a hardcoded 1-2 hex digit
# tribe index (0..8); >2 digits would not be a tribe constant.
pushn      = re.compile(r'push\s+0x0*([0-9a-fA-F]{1,2})\b')
addr_re    = re.compile(r'//\s*0x([0-9a-fA-F]{6,8})')             # trailing `// 0xADDR` source-VA comment

def main():
  """Scan every decomp source file and report tribe-Wonder power consumers.

  Walks src/c (*.c), src/staging (*.cpp) and src/asm/unprocessed (*.asm),
  running the per-function register simulator described in the module docstring
  to find (A) provable inline reads of a per-tribe power slot off the owning
  GPlayer and (B) Object::GetTribalPower(tribe) call idioms. Prints the verified
  reads, the tribe calls, a per-tribe summary, and (with --all) every fixed-slot
  read for manual review. Treat all hits as LEADS until the asm is read.
  """
  files=[]
  for _,d,gl in DIRS: files += glob.glob(os.path.join(ROOT,d,gl))
  hits=[]; calls=[]; allreads=[]
  for f in files:
    # latin-1 = lossless byte passthrough for asm dumps; skip unreadable files.
    # `with` ensures the handle is closed promptly (matters on Windows).
    try:
        with open(f,encoding="latin-1") as fh: L=fh.read().splitlines()
    except Exception: continue
    rel=os.path.relpath(f,ROOT).replace("\\","/").split("/")[-1]
    holders=set()
    for i,ln in enumerate(L):
        # --- record slot reads with current holder state (BEFORE any state change on this line) ---
        # An indexed read `[reg + reg*4 + 0xNN]` is the generic per-tribe getter,
        # not a single-tribe consumer, so it must be skipped. But slot_fixed would
        # also match its `[reg + 0xNN]` tail, so we collect the indexed spans and
        # drop only fixed matches that fall INSIDE one — a fixed read elsewhere on
        # the same line is still recorded (avoids false negatives on dense lines).
        idx_spans = [im.span() for im in slot_idx.finditer(ln)]
        for m in slot_fixed.finditer(ln):
            if any(s <= m.start() < e for s,e in idx_spans):
                continue                          # this fixed match is part of an indexed read
            base, off = m.group(1), int(m.group(2),16)
            if off in SLOT:
                a=addr_re.search(ln); addr=a.group(1) if a else "?"
                if base in holders:
                    hits.append((SLOT[off],rel,addr,ln.strip()[:96]))
                if ALLMODE:
                    allreads.append((SLOT[off],base,base in holders,rel,addr,ln.strip()[:80]))
        # --- (B) GetTribalPower(tribe) call with a hardcoded push just before ---
        if gtp_call.search(ln):
            for k in range(i-1,max(i-7,-1),-1):
                pm=pushn.search(L[k])
                if pm:
                    v=int(pm.group(1),16)
                    if v in IDX:
                        a=addr_re.search(ln)
                        calls.append((IDX[v],rel,a.group(1) if a else "?",ln.strip()[:96]))
                    break
        # --- update holder state ---
        # Reset holders when control flow becomes uncertain: any label means a
        # join point we cannot reason about, and `ret` ends the function. We clear
        # FIRST, then fall through to process a seeding call that may share the
        # label's line — so a holder freshly established on that line still counts.
        if is_label.match(ln) or ret_re.search(ln):
            holders=set()                       # uncertain at a label / cleared at ret
            # a label line can still contain a seeding instruction below; fall through
        # x86 cdecl/thiscall ABI: a CALL clobbers caller-saved eax/ecx/edx
        # (callee-saved ebx/esi/edi/ebp survive). The GPlayer-getting calls return
        # the holder in eax, so we re-add eax after the clobber; any other call
        # just drops the caller-saved holders.
        if call_1c.search(ln) or call_getp.search(ln):
            holders -= CALLER_SAVED; holders.add("eax")     # GPlayer in eax
        elif any_call.search(ln):
            holders -= CALLER_SAVED                          # other call: clobber caller-saved
        rr=mov_rr.search(ln)
        if rr:
            dst,src=rr.group(1),rr.group(2)
            if src in holders: holders.add(dst)
            else: holders.discard(dst)
        else:
            for rx in (mov_rm,lea_re,pop_re):
                mm=rx.search(ln)
                if mm: holders.discard(mm.group(1))

  def show(rows):
    """Print deduped (label, file, addr, asm-text) rows, eff arrays before wonder.

    Sort key: '[eff]' rows (the effective-power array read by GetTribalPower)
    sort before '[wonder]' rows (the accumulator), then alphabetically by label.
    """
    for t,rel,a,txt in sorted(set(rows),key=lambda r:(0 if "[eff]" in r[0] else 1,r[0])):
        print("  %-16s %-44s @%s  %s"%(t,rel,a,txt))
  print("=== (A) VERIFIED inline tribe-power reads (base reg provably = GPlayer) ===")
  show(hits)
  print("\n=== (B) GetTribalPower(tribe) CALLs (push <tribe>) ===")
  for t,rel,a,txt in sorted(set(calls)): print("  %-16s %-44s @%s  %s"%(t,rel,a,txt))
  print("\n=== SUMMARY ===")
  # Aggregate one count per TRIBE. Inline-read hits are keyed by SLOT label
  # ('NORSE[eff]', 'NORSE[wonder]'); (B) calls are keyed by the bare tribe name
  # ('NORSE'). Strip the '[...]' array suffix so both feed a single per-tribe tally
  # instead of appearing as separate rows.
  allh={}
  for t,*_ in list(hits)+list(calls):
      tribe=t.split("[",1)[0]
      allh[tribe]=allh.get(tribe,0)+1
  for t in sorted(allh): print("  %-16s: %d"%(t,allh[t]))
  if ALLMODE:
    print("\n=== (--all) EVERY fixed-slot read (verify base manually; H=holder-verified) ===")
    for t,base,isH,rel,a,txt in sorted(set(allreads),key=lambda r:r[0]):
        print("  %-16s %s%-4s %-40s @%s  %s"%(t,"H " if isH else "  ",base,rel,a,txt))


def _self_test():
    """Run pure-logic self-checks (slot map + every regex) and return an exit code.

    Exercises no files or build: only the per-tribe SLOT/IDX arithmetic and each
    module-level regex against hand-written asm lines. Returns 0 if all pass, 1 otherwise.
    """
    ok = True
    def chk(cond, msg):
        nonlocal ok; ok &= bool(cond)
        print(f"  {'PASS' if cond else 'FAIL'}  {msg}")

    # --- the per-tribe slot map (pure offset arithmetic) ---
    chk(SLOT[0x68] == "CELTIC[eff]", "0x68 -> CELTIC[eff]")
    chk(SLOT[0x84] == "NORSE[eff]", "0x84 -> NORSE[eff] (tribe 7)")
    chk(SLOT[0x88] == "TIBETAN[eff]", "0x88 -> TIBETAN[eff] (tribe 8)")
    chk(SLOT[0xb8] == "CELTIC[wonder]", "0xb8 -> CELTIC[wonder]")
    chk(SLOT[0xb8+7*4] == "NORSE[wonder]", "0xb8+7*4 -> NORSE[wonder]")
    chk(IDX[7] == "NORSE" and IDX[2] == "AZTEC", "IDX maps index->tribe")
    chk(len(SLOT) == 18 and len(IDX) == 9, "9 tribes x 2 arrays = 18 slots")

    # --- slot_fixed: capture base reg + fixed offset; reject indexed reads ---
    m = slot_fixed.search("mov eax, dword ptr [esi + 0x84]")
    chk(m is not None and m.group(1) == "esi" and int(m.group(2),16) == 0x84,
        "slot_fixed captures base=esi off=0x84")
    chk(slot_fixed.search("[esi + 0x084]").group(2) == "84", "slot_fixed strips leading zeros")
    chk(slot_idx.search("[esi + edx * 0x4 + 0x68]") is not None,
        "slot_idx matches indexed getter read")
    # the generic getter (indexed) must be excluded by the slot_idx guard the loop uses
    chk(slot_idx.search("[esi + 0x84]") is None, "slot_idx does not match a fixed read")

    # --- call_1c / call_getp: the GPlayer-seeding calls ---
    chk(call_1c.search("call dword ptr [eax + 0x1c]") is not None, "call_1c matches vt+0x1c")
    chk(call_1c.search("call dword ptr [eax + 0x20]") is None, "call_1c rejects other slot")
    chk(call_getp.search("call ?GetPlayer@Object@@QAEPAVGPlayer@@XZ") is not None,
        "call_getp matches GetPlayer")
    chk(call_getp.search("call ?GetHolder@Object@@QAEPAXXZ") is not None,
        "call_getp matches GetHolder")

    # --- gtp_call + pushn: the (B) GetTribalPower(tribe) idiom ---
    chk(gtp_call.search("call dword ptr [ecx + 0x6c8]") is not None,
        "gtp_call matches vtable 0x6c8")
    chk(gtp_call.search("call 0x0073e5e0") is not None, "gtp_call matches direct addr")
    pm = pushn.search("push 0x7")
    chk(pm is not None and int(pm.group(1),16) == 7, "pushn captures tribe 7")
    chk(pushn.search("push 0x123") is None, "pushn only matches 1-2 hex digits")

    # --- mov_rr / mov_rm / lea / pop register tracking primitives ---
    rr = mov_rr.search("mov esi, eax")
    chk(rr is not None and rr.group(1) == "esi" and rr.group(2) == "eax",
        "mov_rr captures dst=esi src=eax")
    chk(mov_rm.search("mov esi, dword ptr [eax + 0x8]") is not None, "mov_rm matches reg<-mem")
    chk(mov_rr.search("mov esi, dword ptr [eax + 0x8]") is None, "mov_rr rejects reg<-mem")
    chk(lea_re.search("lea edi, [eax + 0x4]").group(1) == "edi", "lea_re captures dst")
    chk(pop_re.search("pop esi").group(1) == "esi", "pop_re captures reg")

    # --- addr_re: pull the trailing `// 0xADDR` comment ---
    chk(addr_re.search("mov eax, [esi+0x84]  // 0x75b6a0").group(1) == "75b6a0",
        "addr_re extracts source address")

    # --- is_label: recognises proc/.Lbl/mangled labels ---
    chk(is_label.match("?GetTribalPower@Object@@UAEMW4TRIBE_TYPE@@@Z:") is not None,
        "is_label matches mangled label")
    chk(is_label.match("_jmp_addr_0x75b6a0:") is not None, "is_label matches jmp label")
    chk(is_label.match("    mov eax, ecx") is None, "is_label rejects an instruction")

    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if __name__ == "__main__":
    if "--self-test" in sys.argv:
        sys.exit(_self_test())
    main()
