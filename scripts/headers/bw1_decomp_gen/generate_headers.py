import time
import shutil
import string
import sys
from typing import Optional
from clang import cindex
from json import load
from pathlib import Path
import csnake

from header import Header, GlobalsHeader, C_STDLIB_HEADER_IMPORT_MAP, UTILITY_HEADER_IMPORT_MAP
from structs import Struct, Union, Enum, RTTIClass
from typedef import Typedef
from functions import FuncPtr, DefinedFunctionPrototype, CSnakeFuncPtr
from vftable import Vftable
from utils import partition, extract_type_name
from vanilla_filepaths import map_projects_to_object_files, get_object_file_base_names, resolve_roommate, ROOMMATE_CLASS_MAP


def extract_type_from_func_name(s):
    name = s.split("(")[0]
    parts = name.split("::")

    # Constructors
    if len(parts) % 2 == 0 and parts[:len(parts) // 2] == parts[len(parts) // 2:]:
        parts = ["::".join(parts[:len(parts) // 2])] * 2

    if len(parts) >= 2:
        type_name = "::".join(parts[:-1])

    return type_name


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

TYPES_TO_IGNORE = {
    "TypeDescriptor",
} | {i.removeprefix("struct ") for i in UTILITY_HEADER_IMPORT_MAP.keys()} | C_STDLIB_HEADER_IMPORT_MAP.keys()

# TODO: Do every type of variable
def arg_clang_wrapping_declaration_to_csnake(wrapping_declaration):
    assert wrapping_declaration.kind.name == "FUNCTION_DECL"

    param_declaration = next(wrapping_declaration.get_arguments())
    assert param_declaration.kind.name == "PARM_DECL"

    type_ = param_declaration.type

    is_pointer = type_.kind.name == "POINTER"

    if is_pointer:
        type_ = type_.get_pointee()
        if type_.kind.name == "FUNCTIONPROTO":
            call_type = None
            for attr in ["fastcall", "cdecl", "thiscall", "stdcall"]:
                if type_.spelling.endswith(f"__attribute__(({attr}))"):
                    call_type = f"__{attr}"
                    break
            return CSnakeFuncPtr(type_.get_result().spelling, [(c.displayname or f"param_{i + 1}", c.type.spelling) for i, c in enumerate(param_declaration.get_children())], call_type)

    return None


def arg_to_csnake(type_decl):
    """This function is slow because it launched the compiler for each param. It can easily go from less than a second to more than 20 seconds"""
    source = f"void __arg_to_csnake_wrapping_declaration({type_decl});"
    translation_unit = cindex.TranslationUnit.from_source('tmp.c', args=["-m32"], unsaved_files=[('tmp.c', source)])
    if [d for d in translation_unit.diagnostics if d.severity >= cindex.Diagnostic.Error]:
        return type_decl
    result = arg_clang_wrapping_declaration_to_csnake(next(c for c in translation_unit.cursor.get_children() if c.spelling == "__arg_to_csnake_wrapping_declaration"))
    return result or type_decl


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
    # For things like GBaseInfo
    if name[0] == 'G' and name[1].isupper():
        stem = name[1:]
    for project, object_files in projects_and_files.items():
        if stem +".obj" in object_files:
            break
    else:
        raise RuntimeError(f"Need to add guessed path or roommate for {name} in vanilla_filepaths.py")
    return Path(project) / f"{stem}.h"


def build_enum_headers(header_enums, header_map):
    for e in header_enums:
        path = get_struct_path(get_enum_header_name_key(e))
        header = header_map.get(path)
        structs: list[Struct] = header.structs if header is not None else []
        structs.append(e)
        header = Header(path, [], structs)
        header_map[path] = header


def build_member_funcptr_headers(member_function_pointers, header_map):
    for t in member_function_pointers:
        struct_name = t.name[::-1].split("__")[-1][::-1]
        path = get_struct_path(resolve_roommate(struct_name))
        header = header_map.get(path)
        structs: list[Struct] = header.structs if header is not None else []
        structs.append(t)
        header = Header(path, [], structs)
        header_map[path] = header


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
                vftable = vftable_map.get(t.name)
                virtual_method_names = [i.name for i in vftable.members] if vftable else []
                if vftable:
                    structs.append(vftable)
                if t.name in helper_base_map:
                    structs.append(helper_base_map[t.name])
                new_struct = RTTIClass(t, vftable_address_look_up, virtual_method_names, class_method_look_up, class_static_method_look_up)
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


def build_list_template_headers(lh_linked_list_pointer_structs, lh_linked_list_structs, lh_list_head_structs, header_map, local_header_import_map):
    consumed_lh_linked_list_pointer_structs = set()
    consumed_lh_linked_list_structs = set()
    consumed_lh_list_head_structs = set()
    for header in header_map.values():
        consumed_lh_linked_list_pointer_structs.update(header.add_linked_list_pointered_defines(lh_linked_list_pointer_structs))
        consumed_lh_linked_list_structs.update(header.add_linked_list_defines(lh_linked_list_structs))
        consumed_lh_list_head_structs.update(header.add_list_head_defines(lh_list_head_structs))
        header.build_include_list(local_header_import_map)
    return consumed_lh_linked_list_pointer_structs, consumed_lh_linked_list_structs, consumed_lh_list_head_structs


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
        if type(data_type) is Struct or type(data_type) is Typedef:
            if data_type.name.startswith("RTTI"):
                return True
            if data_type.name in TYPES_TO_IGNORE:
                return True
        return False

    # Do some selecting
    (
        vftables,
        bases,
        vftable_function_prototypes,
        global_function_ptr_prototypes,
        header_structs,
        header_enums,
        remainder_enums,
        lh_linked_pointer_lists,
        lh_linked_lists,
        lh_list_heads,
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
        lambda x: type(x) is Enum and get_enum_header_name_key(x) is not None,
        lambda x: type(x) is Enum,
        lambda x: type(x) is Struct and x.name.startswith("LHLinkedList__p_") or  x.name.startswith("LHLinkedNode__p_"),
        lambda x: type(x) is Struct and x.name.startswith("LHLinkedList__") or  x.name.startswith("LHLinkedNode__"),
        lambda x: type(x) is Struct and x.name.startswith("LHListHead__"),
        lambda x: type(x) is FuncPtr and "__" in x.name and get_header_struct_name_key(x.name[::-1].split("__")[-1][::-1]) is not None,
        is_ignore_struct,
        lambda x: type(x) is Struct,
    ], primitives)

    batched_arg_to_csnake(vftable_function_prototypes)
    batched_arg_to_csnake(global_function_ptr_prototypes)

    vftable_function_proto_map = {i.name: i for i in vftable_function_prototypes}
    global_function_ptr_proto_map = {i.name: i for i in global_function_ptr_prototypes}

    lh_linked_list_pointer_structs = {"struct " + i.name.removeprefix("LHLinkedList__p_").removeprefix("LHLinkedNode__p_") for i in lh_linked_pointer_lists}
    lh_linked_list_structs = {"struct " + i.name.removeprefix("LHLinkedList__").removeprefix("LHLinkedNode__") for i in lh_linked_lists}
    lh_list_head_structs = {"struct " + i.name.removeprefix("LHListHead__") for i in lh_list_heads}

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

    local_header_import_map: dict[str, Path] = {}
    header_map: dict[Path, Header] = {}

    build_enum_headers(header_enums, header_map)
    build_member_funcptr_headers(member_function_pointers, header_map)
    remainder_vftables, remainder_class_methods, remainder_class_static_methods = build_struct_headers(header_structs, header_map, vftable_map, helper_base_map, vftable_address_look_up, class_method_look_up, class_static_method_look_up, local_header_import_map)
    remainder_class_static_methods = build_remaining_static_function_headers(remainder_class_static_methods, header_map)
    build_neighbour_function_headers(assigned_neighbour_functions, header_map)
    build_sinit_headers(sinit_functions, header_map)
    consumed_lh_linked_list_pointer_structs, consumed_lh_linked_list_structs, consumed_lh_list_head_structs = build_list_template_headers(lh_linked_list_pointer_structs, lh_linked_list_structs, lh_list_head_structs, header_map, local_header_import_map)

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

    output_path = Path("generated_headers_output")
    if output_path.exists():
        shutil.rmtree(output_path)

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
    print(f"Ignored {len(to_ignore)} entries")
    print(f"Took {toc - tic:0.4f} seconds")

    if len(remainder_vftables) + len(remainder_functions) + len(remainder_primitives) + len(remainder_enums) + len(remainder) > 0:
        print(f"There are still {len(remainder_vftables)} orphan vftables: [{", ".join(sorted(i['name'] for i in remainder_vftables.values())[:10])}{", ..." if len(remainder_vftables) > 10 else ""}]")
        print(f"There are still {len(remainder_functions)} orphan functions: [{", ".join([i.name for i in remainder_functions][:10])}{", ..." if len(remainder_functions) > 10 else ""}]")
        print(f"There are still {len(remainder_primitives)} orphan structs: [{", ".join([i.name for i in remainder_primitives][:10])}{", ..." if len(remainder_primitives) > 10 else ""}]")
        print(f"There are still {len(remainder_enums)} orphan enums: [{", ".join([i.name for i in remainder_enums][:10])}{", ..." if len(remainder_enums) > 10 else ""}]")
        print(f"There are still {len(remainder)} orphan entries: [{", ".join([i.name for i in remainder][:10])}{", ..." if len(remainder) > 10 else ""}]")
        exit(1)
