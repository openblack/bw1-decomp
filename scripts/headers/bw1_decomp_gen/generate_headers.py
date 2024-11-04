import os
import time
import shutil
import string
import sys
from collections import OrderedDict
from typing import Optional
from clang import cindex
from json import load
from pathlib import Path
import csnake

import scan_src_headers
from header import Header, GlobalsHeader, C_STDLIB_HEADER_IMPORT_MAP
from structs import Struct, Union, Enum, RTTIClass
from typedef import Typedef
from functions import FuncPtr, DefinedFunctionPrototype
from csnake_overrides import CSnakeFuncPtr
from vftable import Vftable
from utils import partition, extract_type_name, extract_type_from_func_name, arg_clang_wrapping_declaration_to_csnake, TEMPLATE_CONTAINER_STRUCTS_PREFIXES
from vanilla_filepaths import map_projects_to_object_files, get_object_file_base_names, resolve_roommate, ROOMMATE_CLASS_MAP


HEADER_GUARD_TEMPLATE = "BW1_DECOMP_%s_INCLUDED_H"
ASSUME_INCLUDE_DIRS_DEFINED_IN_TARGET = False


def find_methods(function_db: list[dict]) -> tuple[dict[str, DefinedFunctionPrototype], dict[str, DefinedFunctionPrototype], set[DefinedFunctionPrototype]]:
    functions: list[DefinedFunctionPrototype] = [DefinedFunctionPrototype.from_json(f) for f in function_db]
    (
        class_list_functions,
        thiscalls,
        static_methods,
        remainder,
    ) = partition([
        lambda x: x.decorated_name.startswith("LHLinkedList<") or x.decorated_name.startswith("LHLinkedNode<") or x.decorated_name.startswith("LHListHead<"),
        lambda x: x.call_type == '__thiscall',
        lambda x: "::" in x.decorated_name,
    ], functions)
    thiscall_map: dict[str, DefinedFunctionPrototype] = {}
    for f in thiscalls:
        key = extract_type_name(f.args[0])
        thiscall_map[key] = thiscall_map.get(key, []) + [f]
    static_method_map: dict[str: DefinedFunctionPrototype] = {}
    for f in static_methods:
        key = extract_type_from_func_name(f.decorated_name)
        static_method_map[key] = static_method_map.get(key, []) + [f]
    class_list_function_map: dict[str: DefinedFunctionPrototype] = {}
    for f in class_list_functions:
        templated_name = extract_type_from_func_name(f.decorated_name)
        inner_type = templated_name.split("<", 1)[1].rstrip('>')
        key = extract_type_name(inner_type)
        class_list_function_map[key] = class_list_function_map.get(key, []) + [f]
    return thiscall_map, static_method_map, class_list_function_map, remainder


PRIMITIVE_LOOK_UP = {
    'STRUCT_DECL': Struct,
    'UNION_DECL': Union,
    'ENUM_DECL': Enum,
    'TYPEDEF_DECL': Typedef,
    'FUNCTIONPROTO': FuncPtr,
}


def batched_arg_to_csnake(type_decls):
    # Slow path
    # for p in type_decls:
    #     p.args = list(map(arg_to_csnake, p.args))

    # Fast path
    arg_list_list = []
    for p in type_decls:
        arg_list_list.append(p.args)

    source_list = [f"#include <{i}>" for i in  set(C_STDLIB_HEADER_IMPORT_MAP.values())]
    for i, p in enumerate(arg_list_list):
        for j, a in enumerate(p):
            source_list.append(f"void __arg_to_csnake_wrapping_declaration__{i}__{j}__({a});")

    source = "\n".join(source_list)
    translation_unit = cindex.TranslationUnit.from_source('tmp.c', args=["-m32", "-Wno-visibility", "-Wno-microsoft-enum-forward-reference"], unsaved_files=[('tmp.c', source)])

    error_strings: list[str] = []
    for diagnostic in translation_unit.diagnostics:
        if diagnostic.severity >= cindex.Diagnostic.Error:
            error_strings.append(str(diagnostic))
        if diagnostic.severity >= cindex.Diagnostic.Warning:
            sys.stderr.write(f"{diagnostic}\n")

    if error_strings:
        sys.stderr.flush()
        raise RuntimeError("Error parsing source:\n\t" + "\n\t".join(error_strings))

    for wrapping_declaration in (c for c in translation_unit.cursor.get_children() if c.spelling.startswith("__arg_to_csnake_wrapping_declaration")):
        i, j = wrapping_declaration.spelling.removeprefix("__arg_to_csnake_wrapping_declaration__").removesuffix("__").split("__")
        type_ = arg_clang_wrapping_declaration_to_csnake(wrapping_declaration)
        if type_:
            type_decls[int(i)].args[int(j)] = type_


