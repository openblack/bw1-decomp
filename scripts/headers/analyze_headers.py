import ast
import itertools
import json
import re
import sys
from dataclasses import dataclass, asdict, field
from pathlib import Path
from typing import List, Tuple, Set, Optional, Dict, Union

from clang.cindex import TranslationUnit, Diagnostic, Config, TranslationUnitLoadError


@dataclass
class FunctionMetadata:
    win_addr: str
    mac_addr: str
    decorated_name: str
    undecorated_name: Optional[str] = None
    return_type: Optional[str] = None
    call_type: Optional[str] = None
    argument_types: List[str] = field(default_factory=list)
    argument_names: List[str] = field(default_factory=list)

    def fastcall_is_thiscall(self) -> bool:
        if self.call_type != "__fastcall":
            return False
        if len(self.argument_types) < 1:
            return False
        this_candidate = self.argument_types[0].removeprefix("const ")
        if not this_candidate.endswith("*"):
            return False
        this_candidate = this_candidate.removesuffix(" *")
        if not this_candidate.startswith("struct "):
            return False
        this_candidate = this_candidate.removeprefix("struct ")
        split_decorated = self.decorated_name.split("::")
        if len(split_decorated) <= 1:
            return False
        if this_candidate != split_decorated[0]:
            return False
        if len(self.argument_types) > 1:
            edx_candidate_type, edx_candidate_name = self.argument_types[1], self.argument_names[1]
            edx_candidate_type = edx_candidate_type.removeprefix("const ")
            if edx_candidate_name not in ["", "edx"]:
                return False
            if edx_candidate_type != "void *":
                return False
        return True

    def consolidate_thiscall(self):
        if self.fastcall_is_thiscall():
            self.call_type = "__thiscall"
            if len(self.argument_types) > 1:
                self.argument_types.pop(1)
                self.argument_names.pop(1)


@dataclass
class TypeInfo:
    kind_name: str
    size: int
    location: Path
    children: Union[
        List[Tuple[str, Union[int, str]]],
        List[Tuple[str, str, int]],
        str,
        Tuple[str, List[str], str]
    ] = field(default_factory=list)


@dataclass
class GlobalInfo:
    type_name: str
    address: int


PATHS = [
    Path("."),
    Path("black"),
    Path("libs"),
]

llvm_bin = Path(r"C:\Program Files\LLVM\bin")
Config.set_library_path(str(llvm_bin))


def get_clang_resource_dir():
    from subprocess import check_output
    return check_output([llvm_bin / 'clang', '-print-resource-dir']).strip().decode('utf-8')


def parse_source(path: Optional[Path] = None, source: Optional[str] = None) -> TranslationUnit:
    assert path or source
    system_include_paths = [
        Path("/usr/include/wine/windows"),
    ]
    ignored_warnings = ["visibility", "ignored-attributes", "int-conversion", "microsoft-enum-forward-reference",
                        "cast-calling-convention"]
    args = ["-m32", f"-resource-dir={get_clang_resource_dir()}"]
    for p in system_include_paths:
        args.append(f"-isystem{p.as_posix()}")
    for p in PATHS:
        args.append(f"-I{p.as_posix()}")
    for warning in ignored_warnings:
        args.append(f"-Wno-{warning}")

    if source:
        try:
            translation_unit = TranslationUnit.from_source('tmp.c', args=args, unsaved_files=[('tmp.c', source)])
        except TranslationUnitLoadError as e:
            sys.stderr.write(f"tmp.c: {e}\n{source}\n")
            sys.stderr.flush()
            raise
    else:
        try:
            translation_unit = TranslationUnit.from_source(path.as_posix(), args=args)
        except TranslationUnitLoadError as e:
            sys.stderr.write(f"{path.as_posix()}: {e}\n")
            sys.stderr.flush()
            raise

    error_strings: List[str] = []
    for diagnostic in translation_unit.diagnostics:
        if diagnostic.severity >= Diagnostic.Error:
            error_strings.append(str(diagnostic))
        if diagnostic.severity >= Diagnostic.Warning:
            sys.stderr.write(f"{diagnostic}\n")

    if error_strings:
        sys.stderr.flush()
        raise RuntimeError("Error parsing source:\n\t" + "\n\t".join(error_strings))

    return translation_unit


def extract_function_pointers(struct_type) -> Dict[str, TypeInfo]:
    function_map: Dict[str, TypeInfo] = {}
    for t in struct_type.get_fields():
        if t.type.kind.name != "POINTER":
            continue
        p = t.type.get_pointee()
        if p.kind.name != "FUNCTIONPROTO":
            continue
        result = p.get_result().spelling
        args = list(c.spelling for c in p.argument_types())
        arg_names = list(c.spelling for c in t.get_definition().get_children() if c.kind.name == 'PARM_DECL')
        if len(arg_names) == 0:
            arg_names = [''] * len(args)
        assert(len(args) == len(arg_names))
        function_map[t.spelling] = TypeInfo(kind_name=p.kind.name, size=t.type.get_size(),
                                            location=Path(t.location.file.name), children=(result, list(zip(args, arg_names)), p.spelling))
    return function_map


