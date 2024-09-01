from json import load
from pathlib import Path
from csnake import CodeWriter, Variable

from header import Header
from structs import Struct, Union, Enum, RTTIClass
from typedef import Typedef
from functions import FunctionPrototype
from vftable import Vftable
from utils import partition
from vanilla_filepaths import map_projects_to_object_files

# TODO: For each global and their types, create inspector entires: webserver or imgui inspector window
if __name__ == "__main__":
    db = load(open("extracted_reversing_data_bw_141.json"))
    projects_and_files = map_projects_to_object_files();
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
        for project, object_files in projects_and_files.items():
            if t.name +".obj" in object_files:
                break
        else:
            assert(False) # Need to add guessed path in vanilla_filepaths.py
        path = Path(project) / f"{t.name}.h"
        includes: list[Header.Include] = [
            Header.Include("assert.h", {"static_assert"}, True),
            Header.Include("stddef.h", {"offsetof", "size_t"}, True),
            # TODO: for each type, if it's included it doesn't need to be forward declared
        ]
        structs: list[Struct] = [vftable, RTTIClass(t, vftable_address_look_up)]
        headers.append(Header(path, includes, structs))
        # TODO: Add vftable function addresses
        # TODO: Add constructor
        # TODO: Add various other functions

    # TODO: Merge some primitives that would fit in the same header
    # TODO: i.e. Similar type names like vftables, unknown substructures,
    # TODO:      Class methods, enums
    # TODO: Maintain a primitive to header look-up table
    # TODO: Create a header-to-header dependency graph

    # TODO: Topological sort headers ... is this needed?
    
    cw = CodeWriter()
    for h in headers:
        print(f"\n// {h.path} ---------------------------------------------------------------\n")
        h.to_code(cw)
        print(cw)
