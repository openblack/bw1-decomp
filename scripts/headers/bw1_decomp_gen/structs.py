import csnake

from collections import OrderedDict
from dataclasses import dataclass
import typing

from csnake_overrides import CSnakeMultiLineArrayVariable, CSnakeUnion, CSnakeHexCIntLiteral, CSnakeVariable
from functions import DefinedFunctionPrototype, FuncPtr
from utils import partition, extract_type_name


KNOWN_FLAG_ENUM_NAMES = {
    "LHKeyMod",
}


@dataclass
class Composite:
    @dataclass
    class Member:
        name: str
        data_type: typing.Union[str, csnake.FuncPtr]
        offset: int

        def __init__(self, name: str, data_type: str, offset: int):
            self.name = name
            self.data_type = data_type
            if type(self.data_type) is str:
                self.data_type = self.data_type.replace(" *", "*")
            self.offset = offset

        def __lt__(self, other: "Composite.Member") -> bool:
            return self.offset < other.offset

        def get_types(self) -> set[str]:
            result: set[str] = set()
            if type(self.data_type) is str and "[" in self.data_type:
                parts = self.data_type.split("[")
                part_0 = parts.pop(0)
                for p in parts:
                    p = p[:-1]
                    try:
                        int(p, 0)
                    except:
                        result.add(p)
                        part_0 += "[1]"
                    else:
                        part_0 += f"[{p}]"
                result.add(part_0)
            elif type(self.data_type) is FuncPtr:
                return set(self.data_type.args).union((self.data_type.result, ))
            else:
                result.add(self.data_type)
            return result

        def to_csnake(self) -> csnake.Variable:
            # Check if it's a pointer to an array (e.g., int(*)[2] or int (*)[2])
            if type(self.data_type) is str:
                if self.data_type.endswith('[]'):
                    self.data_type = self.data_type.rstrip('[]')
                    self.name += '[]'
                if '(*' in self.data_type and '[' in self.data_type:
                    base_type, array_part = self.data_type.split('(*')
                    formatted_name = f"(*{self.name})"
                    array_part = array_part.lstrip('(*)')
                else:
                    # Handle regular arrays and non-pointer arrays
                    base_type, array_part = self.data_type.split(
                        '[', 1) if '[' in self.data_type else (self.data_type, '')
                    formatted_name = self.name
                # Extract dimensions for arrays (e.g., "int[2][3]" -> [0x2, 0x3])
                def to_hex(dim: str) -> str:
                    try:
                        return hex(int(dim, 0))
                    except ValueError:
                        # Likely an enum value
                        return dim
                dimensions = [to_hex(dim) for dim in array_part.replace(']', '').split('[') if dim]
                base_type = base_type.strip()
            else:
                dimensions = None
                base_type = self.data_type
                formatted_name = self.name

            if type(self.data_type) is FuncPtr:
                return csnake.Variable(self.name, self.data_type.to_csnake())
            else:
                # Create the csnake variable with either pointer/array or just array
                return csnake.Variable(formatted_name, base_type, array=dimensions)

    name: str
    size: typing.Optional[int]
    members: list[Member]

    @property
    def decorated_name(self):
        raise NotImplementedError()