def extract_type_info(tu: TranslationUnit) -> Tuple[bool, Dict[str, TypeInfo]]:
    found_issues = False
    types: Dict[str, TypeInfo] = {}
    for c in tu.cursor.get_children():
        if c.kind.name in ["STRUCT_DECL", "UNION_DECL", "ENUM_DECL", "TYPEDEF_DECL"] and c.is_definition():
            struct_type = c.type
            if struct_type.spelling in types:
                # sys.stderr.write(f"duplicate type: \"{struct_type.spelling}\"\n")
                # found_issues = True
                # continue
                pass
            name = struct_type.spelling
            kind_name: str = c.kind.name
            children: List[Tuple[str, int] | Tuple[str, str, int]] | str | Tuple[str, List[str], str] = []
            if c.kind.name == "STRUCT_DECL":
                extra_types = extract_function_pointers(struct_type)
                types.update((f"{name.removeprefix("struct ")}__{k}", v) for k, v in extra_types.items())
                children = []
                for f in struct_type.get_fields():
                    child_name = f.spelling
                    child_type = f.type.spelling
                    if child_name in extra_types:
                        child_type = f"{name.removeprefix("struct ")}__{child_name} *"
                    child_offset = struct_type.get_offset(f.spelling) // 8
                    children.append((child_name, child_type, child_offset))
                pass
            elif c.kind.name == "UNION_DECL":
                children = []
                for f in struct_type.get_fields():
                    child_name = f.spelling
                    child_type = f.type.spelling
                    children.append((child_name, child_type))
                # found_issues = True
                # sys.stderr.write(f"TODO: Union: {c.spelling}\n")
                pass
            elif c.kind.name == "TYPEDEF_DECL":
                children = struct_type.get_canonical().spelling
                if struct_type.get_canonical().kind.name in ["FUNCTIONPROTO", "FUNCTIONNOPROTO"]:
                    struct_type = struct_type.get_canonical()
                    name = c.spelling
                    kind_name = "FUNCTIONPROTO"
                    result = struct_type.get_result().spelling
                    try:
                        args = list(a.spelling for a in struct_type.argument_types())
                    except AssertionError:
                        print(name)
                        print(struct_type.kind)
                        raise
                    arg_names = list(i.spelling for i in c.get_definition().get_children() if i.kind.name == 'PARM_DECL')
                    children = (result, list(zip(args, arg_names)), children)
            elif c.kind.name == "ENUM_DECL":
                children = [(e.spelling, e.enum_value) for e in c.get_children()]
            types[name] = TypeInfo(
                kind_name=kind_name,
                size=struct_type.get_size(),
                location=Path(c.location.file.name),
                children=children
            )
    return found_issues, types


def extract_globals_info(tu: TranslationUnit, known_types: Set[str]) -> Tuple[bool, Dict[str, GlobalInfo]]:
    found_issues = False
    global_addresses: Dict[str, GlobalInfo] = {}
    for c in tu.cursor.get_children():
        if c.kind.name != "VAR_DECL" or c.storage_class.name != 'STATIC' or c.type.kind.name != 'POINTER':
            continue
        type_name = c.type.get_pointee().spelling
        try:
            literal_spelling: str = next(filter(lambda x: x.kind.name == "LITERAL", c.get_tokens())).spelling
        except StopIteration:
            found_issues = True
            sys.stderr.write(
                f"{c.extent.start.file.name}:{c.extent.start.line}: cannot find literal in tokens")
            continue
        try:
            literal_value: int = ast.literal_eval(literal_spelling)
        except ValueError as e:
            found_issues = True
            sys.stderr.write(
                f"{c.extent.start.file.name}:{c.extent.start.line}: global declaration \"{c.spelling}\" can't parse: \"{literal_spelling}\"\n")
            continue
        # if type_name not in known_types:
        #     found_issues = True
        #     sys.stderr.write(
        #         f"{c.extent.start.file.name}:{c.extent.start.line}: global declaration \"{c.spelling}\" using unknown type: \"{type_name}\"\n")
        #     continue
        global_addresses[c.spelling] = GlobalInfo(type_name, literal_value)
    return found_issues, global_addresses


