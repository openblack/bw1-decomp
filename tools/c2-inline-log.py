#!/usr/bin/env python3

"""Log the MSVC6 (c2.dll 8966) inliner's decisions for one unit.

See docs/msvc6_inliner.md for the model behind the output.

The tool patches a private copy of the unit's c2.dll (see tools/c2_patch.py) so
that the inliner prints every candidate call site, its IL size, the budget left,
the nested share and the decision. It then compiles the unit with its exact
Ninja command and prints the decisions as a tree. The original compiler is never
modified, and the patched copy produces byte-identical objects. Only the
BW1W120/BW1W130 compiler (MSVC 6.5, c2.dll 8966) is supported.

Usage:
  # Every function of the unit: candidates, accepted and rejected counts
  python tools/c2-inline-log.py --source src/Black/Tree.cpp

  # One function's decision tree (substring of the demangled or mangled name)
  python tools/c2-inline-log.py --source src/Black/Tree.cpp -f Tree::Draw

  # Compile a variant of the unit's source with the unit's command line
  python tools/c2-inline-log.py --source src/Black/Tree.cpp --file my_variant.cpp -f Tree::Draw

Tree lines read:

  callee  size=N  left=L  [count=C]  -> inlined (charged N | free) | REJECTED (reason)
     nested: share=S used=U

left is the budget remaining when the site is reached; count is how many
candidates at that level were still unprocessed, the current one included. A
nested site gets share = (left - size) / count. Rejections name the rule that
fired: depth, budget (size > 40 and left < size), global (the TU-wide 35000
cap) or veto (FUN_10794a84 discarded the expanded body; its budget is not
refunded).

The patched compiler, object and raw log go to build/probe-inline/.
"""

import argparse
import re
import subprocess
import sys
from dataclasses import dataclass, field

sys.dont_write_bytecode = True

import c2_patch
import msvc_probe as mp
from c2_patch import frame, saved

WORK = "build/probe-inline"

FREE_SIZE = 40  # callees of this IL size or less are never charged
GLOBAL_CAP = 35000  # TU-wide running IL total past which nothing is inlined
BUDGET_FLOOR = 1000

# c2.dll preferred VAs, from the address table in docs/msvc6_inliner.md.
DRIVER = 0x1071810A  # FUN_107180fd: esi = function context, (esi) = function
WORKER = 0x107181A8  # FUN_107181a8 entry: ecx = context, edx = depth, [esp+4] = budget
CANDIDATE = 0x1071871E  # loop body: ebx = list node, edi = callee
REJECT = 0x10718242  # every rejection joins here
ACCEPT = 0x10718777  # every acceptance joins here, before the charge
NESTED = 0x10718890  # after the recursive call: eax = budget the nested sites used
VETO = 0x10794032  # FUN_10794a84 returned non-zero: the expansion is discarded
VETO_CALLEE = 0x10762258  # the call the veto hook displaces

# Function record fields.
FN_NAME = 0x18  # char*: decorated name ('?' C++, else a leading '_')
FN_IL_SIZE = 0x6D  # short
FN_FLAGS = 0x73  # 0x2000 = __forceinline
FORCEINLINE = 0x2000

STRINGS = {
    "fmtF": "@F size=%d name=%s\\n",
    "fmtW": "@W depth=%d budget=%d name=%s\\n",
    "fmtC": "@C left=%d count=%d depth=%d maxdepth=%d size=%d flags=%08x name=%s\\n",
    "fmtX": "@X\\n",
    "fmtA": "@A\\n",
    "fmtN": "@N used=%d\\n",
    "fmtV": "@V\\n",
}

