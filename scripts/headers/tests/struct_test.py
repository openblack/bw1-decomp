import unittest
import sys
import os
import csnake
sys.path.append(os.path.dirname(__file__) + "/../bw1_decomp_gen")

from vftable import Vftable
from structs import Struct
from functions import FuncPtr


class TestMember(unittest.TestCase):
    def test_func_ptr_func_ptr_arg_to_code(self):
        m = Vftable.Member("Foo", FuncPtr("TestStructVftable__Foo", "__thiscall", "void", ["struct TestStruct *", csnake.FuncPtr("void", [("param_1", "int"), ("param_2", "float"), ("param_3", "int")])], ["this", "foo"]), None)
        csnake_obj = m.to_csnake()
        self.assertEqual(csnake_obj.declaration, "void (__fastcall* Foo)(struct TestStruct* this, const void* edx, void (*foo)(int param_1, float param_2, int param_3));")


class TestStruct(unittest.TestCase):
    def test_get_type_int(self):
        s = Struct("TestStruct", 4, [Struct.Member("field_0x0", "int", 0x0)])
        self.assertSetEqual(s.get_types(), {"struct TestStruct", "int"})

    def test_get_type_enum_array(self):
        s = Struct("TestStruct", 4, [Struct.Member("field_0x0", "int[FOO][BAR]", 0x0)])
        self.assertSetEqual(s.get_types(), {"struct TestStruct", "int[1][1]", "FOO", "BAR"})

    def DISABLED_test_get_type_vftable(self):
        function_proto_map = {
            "TestVftable__Foo": FuncPtr("TestVftable__Foo", "__thiscall", "char*", ["struct Test*", "size_t"], ["this", ""]),
            "TestVftable__Bar": FuncPtr("TestVftable__Bar", "__thiscall", "void", ["struct Test*", "float"], ["this", ""]),
        }
        s = Vftable(Struct("TestVftable", 8, [Struct.Member(
            "Foo", "TestVftable__Foo*", 0x0), Struct.Member("Bar", "TestVftable__Bar*", 0x4)]), function_proto_map)
        self.assertSetEqual(s.get_types(), {
                            "struct TestVftable", "struct Test*", "size_t", "char*", "float"})

    def DISABLED_test_func_ptr_func_ptr_arg_to_code(self):
        function_proto_map = {
            "TestStructVftable__Foo": FuncPtr("TestStructVftable__Foo", "__thiscall", "void", ["struct TestStruct *", csnake.FuncPtr("void", [("param_1", "int"), ("param_2", "float"), ("param_3", "int")])], ["this", "foo"]),
        }
        s = Vftable(Struct("TestStructVftable", 4, [Struct.Member("Foo", "TestStructVftable__Foo*", 0x0)]), function_proto_map)
        csnake_obj = s.to_csnake()
        self.assertEqual(csnake_obj.declaration.code, """\
struct TestStructVftable
{
    void (__fastcall* Foo)(struct TestStruct* this, const void* edx, void (*foo)(int param_1, float param_2, int param_3));  /* 0x0 */
};""")