def extract_globals_in_header_info(tu: TranslationUnit, known_types: Set[str]) -> Tuple[bool, Dict[str, GlobalInfo]]:
    found_issues = False
    global_addresses: Dict[str, GlobalInfo] = {}
    globals_cursor = next(c for c in tu.cursor.get_children() if c.kind.name == "VAR_DECL" and c.spelling == "globals")
    decl_cursor, init_cursor = globals_cursor.get_children()
    variables = {d.spelling: (d.spelling, d.type.get_pointee().spelling) for d in decl_cursor.get_children()}
    tokens = list(filter(lambda x: x.kind.name in ["IDENTIFIER", "LITERAL"], globals_cursor.get_tokens()))
    globals_index = next(i for i, t in enumerate(tokens) if t.spelling == "globals")
    tokens = tokens[globals_index + 1:]
    identifiers = filter(lambda x: x.kind.name == "IDENTIFIER" and x.spelling in variables, tokens)
    literals = filter(lambda x: x.kind.name == "LITERAL", tokens)
    for identifier, literal in zip(identifiers, literals):
        var_name, var_type = variables[identifier.spelling]
        try:
            literal_value: int = ast.literal_eval(literal.spelling)
        except ValueError as e:
            found_issues = True
            sys.stderr.write(
                f"global declaration \"{c.spelling}\" can't parse: \"{literal.spelling}\"\n")
            continue
        global_addresses[var_name] = GlobalInfo(var_type, literal_value)
    return found_issues, global_addresses


def extract_function_info(tu: TranslationUnit, known_types: Set[str], decorated_names: Set[str],
                          function_metadata: List[FunctionMetadata]) -> bool:
    found_issues = False

    pattern = re.compile(
        r"// win1\.41 (?P<winaddr>[0-9a-fA-F]+|inlined) mac (?P<macaddr>[0-9a-fA-F]+|inlined) (?P<decoratedname>[\w:(), *&<>\[\]~\-\+=/]+)")

    for t in tu.get_tokens(extent=tu.cursor.extent):
        # TODO: Make sure every type is accounted for
        if t.kind.name == "COMMENT":
            match = pattern.search(t.spelling)
            if match:
                win_addr = int(match.group('winaddr'), 16) if match.group('winaddr') != 'inlined' else -1
                mac_addr = int(match.group('macaddr'), 16) if match.group('macaddr') != 'inlined' else -1
                decorated_name = match.group('decoratedname')
                if "virtual table" in decorated_name or "vtable" in decorated_name:
                    continue
                if decorated_name in decorated_names:
                    sys.stderr.write(f"{t.extent.start.file.name}:{t.extent.start.line}: error: duplicate entry: \"{decorated_name}\"\n")
                    found_issues = True
                else:
                    function_metadata.append(
                        FunctionMetadata(win_addr=win_addr, mac_addr=mac_addr, decorated_name=decorated_name))
                    decorated_names.add(decorated_name)
            elif (
                    " win" in t.spelling or " mac" in t.spelling) and "inline" not in t.spelling and "vtable" not in t.spelling and "virtual table" not in t.spelling:
                sys.stderr.write(
                    f"{t.location.file}:{t.location.line}:{t.location.column} badly formed function metadata: \"{t.spelling}\"\n")
                found_issues = True
        elif t.kind.name == "IDENTIFIER":
            if function_metadata and function_metadata[-1].undecorated_name is None:
                id_kind = t.cursor.kind
                if id_kind.name == "FUNCTION_DECL":
                    args = list(t.cursor.get_arguments())
                    arg_names = [a.spelling for a in args]
                    arg_types = [a.type.spelling for a in args]
                    ret = t.cursor.type.get_result().spelling
                    for ct in ["fastcall", "stdcall"]:
                        if t.cursor.type.spelling.endswith(f"__attribute__(({ct}))"):
                            call_type = f"__{ct}"
                            break
                    else:
                        call_type = "cdecl"
                    function_metadata[-1].undecorated_name = t.spelling
                    function_metadata[-1].return_type = ret
                    function_metadata[-1].argument_types = arg_types
                    function_metadata[-1].argument_names = arg_names
                    function_metadata[-1].call_type = call_type
                    for c in t.cursor.get_children():
                        if c.kind.name != "PARM_DECL":
                            continue
                        param_type = c.type
                        while param_type.kind.name == "POINTER":
                            pointee = param_type.get_pointee()
                            if pointee.kind.name != 'FUNCTIONPROTO':
                                param_type = pointee
                            else:
                                break
                        if param_type.kind.name == "ELABORATED":
                            param_type = param_type.get_named_type()
                        builtin_type_kinds = ["INT", "UCHAR", "CHAR_S", "VOID", "BOOL", "FLOAT", "LONG", "ULONG"]
                        declared_type_kinds = ["TYPEDEF", "RECORD", "ENUM", "FUNCTIONPROTO"]
                        if param_type.kind.name not in (
                                builtin_type_kinds + declared_type_kinds) and param_type.get_pointee().kind.name != 'FUNCTIONPROTO':
                            found_issues = True
                            sys.stderr.write(
                                f"{t.extent.start.file.name}:{t.extent.start.line}: function declaration \"{t.spelling}\" trouble parsing: \"{param_type.spelling}\"\n")
                        # if param_type.kind.name in declared_type_kinds and param_type.spelling not in known_types:
                        #     found_issues = True
                        #     sys.stderr.write(
                        #         f"{t.extent.start.file.name}:{t.extent.start.line}: function declaration \"{t.spelling}\" using unknown type: \"{param_type.spelling}\"\n")

    return found_issues


