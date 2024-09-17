import itertools
import os
import json
import re

from collections import deque

from ghidra.app.services import DataTypeManagerService
from ghidra.app.util import NamespaceUtils
from ghidra.program.model.address import AddressSet
from ghidra.program.model.listing import (
    Function,
    ParameterImpl,
    ReturnParameterImpl,
)
from ghidra.program.model.symbol import (
    Namespace,
    SourceType,
)
from ghidra.program.model.data import (
    DataTypeConflictHandler,
    CategoryPath,
    DataType,
    GenericCallingConvention,
    ArrayDataType,
    FunctionDefinitionDataType,
    PointerDataType,
    EnumDataType,
    UnionDataType,
    ParameterDefinitionImpl,
    StructureDataType,
    TypedefDataType,
    InvalidDataTypeException,
)
from ghidra.program.model.util import CodeUnitInsertionException
from ghidra.util.data import DataTypeParser
from ghidra.util.exception import DuplicateNameException

TYPE_MAP = {
    # "int8_t": "byte",
    # "int32_t": "int",
    "unsigned short": "ushort",
    "unsigned int": "uint",
    "unsigned long": "ulong",
    "_Bool": "bool",
    # "char16_t": "wchar_t",
}
category_path = CategoryPath("/blackhack")


def str_removeprefix(string, prefix):
    if string.startswith(prefix):
        return string[len(prefix):]
    return string


def str_removesuffix(string, prefix):
    if string.endswith(prefix):
        return string[:-len(prefix)]
    return string


def type_remove_decoration(string):
    string = str_removeprefix(string, "const ")
    string = str_removeprefix(string, "struct ")
    string = str_removesuffix(string, " const")
    string = str_removeprefix(string, "enum ")
    string = str_removeprefix(string, "union ")
    string = TYPE_MAP.get(string, string)
    return string


def array_from_typename(string):
    match = re.match(r"(.+)\[(\d+)\]$", string)
    if match:
        return match.group(1), int(match.group(2))
    assert "[" not in string and "]" not in string
    return string, None


def pointers_from_typename(string):
    stripped = string.rstrip("*")
    return stripped.rstrip(), len(string) - len(stripped)


def get_data_type(dtms, string):
    paths = [
        category_path.path + "/",
        "/",
        "/vadefs.h/",
        "/stdint.h/",
        "/WinDef.h/",
        "/d3dtypes.h/",
        "/ddraw.h/",
        "/imm.h/",
        "/stddef.h/",
        "/winnt.h/",
        "/yvals.h/",
        "/crtdefs.h/",
    ]
    string = type_remove_decoration(string)
    for dtm, prefix in itertools.product(dtms, paths):
        data_type = dtm.getDataType(prefix + string)
        if data_type is not None:
            break
    else:
        raise KeyError(string)
    return data_type


def resolve_type(dtms, data_type_name):
    data_type_name = TYPE_MAP.get(data_type_name, data_type_name)
    data_type_name = data_type_name.replace("[0]", "[1]")
    data_type_name = str_removeprefix(data_type_name, "const ")
    data_type_name = str_removesuffix(data_type_name, " const")
    data_type_name = data_type_name.replace("[]", "[1]")
    data_array_sizes = []
    data_type_name, data_array_size = array_from_typename(data_type_name)
    while data_array_size is not None:
        data_array_sizes.append(data_array_size)
        data_type_name, data_array_size = array_from_typename(data_type_name)
    data_type_name, pointer_rank = pointers_from_typename(data_type_name)
    secondary_pointer_rank = data_type_name.count("*")
    data_type_name = data_type_name.replace("*", "").rstrip(" ()")
    data_type = get_data_type(dtms, data_type_name)
    for _ in range(pointer_rank):
        data_type = PointerDataType(data_type)
    for data_array_size in data_array_sizes:
        data_type = ArrayDataType(data_type, data_array_size, data_type.getLength())
    for _ in range(secondary_pointer_rank):
        data_type = PointerDataType(data_type)
    return data_type


