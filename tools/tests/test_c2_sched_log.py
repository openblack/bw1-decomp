"""Run with python -m unittest discover -s tools/tests -p test_c2_sched_log.py.

Log parsing and formatting only; the patched compiler needs Wine and is exercised by hand.
The log rows are captured from GestureSystem::CalculateForJunctionMerge (window 19).
"""

import importlib.util
from pathlib import Path
import sys
import unittest

TOOLS = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(TOOLS))

spec = importlib.util.spec_from_file_location("c2_sched_log", TOOLS / "c2-sched-log.py")
sched = importlib.util.module_from_spec(spec)
spec.loader.exec_module(sched)

LOG = """\
cl.exe banner line
@F #19
@L row=107a0dc8 118 354 99 1
@R cyc=8 ready: 21504/8/10
@S cyc=8 node=05ccf6d8 ins=05ce1be8 op=118 prio=21504 earliest=8 seq=10 f39=02 f3a=04 height=18 degree=3 \
succ: 05ccf9d8/0 05ccf798/0 05ccf744/1
@R cyc=9 ready: 54272/8/15 18432/9/11
@S cyc=9 node=05ccf864 ins=05cb01a8 op=1 prio=54272 earliest=8 seq=15 f39=00 f3a=05 height=19 degree=2 \
succ: 05ccf954/0 05ccf8b8/1
@S cyc=13 node=05ccf744 ins=05ce1cb4 op=354 prio=18432 earliest=9 seq=11 f39=00 f3a=04 height=16 degree=2 \
succ: 05ccf9d8/0 05ccf798/0
@S cyc=13 node=05ccf798 ins=05ce1d0c op=99 prio=16385 earliest=13 seq=12 f39=02 f3a=06 height=15 degree=1 \
succ: 05ccf9d8/0
@L row=107a0dc8 1 47
@S cyc=1 node=05cc4194 ins=05c958bc op=1 prio=3072 earliest=1 seq=2 f39=40 f3a=06 height=2 degree=1 \
succ: 05cc41e8/0
@S cyc=2 node=05cc41e8 ins=05c95a10 op=47 prio=8392704 earliest=2 seq=3 f39=c0 f3a=04 height=3 degree=1 \
succ: 05cc4254/1
@E 05ce1be8 op=118
@E 05cb01a8 op=1
@E 05ce1cb4 op=354
@E 05ce1d0c op=99
"""

NAMES = {1: "mov", 13: "push", 14: "call", 47: "test", 99: "fstp", 118: "fabs", sched.NOP: "nop-node"}


def nodes(funcs):
    return [e for f in funcs for e in f.events if isinstance(e, sched.Node)]


class PriorityTests(unittest.TestCase):
    def test_logged_rows_follow_the_g6_formula(self):
        for node in nodes(sched.parse_log(LOG)):
            with self.subTest(op=NAMES[node.op], seq=node.seq):
                self.assertEqual(sched.priority(node, NAMES[node.op].startswith("f")), node.prio)

    def test_x87_bonus_needs_an_x87_instruction(self):
        fstp, store = [n for n in nodes(sched.parse_log(LOG)) if n.f3a == 0x06]
        self.assertEqual(sched.priority(fstp, True), 16385)
        # An integer store has f3a bit 1 too, but gets no +1.
        self.assertEqual(sched.priority(store, False), 3072)


class ParseTests(unittest.TestCase):
    def test_records(self):
        func, = sched.parse_log(LOG)
        self.assertEqual(func.ordinal, 19)
        self.assertEqual([w.ops for w in func.windows], [[118, sched.NOP, 99, 1], [1, 47]])
        ready = [e for e in func.events if isinstance(e, sched.Ready)]
        self.assertEqual((ready[1].cycle, ready[1].entries), (9, [(54272, 8, 15), (18432, 9, 11)]))
        self.assertEqual(len(func.emitted), 4)

    def test_successors_resolve_within_the_window(self):
        by_seq = {n.seq: n for n in nodes(sched.parse_log(LOG))[:4]}
        self.assertEqual(by_seq[10].succs, [("?", 0), (12, 0), (11, 1)])
        self.assertEqual(by_seq[11].succs, [("?", 0), (12, 0)])
        # The second window reuses no seq from the first.
        last = nodes(sched.parse_log(LOG))[-1]
        self.assertEqual(last.succs, [("?", 1)])


ASM = """\
_$E5	PROC NEAR					; COMDAT
	ret	0
_$E5	ENDP
?CalculateForJunctionMerge@GestureSystem@@QAEHJJ@Z PROC NEAR ; GestureSystem::CalculateForJunctionMerge, COMDAT

; 183  : {

	fabs
	mov	ecx, DWORD PTR _earlierPoint$43140[esp+28]
	fstp	DWORD PTR _keepTurn$43142[esp+28]		; comment
?CalculateForJunctionMerge@GestureSystem@@QAEHJJ@Z ENDP
"""


class ListingTests(unittest.TestCase):
    def test_procs_and_instructions(self):
        procs = sched.listing(ASM)
        self.assertEqual([name for name, _ in procs], ["_$E5", "GestureSystem::CalculateForJunctionMerge"])
        self.assertEqual(procs[1][1], [
            ("fabs", "fabs"),
            ("mov", "mov ecx, DWORD PTR _earlierPoint$43140[esp+28]"),
            ("fstp", "fstp DWORD PTR _keepTurn$43142[esp+28]"),
        ])

    def test_functions_match_procs_by_emitted_instructions(self):
        discarded = sched.Function(18, emitted=[("1", 13), ("2", 14)])
        func, = sched.parse_log(LOG)
        procs = sched.listing(ASM)[1:]
        sched.name_functions([discarded, func], procs, NAMES)
        self.assertIsNone(discarded.name)
        self.assertEqual(func.name, "GestureSystem::CalculateForJunctionMerge")
        self.assertEqual(func.text["05ce1d0c"], "fstp DWORD PTR _keepTurn$43142[esp+28]")

    def test_align_skips_at_most_three_listing_lines(self):
        lines = [("push", "push a"), ("push", "push b"), ("push", "push c"), ("push", "push d"), ("mov", "mov x")]
        self.assertEqual(sched.align([("1", 1)], lines, NAMES), {})
        self.assertEqual(sched.align([("1", 1)], lines[1:], NAMES), {"1": "mov x"})


if __name__ == "__main__":
    unittest.main()