class Struct(Composite):
    constructors: list[DefinedFunctionPrototype] = []
    destructors: list[DefinedFunctionPrototype] = []
    methods: list[DefinedFunctionPrototype] = []
    static_methods: list[DefinedFunctionPrototype] = []
    global_var_methods: list[DefinedFunctionPrototype] = []
    print_offset_at_each: typing.Optional[int] = 0x10

    @property
    def decorated_name(self):
        return f"struct {self.name}"

    @property
    def all_methods(self) -> list[DefinedFunctionPrototype]:
        return self.constructors + self.destructors + self.methods + self.static_methods + self.global_var_methods

    @classmethod
    def from_json(cls, decl: dict) -> "Struct":
        name = extract_type_name(decl['type'])
        size = decl['size']
        members = [cls.Member(**{"data_type": m.pop("type"), **m}) for m in decl["members"]]
        return cls(name, size, members)

    def get_types(self) -> set[str]:
        result = {self.decorated_name}
        for m in self.members:
            result.update(m.get_types())
        for m in self.all_methods:
            result.update(m.get_types())
        return result - {"void"}

    def to_csnake(self) -> csnake.Struct:
        result = csnake.Struct(self.name, typedef=False)
        # Check if sortable
        if all(map(lambda x: x.__class__.__lt__ != object.__lt__, self.members)):
            sorted_members = sorted(self.members)
        else:
            sorted_members = self.members
        variables = map(self.Member.to_csnake, sorted_members)
        last_offset: int = -1
        for v, m in zip(variables, sorted_members):
            if self.print_offset_at_each:
                if last_offset < 0 or m.offset - last_offset >= self.print_offset_at_each:
                    hoffset = f"{m.offset:08x}" if m.offset > 0x400000 else f"{m.offset:x}"
                    v.comment = None if hoffset in m.name else "0x" + hoffset
                    last_offset = m.offset - (m.offset % self.print_offset_at_each)
            result.add_variable(v)
        return result

    def to_code_data(self, cw: csnake.CodeWriter):
        cw.add_struct(self.to_csnake())
        if self.size is not None:
            cw.add_line(f'static_assert(sizeof({self.decorated_name}) == 0x{self.size:x}, "Data type is of wrong size");')
        cw.add_line()

    def to_code_methods(self, cw: csnake.CodeWriter):
        if self.static_methods:
            cw.add_line('// Static methods')
            cw.add_line()

            for f in self.static_methods:
                f.to_code(cw)
            cw.add_line()

        if self.constructors:
            cw.add_line('// Constructors')
            cw.add_line()

            for f in self.constructors:
                f.to_code(cw)
            cw.add_line()

        if self.destructors:
            cw.add_line('// Non-virtual Destructors')
            cw.add_line()

            for f in self.destructors:
                f.to_code(cw)
            cw.add_line()

        if self.global_var_methods:
            cw.add_line('// Global Static variable lifetime methods')
            cw.add_line()

            for f in self.global_var_methods:
                f.to_code(cw)
            cw.add_line()

        if self.methods:
            cw.add_line('// Non-virtual methods')
            cw.add_line()

            for f in self.methods:
                f.to_code(cw)
            cw.add_line()

    def to_code(self, cw: csnake.CodeWriter):
        self.to_code_data(cw)
        self.to_code_methods(cw)


class Union(Composite):
    @property
    def decorated_name(self):
        return f"union {self.name}"

    @classmethod
    def from_json(cls, decl: dict) -> "Union":
        name = extract_type_name(decl['type'])
        size = decl['size']
        members = [cls.Member(**{"data_type": m.pop("type"), **m}, offset=0) for m in decl["aliases"]]
        return cls(name, size, members)

    def get_types(self) -> set[str]:
        result = {self.decorated_name}
        for m in self.members:
            result.update(m.get_types())
        return result - {"void"}

    def to_csnake(self) -> CSnakeUnion:
        result = CSnakeUnion(self.name, typedef=False)
        variables = map(self.Member.to_csnake, self.members)
        for v in variables:
            result.add_variable(v)
        return result

    def to_code(self, cw: csnake.CodeWriter):
        # TODO: Must be add_union
        cw.add_struct(self.to_csnake())
        cw.add_line(f'static_assert(sizeof({self.decorated_name}) == 0x{self.size:x}, "Data type is of wrong size");')
        cw.add_line()