def generate_globals_header(globals_decl: dict, function_proto_map: dict[str, FuncPtr], local_header_import_map: dict[str, Path]) -> GlobalsHeader:
    members = [Struct.Member(g["name"], g["type"], g["address"]) for g in globals_decl]
    globals_t = Struct("globals_t", None, members)
    header = GlobalsHeader(Path("globals.h"), includes=[], structs=[globals_t], function_proto_map=function_proto_map)
    header.build_include_list(local_header_import_map)
    return header


def get_struct_path(name):
    stem = name
    # For names like GCameraEditor__InfoTrack/GCameraEditor::InfoTrack
    if "::" in stem:
        stem = stem.split("::")[0]
    if "__" in stem:
        stem = stem.split("__")[0]
    stems = [stem]
    # For things like GBaseInfo
    if stem[0] == 'G' and stem[1].isupper():
        stems.insert(0, stem[1:])
    for project, object_files in projects_and_files.items():
        for s in stems:
            if s +".obj" in object_files:
                break
        else:
            continue
        break # Break out of both loops
    else:
        raise RuntimeError(f"Need to add guessed path or roommate for {name} in vanilla_filepaths.py")
    return Path(project) / f"{s}.h"


def build_enum_headers(header_enums, header_map, local_header_import_map):
    for e in header_enums:
        path = get_struct_path(get_enum_header_name_key(e))
        header = header_map.get(path)
        structs: list[Struct] = header.structs if header is not None else []
        structs.append(e)
        header = Header(path, [], structs)
        header_map[path] = header
        local_header_import_map.update({v: path for v, _ in e.values})


def get_lowest_vftable(struct: Struct, vftable_map, helper_base_map):
    if not struct.members:
        return None
    if struct.name in vftable_map:
        return vftable_map[struct.name]
    if struct.members and struct.members[0].name == "vftable":
        raise RuntimeError(f"{struct.name} has a vftable but it's not in the known vftable map (type {struct.members[0].data_type})")
    if struct.members and struct.members[0].name == "super":
        su = struct.members[0].data_type.removeprefix("struct ")
        if su not in vftable_map:
            return None
        result = vftable_map[su]
        vftable_map[struct.name] = result
        return result
    raise NotImplementedError("Need to 1. check if type has a vftable, 2. walk up super/base tree until 1 is satisfied")
    return None


def get_virtual_methods(vftable, vftable_map):
    if not vftable:
        return []
    result = vftable.members
    if result and result[0].name == 'super':
        su = result[0].data_type.removeprefix("struct ").removesuffix("Vftable")
        result = get_virtual_methods(vftable_map[su], vftable_map) + result
    return result


