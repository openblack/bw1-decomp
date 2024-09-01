import sys
import os
sys.path.append(os.path.dirname(__file__) + "/../bw1_decomp_gen")

import unittest
from csnake import CodeWriter
from pathlib import Path

from functions import FunctionPrototype
from header import Header
from structs import Struct
from vftable import Vftable


class TestHeaderCreation(unittest.TestCase):

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
            Header.Include(Path('src/TestInclude4.h'), {}, False),
            Header.Include(Path('src/TestInclude1.h'), {"TestInclude1"}, False),
            Header.Include(Path('src/TestInclude2.h'), {"TestInclude2a", "TestInclude2b"}, False),
            Header.Include(Path('TestInclude3'), {"std::TestInclude3"}, True),
            Header.Include(Path('src/TestInclude5.h'), {"TestInclude5a", "TestInclude5c", "TestInclude5b"}, False),
        ]

        Header(self.path, includes, structs=[]).to_code(self.cw)

        self.assertEqual(self.cw.code,
                         """\
#ifndef BW1_DECOMP_TEST_HEADER_INCLUDED_H
#define BW1_DECOMP_TEST_HEADER_INCLUDED_H

#include <TestInclude3> /* For std::TestInclude3 */

#include "src/TestInclude1.h" /* For TestInclude1 */
#include "src/TestInclude2.h" /* For TestInclude2a, TestInclude2b */
#include "src/TestInclude4.h"
#include "src/TestInclude5.h" /* For TestInclude5a, TestInclude5b, TestInclude5c */

#endif /* BW1_DECOMP_TEST_HEADER_INCLUDED_H */
""")

    def test_struct_int(self):
        structs: list[Struct] = [
            Struct("TestStruct", 0x8, [
                Struct.Member("field_0x0", "int"),  # Array of 2 pointers to int
            ]),
        ]
        Header(self.path, includes=[], structs=structs).to_code(self.cw)

        self.assertEqual(self.cw.code, """\
#ifndef BW1_DECOMP_TEST_HEADER_INCLUDED_H
#define BW1_DECOMP_TEST_HEADER_INCLUDED_H

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
                Struct.Member("field_0x0", "struct TestStruct2"),
            ]),
        ]
        Header(self.path, includes=[], structs=structs).to_code(self.cw)

        self.assertEqual(self.cw.code, """\
#ifndef BW1_DECOMP_TEST_HEADER_INCLUDED_H
#define BW1_DECOMP_TEST_HEADER_INCLUDED_H

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
                Struct.Member("field_0x0", "struct TestStruct2*"),
            ]),
        ]
        Header(self.path, includes=[], structs=structs).to_code(self.cw)

        self.assertEqual(self.cw.code, """\
#ifndef BW1_DECOMP_TEST_HEADER_INCLUDED_H
#define BW1_DECOMP_TEST_HEADER_INCLUDED_H

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
                Struct.Member("field_0x0", "int[2]"),  # Just an array of 2 ints
            ]),
        ]
        Header(self.path, includes=[], structs=structs).to_code(self.cw)

        self.assertEqual(self.cw.code, """\
#ifndef BW1_DECOMP_TEST_HEADER_INCLUDED_H
#define BW1_DECOMP_TEST_HEADER_INCLUDED_H

struct TestStruct
{
    int field_0x0[2];
};
static_assert(sizeof(struct TestStruct) == 0x8, "Data type is of wrong size");

#endif /* BW1_DECOMP_TEST_HEADER_INCLUDED_H */
""")

    def test_struct_3d_array(self):
        structs: list[Struct] = [
            Struct("TestStruct", 0x4 * 2 * 15 * 9, [
                Struct.Member("field_0x0", "int[2][15][9]"),  # Just an array of 2 ints
            ]),
        ]
        Header(self.path, includes=[], structs=structs).to_code(self.cw)

        self.assertEqual(self.cw.code, """\
#ifndef BW1_DECOMP_TEST_HEADER_INCLUDED_H
#define BW1_DECOMP_TEST_HEADER_INCLUDED_H

struct TestStruct
{
    int field_0x0[2][15][9];
};
static_assert(sizeof(struct TestStruct) == 0x438, "Data type is of wrong size");

#endif /* BW1_DECOMP_TEST_HEADER_INCLUDED_H */
""")

    def test_struct_empty_array(self):
        structs: list[Struct] = [
            Struct("TestStruct", 0x0, [
                Struct.Member("field_0x0", "int[]"),  # Just an array of 2 ints
            ]),
        ]
        Header(self.path, includes=[], structs=structs).to_code(self.cw)

        self.assertEqual(self.cw.code, """\
#ifndef BW1_DECOMP_TEST_HEADER_INCLUDED_H
#define BW1_DECOMP_TEST_HEADER_INCLUDED_H

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
                Struct.Member("field_0x0", "int[0]"),  # Just an array of 2 ints
            ]),
        ]
        Header(self.path, includes=[], structs=structs).to_code(self.cw)

        self.assertEqual(self.cw.code, """\
#ifndef BW1_DECOMP_TEST_HEADER_INCLUDED_H
#define BW1_DECOMP_TEST_HEADER_INCLUDED_H

struct TestStruct
{
    int field_0x0[0];
};
static_assert(sizeof(struct TestStruct) == 0x0, "Data type is of wrong size");

#endif /* BW1_DECOMP_TEST_HEADER_INCLUDED_H */
""")

    def test_struct_array_of_pointers(self):
        structs: list[Struct] = [
            Struct("TestStruct", 0x8, [
                Struct.Member("field_0x0", "int*[2]"),  # Array of 2 pointers to int
            ]),
        ]
        Header(self.path, includes=[], structs=structs).to_code(self.cw)

        self.assertEqual(self.cw.code, """\
#ifndef BW1_DECOMP_TEST_HEADER_INCLUDED_H
#define BW1_DECOMP_TEST_HEADER_INCLUDED_H

struct TestStruct
{
    int* field_0x0[2];
};
static_assert(sizeof(struct TestStruct) == 0x8, "Data type is of wrong size");

#endif /* BW1_DECOMP_TEST_HEADER_INCLUDED_H */
""")

    def test_struct_pointer_to_array(self):
        structs: list[Struct] = [
            Struct("TestStruct", 0x8, [
                Struct.Member("field_0x0", "int(*)[2]"),  # Pointer to an array of 2 int
            ]),
        ]
        Header(self.path, includes=[], structs=structs).to_code(self.cw)

        self.assertEqual(self.cw.code, """\
#ifndef BW1_DECOMP_TEST_HEADER_INCLUDED_H
#define BW1_DECOMP_TEST_HEADER_INCLUDED_H

struct TestStruct
{
    int (*field_0x0)[2];
};
static_assert(sizeof(struct TestStruct) == 0x8, "Data type is of wrong size");

#endif /* BW1_DECOMP_TEST_HEADER_INCLUDED_H */
""")

    def test_structs(self):
        structs: list[Struct] = [
            Struct("TestStruct1", 4, [Struct.Member("field_0x0", "int")]),
            Struct("TestStruct2", 0x20, [
                Struct.Member("field_0x0", "struct TestStruct1"),
                Struct.Member("field_0x4", "struct TestStruct1[2]"),
                Struct.Member("field_0xc", "struct TestStruct1*"),
                Struct.Member("field_0x10", "struct TestStruct1(*)[2]"),
                Struct.Member("field_0x14", "struct TestStruct1*[2]"),
                Struct.Member("field_0x1c", "int"),
            ]),
        ]
        Header(self.path, includes=[], structs=structs).to_code(self.cw)

        self.assertEqual(self.cw.code,
                         """\
#ifndef BW1_DECOMP_TEST_HEADER_INCLUDED_H
#define BW1_DECOMP_TEST_HEADER_INCLUDED_H

struct TestStruct1
{
    int field_0x0;
};
static_assert(sizeof(struct TestStruct1) == 0x4, "Data type is of wrong size");

struct TestStruct2
{
    struct TestStruct1 field_0x0;
    struct TestStruct1 field_0x4[2];
    struct TestStruct1* field_0xc;
    struct TestStruct1 (*field_0x10)[2];
    struct TestStruct1* field_0x14[2];
    int field_0x1c;
};
static_assert(sizeof(struct TestStruct2) == 0x20, "Data type is of wrong size");

#endif /* BW1_DECOMP_TEST_HEADER_INCLUDED_H */
""")

    def test_types(self):
        structs: list[Struct] = [
            Struct("TestStruct1", 4, [Struct.Member("field_0x0", "int")]),
            Struct("TestStruct2", 0x28, [
                Struct.Member("field_0x0", "int *"),
                Struct.Member("field_0x4", "enum TestEnum*"),
                Struct.Member("field_0x8", "union TestUnion*"),
                Struct.Member("field_0xc", "struct TestStruct3*"),
                Struct.Member("field_0x10", "struct TestStruct3(*)[2]"),
                Struct.Member("field_0x14", "struct TestStruct3*[2]"),
                Struct.Member("field_0x1c", "int"),
                Struct.Member("field_0x20", "struct TestStruct1"),
                Struct.Member("field_0x24", "struct TestStruct1*"),
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

    def test_direct_dependency_types(self):
        structs: list[Struct] = [
            Struct("TestStruct2", 0x28, [
                Struct.Member("field_0x0", "int *"),
                Struct.Member("field_0x4", "enum TestEnum"),
                Struct.Member("field_0x8", "union TestUnion"),
                Struct.Member("field_0xc", "struct TestStruct3*"),
                Struct.Member("field_0x10", "struct TestStruct3(*)[2]"),
                Struct.Member("field_0x14", "struct TestStruct3*[2]"),
                Struct.Member("field_0x1c", "int"),
                Struct.Member("field_0x20", "struct TestStruct1"),
                Struct.Member("field_0x24", "struct TestStruct1*"),
            ]),
        ]
        h = Header(self.path, includes=[], structs=structs)
        self.assertSetEqual(h.get_direct_dependency_types(), {
            "struct TestStruct1",
            "enum TestEnum",
            "union TestUnion",
        })

    def test_forward_declare_list(self):
        function_proto_map = {
            "TestStruct1Vftable__Foo": FunctionPrototype("TestStruct1Vftable__Foo", "__thiscall", "char*", ["struct TestStruct1*", "int", "struct TestStruct4*"]),
            "TestStruct1Vftable__Bar": FunctionPrototype("TestStruct1Vftable__Bar", "__thiscall", "void", ["struct TestStruct1*", "float"]),
        }
        structs: list[Struct] = [
            Vftable(Struct("TestStruct1Vftable", 8, [Struct.Member("Foo", "TestStruct1Vftable__Foo*"), Struct.Member("Bar", "TestStruct1Vftable__Bar*")]), function_proto_map),
            Struct("TestStruct1", 4, [Struct.Member("vftable", "struct TestStruct1Vftable*")]),
            Struct("TestStruct2", 0x28, [
                Struct.Member("field_0x0", "int *"),
                Struct.Member("field_0x4", "enum TestEnum*"),
                Struct.Member("field_0x8", "union TestUnion*"),
                Struct.Member("field_0xc", "struct TestStruct3*"),
                Struct.Member("field_0x10", "struct TestStruct3(*)[2]"),
                Struct.Member("field_0x14", "struct TestStruct3*[2]"),
                Struct.Member("field_0x1c", "int"),
                Struct.Member("field_0x20", "struct TestStruct1"),
                Struct.Member("field_0x24", "struct TestStruct1*"),
            ]),
        ]
        h = Header(self.path, includes=[], structs=structs)
        self.assertSetEqual(h.get_forward_declare_types(), {
            "struct TestStruct1", # Because a direct dependency (TestStruct1Vftable) appears before an indirect one (TestStruct1)
            "enum TestEnum",
            "union TestUnion",
            "struct TestStruct3",
            "struct TestStruct4",
        })

    def test_structs_with_forward_declare(self):
        function_proto_map = {
            "TestStruct1Vftable__Foo": FunctionPrototype("TestStruct1Vftable__Foo", "__thiscall", "char*", ["struct TestStruct1*", "int", "struct TestStruct4*"]),
            "TestStruct1Vftable__Bar": FunctionPrototype("TestStruct1Vftable__Bar", "__thiscall", "void", ["struct TestStruct1*", "float"]),
        }
        structs: list[Struct] = [
            Vftable(Struct("TestStruct1Vftable", 8, [Struct.Member("Foo", "TestStruct1Vftable__Foo*"), Struct.Member("Bar", "TestStruct1Vftable__Bar*")]), function_proto_map),
            Struct("TestStruct1", 4, [Struct.Member("vftable", "struct TestStruct1Vftable*")]),
            Struct("TestStruct2", 0x28, [
                Struct.Member("field_0x0", "int *"),
                Struct.Member("field_0x4", "enum TestEnum*"),
                Struct.Member("field_0x8", "union TestUnion*"),
                Struct.Member("field_0xc", "struct TestStruct3*"),
                Struct.Member("field_0x10", "struct TestStruct3(*)[2]"),
                Struct.Member("field_0x14", "struct TestStruct3*[2]"),
                Struct.Member("field_0x1c", "int"),
                Struct.Member("field_0x20", "struct TestStruct1"),
                Struct.Member("field_0x24", "struct TestStruct1*"),
            ]),
        ]
        Header(self.path, includes=[], structs=structs).to_code(self.cw)

        self.assertEqual(self.cw.code,
                         """\
#ifndef BW1_DECOMP_TEST_HEADER_INCLUDED_H
#define BW1_DECOMP_TEST_HEADER_INCLUDED_H

// Forward Declares
enum TestEnum;
struct TestStruct1;
struct TestStruct3;
struct TestStruct4;
union TestUnion;

struct TestStruct1Vftable
{
    char* (__fastcall* Foo)(struct TestStruct1* this, const void* edx, int param_1, struct TestStruct4* param_2);
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
    struct TestStruct3 (*field_0x10)[2];
    struct TestStruct3* field_0x14[2];
    int field_0x1c;
    struct TestStruct1 field_0x20;
    struct TestStruct1* field_0x24;
};
static_assert(sizeof(struct TestStruct2) == 0x28, "Data type is of wrong size");

#endif /* BW1_DECOMP_TEST_HEADER_INCLUDED_H */
""")
