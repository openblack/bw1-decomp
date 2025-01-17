import sys
import os
import csnake
sys.path.append(os.path.dirname(__file__) + "/../bw1_decomp_gen")

import unittest
from csnake import CodeWriter
from pathlib import Path

from functions import FuncPtr, DefinedFunctionPrototype
from header import Header, GlobalsHeader
from structs import Struct, RTTIClass
from vftable import Vftable


class TestHeaderTypes(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        Header.set_utility_header_import_map({})

    def setUp(self):
        super().setUp()
        self.path = Path("src/TestHeader.h")

    def test_types(self):
        structs: list[Struct] = [
            Struct("TestStruct1", 4, [Struct.Member("field_0x0", "int", 0x0)]),
            Struct("TestStruct2", 0x28, [
                Struct.Member("field_0x0", "int *", 0x0),
                Struct.Member("field_0x4", "enum TestEnum*", 0x4),
                Struct.Member("field_0x8", "union TestUnion*", 0x8),
                Struct.Member("field_0xc", "struct TestStruct3*", 0xc),
                Struct.Member("field_0x10", "struct TestStruct3(*)[2]", 0x10),
                Struct.Member("field_0x14", "struct TestStruct3*[2]", 0x14),
                Struct.Member("field_0x1c", "int", 0x1c),
                Struct.Member("field_0x20", "struct TestStruct1", 0x20),
                Struct.Member("field_0x24", "struct TestStruct1*", 0x24),
            ]),
        ]
        h = Header(self.path, includes=[], structs=structs)
        self.assertSetEqual(h.get_types(), {
            "int",
            "int*",
            "enum TestEnum*",
            "union TestUnion*",
            "struct TestStruct1",
            "struct TestStruct1*",
            "struct TestStruct2",
            "struct TestStruct3*",
            "struct TestStruct3(*)[2]",
            "struct TestStruct3*[2]",
        })

    def test_direct_dependencies(self):
        structs: list[Struct] = [
            Struct("TestStruct2", 0x2c, [
                Struct.Member("field_0x0", "int *", 0x0),
                Struct.Member("field_0x4", "enum TestEnum", 0x4),
                Struct.Member("field_0x8", "union TestUnion", 0x8),
                Struct.Member("field_0xc", "struct TestStruct3*", 0xc),
                Struct.Member("field_0x10", "struct TestStruct4(*)[2]", 0x10),
                Struct.Member("field_0x14", "struct TestStruct5*[2]", 0x14),
                Struct.Member("field_0x1c", "int", 0x1c),
                Struct.Member("field_0x20", "struct TestStruct1", 0x20),
                Struct.Member("field_0x24", "struct TestStruct1*", 0x24),
                Struct.Member("field_0x128", "const struct TestStruct7(*)[2]", 0x10),
            ]),
        ]
        h = Header(self.path, includes=[], structs=structs)
        self.assertSetEqual(h.get_direct_dependencies(), {
            "static_assert",
            "struct TestStruct1",
            "struct TestStruct4",
            "struct TestStruct7",
            "enum TestEnum",
            "union TestUnion",
        })

    def DISABLED_test_forward_declare_list(self):
        function_proto_map = {
            "TestStruct1Vftable__Foo": FuncPtr("TestStruct1Vftable__Foo", "__thiscall", "char*", ["struct TestStruct1*", "int", "struct TestStruct4*"], ["this", "", ""]),
            "TestStruct1Vftable__Bar": FuncPtr("TestStruct1Vftable__Bar", "__thiscall", "void", ["struct TestStruct1*", "float"], ["this", ""]),
        }
        structs: list[Struct] = [
            Vftable(Struct("TestStruct1Vftable", 8, [Struct.Member("Foo", "TestStruct1Vftable__Foo*", 0x0), Struct.Member("Bar", "TestStruct1Vftable__Bar*", 0x4)]), function_proto_map),
            Struct("TestStruct1", 4, [Struct.Member("vftable", "struct TestStruct1Vftable*", 0x0)]),
            Struct("TestStruct2", 0x30, [
                Struct.Member("field_0x0", "int *", 0x0),
                Struct.Member("field_0x4", "enum TestEnum*", 0x4),
                Struct.Member("field_0x8", "union TestUnion*", 0x8),
                Struct.Member("field_0xc", "struct TestStruct3*", 0xc),
                Struct.Member("field_0x10", "struct TestStruct5(*)[2]", 0x10),
                Struct.Member("field_0x14", "struct TestStruct6*[2]", 0x14),
                Struct.Member("field_0x1c", "int", 0x1c),
                Struct.Member("field_0x1c", "int*", 0x20),
                Struct.Member("field_0x1c", "uint32_t*", 0x24),
                Struct.Member("field_0x20", "struct TestStruct1", 0x28),
                Struct.Member("field_0x24", "struct TestStruct1*", 0x2c),
            ]),
        ]
        h = Header(self.path, includes=[], structs=structs)
        self.assertSetEqual(h.get_forward_declare_types(), {
            "struct TestStruct1", # Because a direct dependency (TestStruct1Vftable) appears before an indirect one (TestStruct1)
            "enum TestEnum",
            "union TestUnion",
            "struct TestStruct3",
            "struct TestStruct4",
            "struct TestStruct6",
        })


class TestHeaderIncludes(unittest.TestCase):
    def setUp(self):
        super().setUp()
        self.path = Path("src/TestHeader.h")

    def test_stdint(self):
        h = Header(self.path, [], [Struct("TestStruct", 0xc, [Struct.Member("field_0x0", "uint32_t", 0x0), Struct.Member("field_0x4", "int", 0x4), Struct.Member("field_0x8", "int8_t[2]", 0x8), Struct.Member("field_0xa", "int16_t", 0xa)])])
        h.build_include_list({})
        includes = h.get_includes()
        self.assertSequenceEqual(includes, [Header.Include(Path("assert.h"), {"static_assert"}, Header.Include.Level.SYSTEM), Header.Include(Path("stdint.h"), {"int16_t", "int8_t", "uint32_t"}, Header.Include.Level.SYSTEM)])

    def test_stdint_ptr(self):
        h = Header(self.path, [], [Struct("TestStruct", 0x8, [Struct.Member("field_0x0", "uint32_t*", 0x0), Struct.Member("field_0x4", "const int32_t*", 0x4)])])
        h.build_include_list({})
        includes = h.get_includes()
        self.assertSequenceEqual(includes, [Header.Include(Path("assert.h"), {"static_assert"}, Header.Include.Level.SYSTEM), Header.Include(Path("stdint.h"), {"uint32_t", "int32_t"}, Header.Include.Level.SYSTEM)])

    def test_with_manual_include(self):
        h = Header(self.path, [Header.Include(Path('includetest'), {"std::TestInclude"}, Header.Include.Level.SYSTEM)], [Struct("TestStruct", 0xc, [Struct.Member("field_0x0", "uint32_t", 0x0)])])
        h.build_include_list({})
        includes = h.get_includes()
        self.assertSequenceEqual(includes, [Header.Include(Path("assert.h"), {"static_assert"}, Header.Include.Level.SYSTEM), Header.Include(Path("includetest"), {"std::TestInclude"}, Header.Include.Level.SYSTEM), Header.Include(Path("stdint.h"), {"uint32_t"}, Header.Include.Level.SYSTEM)])

    def test_with_struct_essentials(self):
        structs: list[Struct] = [
            Struct("TestStruct", 0, []),
        ]
        h = Header(self.path, includes=[], structs=structs)
        h.build_include_list({})
        self.cw = CodeWriter()
        h.to_code(self.cw)
        code = self.cw.code

        self.assertIn("static_assert", code)  # for the struct size

        includes = h.get_includes()
        self.assertSequenceEqual(includes, [Header.Include(Path("assert.h"), {"static_assert"}, Header.Include.Level.SYSTEM)])

        self.assertEqual(code.count("static_assert"), 2)  # one for the struct size and one for the include

class TestHeaderCreation(unittest.TestCase):

    @classmethod
    def setUpClass(cls):
        Header.set_header_guard_format("BW1_DECOMP_%s_INCLUDED_H")
        Header.set_utility_header_import_map({})

    def setUp(self):
        super().setUp()
        self.maxDiff = None
        self.cw = CodeWriter()
        self.path = Path("src/TestHeader.h")

    def test_empty(self):
        Header(self.path, includes=[], structs=[]).to_code(self.cw)

        self.assertEqual(self.cw.code,
                         """\
#ifndef BW1_DECOMP_TEST_HEADER_INCLUDED_H
#define BW1_DECOMP_TEST_HEADER_INCLUDED_H

#endif /* BW1_DECOMP_TEST_HEADER_INCLUDED_H */
""")

    def test_includes(self):
        includes: list[Header.Include] = [
            Header.Include(Path('src/TestInclude4.h'), {}, Header.Include.Level.LOCAL),
            Header.Include(Path('src/TestInclude1.h'), {"TestInclude1"}, Header.Include.Level.LOCAL),
            Header.Include(Path('src/TestInclude2.h'), {"TestInclude2a", "TestInclude2b"}, Header.Include.Level.LOCAL),
            Header.Include(Path('TestInclude3'), {"std::TestInclude3"}, Header.Include.Level.SYSTEM),
            Header.Include(Path('lib/TestInclude5.h'), {"TestInclude5a", "TestInclude5c", "TestInclude5b"}, Header.Include.Level.LINKED),
        ]

        Header(self.path, includes, structs=[]).to_code(self.cw)

        self.assertEqual(self.cw.code,
                         """\
#ifndef BW1_DECOMP_TEST_HEADER_INCLUDED_H
#define BW1_DECOMP_TEST_HEADER_INCLUDED_H

#include <TestInclude3> /* For std::TestInclude3 */

#include <lib/TestInclude5.h> /* For TestInclude5a, TestInclude5b, TestInclude5c */

#include "src/TestInclude1.h" /* For TestInclude1 */
#include "src/TestInclude2.h" /* For TestInclude2a, TestInclude2b */
#include "src/TestInclude4.h"

#endif /* BW1_DECOMP_TEST_HEADER_INCLUDED_H */
""")

    def test_struct_int(self):
        structs: list[Struct] = [
            Struct("TestStruct", 0x8, [
                Struct.Member("field_0x0", "int", 0x0),  # Array of 2 pointers to int
            ]),
        ]
        header = Header(self.path, includes=[], structs=structs)
        header.build_include_list({})
        header.to_code(self.cw)

        self.assertEqual(self.cw.code, """\
#ifndef BW1_DECOMP_TEST_HEADER_INCLUDED_H
#define BW1_DECOMP_TEST_HEADER_INCLUDED_H

#include <assert.h> /* For static_assert */

struct TestStruct
{
    int field_0x0;
};
static_assert(sizeof(struct TestStruct) == 0x8, "Data type is of wrong size");

#endif /* BW1_DECOMP_TEST_HEADER_INCLUDED_H */
""")

    def test_struct_struct(self):
        structs: list[Struct] = [
            Struct("TestStruct1", 0x4, [
                Struct.Member("field_0x0", "struct TestStruct2",0x0),
            ]),
        ]
        header = Header(self.path, includes=[], structs=structs)
        header.build_include_list({})
        header.to_code(self.cw)

        self.assertEqual(self.cw.code, """\
#ifndef BW1_DECOMP_TEST_HEADER_INCLUDED_H
#define BW1_DECOMP_TEST_HEADER_INCLUDED_H

#include <assert.h> /* For static_assert */

struct TestStruct1
{
    struct TestStruct2 field_0x0;
};
static_assert(sizeof(struct TestStruct1) == 0x4, "Data type is of wrong size");

#endif /* BW1_DECOMP_TEST_HEADER_INCLUDED_H */
""")

    def test_struct_struct_ptr(self):
        structs: list[Struct] = [
            Struct("TestStruct1", 0x4, [
                Struct.Member("field_0x0", "struct TestStruct2*", 0x0),
            ]),
        ]
        header = Header(self.path, includes=[], structs=structs)
        header.build_include_list({})
        header.to_code(self.cw)

        self.assertEqual(self.cw.code, """\
#ifndef BW1_DECOMP_TEST_HEADER_INCLUDED_H
#define BW1_DECOMP_TEST_HEADER_INCLUDED_H

#include <assert.h> /* For static_assert */

// Forward Declares

struct TestStruct2;

struct TestStruct1
{
    struct TestStruct2* field_0x0;
};
static_assert(sizeof(struct TestStruct1) == 0x4, "Data type is of wrong size");

#endif /* BW1_DECOMP_TEST_HEADER_INCLUDED_H */
""")

    def test_struct_array(self):
        structs: list[Struct] = [
            Struct("TestStruct", 0x8, [
                Struct.Member("field_0x0", "int[2]", 0x0),  # Just an array of 2 ints
            ]),
        ]
        header = Header(self.path, includes=[], structs=structs)
        header.build_include_list({})
        header.to_code(self.cw)

        self.assertEqual(self.cw.code, """\
#ifndef BW1_DECOMP_TEST_HEADER_INCLUDED_H
#define BW1_DECOMP_TEST_HEADER_INCLUDED_H

#include <assert.h> /* For static_assert */

struct TestStruct
{
    int field_0x0[0x2];
};
static_assert(sizeof(struct TestStruct) == 0x8, "Data type is of wrong size");

#endif /* BW1_DECOMP_TEST_HEADER_INCLUDED_H */
""")

    def test_struct_3d_array(self):
        structs: list[Struct] = [
            Struct("TestStruct", 0x4 * 2 * 15 * 9, [
                Struct.Member("field_0x0", "int[0x2][0xF][0x9]", 0x0),  # Just an array of 2 ints
            ]),
        ]
        header = Header(self.path, includes=[], structs=structs)
        header.build_include_list({})
        header.to_code(self.cw)

        self.assertEqual(self.cw.code, """\
#ifndef BW1_DECOMP_TEST_HEADER_INCLUDED_H
#define BW1_DECOMP_TEST_HEADER_INCLUDED_H

#include <assert.h> /* For static_assert */

struct TestStruct
{
    int field_0x0[0x2][0xf][0x9];
};
static_assert(sizeof(struct TestStruct) == 0x438, "Data type is of wrong size");

#endif /* BW1_DECOMP_TEST_HEADER_INCLUDED_H */
""")

    def test_struct_empty_array(self):
        structs: list[Struct] = [
            Struct("TestStruct", 0x0, [
                Struct.Member("field_0x0", "int[]", 0x0),  # Just an array of 2 ints
            ]),
        ]
        header = Header(self.path, includes=[], structs=structs)
        header.build_include_list({})
        header.to_code(self.cw)

        self.assertEqual(self.cw.code, """\
#ifndef BW1_DECOMP_TEST_HEADER_INCLUDED_H
#define BW1_DECOMP_TEST_HEADER_INCLUDED_H

#include <assert.h> /* For static_assert */

struct TestStruct
{
    int field_0x0[];
};
static_assert(sizeof(struct TestStruct) == 0x0, "Data type is of wrong size");

#endif /* BW1_DECOMP_TEST_HEADER_INCLUDED_H */
""")

    def test_struct_zero_array(self):
        structs: list[Struct] = [
            Struct("TestStruct", 0x0, [
                Struct.Member("field_0x0", "int[0]", 0x0),  # Just an array of 2 ints
            ]),
        ]
        header = Header(self.path, includes=[], structs=structs)
        header.build_include_list({})
        header.to_code(self.cw)

        self.assertEqual(self.cw.code, """\
#ifndef BW1_DECOMP_TEST_HEADER_INCLUDED_H
#define BW1_DECOMP_TEST_HEADER_INCLUDED_H

#include <assert.h> /* For static_assert */

struct TestStruct
{
    int field_0x0[0x0];
};
static_assert(sizeof(struct TestStruct) == 0x0, "Data type is of wrong size");

#endif /* BW1_DECOMP_TEST_HEADER_INCLUDED_H */
""")

    def test_struct_array_of_pointers(self):
        structs: list[Struct] = [
            Struct("TestStruct", 0x8, [
                Struct.Member("field_0x0", "int*[0x2]", 0x0),  # Array of 2 pointers to int
            ]),
        ]
        header = Header(self.path, includes=[], structs=structs)
        header.build_include_list({})
        header.to_code(self.cw)

        self.assertEqual(self.cw.code, """\
#ifndef BW1_DECOMP_TEST_HEADER_INCLUDED_H
#define BW1_DECOMP_TEST_HEADER_INCLUDED_H

#include <assert.h> /* For static_assert */

struct TestStruct
{
    int* field_0x0[0x2];
};
static_assert(sizeof(struct TestStruct) == 0x8, "Data type is of wrong size");

#endif /* BW1_DECOMP_TEST_HEADER_INCLUDED_H */
""")

    def test_struct_pointer_to_array(self):
        structs: list[Struct] = [
            Struct("TestStruct", 0x8, [
                Struct.Member("field_0x0", "int(*)[2]", 0x0),  # Pointer to an array of 2 int
            ]),
        ]
        header = Header(self.path, includes=[], structs=structs)
        header.build_include_list({})
        header.to_code(self.cw)

        self.assertEqual(self.cw.code, """\
#ifndef BW1_DECOMP_TEST_HEADER_INCLUDED_H
#define BW1_DECOMP_TEST_HEADER_INCLUDED_H

#include <assert.h> /* For static_assert */

struct TestStruct
{
    int (*field_0x0)[0x2];
};
static_assert(sizeof(struct TestStruct) == 0x8, "Data type is of wrong size");

#endif /* BW1_DECOMP_TEST_HEADER_INCLUDED_H */
""")

    def test_structs(self):
        structs: list[Struct] = [
            Struct("TestStruct1", 4, [Struct.Member("field_0x0", "int", 0x0)]),
            Struct("TestStruct2", 0x20, [
                Struct.Member("field_0x0", "struct TestStruct1", 0x0),
                Struct.Member("field_0x4", "struct TestStruct1[2]", 0x4),
                Struct.Member("field_0xc", "struct TestStruct1*", 0xc),
                Struct.Member("field_0x10", "struct TestStruct1(*)[2]", 0x10),
                Struct.Member("field_0x14", "struct TestStruct1*[2]", 0x14),
                Struct.Member("field_0x1c", "int", 0x1c),
            ]),
        ]
        header = Header(self.path, includes=[], structs=structs)
        header.build_include_list({})
        header.to_code(self.cw)

        self.assertEqual(self.cw.code,
                         """\
#ifndef BW1_DECOMP_TEST_HEADER_INCLUDED_H
#define BW1_DECOMP_TEST_HEADER_INCLUDED_H

#include <assert.h> /* For static_assert */

struct TestStruct1
{
    int field_0x0;
};
static_assert(sizeof(struct TestStruct1) == 0x4, "Data type is of wrong size");

struct TestStruct2
{
    struct TestStruct1 field_0x0;
    struct TestStruct1 field_0x4[0x2];
    struct TestStruct1* field_0xc;
    struct TestStruct1 (*field_0x10)[0x2];
    struct TestStruct1* field_0x14[0x2];
    int field_0x1c;
};
static_assert(sizeof(struct TestStruct2) == 0x20, "Data type is of wrong size");

#endif /* BW1_DECOMP_TEST_HEADER_INCLUDED_H */
""")

    def DISABLED_test_structs_with_forward_declare(self):
        function_proto_map = {
            "TestStruct1Vftable__Foo": FuncPtr("TestStruct1Vftable__Foo", "__thiscall", "char*", ["struct TestStruct1*", "int", "struct TestStruct4*"], ["this", "", ""]),
            "TestStruct1Vftable__Bar": FuncPtr("TestStruct1Vftable__Bar", "__thiscall", "void", ["struct TestStruct1*", "float"], ["this", "", ""]),
        }
        structs: list[Struct] = [
            Vftable(Struct("TestStruct1Vftable", 8, [Struct.Member("Foo", "TestStruct1Vftable__Foo*", 0x0), Struct.Member("Bar", "TestStruct1Vftable__Bar*", 0x4)]), function_proto_map),
            Struct("TestStruct1", 4, [Struct.Member("vftable", "struct TestStruct1Vftable*", 0x0)]),
            Struct("TestStruct2", 0x28, [
                Struct.Member("field_0x0", "int *", 0x0),
                Struct.Member("field_0x4", "enum TestEnum*", 0x4),
                Struct.Member("field_0x8", "union TestUnion*", 0x8),
                Struct.Member("field_0xc", "struct TestStruct3*", 0xc),
                Struct.Member("field_0x10", "uint32_t(*)[2]", 0x10),
                Struct.Member("field_0x14", "struct TestStruct6*[2]", 0x14),
                Struct.Member("field_0x1c", "int", 0x1c),
                Struct.Member("field_0x20", "struct TestStruct1", 0x20),
                Struct.Member("field_0x24", "struct TestStruct1*", 0x24),
            ]),
        ]
        header = Header(self.path, includes=[], structs=structs)
        header.build_include_list({})
        header.to_code(self.cw)

        self.assertEqual(self.cw.code,
                         """\
#ifndef BW1_DECOMP_TEST_HEADER_INCLUDED_H
#define BW1_DECOMP_TEST_HEADER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

// Forward Declares

enum TestEnum;
struct TestStruct1;
struct TestStruct3;
struct TestStruct4;
struct TestStruct6;
union TestUnion;

struct TestStruct1Vftable
{
    char* (__fastcall* Foo)(struct TestStruct1* this, const void* edx, int param_1, struct TestStruct4* param_2);  /* 0x0 */
    void (__fastcall* Bar)(struct TestStruct1* this, const void* edx, float param_1);
};
static_assert(sizeof(struct TestStruct1Vftable) == 0x8, "Data type is of wrong size");

struct TestStruct1
{
    struct TestStruct1Vftable* vftable;
};
static_assert(sizeof(struct TestStruct1) == 0x4, "Data type is of wrong size");

struct TestStruct2
{
    int* field_0x0;
    enum TestEnum* field_0x4;
    union TestUnion* field_0x8;
    struct TestStruct3* field_0xc;
    uint32_t (*field_0x10)[0x2];
    struct TestStruct6* field_0x14[0x2];
    int field_0x1c;
    struct TestStruct1 field_0x20;
    struct TestStruct1* field_0x24;
};
static_assert(sizeof(struct TestStruct2) == 0x28, "Data type is of wrong size");

#endif /* BW1_DECOMP_TEST_HEADER_INCLUDED_H */
""")

    def DISABLED_test_structs_with_functions(self):
        function_proto_map = {
            "TestStructVftable__Foo": FuncPtr("TestStructVftable__Foo", "__thiscall", "char*", ["struct TestStruct*", "int"], ["this", ""]),
            "TestStructVftable__Bar": FuncPtr("TestStructVftable__Bar", "__thiscall", "void", ["struct TestStruct*"], ["this"]),
            "TestChildStructVftable__Qux": FuncPtr("TestChildStructVftable__Qux", "__thiscall", "char*", ["struct TestChildStruct*", "int"], ["this", "test"]),
        }
        method_map = {
            "TestStruct": [
                DefinedFunctionPrototype("__ct__10TestStructFv", "__thiscall", "struct TestStruct*", ["struct TestStruct*"], "TestStruct::TestStruct(void)", ["this"], 0x00404040, 0x10101010, is_function_variadic=False),
                DefinedFunctionPrototype("Foo__10TestStructFi", "__thiscall", "char*", ["struct TestStruct*", "int"], "TestStruct::Foo(int)", ["this", "test"], 0x00404060, 0x10101020, is_function_variadic=False),
                DefinedFunctionPrototype("Bar__10TestStructFv", "__thiscall", "void", ["struct TestStruct*"], "TestStruct::Bar(void)", ["this"], 0x00404050, 0x10101030, is_function_variadic=False),
                DefinedFunctionPrototype("Baz__10TestStructFPCc", "__thiscall", "int", ["struct TestStruct*", "const char*"], "TestStruct::Baz(const char*)", ["this", "name"], 0x00404070, 0x10101040, is_function_variadic=False),
                DefinedFunctionPrototype("Fuz__10TestStructFv", "__thiscall", "void*", ["struct TestStruct*"], "TestStruct::Fuz(void)", ["this"], 0x00404020, 0x10101080, is_function_variadic=False),
            ],
            "TestChildStruct": [
                DefinedFunctionPrototype("Foo__15TestChildStructFi", "__thiscall", "char*", ["struct TestChildStruct*", "int"], "TestChildStruct::Foo(int)", ["this", "test"], 0x00405060, 0x10102020, is_function_variadic=False),
                DefinedFunctionPrototype("Qux__15TestChildStructFi", "__thiscall", "char*", ["struct TestChildStruct*", "int"], "TestChildStruct::Qux(int)", ["this", "test"], 0x00405070, 0x10102030, is_function_variadic=False),
            ],
        }
        virtual_table_function_names = (
            "Foo",
            "Bar",
            "Qux",
        )
        structs: list[Struct] = [
            Vftable(Struct("TestStructVftable", 8, [Struct.Member("Foo", "TestStructVftable__Foo*", 0x0), Struct.Member("Bar", "TestStructVftable__Bar*", 0x4)]), function_proto_map),
            RTTIClass(Struct("TestStruct", 4, [Struct.Member("vftable", "struct TestStructVftable*", 0x0)]), {}, virtual_table_function_names, method_map, {}),
            Vftable(Struct("TestChildStructVftable", 12, [Struct.Member("super", "struct TestStructVftable", 0x0), Struct.Member("Qux", "TestChildStructVftable__Qux*", 0x8)]), function_proto_map),
            RTTIClass(Struct("TestChildStruct", 4, [Struct.Member("super", "struct TestStruct", 0x0)]), {}, virtual_table_function_names, method_map, {}),
        ]
        header = Header(self.path, includes=[], structs=structs)
        header.build_include_list({})
        header.to_code(self.cw)

        self.assertEqual(self.cw.code,
                         """\
#ifndef BW1_DECOMP_TEST_HEADER_INCLUDED_H
#define BW1_DECOMP_TEST_HEADER_INCLUDED_H

#include <assert.h> /* For static_assert */

// Forward Declares

struct TestChildStruct;
struct TestStruct;

struct TestStructVftable
{
    char* (__fastcall* Foo)(struct TestStruct* this, const void* edx, int param_1);  /* 0x0 */
    void (__fastcall* Bar)(struct TestStruct* this);
};
static_assert(sizeof(struct TestStructVftable) == 0x8, "Data type is of wrong size");

struct TestStruct
{
    struct TestStructVftable* vftable;
};
static_assert(sizeof(struct TestStruct) == 0x4, "Data type is of wrong size");

// Constructors

// win1.41 00404040 mac 10101010 TestStruct::TestStruct(void)
struct TestStruct* __fastcall __ct__10TestStructFv(struct TestStruct* this);

// Non-virtual methods

// win1.41 00404020 mac 10101080 TestStruct::Fuz(void)
void* __fastcall Fuz__10TestStructFv(struct TestStruct* this);
// win1.41 00404070 mac 10101040 TestStruct::Baz(const char*)
int __fastcall Baz__10TestStructFPCc(struct TestStruct* this, const void* edx, const char* name);

// Override methods

// win1.41 00404060 mac 10101020 TestStruct::Foo(int)
char* __fastcall Foo__10TestStructFi(struct TestStruct* this, const void* edx, int test);
// win1.41 00404050 mac 10101030 TestStruct::Bar(void)
void __fastcall Bar__10TestStructFv(struct TestStruct* this);

struct TestChildStructVftable
{
    struct TestStructVftable super;  /* 0x0 */
    char* (__fastcall* Qux)(struct TestChildStruct* this, const void* edx, int test);
};
static_assert(sizeof(struct TestChildStructVftable) == 0xc, "Data type is of wrong size");

struct TestChildStruct
{
    struct TestStruct super;
};
static_assert(sizeof(struct TestChildStruct) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 00405060 mac 10102020 TestChildStruct::Foo(int)
char* __fastcall Foo__15TestChildStructFi(struct TestChildStruct* this, const void* edx, int test);
// win1.41 00405070 mac 10102030 TestChildStruct::Qux(int)
char* __fastcall Qux__15TestChildStructFi(struct TestChildStruct* this, const void* edx, int test);

#endif /* BW1_DECOMP_TEST_HEADER_INCLUDED_H */
""")

    def DISABLED_test_class_with_callback_in_vftable(self):
        function_proto_map = {
            "TestStructVftable__Foo": FuncPtr("TestStructVftable__Foo", "__thiscall", "void", ["struct TestStruct *", csnake.FuncPtr("void", [("param_1", "int"), ("param_2", "float"), ("param_3", "int")])], ["this", "foo"]),
        }
        virtual_table_function_names = (
            "Foo",
        )
        structs: list[Struct] = [
            Vftable(Struct("TestStructVftable", 4, [Struct.Member("Foo", "TestStructVftable__Foo*", 0x0)]), function_proto_map),
            RTTIClass(Struct("TestStruct", 4, [Struct.Member("vftable", "struct TestStructVftable*", 0x0)]), {}, virtual_table_function_names, {}, {}),
        ]
        header = Header(self.path, includes=[], structs=structs)
        header.build_include_list({})
        header.to_code(self.cw)

        self.assertEqual(self.cw.code,
                         """\
#ifndef BW1_DECOMP_TEST_HEADER_INCLUDED_H
#define BW1_DECOMP_TEST_HEADER_INCLUDED_H

#include <assert.h> /* For static_assert */

// Forward Declares

struct TestStruct;

struct TestStructVftable
{
    void (__fastcall* Foo)(struct TestStruct* this, const void* edx, void (*foo)(int param_1, float param_2, int param_3));  /* 0x0 */
};
static_assert(sizeof(struct TestStructVftable) == 0x4, "Data type is of wrong size");

struct TestStruct
{
    struct TestStructVftable* vftable;
};
static_assert(sizeof(struct TestStruct) == 0x4, "Data type is of wrong size");

#endif /* BW1_DECOMP_TEST_HEADER_INCLUDED_H */
""")

    def test_forward_and_include_array_enum(self):
        structs: list[Struct] = [
            Struct("TestStruct", 4, [Struct.Member("bar", "struct Bar*[FOO]", 0x0)]),
        ]
        header = Header(self.path, includes=[], structs=structs)
        header.build_include_list({"FOO": Path("src/TestIncludeHeader.h")})
        header.to_code(self.cw)

        self.assertEqual(self.cw.code,
                         """\
#ifndef BW1_DECOMP_TEST_HEADER_INCLUDED_H
#define BW1_DECOMP_TEST_HEADER_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "TestIncludeHeader.h" /* For FOO */

// Forward Declares

struct Bar;

struct TestStruct
{
    struct Bar* bar[FOO];  /* 0x0 */
};
static_assert(sizeof(struct TestStruct) == 0x4, "Data type is of wrong size");

#endif /* BW1_DECOMP_TEST_HEADER_INCLUDED_H */
""")

    def DISABLED_test_globals_header(self):

        test_funcptr_global_t = FuncPtr("test_funcptr_global_t", "__fastcall", "void", ["struct TestStruct*", "const void*", "int8_t"], ["this", "edx", "param_1"])

        structs: list[Struct] = [
            Struct("globals_t", None, [
                Struct.Member("test_int_global", "int", 0xdeadbee7),
                Struct.Member("test_struct_global", "struct TestStruct", 0xbaadc0de),
                Struct.Member("test_uint_array_global", "uint32_t[0x800][0x900]", 0xdeadbeef),
                Struct.Member("test_funcptr_global", "test_funcptr_global_t*", 0xdeadc0de),
            ]),
        ]

        header = GlobalsHeader(self.path, includes=[], structs=structs, function_proto_map={"test_funcptr_global_t": test_funcptr_global_t})
        header.build_include_list({})
        header.to_code(self.cw)

        self.assertEqual(self.cw.code,
                         """\
#ifndef BW1_DECOMP_TEST_HEADER_INCLUDED_H
#define BW1_DECOMP_TEST_HEADER_INCLUDED_H

#include <stdint.h> /* For uint32_t */

// Forward Declares

struct TestStruct;

struct globals_t
{
    struct TestStruct* test_struct_global;  /* 0xbaadc0de */
    int* test_int_global;  /* 0xdeadbee7 */
    uint32_t (*test_uint_array_global)[0x800][0x900];  /* 0xdeadbeef */
    void (__fastcall** test_funcptr_global)(struct TestStruct* this, const void* edx, int8_t param_1);  /* 0xdeadc0de */
};

static struct globals_t globals = {
    .test_struct_global = (struct TestStruct*)0xbaadc0de,
    .test_int_global = (int*)0xdeadbee7,
    .test_uint_array_global = (uint32_t (*)[0x800][0x900])0xdeadbeef,
    .test_funcptr_global = (void (__fastcall**)(struct TestStruct* this, const void* edx, int8_t param_1))0xdeadc0de,
};

#endif /* BW1_DECOMP_TEST_HEADER_INCLUDED_H */
""")
