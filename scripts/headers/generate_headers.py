import sys
from json import load
from pprint import pprint
from csnake import CodeWriter, Struct, Variable
from inflection import underscore
from clang.cindex import Index, Diagnostic

# Initialize the Clang index
index = Index.create()

HEADER_GUARD_TEMPLATE = "BW1_DECOMP_%s_INCLUDED_H"
TYPE_UNWRAP_MAP = {
    "CONSTANTARRAY": lambda x: x.get_array_element_type(),
    "POINTER": lambda x: x.get_pointee(),
}


def extract_type_name(type_name):
    return type_name.removeprefix("const ").removeprefix("struct ").removeprefix("union ").removeprefix("enum ")


def needs_header_include(decl_name: str) -> bool:
    var_name = "tmp"
    if "[" in decl_name:
        split_index = decl_name.index("[")
        var_name += decl_name[split_index:]
        decl_name = decl_name[:split_index]

    cw = CodeWriter()
    cw.add_variable_declaration(Variable(var_name, decl_name))
    translation_unit = index.parse('tmp.c', unsaved_files=[('tmp.c', str(cw))])
    for diagnostic in translation_unit.diagnostics:
        if diagnostic.severity >= 3:
            return True
    return False


def create_class_header(data_type: Variable, data_type_size: int, header_lookup):
    name = data_type.name
    header_name = name + ".h"
    headers_to_include = dict()
    for v in data_type.variables:
        member_decl_name = v.primitive
        if needs_header_include(member_decl_name):
            # Needed type is in this header
            member_header = header_lookup[member_decl_name]
            if member_header == header_name:
                continue
            # Clean-up the name
            base_name = extract_type_name(member_decl_name)
            provided_types = headers_to_include.get(member_header, set())
            provided_types.add(base_name)
            headers_to_include[member_header] = provided_types

    cw = CodeWriter()

    cw.start_if_def(HEADER_GUARD_TEMPLATE %
                    str.upper(underscore(name)), invert=True)
    cw.add_line()
    if headers_to_include:
        for h, s in headers_to_include.items():
            cw.include(h, "For " + ", ".join(sorted(s)))
        cw.add_line()
    cw.add_struct(data_type)
    cw.add_line(f'static_assert(sizeof({name}) == 0x{data_type_size:x}, "Data type is of wrong size");')
    cw.add_line()
    cw.end_if_def()

    print(f"\n// {header_name} ---------------------------------------------------------------\n")
    print(cw)


def parse_struct_decl(decl: dict) -> tuple[Struct, int]:
    name = extract_type_name(decl['type'])
    result = Struct(name, typedef=False)

    for m in decl["members"]:
        result.add_variable(Variable(m["name"], m["type"]))

    return result, decl['size']


def parse_typedef_decl(decl: dict) -> tuple[Struct, int]:
    raise NotImplementedError()


header_lookup = {
    "uint8_t": '<stdint.h>',
    "uint16_t": '<stdint.h>',
    "uint32_t": '<stdint.h>',
    "uint64_t": '<stdint.h>',
    "int8_t": '<stdint.h>',
    "int16_t": '<stdint.h>',
    "int32_t": '<stdint.h>',
    "int64_t": '<stdint.h>',
    "union GameThingBase": '"GameThing.h"',
}


if __name__ == "__main__":
    db = load(open("extracted_reversing_data_bw_141.json"))
    for decl in db['types'][0:15]: 
        pprint(decl)

        if decl['kind'] == 'STRUCT_DECL':
            struct, size = parse_struct_decl(decl)
        elif decl['kind'] == 'TYPEDEF_DECL':
            struct, size = parse_typedef_decl(decl)
        else:
            assert(False)
        create_class_header(struct, size, header_lookup)
