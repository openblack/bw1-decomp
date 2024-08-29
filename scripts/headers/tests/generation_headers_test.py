from bw1_decomp_gen.generate_headers import needs_header_include #, remove_type_qualificators #, is_pointer, get_clang_var_type

import unittest

class TestTypeMethods(unittest.TestCase):

    def test_needs_header_include(self):
        self.assertFalse(needs_header_include("char"))
        self.assertFalse(needs_header_include("int"))
        self.assertFalse(needs_header_include("char*"))
        self.assertFalse(needs_header_include("int*"))
        self.assertFalse(needs_header_include("struct Foo*"))
        self.assertFalse(needs_header_include("union Foo*"))
        self.assertFalse(needs_header_include("enum Foo*"))
        self.assertTrue(needs_header_include("struct Foo"))
        self.assertTrue(needs_header_include("union Foo"))
        self.assertTrue(needs_header_include("enum Foo"))
        self.assertFalse(needs_header_include("struct Foo*[0]"))
        self.assertFalse(needs_header_include("char[0]"))
        self.assertFalse(needs_header_include("char[10]"))
        self.assertFalse(needs_header_include("char[]"))