# (address, original bytes, displaced instructions, hook body). A body reads every register and
# stack slot it needs before its first push, because each push moves esp. Log lines (stderr):
#   @F size name           a function enters the inliner (its own IL size)
#   @W depth budget name   the worker starts on a body (depth 1 = the function itself)
#   @C left count depth maxdepth size flags name   a candidate call site
#   @X / @A                the candidate was rejected / accepted
#   @N used                the accepted callee's nested sites used this much budget
#   @V                     the veto discarded the accepted expansion
HOOKS = [
    (DRIVER, "8b06" "0fbf406d", "mov eax, dword ptr [esi]\n movsx eax, word ptr [eax+0x6d]", f"""
      mov eax, {saved("esi")}
      mov eax, dword ptr [eax]
      push dword ptr [eax+{FN_NAME:#x}]
      movsx ecx, word ptr [eax+{FN_IL_SIZE:#x}]
      push ecx
      push_va fmtF
      call logf
      add esp, 12
    """),
    (WORKER, "83ec34" "8b442438", "sub esp, 0x34; mov eax, dword ptr [esp+0x38]", f"""
      mov ecx, {saved("ecx")}
      mov ecx, dword ptr [ecx]
      mov eax, dword ptr {frame(4)}
      mov edx, {saved("edx")}
      push dword ptr [ecx+{FN_NAME:#x}]
      push eax
      push edx
      push_va fmtW
      call logf
      add esp, 16
    """),
    # Worker frame inside the loop: [esp+0x30] count, [esp+0x34] depth, [esp+0x48] budget left.
    (CANDIDATE, "8b4308" "8b542434", "mov eax, dword ptr [ebx+8]; mov edx, dword ptr [esp+0x34]", f"""
      mov eax, dword ptr {frame(0x48)}
      mov ecx, dword ptr {frame(0x30)}
      mov edx, dword ptr {frame(0x34)}
      mov edi, {saved("edi")}
      mov ebx, {saved("ebx")}
      push dword ptr [edi+{FN_NAME:#x}]
      push dword ptr [edi+{FN_FLAGS:#x}]
      movsx esi, word ptr [edi+{FN_IL_SIZE:#x}]
      push esi
      movzx esi, byte ptr [ebx+8]
      push esi
      push edx
      push ecx
      push eax
      push_va fmtC
      call logf
      add esp, 32
    """),
    (REJECT, "f747738020" "0000", "test dword ptr [edi+0x73], 0x2080", """
      push_va fmtX
      call logf
      add esp, 4
    """),
    (ACCEPT, "8b5773" "8bca", "mov edx, dword ptr [edi+0x73]\n mov ecx, edx", """
      push_va fmtA
      call logf
      add esp, 4
    """),
    (NESTED, "8bf0" "a1b4c07a10", "mov esi, eax\n mov eax, dword ptr [0x107ac0b4]", f"""
      push {saved("eax")}
      push_va fmtN
      call logf
      add esp, 8
    """),
    (VETO, "8bcd" "e81fe2fcff", f"mov ecx, ebp\n call_va {VETO_CALLEE:#x}", """
      push_va fmtV
      call logf
      add esp, 4
    """),
]

# Operator codes after "??" in an MSVC decorated name.
OPERATORS = {
    "_G": "`scalar deleting destructor'", "_E": "`vector deleting destructor'",
    "2": "operator new", "3": "operator delete", "4": "operator=", "5": "operator>>", "6": "operator<<",
    "7": "operator!", "8": "operator==", "9": "operator!=", "A": "operator[]", "C": "operator->",
    "D": "operator*", "E": "operator++", "F": "operator--", "G": "operator-", "H": "operator+",
    "I": "operator&", "K": "operator/", "M": "operator<", "N": "operator<=", "O": "operator>",
    "P": "operator>=", "R": "operator()", "S": "operator~", "T": "operator^", "U": "operator|",
    "X": "operator*=", "Y": "operator+=", "Z": "operator-=", "_0": "operator/=", "_4": "operator&=",
    "_5": "operator|=", "_6": "operator^=",
}


def demangle(name):
    """Short readable form of an MSVC decorated name: Class::Method (no arguments)."""
    if not name.startswith("?"):
        return name[1:] if name.startswith("_") else name
    body = name[1:]
    special = None
    if body.startswith("?"):
        code = body[1:3] if body[1] == "_" else body[1]
        body = body[1 + len(code):]
        special = code
    scope = body.split("@@", 1)[0].split("@")
    if special is None:
        method, classes = scope[0], scope[1:]
    else:
        classes = scope
        if special == "0":
            method = classes[0] if classes else "ctor"
        elif special == "1":
            method = "~" + (classes[0] if classes else "dtor")
        else:
            method = OPERATORS.get(special, f"operator?{special}")
    return "::".join(list(reversed(classes)) + [method])


@dataclass
class Site:
    name: str
    size: int
    left: int
    count: int
    depth: int
    maxdepth: int
    flags: int
    decision: str = "?"  # inlined / rejected
    vetoed: bool = False
    used: int = None
    children: list = field(default_factory=list)  # Sites inside the expanded body

    @property
    def charged(self):
        return not self.flags & FORCEINLINE and self.size > FREE_SIZE

    @property
    def share(self):
        left = self.left - (self.size if self.charged else 0)
        return left // self.count if self.count else 0

    def reason(self):
        if self.vetoed:
            return "veto"
        if self.maxdepth < self.depth:
            return "depth"
        if self.flags & FORCEINLINE:
            return "?"
        if self.size > FREE_SIZE and self.left < self.size:
            return "budget"
        return "global"


