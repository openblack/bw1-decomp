import json
from copy import copy

from mac_unmangler import UnmangledDetails
from msvc_mangler import mangle_class, mangle_function

EMBEDDED_ENUMS = {
    "GGuidance": ["GUIDANCE_SFX_TYPE"],
}


def mac_mangled_to_msvc_mangled(return_type: str, call_type: str, mac_mangled: str, custom_types_lut: dict[str, str]) -> str:
    if return_type in custom_types_lut:
        return_type = custom_types_lut[return_type]
    elif return_type.removesuffix(" *") in custom_types_lut:
        return_type = custom_types_lut[return_type.removesuffix(" *")] + " *"
    elif return_type.removesuffix("*") in custom_types_lut:
        return_type = custom_types_lut[return_type.removesuffix("*")] + "*"
    return_type = custom_types_lut.get(return_type, return_type)
    mac_unmangled = UnmangledDetails(mac_mangled)
    argument_types = []
    if mac_unmangled.args != [UnmangledDetails.Arg([], "void")]:
        for i in mac_unmangled.args:
            i = copy(i)
            if type(i.typename) is str:
                i.typename = custom_types_lut.get(i.typename, i.typename)
                t = str(i).replace("&", "*")
                if t.count("const") == 1 and t.endswith(" const *"):
                    t = f"const {t.removesuffix(" const *")} *"
            else:
                datatype = copy(i.typename)
                i.typename = datatype
                if datatype.is_member:
                    datatype.is_member = False
                    if datatype.arg_types == [UnmangledDetails.Arg([], 'void')]:
                        datatype.arg_types = []
                    datatype.arg_types = [UnmangledDetails.Arg([UnmangledDetails.Arg.Qualifier.POINTER], datatype.class_type)] + datatype.arg_types
                for j in datatype.arg_types:
                    j.typename = custom_types_lut.get(j.typename, j.typename)
                datatype.return_type = custom_types_lut.get(datatype.return_type, datatype.return_type)
                t = str(i)
            argument_types.append(t)
    argument_names = [f"param_{i + 1}" for i in range(len(argument_types))]

    if mac_unmangled.function_name == '__dt' and mac_unmangled.args == [UnmangledDetails.Arg([], "unsigned int")]:
        call_type = 'virtual'

    if hasattr(mac_unmangled, "type_name"): # class function

        embedded_enums = "\n".join(f"enum {i} {{{i}_0}};" for i in EMBEDDED_ENUMS.get(mac_unmangled.type_name, []))

        class_definition = f"""\
{('namespace ' + mac_unmangled.namespace + '{') if hasattr(mac_unmangled, "namespace") else ''}
class {mac_unmangled.type_name}
{{
public:
{embedded_enums}
{call_type if call_type in {'static', 'virtual'} else ''} {return_type if mac_unmangled.function_name not in ['__ct', '__dt'] else ''} \
{mac_unmangled.get_post_namespace_signature()};
}}
{('} // ' + mac_unmangled.namespace) if hasattr(mac_unmangled, "namespace") else ''}
;
"""
        mangled_class = mangle_class(class_definition)
        mangled_name = mangled_class[0]

        this_type = f"{'const ' if mac_unmangled.isconst else ''}struct {mac_unmangled.type_name} *"

        argument_types = [this_type] + argument_types
        argument_names = ["this"] + argument_names

    else: # non-class function
        function_definition = f"{return_type} {call_type} {mac_unmangled.get_post_namespace_signature()};"
        mangled_name = mangle_function(function_definition)

    return mangled_name, mac_unmangled, return_type, argument_types, argument_names


if __name__ == "__main__":
    import fileinput
    import sys
    from pathlib import Path

    json_path = Path("extracted_reversing_data_bw_141.json")

    with json_path.open() as f:
        data = json.load(f)
    custom_types_lut = {i['type'].removeprefix("struct ").removeprefix("union ").removeprefix("enum "): i['type'] for i in data['types']}

    try:
        for line in fileinput.input():
            try:
                line = line.strip()
                is_static = line.startswith("static ")
                is_virtual = line.startswith("virtual ")
                if (is_static or is_virtual) and line.count(" ") == 3:  # started with static, has a call_type that we will override
                    line.removeprefix("static ").removeprefix("virtual ")
                return_type, call_type, mac_mangled = line.split(" ")
            except ValueError as e:
                print(e, file=sys.stderr)
                continue
            if return_type in {'static', 'virtual'}:
                return_type, call_type = call_type, return_type
            if is_static:
                call_type = "static"
            if is_virtual:
                call_type = "virtual"
            mangled_name, _, _, _, _ = mac_mangled_to_msvc_mangled(return_type, call_type, mac_mangled, custom_types_lut)
            print(mangled_name)
    except KeyboardInterrupt:
        pass
