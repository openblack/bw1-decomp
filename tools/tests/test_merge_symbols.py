"""Run with python -m unittest discover -s tools/tests -p test_merge_symbols.py.

The symbols.txt merge driver (tools/merge-symbols.py, tools/symbols_txt.py) on small synthetic
files, and once through real git operations in a scratch repository.
"""

import importlib.util
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import unittest

TOOLS = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(TOOLS))
import symbols_txt  # noqa: E402

spec = importlib.util.spec_from_file_location("merge_symbols", TOOLS / "merge-symbols.py")
merge_symbols = importlib.util.module_from_spec(spec)
spec.loader.exec_module(merge_symbols)


def fn(name, addr, size, extra=""):
    return f"{name} = .text:0x{addr:08X}; // type:function size:0x{size:X}{extra}"


def obj(name, addr, size, extra="", section=".data"):
    return f"{name} = {section}:0x{addr:08X}; // type:object size:0x{size:X}{extra}"


def alias(name, addr):
    return f"{name} = .text:0x{addr:08X}; // type:label scope:global alias"


def text(*lines):
    return "".join(line + "\n" for line in lines)


BASE = [
    fn("_$E10", 0x401000, 0x10, " scope:local"),
    fn("_$E11", 0x401010, 0x20, " scope:local"),
    fn("fn_00401030", 0x401030, 0x40),
    fn("fn_00401070", 0x401070, 0x30),
    fn("?Known@@YAXXZ", 0x4010A0, 0x10, " scope:global"),
    obj("lbl_00900000", 0x900000, 0x40, section=".rdata"),
    obj("?Global@@3HA", 0xA00000, 0x4, " scope:global"),
]


def merge(base, ours, theirs, upstream="ours"):
    return symbols_txt.merge(text(*base), text(*ours), text(*theirs), upstream=upstream)


def replace(lines, old_prefix, *new):
    out = []
    for line in lines:
        if line.startswith(old_prefix + " "):
            out.extend(new)
        else:
            out.append(line)
    return out


class CanonicalOrder(unittest.TestCase):
    def test_sorts_by_section_then_address_keeping_ties(self):
        shuffled = [BASE[6], BASE[1], alias("??_EFoo@@UAEPAXI@Z", 0x401030), BASE[0], BASE[5],
                    BASE[2], BASE[4], BASE[3]]
        self.assertEqual(symbols_txt.canonicalize(text(*shuffled)), text(
            BASE[0], BASE[1], alias("??_EFoo@@UAEPAXI@Z", 0x401030), BASE[2], BASE[3], BASE[4], BASE[5],
            BASE[6]))

    def test_externs_first_by_name(self):
        lines = [fn("Foo", 0x10, 4).replace(".text", ".code0"), "b = extern; // type:object scope:global",
                 "a = extern; // type:object scope:global"]
        self.assertEqual(symbols_txt.canonicalize(text(*lines)), text(lines[2], lines[1], lines[0]))

    def test_unparseable(self):
        with self.assertRaises(symbols_txt.ParseError):
            symbols_txt.parse("this is not a symbol\n")


