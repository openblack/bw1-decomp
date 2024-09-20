from vftable import Vftable
from structs import Struct
from functions import FuncPtr
import unittest
import sys
import os
sys.path.append(os.path.dirname(__file__) + "/../bw1_decomp_gen")


class TestStruct(unittest.TestCase):
    def test_get_type_int(self):
        s = Struct("TestStruct", 4, [Struct.Member("field_0x0", "int", 0x0)])
        self.assertSetEqual(s.get_types(), {"struct TestStruct", "int"})

    def test_get_type_vftable(self):
        function_proto_map = {
            "TestVftable__Foo": FuncPtr("TestVftable__Foo", "__thiscall", "char*", ["struct Test*", "size_t"], ["this", ""]),
            "TestVftable__Bar": FuncPtr("TestVftable__Bar", "__thiscall", "void", ["struct Test*", "float"], ["this", ""]),
        }
        s = Vftable(Struct("TestVftable", 8, [Struct.Member(
            "Foo", "TestVftable__Foo*", 0x0), Struct.Member("Bar", "TestVftable__Bar*", 0x4)]), function_proto_map)
        self.assertSetEqual(s.get_types(), {
                            "struct TestVftable", "struct Test*", "size_t", "char*", "float"})