def import_types(dtms, program, data):
    dtm = filter(lambda x: x.getName() == program.getName(), dtms)[0]

    types = {}

    for t in data["types"]:
        name = type_remove_decoration(t["type"])
        if name == "struct globals_t":
            continue
        if t["kind"] == "STRUCT_DECL":
            types[name] = StructureDataType(category_path, name, 0)
        elif t["kind"] == "TYPEDEF_DECL":
            try:
                types[name] = TypedefDataType(category_path, name, resolve_type(dtms, t["typedef"]))
            except KeyError:
                continue
        elif t["kind"] == "ENUM_DECL":
            types[name] = EnumDataType(category_path, name, t["size"])
        elif t["kind"] == "FUNCTIONPROTO":
            types[name] = FunctionDefinitionDataType(category_path, name)
        elif t["kind"] == "UNION_DECL":
            types[name] = UnionDataType(category_path, name)
        types[name] = dtm.resolve(types[name], DataTypeConflictHandler.REPLACE_HANDLER)

    for t in data["types"]:
        name = t["type"]
        if name == "struct globals_t":
            continue
        # print("Filling members for type %s" % name)
        size = t["size"]
        if t["kind"] == "STRUCT_DECL":
            assert name.startswith("struct ")
            name = str_removeprefix(name, "struct ")
            new_data_type = types[name]
            length = 0
            for i, m in enumerate(t["members"]):
                if m["offset"] != length:
                    m_prev = t["members"][i - 1]
                    diff = m["offset"] - length
                    if diff < 0:
                        raise ValueError("%s in %s has unexpected padding: %d" % (m_prev["type"], name, diff))
                    new_data_type.add(DataType.DEFAULT, diff, None, None)
                    length += diff
                has_flexible_array = (m["type"].endswith("[]") or m["type"].endswith("[0]")) and i == len(
                    t["members"]) - 1
                data_type = resolve_type(dtms, m["type"])
                length += data_type.getLength()
                if has_flexible_array and (data_type.getLength() % 4) != 0:
                    size += data_type.getLength()
                new_data_type.add(data_type, m["name"], None)
            if size != length:
                diff = size - length
                if diff < 0:
                    raise ValueError("%s has unexpected size: %u != %u" % (t["type"], size, length))
                new_data_type.add(DataType.DEFAULT, diff, None, None)
                length += diff
        elif t["kind"] == "TYPEDEF_DECL":
            data_type = resolve_type(dtms, t["typedef"])
            assert data_type is not None
            new_data_type = TypedefDataType(category_path, name, data_type)
            assert size == new_data_type.getLength()
        elif t["kind"] == "ENUM_DECL":
            name = str_removeprefix(name, "enum ")
            new_data_type = types[name]
            for c in t["constants"]:
                new_data_type.add(c["name"], c["value"])
            assert size == new_data_type.getLength()
        elif t["kind"] == "FUNCTIONPROTO":
            new_data_type = types[name]
            call_type = t.get('call_type')
            if call_type is not None:
                new_data_type.setGenericCallingConvention(GenericCallingConvention.fastcall)
            # Set the types after everything has been processed
            new_data_type.setReturnType(resolve_type(dtms, t["result"]))
            try:
                args = [ParameterDefinitionImpl(n, resolve_type(dtms, a), t["signature"]) for n, a in zip(t["arg_names"], t["args"])]
            except:
                print(name)
                raise
            new_data_type.setArguments(args)
        elif t["kind"] == "UNION_DECL":
            name = str_removeprefix(name, "union ")
            new_data_type = types[name]
            for c in t["aliases"]:
                alias_type = resolve_type(dtms, c["type"])
                new_data_type.add(alias_type, alias_type.getLength(), c["name"], None)
        else:
            print(t["kind"])
            assert False


def parse_data_type(dtps, string):
    string = type_remove_decoration(string)
    for dtp in dtps:
        try:
            data_type = dtp.parse(string, category_path)
            yield data_type
        except InvalidDataTypeException:
            try:
                data_type = dtp.parse(string)
                yield data_type
            except InvalidDataTypeException:
                continue
    print(string)


def import_functions(program, dtps, data, platform):
    symbol_table = program.getSymbolTable()
    address_factory = program.addressFactory
    function_manager = program.getFunctionManager()

    for f in data["functions"]:
        address = address_factory.getAddress(hex(f[platform + "_addr"]))
        if address < 0:
            continue
        new_name = f["undecorated_name"]
        # print("Setting function name to: %s" % new_name)
        function = function_manager.getFunctionAt(address)
        if not function:
            overlapping_function = function_manager.getFunctionContaining(address)
            if overlapping_function:
                print("%s: Overlapped by %s found at address: %s" % (new_name, overlapping_function.name, address))
                continue
            function = function_manager.createFunction(None, address, AddressSet(address), SourceType.IMPORTED)
        if function:
            symbol_table.createLabel(address, new_name, program.globalNamespace, SourceType.IMPORTED)
            mac_addr = "0x%08x" % f["mac_addr"] if f["mac_addr"] >= 0 else "inlined"
            function.setComment("C++ name: %s, Mac Address: %s" % (f["decorated_name"], mac_addr))
            if f['call_type'] == '__thiscall':
                try:
                    data_type = next(parse_data_type(dtps, f["argument_types"][0].replace(" *", "")))
                except StopIteration:
                    print(f["argument_types"])
                    raise
                try:
                    data_type_class = symbol_table.createClass(None, data_type.name, SourceType.IMPORTED)
                except DuplicateNameException:
                    data_type_class = NamespaceUtils.getNamespacesByName(program, None, data_type.name)[0]
                function.setParentNamespace(data_type_class)
            try:
                return_var = ReturnParameterImpl(next(parse_data_type(dtps, f["return_type"])), program)
            except StopIteration:
                print(f["return_type"])
                raise
            param_vars = [ParameterImpl(name, next(parse_data_type(dtps, type_name)), program) for name, type_name in
                          zip(f["argument_names"], f["argument_types"])]
            function.updateFunction(f['call_type'], return_var, param_vars,
                                    Function.FunctionUpdateType.DYNAMIC_STORAGE_FORMAL_PARAMS, True,
                                    SourceType.IMPORTED)
        else:
            print("%s: No function found at address: %s" % (new_name, address))