class Merge(unittest.TestCase):
    def assertClean(self, result, expected):
        self.assertTrue(result.clean, result.text)
        self.assertEqual(result.text, text(*expected))

    def test_adjacent_edits(self):
        ours = replace(BASE, "fn_00401030", fn("?A@@YAXXZ", 0x401030, 0x40, " scope:global"))
        theirs = replace(BASE, "fn_00401070", fn("?B@@YAXXZ", 0x401070, 0x30, " scope:global"))
        expected = replace(ours, "fn_00401070", fn("?B@@YAXXZ", 0x401070, 0x30, " scope:global"))
        self.assertClean(merge(BASE, ours, theirs), expected)

    def test_adjacent_insertions(self):
        ours = replace(BASE, "fn_00401030", fn("?A@@YAXXZ", 0x401030, 0x20, " scope:global"),
                       fn("?A2@@YAXXZ", 0x401050, 0x20, " scope:global"))
        theirs = replace(BASE, "fn_00401070", fn("?B@@YAXXZ", 0x401070, 0x18, " scope:global"),
                         fn("?B2@@YAXXZ", 0x401088, 0x18, " scope:global"))
        result = merge(BASE, ours, theirs)
        self.assertTrue(result.clean)
        self.assertEqual(symbols_txt.canonicalize(result.text), result.text)
        self.assertEqual(len(symbols_txt.parse(result.text)), len(BASE) + 2)

    def test_moved_block(self):
        # One side moves a line out of place (as a hand edit can); the other renames it.
        ours = BASE[:5] + BASE[6:] + [BASE[5]]
        theirs = replace(BASE, "lbl_00900000", obj("??_C@_03ABC@abc?$AA@", 0x900000, 0x40, section=".rdata"))
        self.assertClean(merge(BASE, ours, theirs), theirs)

    def test_attribute_fields_merge(self):
        ours = replace(BASE, "fn_00401070", fn("?B@@YAXXZ", 0x401070, 0x30))
        theirs = replace(BASE, "fn_00401070", fn("fn_00401070", 0x401070, 0x30, " scope:global comdat"))
        expected = replace(BASE, "fn_00401070", fn("?B@@YAXXZ", 0x401070, 0x30, " scope:global comdat"))
        self.assertClean(merge(BASE, ours, theirs), expected)

    def test_both_rename_same_placeholder_alike(self):
        ours = theirs = replace(BASE, "fn_00401030", fn("?A@@YAXXZ", 0x401030, 0x40, " scope:global"))
        self.assertClean(merge(BASE, ours, theirs), ours)

    def test_both_rename_same_placeholder_differently(self):
        ours = replace(BASE, "fn_00401030", fn("?A@@YAXXZ", 0x401030, 0x40, " scope:global"))
        theirs = replace(BASE, "fn_00401030", fn("?Other@@YAXXZ", 0x401030, 0x40, " scope:global"))
        result = merge(BASE, ours, theirs)
        self.assertFalse(result.clean)
        self.assertEqual([k for k, _ in result.conflicts], [("p", ".text", 0x401030)])
        lines = result.text.splitlines()
        start = lines.index("<<<<<<< ours")
        self.assertEqual(lines[start - 1], BASE[1])
        self.assertEqual(lines[start:start + 5], ["<<<<<<< ours", ours[2], "=======", theirs[2], ">>>>>>> theirs"])
        self.assertEqual(lines[start + 5], BASE[3])

    def test_label_renumbering_takes_upstream(self):
        ours = replace(BASE, "_$E10", fn("_$E12", 0x401000, 0x10, " scope:local"))
        theirs = replace(BASE, "_$E10", fn("_$E14", 0x401000, 0x10, " scope:local"))
        self.assertClean(merge(BASE, ours, theirs, upstream="ours"), ours)
        result = merge(BASE, ours, theirs, upstream="theirs")
        self.assertClean(result, theirs)
        self.assertEqual(result.labels_from_upstream, ["_$E14"])
        self.assertEqual(result.label_kinds, {"initializer"})

    def test_label_renumbering_gives_way_to_real_change(self):
        ours = replace(BASE, "_$E11", fn("_$E13", 0x401010, 0x20, " scope:local"))
        theirs = replace(BASE, "_$E11")  # theirs drops the symbol
        self.assertClean(merge(BASE, ours, theirs, upstream="ours"), theirs)

    def test_label_renumbering_gives_way_to_rename(self):
        ours = replace(BASE, "_$E11", fn("_$E13", 0x401010, 0x20, " scope:local"))
        theirs = replace(BASE, "_$E11", fn("?Init@@YAXXZ", 0x401010, 0x20, " scope:global"))
        self.assertClean(merge(BASE, ours, theirs, upstream="ours"), theirs)

    def test_label_renumbering_merges_with_size_change(self):
        ours = replace(BASE, "_$E11", fn("_$E13", 0x401010, 0x20, " scope:local"))
        theirs = replace(BASE, "_$E11", fn("_$E11", 0x401010, 0x18, " scope:local"))
        expected = replace(BASE, "_$E11", fn("_$E13", 0x401010, 0x18, " scope:local"))
        self.assertClean(merge(BASE, ours, theirs, upstream="theirs"), expected)

    def test_placeholder_named_with_labels_on_both_sides(self):
        base = BASE[:5] + [fn("crt_xc_fn_ctypeGuard_Foo_00401100", 0x401100, 0x20)] + BASE[5:]
        ours = BASE[:5] + [fn("_$E52", 0x401100, 0x20, " scope:local")] + BASE[5:]
        theirs = BASE[:5] + [fn("_$E56", 0x401100, 0x20, " scope:local")] + BASE[5:]
        self.assertClean(merge(base, ours, theirs, upstream="ours"), ours)

    def test_label_renumbering_on_both_sides_elsewhere(self):
        ours = replace(BASE, "_$E10", fn("_$E12", 0x401000, 0x10, " scope:local"))
        theirs = replace(BASE, "_$E11", fn("_$E15", 0x401010, 0x20, " scope:local"))
        result = merge(BASE, ours, theirs)
        self.assertTrue(result.clean)
        self.assertTrue(result.labels_both_sides)

    def test_funclet_labels(self):
        base = [fn("$L100", 0x401000, 0x8, " scope:local")]
        result = merge(base, [fn("$L101", 0x401000, 0x8, " scope:local")],
                       [fn("$L102", 0x401000, 0x8, " scope:local")], upstream="theirs")
        self.assertClean(result, [fn("$L102", 0x401000, 0x8, " scope:local")])
        self.assertEqual(result.label_kinds, {"funclet"})

    def test_overlap_created_by_merge(self):
        # Each side splits the same blob its own way; every key differs, so only the overlap
        # check notices.
        ours = replace(BASE, "lbl_00900000", obj("lbl_00900000", 0x900000, 0x10, section=".rdata"),
                       obj("??_C@_0P@A@x?$AA@", 0x900010, 0x30, section=".rdata"))
        theirs = replace(BASE, "lbl_00900000", obj("lbl_00900000", 0x900000, 0x10, section=".rdata"),
                         obj("??_C@_0P@B@y?$AA@", 0x900020, 0x20, section=".rdata"))
        result = merge(BASE, ours, theirs)
        self.assertFalse(result.clean)
        self.assertEqual(sorted(k for k, _ in result.conflicts),
                         [("p", ".rdata", 0x900010), ("p", ".rdata", 0x900020)])
        self.assertIn(ours[6], result.text)
        self.assertIn(theirs[7], result.text)

    def test_one_name_for_two_symbols(self):
        ours = replace(BASE, "fn_00401030", fn("?Dup@@YAXXZ", 0x401030, 0x40, " scope:global"))
        theirs = replace(BASE, "fn_00401070", fn("?Dup@@YAXXZ", 0x401070, 0x30, " scope:global"))
        result = merge(BASE, ours, theirs)
        self.assertFalse(result.clean)
        self.assertEqual(len(result.conflicts), 2)

    def test_local_names_may_repeat(self):
        ours = BASE + [obj("_Speed", 0xA00010, 0x4, " scope:local")]
        theirs = BASE + [obj("_Speed", 0xA00020, 0x4, " scope:local")]
        self.assertTrue(merge(BASE, ours, theirs).clean)

    def test_aliases_at_one_address_from_both_sides(self):
        ours = BASE + [alias("?IsA@Foo@@UAEHXZ", 0x4010A0)]
        theirs = BASE + [alias("?IsB@Bar@@UAEHXZ", 0x4010A0)]
        result = merge(BASE, ours, theirs)
        self.assertTrue(result.clean)
        self.assertEqual(result.text.count("alias"), 2)

    def test_delete_against_modify_conflicts(self):
        ours = replace(BASE, "?Known@@YAXXZ")
        theirs = replace(BASE, "?Known@@YAXXZ", fn("?Known@@YAXXZ", 0x4010A0, 0x18, " scope:global"))
        self.assertFalse(merge(BASE, ours, theirs).clean)

    def test_placeholder_gives_way_to_name(self):
        ours = BASE + [obj("lbl_00900040", 0x900040, 0x8, section=".rdata")]
        named = obj("__real@4@3ff391a2b3c4d5e6f800", 0x900040, 0x4, " scope:global data:float comdat", ".rdata")
        theirs = BASE + [named]
        self.assertClean(merge(BASE, ours, theirs), BASE[:6] + [named] + BASE[6:])

    def test_never_loses_or_duplicates(self):
        ours = replace(BASE, "fn_00401030", fn("?A@@YAXXZ", 0x401030, 0x40, " scope:global"))
        theirs = BASE + [obj("?Other@@3HA", 0xA00004, 0x4, " scope:global")]
        result = merge(BASE, ours, theirs)
        names = [s.name for s in symbols_txt.parse(result.text)]
        self.assertEqual(sorted(names), sorted(set(names)))
        self.assertEqual(len(names), len(BASE) + 1)


