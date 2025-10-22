import sys
import json


def get_all_types():
    structs = set()
    classes = set()
    enums = set()
    unions = set()
    with open('extracted_reversing_data_bw_141.json') as f:
        data = json.load(f)
    type_descs = [i for i in data['globals'] if i['type'] == 'struct RTTITypeDescriptor']
    # Get all RTTI types
    for t in type_descs:
        msvc_mangled_name = t["msvc_mangled_name"]
        assert(msvc_mangled_name.startswith("??_R0?A") and msvc_mangled_name.endswith("@@@8"))
        name = msvc_mangled_name[8:-4]
        if msvc_mangled_name[7] == 'U':
            structs.add(name)
        elif msvc_mangled_name[7] == 'V':
            classes.add(name)
        else:
            assert False
    # Get all identified STRUCT_DECL
    structs.update(i['type'].removeprefix("struct ") for i in data['types'] if i ['kind'] == 'STRUCT_DECL')
    # STRUCT_DECL will include classes so remove those we know
    structs.difference_update(classes)
    enums.update(i['type'].removeprefix("enum ") for i in data['types'] if i ['kind'] == 'ENUM_DECL')
    unions.update(i['type'].removeprefix("union ") for i in data['types'] if i ['kind'] == 'UNION_DECL')
    return structs, classes, enums, unions


STRUCTS, CLASSES, ENUMS, UNIONS = get_all_types()

def get_clang_resource_dir():
    from subprocess import check_output
    return check_output(['clang', '-print-resource-dir']).strip().decode('utf-8')


def compile_code(code):
    args = ['-m32', '--target=i686-pc-windows-msvc', f"-resource-dir={get_clang_resource_dir()}"]
    includes = [
        "stdint.h",
        "stddef.h",
    ]
    source = "\n".join(f'#include "{i}"' for i in includes) + "\n"
    source += "\n".join(f"struct {i};" for i in STRUCTS) + "\n"
    source += "\n".join(f"class {i};" for i in CLASSES) + "\n"
    source += "\n".join(f"union {i};" for i in UNIONS) + "\n"
    source += "\n".join(f"enum {i} {{{i}_0}};" for i in ENUMS) + "\n"
    source += "typedef uint32_t bool32_t;\n"
    source += code
    from clang.cindex import Index, CursorKind, Config, Diagnostic
    index = Index.create()
    translation_unit = index.parse('tmp.cpp', args=args, unsaved_files=[('tmp.cpp', source)])
    error_strings = []
    for diagnostic in translation_unit.diagnostics:
        if diagnostic.severity >= Diagnostic.Error:
            error_strings.append(str(diagnostic))
        if diagnostic.severity >= Diagnostic.Warning:
            sys.stderr.write(f"{diagnostic}\n")

    if error_strings:
        sys.stderr.flush()
        print("\n".join(f"{i}\t{l}" for i, l in enumerate(source.split("\n"), 1)))
        raise RuntimeError("Error parsing source:\n\t" + "\n\t".join(error_strings))

    return translation_unit


def mangle_function(function_definition):
    translation_unit = compile_code(function_definition)
    return list(translation_unit.cursor.get_children())[-1].mangled_name


def mangle_class(class_definition):
    translation_unit = compile_code(class_definition)
    class_decl = list(translation_unit.cursor.get_children())[-1]
    return [i.mangled_name for i in class_decl.get_children() if i.mangled_name]


if __name__ == '__main__':
    mangle_class(sys.argv[1])