@dataclass
class Enum:
    name: str
    size: int
    values: list[tuple[str, int]]
    count = tuple[str, int]

    def __init__(self, name: str, size: int, values: tuple[str, int]):
        self.name = name
        self.size = size
        self.values = []
        min_val = None
        max_val = 0
        count_val = None
        for n, v in values:
            if n.endswith("_FORCE_32_BIT") or n.endswith("_FORCE_32_BITS") or n.endswith("_FORCE32"):
                continue
            if n.endswith("_COUNT"):
                count_val = v
            else:
                self.values.append((n, v))
            if min_val is None or v < min_val:
                min_val = v
            if v > max_val:
                max_val = v
        if self.name.endswith("_FLAGS") or self.name in KNOWN_FLAG_ENUM_NAMES:
            self.count = None
        else:
            try:
                assert(max_val < 0x70000000)
            except:
                print(self.name)
                raise
            self.count = (f"_{self.name}_COUNT", count_val or ((max_val or 0) + 1))
            self.values.append(self.count)


    @property
    def decorated_name(self):
        return f"enum {self.name}"

    def get_types(self) -> set[str]:
        result = {self.decorated_name}
        return result

    @classmethod
    def from_json(cls, decl: dict) -> "Enum":
        name = extract_type_name(decl['type'])
        size = decl['size']
        values = [(m["name"], m["value"]) for m in decl["constants"]]
        return cls(name, size, values)

    def to_csnake(self) -> csnake.Enum:
        result = csnake.Enum(self.name, typedef=False)
        for v in self.values:
            result.add_value(v[0], CSnakeHexCIntLiteral(v[1]))
        return result

    def to_code(self, cw: csnake.CodeWriter):
        cw.add_enum(self.to_csnake())
        cw.add_line(f'static_assert(sizeof({self.decorated_name}) == 0x{self.size:x}, "Data type is of wrong size");')
        cw.add_line()

        if self.count is not None:
            str_label_map = {v: n for n, v in self.values}
            strings_values = [str_label_map.get(i, f"{self.name}_{hex(i)}") for i in range(self.count[1])]
            strings_variable = CSnakeMultiLineArrayVariable(f"{self.name}_strs", "char*", ["static", "const"], [f"_{self.name}_COUNT"], value=strings_values)
            cw.add_variable_initialization(strings_variable)
            cw.add_line()


TYPE_SUBSTITUTION_MAP = {
    'Fixed': 'FixedObject',
}