def overwrite_listing_data(listing, address, data_type):
    existing_data = listing.getDataAt(address)
    if existing_data:
        listing.clearCodeUnits(address, address.add(data_type.getLength() - 1), False)
    listing.createData(address, data_type)


def import_globals(program, dtps, data):
    address_factory = program.addressFactory
    symbol_table = program.getSymbolTable()
    listing = program.getListing()
    for g in data["globals"]:
        new_name = g["name"]
        address = address_factory.getAddress(hex(g["value"]))
        try:
            data_type = next(parse_data_type(dtps, g["type"]))
        except StopIteration:
            print("Error: Overwriting listing at 0x%08x with %s (%s)" % (address.getOffset(), new_name,  g["type"]))
            continue
        symbol_table.createLabel(address, new_name, program.globalNamespace, SourceType.IMPORTED)
        overwrite_listing_data(listing, address, data_type)


def infer_rtti_from_vtable(program, dtps, data):
    address_factory = program.addressFactory
    symbol_table = program.getSymbolTable()
    memory = program.getMemory()
    listing = program.getListing()
    pointer_type = next(parse_data_type(dtps, "pointer"))
    rtti_locator_type = next(parse_data_type(dtps, "RTTICompleteObjectLocator"))
    rtti_hierarchy_type = next(parse_data_type(dtps, "RTTIClassHierarchyDescriptor"))
    rtti_class_array_type = next(parse_data_type(dtps, "RTTIBaseClassArray"))
    for g in data["globals"]:
        name = g["name"]
        if not name.startswith("__vt__"):
            continue
        class_name = str_removeprefix(name, "__vt__")
        try:
            class_class = NamespaceUtils.getNamespacesByName(program, None, class_name)[0]
        except IndexError:
            print("Error: Cannot find class %s" % class_name)
            continue
        # Find the virtual table
        vt_label = next(symbol_table.getSymbols(g["name"]))
        vt_address = vt_label.address
        # print("Inferring RTTI data for %s, vftable: 0x%08x" % (class_name, vt_address.getOffset()))
        symbol_table.createLabel(vt_address, "vftable", class_class, SourceType.IMPORTED)
        # Pointer to RTTI is 4 bytes before the vtable
        rtti_pointer_address = vt_address.subtract(4)
        overwrite_listing_data(listing, rtti_pointer_address, pointer_type)
        # Set the rtti complete object locator
        rtti_address = address_factory.getAddress(hex(memory.getInt(rtti_pointer_address)))
        try:
            overwrite_listing_data(listing, rtti_address, rtti_locator_type)
        except CodeUnitInsertionException:
            continue
        symbol_table.createLabel(rtti_address, "RTTI_Complete_Object_Locator", class_class, SourceType.IMPORTED)
        for i in rtti_locator_type.getComponents():
            if i.getDataType().name != "RTTIClassHierarchyDescriptor *":
                continue
            rtti_hierarchy_address = address_factory.getAddress(hex(memory.getInt(rtti_address.add(i.getOffset()))))
            rtti_hierarchy_name = "RTTI_Class_Hierarchy_Descriptor"
            symbol_table.createLabel(rtti_hierarchy_address, rtti_hierarchy_name, class_class, SourceType.IMPORTED)
            overwrite_listing_data(listing, rtti_hierarchy_address, rtti_hierarchy_type)
            break
        else:
            break
        for i in rtti_hierarchy_type.getComponents():
            if i.getDataType().name != "RTTIBaseClassArray *":
                continue
            rtti_class_array_address = address_factory.getAddress(
                hex(memory.getInt(rtti_hierarchy_address.add(i.getOffset()))))
            rtti_class_array_name = "RTTI_Base_Class_Array"
            symbol_table.createLabel(rtti_class_array_address, rtti_class_array_name, class_class, SourceType.IMPORTED)
            overwrite_listing_data(listing, rtti_class_array_address, rtti_class_array_type)
            break
        else:
            break
        for i in rtti_class_array_type.getComponents():
            if i.getDataType().name != "RTTIBaseClassDescriptor *[1]":
                continue
            rtti_base_class_descriptor_address = address_factory.getAddress(
                hex(memory.getInt(rtti_class_array_address.add(i.getOffset()))))
            rtti_base_class_descriptor_name = "RTTI_Base_Class_Array"
            symbol_table.createLabel(rtti_base_class_descriptor_address, rtti_base_class_descriptor_name, class_class, SourceType.IMPORTED)
            break
        else:
            break


def main(program, state):
    dtms = state.getTool().getService(DataTypeManagerService).getDataTypeManagers()
    dtps = [DataTypeParser(dtm, None, None, DataTypeParser.AllowedDataTypes.ALL) for dtm in dtms]
    script_dir = os.path.dirname(__file__)
    data = json.load(open(os.path.join(script_dir, os.path.pardir, os.path.pardir, "extracted_reversing_data_bw_141.json")))
    import_types(dtms, program, data)
    import_functions(program, dtps, data, "win")
    import_globals(program, dtps, data)
    infer_rtti_from_vtable(program, dtps, data)

    print("Finished")
