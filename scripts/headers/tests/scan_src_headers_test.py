import sys
import os
sys.path.append(os.path.dirname(__file__) + "/../bw1_decomp_gen")

import unittest
from pathlib import Path

from scan_src_headers import extract_types


class TestScanSrcHeaders(unittest.TestCase):
    def test_scan_types(self):
        self.assertDictEqual(extract_types(Path("reversing_utils.h")), {
            "HWND": Path("reversing_utils.h"),
            "RTL_CRITICAL_SECTION": Path("reversing_utils.h"),
            "bool32_t": Path("reversing_utils.h"),
            "struct vec2u16": Path("reversing_utils.h"),
        })

    def test_scan_macros(self):
        self.assertDictEqual(extract_types(Path("libs/lionhead/lhlib")), {
            "DECLARE_LH_LINKED_LIST": Path("lionhead/lhlib/LHLinkedList.h"),
            "DECLARE_P_LH_LINKED_LIST": Path("lionhead/lhlib/LHLinkedList.h"),
            "DECLARE_LH_LIST_HEAD": Path("lionhead/lhlib/LHListHead.h"),
            "DECLARE_GJ_VECTOR": Path("lionhead/lhlib/GJVector.h"),
        })
