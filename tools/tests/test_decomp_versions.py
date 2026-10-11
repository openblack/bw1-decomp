"""Run with python -m unittest discover -s tools/tests -p test_decomp_versions.py.

Command rewriting and header-consumer selection only; compiling needs the game compilers.
"""

import importlib.util
from pathlib import Path
import sys
import tempfile
import unittest
from unittest.mock import patch

TOOLS = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(TOOLS))

spec = importlib.util.spec_from_file_location("decomp_versions", TOOLS / "decomp-versions.py")
versions = importlib.util.module_from_spec(spec)
sys.modules[spec.name] = versions
spec.loader.exec_module(versions)
verify = versions.verify

COMMAND = ("build/tools/wibo build/compilers/MSVC/6.5/cl.exe /nologo /O2 /I include /I build/BW1W120/include "
           "/DBUILD_VERSION=2 /DVERSION_BW1W120 /DNDEBUG=1 /Zi /G6 /c src/Black/A.cpp /Fobuild/BW1W120/src/Black/A.o")


class ForVersionTests(unittest.TestCase):
    def test_current_version_is_unchanged(self):
        self.assertEqual(versions.for_version(COMMAND, "BW1W120"), COMMAND)

    def test_older_versions_get_their_defines_and_compiler(self):
        command = versions.for_version(COMMAND, "BW1W110")
        self.assertIn("/DBUILD_VERSION=1 /DVERSION_BW1W110", command)
        self.assertIn("MSVC/6.4/cl.exe", command)
        self.assertNotIn("BW1W120", command.split("/Fo")[0])
        self.assertNotIn(" /Gy ", command)

    def test_function_level_linking_only_for_1_00_game_code(self):
        self.assertIn("/DBUILD_VERSION=0", versions.for_version(COMMAND, "BW1W100"))
        self.assertIn(" /G6 /Gy ", versions.for_version(COMMAND, "BW1W100"))
        library = COMMAND.replace(" /G6", "")
        self.assertNotIn("/Gy", versions.for_version(library, "BW1W100"))


class SelectionTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.root = Path(self.temp.name).resolve()
        patcher = patch.object(versions, "ROOT", self.root)
        patcher.start()
        self.addCleanup(patcher.stop)

    def write(self, name, text=""):
        path = self.root / name
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(text, encoding="utf-8")
        return verify.canonical(path, self.root)

    def edge(self, source):
        return verify.Edge(source, source.with_suffix(".o"), self.root, "cl", "x.o",
                           roots=(verify.canonical("include", self.root),))

    def test_header_consumers_are_found_transitively(self):
        leaf = self.write("include/Leaf.h", "int leaf;\n")
        self.write("include/Mid.h", '#include "Leaf.h"\n#include <windows.h>\n')
        user = self.write("src/User.cpp", '#include "Mid.h"\n')
        other = self.write("src/Other.cpp", "#include <stdio.h>\n")
        edges = [self.edge(user), self.edge(other)]
        selected = versions.select_consumers(edges, {leaf})
        self.assertEqual([e.source for e in selected], [user])
        self.assertIn("Leaf.h", selected[0].reasons[0])

    def test_changed_source_and_unresolved_system_includes(self):
        source = self.write("src/User.cpp", "#include <winwlm.h>\n#include_next <x.h>\n")
        header = self.write("include/H.h")
        selected = versions.select_consumers([self.edge(source)], {source, header})
        self.assertEqual(selected[0].reasons, ["changed source"])

    def test_deleted_header_selects_everything(self):
        source = self.write("src/User.cpp")
        gone = verify.canonical("include/Gone.h", self.root)
        self.assertEqual(len(versions.select_consumers([self.edge(source)], {gone})), 1)


if __name__ == "__main__":
    unittest.main()