@dataclass
class RTTIClass(Struct):
    vftable_win_address: typing.Optional[int]
    vftable_mac_address: typing.Optional[int]
    vftable_type_name: typing.Optional[str]
    vftable_decorated_name: typing.Optional[str]
    vftable_msvc_mangled_name: typing.Optional[str]
    locator_win_address: typing.Optional[int]
    locator_mac_address: typing.Optional[int]
    locator_type_name: typing.Optional[str]
    locator_decorated_name: typing.Optional[str]
    locator_msvc_mangled_name: typing.Optional[str]
    method_overrides: list[DefinedFunctionPrototype]

    @property
    def all_methods(self) -> list[DefinedFunctionPrototype]:
        return super().all_methods + self.method_overrides

    def __init__(self, struct: Struct, vftable_map: dict[str, dict], rtti_typedesc_map: dict[str, dict], rtti_base_class_desc_map: dict[str, dict], rtti_base_class_array_map: dict[str, dict], rtti_class_hierarchy_desc_map: dict[str, dict], rtti_locator_map: dict[str, dict], virtual_table_function_arg_map: OrderedDict[str, list[str]], method_map: dict[str, DefinedFunctionPrototype], static_method_map: dict[str, DefinedFunctionPrototype]):
        self.name = struct.name
        self.size = struct.size
        self.members = struct.members[:]
        basename = struct.name.removeprefix("struct ")
        basename = TYPE_SUBSTITUTION_MAP.get(basename, basename)
        if basename == 'Fixed':
            basename = "FixedObject"
        vftable_global = vftable_map.get(basename) or vftable_map.get(f"{len(basename)}{basename}")
        if vftable_global:
            self.vftable_win_address = vftable_global['win_addr']
            self.vftable_mac_address = vftable_global['mac_addr']
            self.vftable_type_name = vftable_global['type']
            self.vftable_decorated_name = vftable_global['decorated_name']
            self.vftable_msvc_mangled_name = vftable_global['msvc_mangled_name']
            if not self.vftable_type_name.endswith("Vftable"):
                raise TypeError(f"type: `{struct.name}` has a __vt__ declared with invalid type `{self.vftable_type_name}`")
        else:
            self.vftable_name = None
            self.vftable_win_address = None
            self.vftable_mac_address = None
            self.vftable_type_name = None
            self.vftable_decorated_name = None
            self.vftable_msvc_mangled_name = None
        typedesc_global = rtti_typedesc_map.get(basename) or rtti_typedesc_map.get(f"{len(basename)}{basename}")
        if typedesc_global:
            self.typedesc_name = typedesc_global['name']
            self.typedesc_win_address = typedesc_global['win_addr']
            self.typedesc_mac_address = typedesc_global['mac_addr']
            self.typedesc_type_name = typedesc_global['type']
            self.typedesc_decorated_name = typedesc_global['decorated_name']
            self.typedesc_msvc_mangled_name = typedesc_global['msvc_mangled_name']
        else:
            self.typedesc_name = None
            self.typedesc_win_address = None
            self.typedesc_mac_address = None
            self.typedesc_type_name = None
            self.typedesc_decorated_name = None
            self.typedesc_msvc_mangled_name = None
        base_class_desc_global = rtti_base_class_desc_map.get(basename) or rtti_base_class_desc_map.get(f"{len(basename)}{basename}")
        if base_class_desc_global:
            self.base_class_desc_name = base_class_desc_global['name']
            self.base_class_desc_win_address = base_class_desc_global['win_addr']
            self.base_class_desc_mac_address = base_class_desc_global['mac_addr']
            self.base_class_desc_type_name = base_class_desc_global['type']
            self.base_class_desc_decorated_name = base_class_desc_global['decorated_name']
            self.base_class_desc_msvc_mangled_name = base_class_desc_global['msvc_mangled_name']
        else:
            self.base_class_desc_name = None
            self.base_class_desc_win_address = None
            self.base_class_desc_mac_address = None
            self.base_class_desc_type_name = None
            self.base_class_desc_decorated_name = None
            self.base_class_desc_msvc_mangled_name = None
        base_class_array_global = rtti_base_class_array_map.get(basename) or rtti_base_class_array_map.get(f"{len(basename)}{basename}")
        if base_class_array_global:
            self.base_class_array_name = base_class_array_global['name']
            self.base_class_array_win_address = base_class_array_global['win_addr']
            self.base_class_array_mac_address = base_class_array_global['mac_addr']
            self.base_class_array_type_name = base_class_array_global['type']
            self.base_class_array_decorated_name = base_class_array_global['decorated_name']
            self.base_class_array_msvc_mangled_name = base_class_array_global['msvc_mangled_name']
        else:
            self.base_class_array_name = None
            self.base_class_array_win_address = None
            self.base_class_array_mac_address = None
            self.base_class_array_type_name = None
            self.base_class_array_decorated_name = None
            self.base_class_array_msvc_mangled_name = None
        class_hierarchy_desc_global = rtti_class_hierarchy_desc_map.get(basename) or rtti_class_hierarchy_desc_map.get(f"{len(basename)}{basename}")
        if class_hierarchy_desc_global:
            self.class_hierarchy_desc_name = class_hierarchy_desc_global['name']
            self.class_hierarchy_desc_win_address = class_hierarchy_desc_global['win_addr']
            self.class_hierarchy_desc_mac_address = class_hierarchy_desc_global['mac_addr']
            self.class_hierarchy_desc_type_name = class_hierarchy_desc_global['type']
            self.class_hierarchy_desc_decorated_name = class_hierarchy_desc_global['decorated_name']
            self.class_hierarchy_desc_msvc_mangled_name = class_hierarchy_desc_global['msvc_mangled_name']
        else:
            self.class_hierarchy_desc_name = None
            self.class_hierarchy_desc_win_address = None
            self.class_hierarchy_desc_mac_address = None
            self.class_hierarchy_desc_type_name = None
            self.class_hierarchy_desc_decorated_name = None
            self.class_hierarchy_desc_msvc_mangled_name = None
        locator_global = rtti_locator_map.get(basename) or rtti_locator_map.get(f"{len(basename)}{basename}")
        if locator_global:
            self.locator_name = locator_global['name']
            self.locator_win_address = locator_global['win_addr']
            self.locator_mac_address = locator_global['mac_addr']
            self.locator_type_name = locator_global['type']
            self.locator_decorated_name = locator_global['decorated_name']
            self.locator_msvc_mangled_name = locator_global['msvc_mangled_name']
        else:
            self.locator_name = None
            self.locator_win_address = None
            self.locator_mac_address = None
            self.locator_type_name = None
            self.locator_decorated_name = None
            self.locator_msvc_mangled_name = None

        def get_method_name(x: str) -> str:
            if "__" not in x:
                return ""
            return x[::-1].split("__", maxsplit=1)[-1][::-1]

        def match_overrides(struct_type) -> bool:
            def match(name):
                method_args = virtual_table_function_arg_map.get(name)
                if method_args is None:
                    return None
                method_args = [x if type(x) is str else x.get_type_only() for x in method_args]
                if not method_args:
                    return None
                if struct_type.args[1:] != method_args[1:]:
                    return None
                return name
            return (
                match(get_method_name(struct_type.name)) or
                match(get_method_name(struct_type.name) + "_0") or
                match(get_method_name(struct_type.name) + "_1") or
                match(get_method_name(struct_type.name) + "_2")
            )

        (
            self.constructors,
            self.method_overrides,
            self.destructors,
            self.methods,
        ) = partition([
            lambda x: x.name.startswith('__ct__'),
            match_overrides,
            lambda x: x.name.startswith('__dt__'),
        ], method_map.get(self.name, list()))

        (
            self.global_var_methods,
            self.static_methods,
        ) = partition([
            lambda x: (
                x.name.startswith('crt_global_initialize_for_') or
                x.name.startswith('dynamic_initializer_for_') or
                x.name.startswith('crt_global_destruction_register_for_') or
                x.name.startswith('dynamic_atexit_destructor_for_')
            ),
        ], static_method_map.get(self.name, list()))

        self.constructors.sort()
        virtual_table_function_names = list(virtual_table_function_arg_map.keys())
        # Set the `this` param to that of the vftable of the superclass so assignment can be done
        for o in self.method_overrides:
            method_args = virtual_table_function_arg_map.get(match_overrides(o))
            o.args[0] = method_args[0]
        self.method_overrides.sort(key=lambda x: virtual_table_function_names.index(match_overrides(x)))
        self.methods.sort()
        self.static_methods.sort()
        self.global_var_methods.sort()

    def to_code_data(self, cw: csnake.CodeWriter):
        super().to_code_data(cw)
        basename = TYPE_SUBSTITUTION_MAP.get(self.name, self.name)

        if self.typedesc_win_address or self.base_class_desc_win_address or self.base_class_array_win_address or self.class_hierarchy_desc_win_address or self.locator_win_address or self.vftable_win_address:
            cw.add_line('// Object Oriented datastructures')
            cw.add_line()

            if self.typedesc_win_address:
                win_addr = f"{self.typedesc_win_address:08x}" if self.typedesc_win_address >= 0 else "inlined"
                mac_addr = f"{self.typedesc_mac_address:08x}" if self.typedesc_mac_address >= 0 else "inlined"
                cw.add_line(f"// win1.41 {win_addr} mac {mac_addr} {self.typedesc_decorated_name}")
                cw.add_variable_declaration(CSnakeVariable(self.typedesc_name, self.typedesc_type_name, mangled_name=self.typedesc_msvc_mangled_name), extern=True)
            if self.base_class_desc_win_address:
                win_addr = f"{self.base_class_desc_win_address:08x}" if self.base_class_desc_win_address >= 0 else "inlined"
                mac_addr = f"{self.base_class_desc_mac_address:08x}" if self.base_class_desc_mac_address >= 0 else "inlined"
                cw.add_line(f"// win1.41 {win_addr} mac {mac_addr} {self.base_class_desc_decorated_name}")
                cw.add_variable_declaration(CSnakeVariable(self.base_class_desc_name, self.base_class_desc_type_name, ["const"], mangled_name=self.base_class_desc_msvc_mangled_name), extern=True)
            if self.base_class_array_win_address:
                win_addr = f"{self.base_class_array_win_address:08x}" if self.base_class_array_win_address >= 0 else "inlined"
                mac_addr = f"{self.base_class_array_mac_address:08x}" if self.base_class_array_mac_address >= 0 else "inlined"
                cw.add_line(f"// win1.41 {win_addr} mac {mac_addr} {self.base_class_array_decorated_name}")
                cw.add_variable_declaration(CSnakeVariable(self.base_class_array_name, self.base_class_array_type_name, ["const"], mangled_name=self.base_class_array_msvc_mangled_name), extern=True)
            if self.class_hierarchy_desc_win_address:
                win_addr = f"{self.class_hierarchy_desc_win_address:08x}" if self.class_hierarchy_desc_win_address >= 0 else "inlined"
                mac_addr = f"{self.class_hierarchy_desc_mac_address:08x}" if self.class_hierarchy_desc_mac_address >= 0 else "inlined"
                cw.add_line(f"// win1.41 {win_addr} mac {mac_addr} {self.class_hierarchy_desc_decorated_name}")
                cw.add_variable_declaration(CSnakeVariable(self.class_hierarchy_desc_name, self.class_hierarchy_desc_type_name, ["const"], mangled_name=self.class_hierarchy_desc_msvc_mangled_name), extern=True)
            if self.locator_win_address:
                win_addr = f"{self.locator_win_address:08x}" if self.locator_win_address >= 0 else "inlined"
                mac_addr = f"{self.locator_mac_address:08x}" if self.locator_mac_address >= 0 else "inlined"
                cw.add_line(f"// win1.41 {win_addr} mac {mac_addr} {self.locator_decorated_name}")
                cw.add_variable_declaration(CSnakeVariable(self.locator_name, self.locator_type_name, ["const"], mangled_name=self.locator_msvc_mangled_name), extern=True)
            if self.vftable_win_address:
                win_addr = f"{self.vftable_win_address:08x}" if self.vftable_win_address >= 0 else "inlined"
                mac_addr = f"{self.vftable_mac_address:08x}" if self.vftable_mac_address >= 0 else "inlined"
                cw.add_line(f"// win1.41 {win_addr} mac {mac_addr} {self.vftable_decorated_name}")
                cw.add_variable_declaration(CSnakeVariable(f"__vt__{len(basename)}{basename}", self.vftable_type_name, ["const"], mangled_name=self.vftable_msvc_mangled_name), extern=True)

            cw.add_line()

    def to_code_methods(self, cw: csnake.CodeWriter):
        super().to_code_methods(cw)
        if self.method_overrides:
            cw.add_line('// Override methods')
            cw.add_line()

            for f in self.method_overrides:
                f.to_code(cw)
            cw.add_line()

    def get_types(self):
        result = super().get_types()
        if self.typedesc_win_address:
            result.add("struct RTTITypeDescriptor")
        if self.base_class_desc_win_address:
            result.add("struct RTTIBaseClassDescriptor")
        if self.base_class_array_win_address:
            result.add("struct RTTIBaseClassArray")
        if self.class_hierarchy_desc_win_address:
            result.add("struct RTTIClassHierarchyDescriptor")
        if self.locator_win_address:
            result.add("struct RTTICompleteObjectLocator")
        return result
