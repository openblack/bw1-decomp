import unittest
import sys
import os
import csnake
from collections import OrderedDict
sys.path.append(os.path.dirname(__file__) + "/../bw1_decomp_gen")

from vftable import Vftable
from structs import Struct, RTTIClass
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

    def test_get_type_vftable(self):
        s = Vftable(Struct("TestVftable", 8, []))
        s.members = [
            Vftable.Member("Foo", FuncPtr("TestVftable__Foo", "__thiscall", "char*", ["struct Test*", "size_t"], ["this", ""]), 0x0),
            Vftable.Member("Bar", FuncPtr("TestVftable__Bar", "__thiscall", "void", ["struct Test*", "float"], ["this", ""]), 0x4),
        ]
        self.assertSetEqual(s.get_types(), {
                            "struct TestVftable", "struct Test*", "size_t", "char*", "float"})

    def test_func_ptr_func_ptr_arg_to_code(self):
        s = Vftable(Struct("TestStructVftable", 4, []))
        s.members = [
            Vftable.Member("Foo", FuncPtr("TestStructVftable__Foo", "__thiscall", "void", ["struct TestStruct *", csnake.FuncPtr("void", [("param_1", "int"), ("param_2", "float"), ("param_3", "int")])], ["this", "foo"]), 0x0),
        ]
        cw = csnake.CodeWriter()
        cw.add_struct(s.to_csnake())
        self.assertEqual(cw.code, """\
struct TestStructVftable
{
    void (__fastcall* Foo)(struct TestStruct* this, const void* edx, void (*foo)(int param_1, float param_2, int param_3));  /* 0x0 */
};""")


class TestRTTIClass(unittest.TestCase):
    def _make_rtti_entry(self, name, win_addr, mac_addr, type_name, decorated_name):
        return {"name": name, "win_addr": win_addr, "mac_addr": mac_addr, "type": type_name, "decorated_name": decorated_name, "msvc_mangled_name": None}

    def test_get_types_no_rtti(self):
        struct = Struct("TestClass", 4, [Struct.Member("vftable", "struct TestClassVftable*", 0x0)])
        s = RTTIClass(struct, {}, {}, {}, {}, {}, {}, OrderedDict(), {}, {})
        self.assertSetEqual(s.get_types(), {"struct TestClass", "struct TestClassVftable*"})

    def DISABLED_test_get_types_no_rtti_cplusplus(self):
        struct = Struct("TestClass", 4, [Struct.Member("vftable", "struct TestClassVftable*", 0x0)])
        s = RTTIClass(struct, {}, {}, {}, {}, {}, {}, OrderedDict(), {}, {})
        self.assertSetEqual(s.get_types(cplusplus=True), {"class TestClass"})

    def test_get_types_with_rtti(self):
        struct = Struct("TestClass", 4, [Struct.Member("vftable", "struct TestClassVftable*", 0x0)])
        typedesc_map = {"TestClass": self._make_rtti_entry("__type_info__TestClass", 0x00401000, 0x10001000, "RTTITypeDescriptor", "TestClass::RTTITypeDescriptor")}
        locator_map = {"TestClass": self._make_rtti_entry("__locator__TestClass", 0x00401010, 0x10001010, "RTTICompleteObjectLocator", "TestClass::RTTICompleteObjectLocator")}
        s = RTTIClass(struct, {}, typedesc_map, {}, {}, {}, locator_map, OrderedDict(), {}, {})
        self.assertSetEqual(s.get_types(), {
            "struct TestClass",
            "struct TestClassVftable*",
            "struct RTTITypeDescriptor",
            "struct RTTICompleteObjectLocator",
        })

    def DISABLED_test_get_types_with_rtti_cplusplus(self):
        struct = Struct("TestClass", 4, [Struct.Member("vftable", "struct TestClassVftable*", 0x0)])
        typedesc_map = {"TestClass": self._make_rtti_entry("__type_info__TestClass", 0x00401000, 0x10001000, "RTTITypeDescriptor", "TestClass::RTTITypeDescriptor")}
        locator_map = {"TestClass": self._make_rtti_entry("__locator__TestClass", 0x00401010, 0x10001010, "RTTICompleteObjectLocator", "TestClass::RTTICompleteObjectLocator")}
        s = RTTIClass(struct, {}, typedesc_map, {}, {}, {}, locator_map, OrderedDict(), {}, {})
        self.assertSetEqual(s.get_types(cplusplus=True), {
            "class TestClass",
        })