def build_struct_headers(header_structs, header_map, vftable_map, helper_base_map, vftable_address_look_up, class_method_look_up, class_static_method_look_up, local_header_import_map):
    consumed_vftable_addresses = set()
    consumed_methods = set()
    for t in header_structs:
        try:
            path = get_struct_path(resolve_roommate(t.name))
            includes: list[Header.Include] = []
            header = header_map.get(path)
            structs: list[Struct] = header.structs if header is not None else []
            if t.members and t.members[0].name in ["vftable", "super", "base"]:
                associated_vftable = vftable_map.get(t.name)
                vftable = get_lowest_vftable(t, vftable_map, helper_base_map)
                virtual_table_function_arg_map = OrderedDict({i.name : i.data_type.args for i in get_virtual_methods(vftable, vftable_map) if type(i.data_type) is not str})
                if associated_vftable:
                    structs.append(associated_vftable)
                if t.name in helper_base_map:
                    structs.append(helper_base_map[t.name])
                new_struct = RTTIClass(t, vftable_address_look_up, virtual_table_function_arg_map, class_method_look_up, class_static_method_look_up)
                consumed_vftable_addresses.add(new_struct.vftable_address)
            else:
                new_struct = t
                (
                    new_struct.constructors,
                    new_struct.methods,
                ) = partition([
                    lambda x: x.name.startswith('__ct__'),
                ], class_method_look_up.get(new_struct.name, list()))
                new_struct.static_methods = class_static_method_look_up.get(new_struct.name, list())

            if isinstance(new_struct, Struct):
                consumed_methods |= set(i.name for i in new_struct.all_methods)
            structs.append(new_struct)
            for s in structs:
                local_header_import_map[s.decorated_name] = path
            header = Header(path, includes, structs)
            header_map[path] = header
        except RuntimeError as e:
            print(e, file=sys.stderr)

    remaining_vftable_addresses = {k: v for k, v in vftable_address_look_up.items() if v['address'] not in consumed_vftable_addresses}
    remaining_class_methods = list()
    for v in class_method_look_up.values():
        for i in v:
            if i.name not in consumed_methods:
                remaining_class_methods.append(i)
    remaining_class_static_methods = dict()
    for struct_name, v in class_static_method_look_up.items():
        remaining = []
        for i in v:
            if i.name not in consumed_methods:
                remaining.append(i)
        if remaining:
            remaining_class_static_methods[struct_name] = remaining
    return remaining_vftable_addresses, remaining_class_methods, remaining_class_static_methods


def build_remaining_static_function_headers(remainder_class_static_methods, header_map):
    remainder = {}
    for n, l in remainder_class_static_methods.items():
        try:
            path = get_struct_path(resolve_roommate(n))
            header = header_map.get(path)
            structs: list[Struct] = header.structs if header is not None else []
            structs += l
            header = Header(path, [], structs)
            header_map[path] = header
        except RuntimeError as e:
            print(e, file=sys.stderr)
            remainder[n] = l
    return remainder


def build_neighbour_function_headers(assigned_neighbour_functions, header_map):
    for t in assigned_neighbour_functions:
        path = get_struct_path(ROOMMATE_CLASS_MAP[t.name])
        header = header_map.get(path)
        structs: list[Struct] = header.structs if header is not None else []
        structs.append(t)
        header = Header(path, [], structs)
        header_map[path] = header


def build_sinit_headers(sinit_functions, header_map):
    for t in sinit_functions:
        class_name = t.name.removeprefix("__sinit_").removesuffix("_cpp")
        path = get_struct_path(resolve_roommate(class_name))
        header = header_map.get(path)
        structs: list[Struct] = header.structs if header is not None else []
        structs.append(t)
        header = Header(path, [], structs)
        header_map[path] = header


def build_list_template_headers(template_container_structs, header_map, local_header_import_map):
    consumed_template_container_structs = {n : set() for n in template_container_structs.keys()}
    for header in header_map.values():
        for n in template_container_structs.keys():
            header.add_template_container_struct_defines(n, template_container_structs[n])
            consumed_template_container_structs[n].update(header.get_template_container_struct_defines(n))
        header.build_include_list(local_header_import_map)
    return consumed_template_container_structs