def main(out_path) -> bool:
    paths: List[Path] = list(itertools.chain([Path("rtti.h")], *(p.glob("*.h") for p in PATHS)))
    include_all_headers_src = '\n'.join(f'#include "{p}"' for p in paths)

    found_issues, types = extract_type_info(parse_source(source=include_all_headers_src))
    # for type_name, (record_type, size, members) in types.items():
    #     if record_type == "STRUCT_DECL":
    #         print(f"{type_name}: 0x{size:x}\n\t{"\n\t".join(f"{n}: {t}" for n, t, o in members)}")
    #     elif record_type == "ENUM_DECL":
    #         print(f"{type_name}: 0x{size:x}\n\t{"\n\t".join(f"{k}={hex(v)}" for k, v in members)}")
    #     elif record_type == "TYPEDEF_DECL":
    #         print(f"{type_name}: 0x{size:x} -> {members}")

    decorated_names: Set[str] = set()
    function_metadata: List[FunctionMetadata] = []
    for path in paths:
        found_issues |= extract_function_info(parse_source(path=path), set(types.keys()), decorated_names,
                                              function_metadata)

    new_issues, global_values = extract_globals_info(parse_source(source=include_all_headers_src),
                                                     set(types.keys()))
    found_issues |= new_issues

    # new_issues, globals_in_header_values = extract_globals_in_header_info(parse_source(path=Path("src/globals.h")),
    #                                                                       set(types.keys()))
    # global_values.update(globals_in_header_values)
    # found_issues |= new_issues

    # for global_name, (global_type, global_value) in global_values.items():
    #     print(f"{global_name}: {global_type} -> {hex(global_value)}")

    result_types: List[Dict] = []
    for type_name, t in types.items():
        if t.location.is_absolute():
            continue
        entry = dict(kind=t.kind_name, type=type_name, size=t.size)
        if t.kind_name == "STRUCT_DECL":
            entry['members'] = [dict(name=n, type=t, offset=o) for n, t, o in t.children]
        elif t.kind_name == "ENUM_DECL":
            entry['constants'] = [dict(name=k, value=v) for k, v in t.children]
        elif t.kind_name == "UNION_DECL":
            entry['aliases'] = [dict(name=k, type=v) for k, v in t.children]
        elif t.kind_name == "TYPEDEF_DECL":
            entry['typedef'] = t.children
        elif t.kind_name == "FUNCTIONPROTO":
            result, args, signature = t.children
            for call_type in ['fastcall', "stdcall"]:
                attribute = f" __attribute__(({call_type}))"
                if signature.endswith(attribute):
                    entry['call_type'] = f"__{call_type}"
                    break
            else:
                entry['call_type'] = "__cdecl"
            if entry['call_type'] == "__fastcall":
                if len(args) >= 1:
                    if args[0][0].removeprefix("const ").startswith("struct ") and args[0][0].endswith(" *"):
                        if len(args) == 1 or args[1][0] == "const void *" or args[1][1] == 'edx':
                            entry['call_type'] = "__thiscall"
                            args[0] = args[0][0], "this"
                            if len(args) > 1:
                                args.pop(1)

            entry['size'] = 4
            entry['result'] = result
            entry['args'] = [i[0] for i in args]
            entry['arg_names'] = [i[1] for i in args]
            entry['signature'] = signature
        result_types.append(entry)

    result_functions: List[Dict[str, List[Dict[str, str]] | str | int]] = []
    for f in function_metadata:
        if f.undecorated_name is None:
            continue
        f.consolidate_thiscall()
        result_functions.append(asdict(f))

    result_globals: List[Dict[str, str | int]] = [dict(name=global_name, type=g.type_name, value=g.address) for
                                                  global_name, g in global_values.items()]

    result = dict(types=result_types, functions=result_functions, globals=result_globals)

    with open(out_path, "w") as f:
        json.dump(result, f, indent=2)

    return found_issues

if __name__ == "__main__":
    from sys import argv
    exit(main(argv[1] if len(argv) == 2 else "extracted_reversing_data_bw_141.json"))