import unittest
import sys
import os
import csnake
sys.path.append(os.path.dirname(__file__) + "/../bw1_decomp_gen")

from functions import FuncPtr
from csnake_overrides import CSnakeFuncPtr


class TestCSnakeFuncPtr(unittest.TestCase):
    def test_func_ptr_func_ptr_arg_to_code(self):
        f = CSnakeFuncPtr("void", [("foo", csnake.FuncPtr("void", [("param_1", "int"), ("param_2", "float"), ("param_3", "int")]))], "__fastcall")
        self.assertEqual(f.get_declaration("Foo"), "void (__fastcall* Foo)(void (*foo)(int param_1, float param_2, int param_3))")

class TestFuncPtr(unittest.TestCase):
    def test_func_ptr_func_ptr_arg_to_code(self):
        f = FuncPtr("TestStructVftable__Foo", "__fastcall", "void", [csnake.FuncPtr("void", [("param_1", "int"), ("param_2", "float"), ("param_3", "int")])], ["foo"])
        csnake_obj = f.to_csnake()
        self.assertEqual(csnake_obj.get_declaration("Foo"), "void (__fastcall* Foo)(void (*foo)(int param_1, float param_2, int param_3))")
