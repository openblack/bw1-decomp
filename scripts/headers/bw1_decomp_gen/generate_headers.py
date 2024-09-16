import shutil
import sys
from json import load
from pathlib import Path
from csnake import CodeWriter

from header import Header
from structs import Struct, Union, Enum, RTTIClass
from typedef import Typedef
from functions import FuncPtr, DefinedFunctionPrototype
from vftable import Vftable
from utils import partition, extract_type_name
from vanilla_filepaths import map_projects_to_object_files


def find_methods(function_db: list[dict]) -> tuple[dict[str, DefinedFunctionPrototype], dict[str, DefinedFunctionPrototype], set[DefinedFunctionPrototype]]:
    functions: list[DefinedFunctionPrototype] = [DefinedFunctionPrototype.from_json(f) for f in function_db]
    (
        thiscalls,
        static_methods,
        remainder,
    ) = partition([
        lambda x: x.call_type == '__thiscall',
        lambda x: "::" in x.decorated_name,
    ], functions)
    thiscall_map: dict[str, DefinedFunctionPrototype] = {}
    for f in thiscalls:
        key = extract_type_name(f.args[0])
        thiscall_map[key] = thiscall_map.get(key, []) + [f]
    static_method_map: dict[str: DefinedFunctionPrototype] = {}
    for f in static_methods:
        key = f.decorated_name.split("::")[0]
        static_method_map[key] = static_method_map.get(key, []) + [f]
    return thiscall_map, static_method_map, remainder


# TODO: For each global and their types, create inspector entires: webserver or imgui inspector window
if __name__ == "__main__":
    db = load(open("extracted_reversing_data_bw_141.json"))
    projects_and_files = map_projects_to_object_files()
    primitives = []
    for decl in db['types']:
        primitive_look_up = {
            'STRUCT_DECL': Struct,
            'UNION_DECL': Union,
            'ENUM_DECL': Enum,
            'TYPEDEF_DECL': Typedef,
            'FUNCTIONPROTO': FuncPtr,
        }

        primitive = primitive_look_up[decl['kind']]
        # TODO: Get immediate dependencies for each primitive
        primitives.append(primitive.from_json(decl))

    global_decls = db['globals']

    vftable_addresses, remainder_globals = partition([lambda x: x["name"].startswith("__vt__")], global_decls)
    vftable_address_look_up = {i["name"].removeprefix("__vt__"): i for i in vftable_addresses}

    class_method_look_up, class_static_method_look_up, remainder_functions = find_methods(db['functions'])

    # Do some selecting
    (
        vftables,
        bases,
        vftable_function_prototypes,
        rtti_classes,
        rtti_helper_unions,
        enums,
        list_and_nodes,
        remainder,
    ) = partition([
        lambda x: type(x) is Struct and (x.name.endswith('Vftable') or x.name.startswith('vt_')),
        lambda x: type(x) is Union and x.name.endswith('Base'),
        lambda x: type(x) is FuncPtr and ('Vftable__' in x.name or x.name.startswith('vt_')),
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

    helper_base_map = {}
    for t in bases:
        helper_base_map[t.name.removesuffix('Base')] = t

    local_header_import_map: dict[str, str] = {}
    header_map: dict[Path, Header] = {}
    for t in rtti_classes:
        try:
            vftable = vftable_map.get(t.name)
            name = t.name
            # For things like GBaseInfo
            if t.name[0] == 'G' and t.name[1].isupper():
                name = t.name[1:]
            for project, object_files in projects_and_files.items():
                if name +".obj" in object_files:
                    break
            else:
                raise RuntimeError(f"Need to add guessed path for {t.name} in vanilla_filepaths.py")
            path = Path(project) / f"{name}.h"
            includes: list[Header.Include] = []
            virtual_method_names = [i.name for i in vftable.members] if vftable else []

            structs: list[Struct] = []
            if vftable:
                structs.append(vftable)
            if t.name in helper_base_map:
                structs.append(helper_base_map[t.name])
            structs.append(RTTIClass(t, vftable_address_look_up, virtual_method_names, class_method_look_up, class_static_method_look_up))

            header = header_map.get(path)
            if header is not None:
                structs += header.structs

            for s in structs:
                local_header_import_map[s.decorated_name] = path
            header = Header(path, includes, structs, local_header_import_map)
            header_map[path] = header

        except RuntimeError as e:
            print(e, file=sys.stderr)

    headers: list[Header] = list(header_map.values())

    # TODO: Merge some primitives that would fit in the same header
    # TODO: i.e. Similar type names like vftables, unknown substructures,
    # TODO:      Class methods, enums
    # TODO: Maintain a primitive to header look-up table
    # TODO: Create a header-to-header dependency graph

    # TODO: Topological sort headers ... is this needed?

    # TODO: Keep track of what's been defined/declared and print out what remains to be classified.

    output_path = Path("generated_headers_output")
    if output_path.exists():
        shutil.rmtree(output_path)

    wrote_headers = 0
    wrote_bytes = 0
    for h in headers:
        cw = CodeWriter(indent=2)
        h.to_code(cw)
        path = output_path / h.path
        path.parent.mkdir(parents=True, exist_ok=True)
        with path.open("w") as f:
            wrote_headers += 1
            wrote_bytes += f.write(cw.code)

    print(f"Wrote {wrote_headers} headers({wrote_bytes} bytes) in {output_path}")