class Driver(unittest.TestCase):
    """End to end: git's merge machinery calling the driver as setup-merge-drivers.py configures it."""

    def git(self, *args, check=True):
        return subprocess.run(["git", *args], cwd=self.repo, capture_output=True, text=True, check=check)

    def setUp(self):
        self.tmp = tempfile.mkdtemp()
        self.repo = Path(self.tmp)
        self.git("init", "-q", "-b", "main")
        self.git("config", "user.email", "test@example.com")
        self.git("config", "user.name", "test")
        (self.repo / "tools").mkdir()
        for f in ("merge-symbols.py", "symbols_txt.py", "setup-merge-drivers.py"):
            shutil.copy(TOOLS / f, self.repo / "tools" / f)
        (self.repo / ".gitattributes").write_text("config/**/symbols.txt merge=dtk-symbols\n")
        subprocess.run([sys.executable, "tools/setup-merge-drivers.py"], cwd=self.repo, check=True,
                       capture_output=True)
        # A Mac module path: spaces and a quote in %P.
        self.path = self.repo / "config" / "BW1W120" / "Sam's Utilities" / "symbols.txt"
        self.path.parent.mkdir(parents=True)
        self.write(BASE)
        self.git("add", "-A")
        self.git("commit", "-qm", "base")

    def tearDown(self):
        shutil.rmtree(self.tmp)

    def write(self, lines):
        self.path.write_text(text(*lines))

    def commit(self, branch, lines, start="main"):
        self.git("checkout", "-q", "-B", branch, start)
        self.write(lines)
        self.git("commit", "-qam", branch)

    def test_rebase_merge_cherry_pick(self):
        upstream = replace(BASE, "_$E10", fn("_$E12", 0x401000, 0x10, " scope:local"))
        upstream = replace(upstream, "fn_00401030", fn("?A@@YAXXZ", 0x401030, 0x40, " scope:global"))
        topic = replace(BASE, "_$E10", fn("_$E14", 0x401000, 0x10, " scope:local"))
        topic = replace(topic, "fn_00401070", fn("?B@@YAXXZ", 0x401070, 0x30, " scope:global"))
        expected = replace(upstream, "fn_00401070", fn("?B@@YAXXZ", 0x401070, 0x30, " scope:global"))
        self.commit("topic", topic)
        self.commit("main", upstream, start="main")

        env = dict(os.environ)
        env.pop("MERGE_SYMBOLS_UPSTREAM", None)
        for op in (["rebase", "main"], ["merge", "-q", "-m", "m", "main"], ["cherry-pick", "main..topic"]):
            with self.subTest(op=op[0]):
                if op[0] == "cherry-pick":
                    self.git("checkout", "-q", "-B", "work", "main")
                    op = ["cherry-pick", "topic"]
                else:
                    self.git("checkout", "-q", "-B", "work", "topic")
                # merge: upstream is the merged branch, found through merge-symbols.upstream.
                self.git("config", "merge-symbols.upstream", "main")
                r = subprocess.run(["git", *op], cwd=self.repo, capture_output=True, text=True, env=env)
                self.assertEqual(r.returncode, 0, r.stderr)
                self.assertEqual(self.path.read_text(), text(*expected))
                self.assertIn("relabel-initializers.py", r.stderr)

    def test_conflict_exits_nonzero(self):
        self.commit("topic", replace(BASE, "fn_00401030", fn("?Mine@@YAXXZ", 0x401030, 0x40, " scope:global")))
        self.commit("main", replace(BASE, "fn_00401030", fn("?Yours@@YAXXZ", 0x401030, 0x40, " scope:global")))
        self.git("checkout", "-q", "topic")
        r = self.git("rebase", "main", check=False)
        self.assertNotEqual(r.returncode, 0)
        content = self.path.read_text()
        self.assertEqual(content.count("<<<<<<<"), 1)
        self.assertIn("?Mine@@YAXXZ", content)
        self.assertIn("?Yours@@YAXXZ", content)
        self.git("rebase", "--abort")

    def test_unparseable_falls_back(self):
        self.commit("topic", BASE + ["garbage"])
        self.commit("main", replace(BASE, "fn_00401030", fn("?A@@YAXXZ", 0x401030, 0x40, " scope:global")))
        self.git("checkout", "-q", "topic")
        r = self.git("merge", "main", check=False)
        self.assertNotEqual(r.returncode, 0)
        self.assertIn("falling back to git merge-file", r.stderr)


if __name__ == "__main__":
    unittest.main()