@dataclass
class Function:
    name: str
    size: int
    budget: int = None
    sites: list = field(default_factory=list)

    @property
    def all_sites(self):
        stack, out = list(reversed(self.sites)), []
        while stack:
            site = stack.pop()
            out.append(site)
            stack.extend(reversed(site.children))
        return out


CAND = re.compile(r"@C left=(-?\d+) count=(\d+) depth=(\d+) maxdepth=(\d+) size=(-?\d+) flags=([0-9a-f]+) name=(.*)")


def parse_log(log):
    funcs = []
    stack = []  # (depth, list the next sites go to); the open accepted Site is the last child
    current = None
    for line in log.splitlines():
        if line.startswith("@F "):
            m = re.match(r"@F size=(-?\d+) name=(.*)", line)
            current = Function(m[2], int(m[1]))
            funcs.append(current)
            stack = []
        elif current is None:
            continue
        elif line.startswith("@W "):
            m = re.match(r"@W depth=(\d+) budget=(-?\d+) name=(.*)", line)
            depth = int(m[1])
            if depth == 1:
                current.budget = int(m[2])
                stack = [(1, current.sites)]
            elif stack and stack[-1][1]:
                parent = stack[-1][1][-1]
                stack.append((depth, parent.children))
        elif line.startswith("@C "):
            m = CAND.match(line)
            depth = int(m[3])
            while stack and stack[-1][0] > depth:
                stack.pop()
            if not stack:
                stack = [(depth, current.sites)]
            stack[-1][1].append(Site(m[7], int(m[5]), int(m[1]), int(m[2]), depth, int(m[4]), int(m[6], 16)))
        elif line.startswith("@X") and stack and stack[-1][1]:
            stack[-1][1][-1].decision = "rejected"
        elif line.startswith("@A") and stack and stack[-1][1]:
            stack[-1][1][-1].decision = "inlined"
        elif line.startswith("@V") and stack and stack[-1][1]:
            # The veto check follows the nested-return line, so it is about the site that just finished.
            stack[-1][1][-1].vetoed = True
            stack[-1][1][-1].decision = "rejected"
        elif line.startswith("@N ") and stack:
            used = int(line.split("=")[1])
            if len(stack) > 1:
                stack.pop()
            if stack[-1][1]:
                stack[-1][1][-1].used = used
    return funcs


def show_site(site, indent, raw):
    name = site.name if raw else demangle(site.name)
    if site.decision == "inlined":
        verdict = f"inlined ({'charged ' + str(site.size) if site.charged else 'free'})"
    else:
        verdict = f"REJECTED ({site.reason()})"
    print(f"{'  ' * indent}{name}  size={site.size}  left={site.left}  count={site.count}  -> {verdict}")
    if site.decision == "inlined" and (site.children or site.used):
        print(f"{'  ' * (indent + 1)}nested: share={site.share} used={site.used or 0}")
    for child in site.children:
        show_site(child, indent + 2, raw)


def summary(func):
    sites = func.all_sites
    rejected = [s for s in sites if s.decision != "inlined"]
    names = ", ".join(sorted({demangle(s.name) for s in rejected}))[:90]
    return (f"{demangle(func.name)[:60]:<60} size={func.size:<5} budget={func.budget}  "
            f"sites={len(sites)} rejected={len(rejected)}" + (f"  [{names}]" if rejected else ""))


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--source", help="source file of the unit (e.g. src/Black/Tree.cpp)")
    ap.add_argument("--unit", help="objdiff unit name instead of --source")
    ap.add_argument("--file", help="compile this file instead of the unit's source, with the unit's command line")
    ap.add_argument("-f", "--function", action="append", default=[],
                    help="substring of the demangled or mangled function name (repeatable); omit for a summary")
    ap.add_argument("--raw", action="store_true", help="show decorated names")
    ap.add_argument("--all", action="store_true", help="in the summary, also list functions without candidates")
    args = ap.parse_args(argv)

    try:
        unit = mp.unit_for(source=args.source, unit=args.unit)
        log, _, _, _ = c2_patch.compile_logged(unit, WORK, HOOKS, STRINGS, source_override=args.file)
    except (OSError, ValueError, RuntimeError, subprocess.CalledProcessError) as exc:
        print(f"error: {exc}", file=sys.stderr)
        return 1

    for func in parse_log(log):
        if args.function:
            if not any(s in func.name or s in demangle(func.name) for s in args.function):
                continue
            print("=" * 24, f"{demangle(func.name)}  own IL size {func.size}, budget {func.budget}")
            for site in func.sites:
                show_site(site, 0, args.raw)
        elif func.sites or args.all:
            print(summary(func))
    return 0


if __name__ == "__main__":
    sys.exit(main())
