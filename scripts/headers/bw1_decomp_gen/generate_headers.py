from json import load
from pathlib import Path
from csnake import CodeWriter, Variable
from clang.cindex import Index

from header import Header
from structs import Struct, Union, Enum, RTTIClass
from typedef import Typedef
from functions import FunctionPrototype
from vftable import Vftable
from utils import partition

# Initialize the Clang index
index = Index.create()

TYPE_UNWRAP_MAP = {
    "CONSTANTARRAY": lambda x: x.get_array_element_type(),
    "POINTER": lambda x: x.get_pointee(),
}


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

# TODO: Add own hashable classes with for
#   - function declaration
#   - vtables with protos
#   - globals
# TODO: Each one of these will be able to define dependencies (that can't be forward declared)
#   Build a dependency tree and sort
# TODO: For each key class, guess the file path
# TODO: Once all that is designated, start creating headers with correct includes, starting with root node with no deps
# TODO: For each global and their types, create inspector entires: webserver or imgui inspector window
if __name__ == "__main__":
    db = load(open("extracted_reversing_data_bw_141.json"))
    primitives = []
    for decl in db['types']: 
        primitive_look_up = {
            'STRUCT_DECL': Struct,
            'UNION_DECL': Union,
            'ENUM_DECL': Enum,
            'TYPEDEF_DECL': Typedef,
            'FUNCTIONPROTO': FunctionPrototype,
        }

        primitive = primitive_look_up[decl['kind']]
        # TODO: Get immediate dependencies for each primitive
        primitives.append(primitive.from_json(decl))

    global_decls = db['globals']

    vftable_addresses, remainder_globals = partition([lambda x: x["name"].startswith("__vt__")], global_decls)
    vftable_address_look_up = {i["name"].removeprefix("__vt__"): i for i in vftable_addresses}
    
    # Do some selecting
    (
        vftables,
        vftable_function_prototypes,
        rtti_classes,
        rtti_helper_unions,
        enums,
        list_and_nodes,
        remainder,
    ) = partition([
        lambda x: type(x) in [Struct, Union] and (x.name.endswith('Vftable') or x.name.startswith('vt_')),
        lambda x: type(x) is FunctionPrototype and ('Vftable__' in x.name or x.name.startswith('vt_')),
        lambda x: type(x) is Struct and x.members and x.members[0].name in ["vftable", "super", "base"],
        lambda x: type(x) is Union and x.name.endswith('Base'),
        lambda x: type(x) is Enum,
        lambda x: type(x) is Struct and x.name.startswith("LHLinkedList") or  x.name.startswith("LHLinkedNode") or x.name.endswith("List") or x.name.endswith("ListNode"),
    ], primitives)

    vftable_function_proto_map = {i.name: i for i in vftable_function_prototypes}

    vftable_map = {}
    for t in vftables:
        base_name: str = t.name
        # TODO: Find a single naming scheme
        base_name = base_name.removesuffix("Vftable")
        base_name = base_name.removeprefix("vt__")
        base_name = base_name.removeprefix("vt_")
        base_name = base_name.removesuffix("_t")
        vftable_map[base_name] = Vftable(t, vftable_function_proto_map)

    headers: list[Header] = []
    for t in rtti_classes[:1]:
        vftable = vftable_map[t.name]
        path = Path(f"src/{t.name}.h")
        includes: list[Header.Include] = [
            Header.Include("assert.h", {"static_assert"}, True),
            Header.Include("stddef.h", {"offsetof", "size_t"}, True),
            # TODO: for each type, it must be included or forward declared
        ]
        structs: list[Struct] = [vftable, RTTIClass(t, vftable_address_look_up)]
        headers.append(Header(path, includes, structs))
        # TODO: Add vftable location
        # TODO: Add vftable function addresses
        # TODO: Add constructor
        # TODO: Add various other functions

    # TODO: Merge some primitives that would fit in the same header
    # TODO: i.e. Similar type names like vftables, unknown substructures,
    # TODO:      Class methods, enums
    # TODO: Fit these into a header data structure for which the dependencies are merged
    # TODO: Maintain a primitive to header look-up table
    # TODO: Create a header-to-header dependency graph

    # TODO: Topological sort headers ... is this needed?
    
    # TODO: Figure out the best name for each header (strings in runblack.exe)
    # TODO: Header needs a main RTTIClass struct

    cw = CodeWriter()
    for h in headers:
        print(f"\n// {h.path} ---------------------------------------------------------------\n")
        h.to_code(cw)
        print(cw)