# TODO: For each global and their types, create inspector entires: webserver or imgui inspector window
if __name__ == "__main__":
    tic = time.perf_counter()
    db = load(open("extracted_reversing_data_bw_141.json"))
    projects_and_files = map_projects_to_object_files()
    primitives = []
    for decl in db['types']:
        primitive = PRIMITIVE_LOOK_UP[decl['kind']]
        # TODO: Get immediate dependencies for each primitive
        primitives.append(primitive.from_json(decl))

    utility_header_import_map = scan_src_headers.extract_types(include_dirs_stripped=ASSUME_INCLUDE_DIRS_DEFINED_IN_TARGET)
    Header.set_header_guard_format(HEADER_GUARD_TEMPLATE)
    Header.set_assume_include_dirs_defined_in_target(ASSUME_INCLUDE_DIRS_DEFINED_IN_TARGET)
    Header.set_utility_header_import_map(utility_header_import_map)

    types_to_ignore = {
        "TypeDescriptor",
    } | {i.removeprefix("struct ").removeprefix("enum ") for i in utility_header_import_map.keys()} | C_STDLIB_HEADER_IMPORT_MAP.keys()

    global_decls = db['globals']

    vftable_addresses, remainder_globals = partition([lambda x: x["name"].startswith("__vt__")], global_decls)
    vftable_address_look_up = {i["name"].removeprefix("__vt__"): i for i in vftable_addresses}

    class_method_look_up, class_static_method_look_up, class_list_functions, remainder_functions = find_methods(db['functions'])
    (
        assigned_neighbour_functions,
        sinit_functions,
        remainder_functions,
    ) = partition([
        lambda x: x.name in ROOMMATE_CLASS_MAP.keys(),
        lambda x: x.name.startswith("__sinit_"),
    ], remainder_functions)

    object_file_base_names = get_object_file_base_names()
    object_file_base_names_lower = {str.lower(i): i for i in object_file_base_names}

    def get_header_struct_name_key(type_name) -> Optional[str]:
        roomate_class_name = resolve_roommate(type_name)
        if roomate_class_name[0] == 'G' and roomate_class_name[1].isupper():
            roomate_class_name = roomate_class_name[1:]
        if "__" in roomate_class_name:
            roomate_class_name = roomate_class_name.split("__")[0]
        result = object_file_base_names_lower.get(roomate_class_name.lower())
        if result is not None:
            return result
        if roomate_class_name[-1].lower() == 's':
            result = object_file_base_names_lower.get(roomate_class_name[:-1].lower())
            if result is not None:
                return result
        return None

    def is_header_struct(data_type) -> bool:
        if type(data_type) is Struct and data_type.members and data_type.members[0].name in ["vftable", "super", "base"]:
            return True
        if type(data_type) is Struct or type(data_type) is Union:
            if get_header_struct_name_key(data_type.name) is not None:
                return True
        return False

    def enum_name_to_potential_header_struct_name(type_name: str, num_stripped_suffixes) -> Optional[str]:
        if type_name.count("_") < num_stripped_suffixes:
            return None
        if num_stripped_suffixes == 0:
            if type_name in ROOMMATE_CLASS_MAP:
                return ROOMMATE_CLASS_MAP[type_name]
            return string.capwords(type_name).replace("_", "")
        return "".join(map(string.capwords, type_name.split("_")[:-num_stripped_suffixes]))

    def get_enum_header_name_key(data_type) -> Optional[str]:
        if type(data_type) is not Enum:
            return None

        for num_stripped_suffixes in range(0, 3):
            camels = list(filter(None, (
                enum_name_to_potential_header_struct_name(data_type.name, num_stripped_suffixes),
                enum_name_to_potential_header_struct_name(data_type.name.removeprefix("LH_").removeprefix("LH").removesuffix("Enum").removesuffix("_t"), num_stripped_suffixes),
                enum_name_to_potential_header_struct_name(f"LH_{data_type.name}", num_stripped_suffixes),
                enum_name_to_potential_header_struct_name(f"LH3D_{data_type.name}", num_stripped_suffixes),
                enum_name_to_potential_header_struct_name(data_type.name.replace("_TYPE", "_INFO"), num_stripped_suffixes),
                enum_name_to_potential_header_struct_name(data_type.name.split("__")[0], num_stripped_suffixes),
            )))
            if not camels:
                break
            for camel in camels:
                header_name = get_header_struct_name_key(camel)
                if header_name is not None:
                    return header_name
        return None

    def is_ignore_struct(data_type) -> bool:
        if type(data_type) is Struct or type(data_type) is Enum or type(data_type) is Typedef:
            if data_type.name.startswith("RTTI"):
                return True
            if data_type.name in types_to_ignore:
                return True
        return False

    # Do some selecting
    template_container_lists = {}
    (
        vftables,
        bases,
        vftable_function_prototypes,
        global_function_ptr_prototypes,
        header_structs,
        to_ignore_enums,
        header_enums,
        remainder_enums,
        template_container_lists['LHLinkedList<T*>'],
        template_container_lists['LHLinkedList<T>'],
        template_container_lists['LHListHead<T>'],
        template_container_lists['LHDynamicStack<T>'],
        template_container_lists['GJVector<T>'],
        member_function_pointers,
        to_ignore,
        remainder_primitives,
        remainder,
    ) = partition([
        lambda x: type(x) is Struct and (x.name.endswith('Vftable') or x.name.startswith('vt_')),
        lambda x: type(x) is Union and x.name.endswith('Base'),
        lambda x: type(x) is FuncPtr and ('Vftable__' in x.name or x.name.startswith('vt_')),
        lambda x: type(x) is FuncPtr and x.name.startswith('globals_funcptr__'),
        is_header_struct,
        lambda x: type(x) is Enum and is_ignore_struct(x),
        lambda x: type(x) is Enum and get_enum_header_name_key(x) is not None,
        lambda x: type(x) is Enum,
        lambda x: type(x) is Struct and x.name.startswith("LHLinkedList__p_") or x.name.startswith("LHLinkedNode__p_"),
        lambda x: type(x) is Struct and x.name.startswith("LHLinkedList__") or x.name.startswith("LHLinkedNode__"),
        lambda x: type(x) is Struct and x.name.startswith("LHListHead__"),
        lambda x: type(x) is Struct and x.name.startswith("LHDynamicStack__"),
        lambda x: type(x) is Struct and x.name.startswith("GJVector__"),
        lambda x: type(x) is FuncPtr and "__" in x.name and get_header_struct_name_key(x.name[::-1].split("__")[-1][::-1]) is not None,
        is_ignore_struct,
        lambda x: type(x) is Struct,
    ], primitives)

    batched_arg_to_csnake(vftable_function_prototypes)
    batched_arg_to_csnake(global_function_ptr_prototypes)

    function_proto_map = {i.name: i for i in vftable_function_prototypes + member_function_pointers}
    global_function_ptr_proto_map = {i.name: i for i in global_function_ptr_prototypes}

    template_container_structs = {}
    for name, prefixes in TEMPLATE_CONTAINER_STRUCTS_PREFIXES.items():
        template_container_structs[name] = set()
        for i in template_container_lists[name]:
            struct_name = i.name
            for p in prefixes:
                struct_name = struct_name.removeprefix(p)
            template_container_structs[name].add("struct " + struct_name)

    def sub_funcptrs(struct: Struct) -> Struct:
        substitutions = {
            "__dt__": "__dt",
        }
        if type(struct) is Struct:
            members = []
            for m in struct.members:
                name = substitutions.get(m.name, m.name)
                data_type = function_proto_map.get(m.data_type.rstrip("*"), m.data_type)
                members.append(Struct.Member(name, data_type, offset=m.offset))
            return Struct(struct.name, struct.size, members)
        return struct

    vftables = list(map(sub_funcptrs, vftables))
    header_structs = list(map(sub_funcptrs, header_structs))

    vftable_map = {}
    for t in vftables:
        base_name: str = t.name
        # TODO: Find a single naming scheme
        base_name = base_name.removesuffix("Vftable")
        base_name = base_name.removeprefix("vt__")
        base_name = base_name.removeprefix("vt_")
        base_name = base_name.removesuffix("_t")
        vftable_map[base_name] = Vftable(t)

    helper_base_map = {}
    for t in bases:
        helper_base_map[t.name.removesuffix('Base')] = t

    local_header_import_map: dict[str, Path] = {}
    header_map: dict[Path, Header] = {}

    build_enum_headers(header_enums, header_map, local_header_import_map)
    remainder_vftables, remainder_class_methods, remainder_class_static_methods = build_struct_headers(header_structs, header_map, vftable_map, helper_base_map, vftable_address_look_up, class_method_look_up, class_static_method_look_up, local_header_import_map)
    remainder_class_static_methods = build_remaining_static_function_headers(remainder_class_static_methods, header_map)
    build_neighbour_function_headers(assigned_neighbour_functions, header_map)
    build_sinit_headers(sinit_functions, header_map)
    consumed_template_container_structs = build_list_template_headers(template_container_structs, header_map, local_header_import_map)
    consumed_template_container_structs_flat = set()
    for v in consumed_template_container_structs.values():
        consumed_template_container_structs_flat |= v

    headers: list[Header] = list(header_map.values())

    # Create header for globals_t with actual addresses
    headers.append(generate_globals_header(remainder_globals, global_function_ptr_proto_map, local_header_import_map))

    remainder_functions = list(remainder_functions)
    remainder_functions += remainder_class_methods
    for v in remainder_class_static_methods.values():
        remainder_functions += v
    remainder_functions.sort()
    if remainder_functions:
        header = Header(Path("TodoRemainderFunctions.h"), [], remainder_functions)
        header.build_include_list(local_header_import_map)
        headers.append(header)
    if remainder_primitives:
        header = Header(Path("TodoRemainderPrimitives.h"), [], remainder_primitives)
        header.build_include_list(local_header_import_map)
        headers.append(header)
    if remainder_enums:
        header = Header(Path("TodoRemainderEnums.h"), [], remainder_enums)
        header.build_include_list(local_header_import_map)
        headers.append(header)
    if remainder:
        header = Header(Path("TodoRemainder.h"), [], remainder)
        header.build_include_list(local_header_import_map)
        headers.append(header)

    output_path = Path(os.getcwd())
    if output_path.exists():
        generated_subpaths =  [Path("black"), Path("libs")]
        for p in generated_subpaths:
            subpath = output_path / p
            if subpath.exists():
                shutil.rmtree(subpath)

    wrote_headers = 0
    wrote_bytes = 0
    for h in headers:
        cw = csnake.CodeWriter(indent=2)
        h.to_code(cw)
        path = output_path / h.path
        path.parent.mkdir(parents=True, exist_ok=True)
        with path.open("w") as f:
            wrote_headers += 1
            wrote_bytes += f.write(cw.code)

    copied_headers = 0
    copied_bytes = 0
    for file in (Path(__file__).parent / "src").rglob('*'):
        if file.is_file():
            dest_file = output_path / file.relative_to(Path(__file__).parent / "src")
            dest_file.parent.mkdir(parents=True, exist_ok=True)
            result = shutil.copy2(file, dest_file)
            copied_headers += 1
            copied_bytes += Path(result).stat().st_size

    toc = time.perf_counter()
    print(f"Copied {copied_headers} headers({copied_bytes} bytes) in {output_path}")
    print(f"Wrote {wrote_headers} headers({wrote_bytes} bytes) in {output_path}")
    print(f"Ignored {len(to_ignore) + len(to_ignore_enums)} entries")
    print(f"Took {toc - tic:0.4f} seconds")

    if len(remainder_vftables) + len(remainder_functions) + len(remainder_primitives) + len(remainder_enums) + len(remainder) > 0:
        print(f"There are still {len(remainder_vftables)} orphan vftables: [{", ".join(sorted(i['name'] for i in remainder_vftables.values())[:10])}{", ..." if len(remainder_vftables) > 10 else ""}]")
        print(f"There are still {len(remainder_functions)} orphan functions: [{", ".join([i.name for i in remainder_functions][:10])}{", ..." if len(remainder_functions) > 10 else ""}]")
        print(f"There are still {len(remainder_primitives)} orphan structs: [{", ".join([i.name for i in remainder_primitives][:10])}{", ..." if len(remainder_primitives) > 10 else ""}]")
        print(f"There are still {len(remainder_enums)} orphan enums: [{", ".join([i.name for i in remainder_enums][:10])}{", ..." if len(remainder_enums) > 10 else ""}]")
        print(f"There are still {len(remainder)} orphan entries: [{", ".join([i.name for i in remainder][:10])}{", ..." if len(remainder) > 10 else ""}]")
        exit(1)
