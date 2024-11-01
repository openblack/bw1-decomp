import unittest
import sys
import os
sys.path.append(os.path.dirname(__file__) + "/../bw1_decomp_gen")

from demangler import demangle_type


class TestDemangler(unittest.TestCase):
    def test_namespaces(self):
        self.assertEqual(demangle_type("Q210NewCollide3Obj"), "NewCollide::Obj")
        self.assertEqual(demangle_type("Q213GCameraEditor9InfoTrack"), "GCameraEditor::InfoTrack")
        self.assertEqual(demangle_type("Q29GGuidance10LastThings"), "GGuidance::LastThings")
