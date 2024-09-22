import time
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
from vanilla_filepaths import map_projects_to_object_files, get_object_file_base_names, roomate_classes


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


def is_globals_helper_struct(name: str) -> bool:
    return name in [
        "globals_t",
        "SetupThingDraw_t",
        "SetupBox_t",
        "LH3DObject_namespace",
        "LH3DComplexObject_namespace",
        "LH3DMist_namespace",
        "LH3DObject_region",
        "LH3DMem_t",
        "GameThing_t",
        "ape_hair_t",
        "custom_footpath_display_control_t",
        "g_pack_t",
        "g_anim_pack_t",
        "GlobalLH3DTextures",
        "SetRenderModeData",
        "ModAddedGlobals_t",
        "globals_Script",
    ]


# TODO: For each global and their types, create inspector entires: webserver or imgui inspector window
if __name__ == "__main__":
    tic = time.perf_counter()
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

    object_file_base_names = get_object_file_base_names()

    def is_header_struct(data_type) -> bool:
        if type(data_type) is Struct and data_type.members and data_type.members[0].name in ["vftable", "super", "base"]:
            return True
        if type(data_type) is Struct or type(data_type) is Union:
            roomate_class_name = roomate_classes.get(data_type.name, data_type.name)
            if roomate_class_name[0] == 'G' and roomate_class_name[1].isupper():
                roomate_class_name = roomate_class_name[1:]
            if roomate_class_name in object_file_base_names:
                return True
        return False

    def is_ignore_struct(data_type) -> bool:
        if type(data_type) is Struct:
            if data_type.name.startswith("RTTI"):
                return True
            if data_type.name in ["TypeDescriptor", "vec2u16"]:
                return True
        return False

    # Do some selecting
    (
        globals_t,
        vftables,
        bases,
        vftable_function_prototypes,
        header_structs,
        rtti_helper_unions,
        enums,
        list_and_nodes,
        to_ignore,
        remainder_primitives,
        remainder,
    ) = partition([
        lambda x: type(x) is Struct and is_globals_helper_struct(x.name),
        lambda x: type(x) is Struct and (x.name.endswith('Vftable') or x.name.startswith('vt_')),
        lambda x: type(x) is Union and x.name.endswith('Base'),
        lambda x: type(x) is FuncPtr and ('Vftable__' in x.name or x.name.startswith('vt_')),
        is_header_struct,
        lambda x: type(x) is Union and x.name.endswith('Base'),
        lambda x: type(x) is Enum,
        lambda x: type(x) is Struct and x.name.startswith("LHLinkedList") or  x.name.startswith("LHLinkedNode") or x.name.endswith("List") or x.name.endswith("ListNode"),
        is_ignore_struct,
        lambda x: type(x) is Struct,
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


    def get_path(name):
        stem = name
        # For things like GBaseInfo
        if name[0] == 'G' and name[1].isupper():
            stem = name[1:]
        for project, object_files in projects_and_files.items():
            if stem +".obj" in object_files:
                break
        else:
            raise RuntimeError(f"Need to add guessed path for {name} in vanilla_filepaths.py")
        return Path(project) / f"{stem}.h"

    local_header_import_map: dict[str, str] = {}
    header_map: dict[Path, Header] = {}
    for t in header_structs:
        try:
            path = get_path(roomate_classes.get(t.name, t.name))
            includes: list[Header.Include] = []
            header = header_map.get(path)
            structs: list[Struct] = header.structs if header is not None else []
            if t.members and t.members[0].name in ["vftable", "super", "base"]:
                vftable = vftable_map.get(t.name)
                virtual_method_names = [i.name for i in vftable.members] if vftable else []
                if vftable:
                    structs.append(vftable)
                if t.name in helper_base_map:
                    structs.append(helper_base_map[t.name])
                new_struct = RTTIClass(t, vftable_address_look_up, virtual_method_names, class_method_look_up, class_static_method_look_up)
            else:
                new_struct = t
            structs.append(new_struct)
            for s in structs:
                local_header_import_map[s.decorated_name] = path
            header = Header(path, includes, structs, local_header_import_map)
            header_map[path] = header
        except RuntimeError as e:
            print(e, file=sys.stderr)

    headers: list[Header] = list(header_map.values())

    headers.append(Header(Path("TodoRemainderFunctions.h"), [], remainder_functions, local_header_import_map))
    headers.append(Header(Path("TodoRemainderPrimitives.h"), [], remainder_primitives, local_header_import_map))
    # TODO: headers.append(Header(Path("TodoRemainder.h"), [], remainder, local_header_import_map))

    # TODO: create header for globals_t with actual addresses and remove from ignored count
    to_ignore += globals_t
    # TODO: get to 0 orphan functions
    # TODO: get to 0 orphan structs
    # TODO: get to 0 orphan entries

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

    toc = time.perf_counter()
    print(f"Wrote {wrote_headers} headers({wrote_bytes} bytes) in {output_path}, took {toc - tic:0.4f} seconds")
    print(f"Ignored {len(to_ignore)} entries")

    if len(remainder_functions) + len(remainder_primitives) + len(remainder) > 0:
        print(f"There are still {len(remainder_functions)} orphan functions")
        print(f"There are still {len(remainder_primitives)} orphan structs")
        print(f"There are still {len(remainder)} orphan entries")
        exit(1)
