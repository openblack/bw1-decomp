import subprocess
import re
import json
import yaml
from dataclasses import dataclass
from tqdm import tqdm
import os
from pathlib import Path
from clang.cindex import Index, CursorKind, Diagnostic, Config
import sys
import tempfile
import rapidfuzz
from glob import glob


class ClangMSVCMangler:
    def __init__(self):
        llvm_bin = Path(r"C:\Program Files\LLVM\bin")
        Config.set_library_path(str(llvm_bin))
        self.index = Index.create()
        self.resource_dir = subprocess.check_output(['clang', '-print-resource-dir']).strip().decode('utf-8')
    
    def generate_msvc_mangled_name(self, source: str, function_name: str) -> str:
        mangled_names = {}
        system_include_paths = [
            Path("/usr/include/wine/msvcrt"),
            Path("/usr/include/wine/windows"),
        ]
        include_paths = [
            Path(os.getcwd()),
            Path(os.getcwd()) / "libs",
        ]
        args = [
            '-target', 'i686-pc-windows-msvc',
            '-m32',
            "-resource-dir", self.resource_dir,
            "-Wno-microsoft-enum-forward-reference",
        ]
        for p in system_include_paths:
            args.append(f"-isystem{p.as_posix()}")
        for p in include_paths:
            args.append(f"-I{p.as_posix()}")
        translation_unit = self.index.parse('tmp.cpp', args=args, unsaved_files=[('tmp.cpp', source)])
        error_strings = []
        for diagnostic in translation_unit.diagnostics:
            if diagnostic.severity >= Diagnostic.Error:
                error_strings.append(str(diagnostic))
            if diagnostic.severity >= Diagnostic.Warning:
                sys.stderr.write(f"{diagnostic}\n")

        if error_strings:
            sys.stderr.flush()
            print(args)
            print("\n".join(f"{i}\t{l}" for i, l in enumerate(source.split("\n"), 1)))
            raise RuntimeError("Error parsing source:\n\t" + "\n\t".join(error_strings))

        if translation_unit:
            self._visit_cursors(translation_unit.cursor, mangled_names, function_name)

        return mangled_names[function_name]
    
    def _visit_cursors(self, cursor, mangled_names: dict, target_name: str):
        if cursor.kind in {CursorKind.FUNCTION_DECL, 
                          CursorKind.CXX_METHOD,
                          CursorKind.CONSTRUCTOR,
                          CursorKind.DESTRUCTOR}:
            func_name = cursor.spelling
            if func_name == target_name:
                try:
                    mangled = cursor.mangled_name
                    if mangled:
                        mangled_names[func_name] = mangled
                except:
                    pass
        for child in cursor.get_children():
            self._visit_cursors(child, mangled_names, target_name)


EXE_FILE_PATH = "build-relwithdebug/runblack-reassembled.exe"
PDB_FILE_PATH = "build-relwithdebug/runblack-reassembled.exe.pdb"
CXX_FILT_PATH = "../binutils-2.30.0/binutils/cxxfilt"

def cxx_filt(mangled: str) -> str:
    return subprocess.run([CXX_FILT_PATH, mangled], capture_output=True, text=True, check=True).stdout.strip()

class PdbYaml:
    @dataclass
    class VftableEntry:
        name: str
        return_type: int
        args: list[int]
        call_conv: str
    
    def _decode_vftable_entries(self, type_name):
        field_list = self.get_type(self._vftable_decls_raw[type_name]['FieldList'])['FieldList']
        entries = list()
        for member in field_list:
            member = member['DataMember']
            name = member['Name']
            if member['Type'] < 0x1000:
                raise RuntimeError(f"The {type_name} vftable isn't completely defined (is it using intptr for the {name} entry?)")
            pointer = self.get_type(member['Type'])
            if name == 'super':
                assert(pointer['Kind'] == 'LF_STRUCTURE' and pointer['Class']['Name'].endswith('Vftable'))
                entries.extend(self._decode_vftable_entries(pointer['Class']['Name'].removesuffix("Vftable")))
                continue
            pointer = pointer['Pointer']
            referent = self.get_type(pointer['ReferentType'])
            referent = referent['Procedure']
            argument_list = self.get_type(referent['ArgumentList'])['ArgList']
            entries.append(self.VftableEntry(name, referent['ReturnType'], argument_list['ArgIndices'], referent['CallConv']))
        return entries

    def __init__(self, pdb_file: str):
        result = subprocess.run(
            [
                "llvm-pdbutil", "pdb2yaml",
                "--tpi-stream", "--publics-stream", # "--ipi-stream",
                "--module-syms",
                pdb_file
            ],
            capture_output=True, text=True, check=True
        )
        self._pdb_yaml = yaml.load(result.stdout, yaml.CLoader) # unsafe but we trust the output of llvm-pdbutil
        self._tpi = self._pdb_yaml.get("TpiStream", {}).get("Records", [])
        self._dbi = self._pdb_yaml.get("DbiStream", {}).get("Modules", [])
        self._linker_module = next(i for i in self._dbi if i['Module'] == '* Linker *')['Modi']['Records']
        self.sections = [i['SectionSym'] for i in self._linker_module if i['Kind'] == 'S_SECTION']
        self.structures = [i['Class'] for i in self._tpi if i['Kind'] == 'LF_STRUCTURE']
        self.enums = [i['Enum'] for i in self._tpi if i['Kind'] == 'LF_ENUM']
        self.unions = [i['Union'] for i in self._tpi if i['Kind'] == 'LF_UNION']
        self.type_map = {v['Class']['Name']: i for i, v in enumerate(self._tpi, 0x1000) if v['Kind'] == 'LF_STRUCTURE'}
        self._publics = self._pdb_yaml.get("PublicsStream", {}).get("Records", [])
        self.rtti_base_class_arrays = [i['PublicSym32'] for i in self._publics if i['PublicSym32']["Name"].startswith("??_R2")]
        self._vftable_decls_raw = {i['Name'].removesuffix("Vftable"): i for i in self.structures if i['Name'].endswith("Vftable") and 'ForwardReference' not in i['Options']}
        self.vftable_decls = {key: self._decode_vftable_entries(key) for key in self._vftable_decls_raw.keys()}
    
    def get_type(self, index):
        if index < 0x1000:
            return dict(Kind="SimpleTypeKind", Index=index) # https://llvm.org/docs/PDB/TpiStream.html#type-indices
        return self._tpi[index - 0x1000]


def get_class_hierarchy(pdb):
    result = []
    data_section = pdb.sections[2]
    with open(EXE_FILE_PATH, "rb") as f:
        for p in tqdm(pdb.rtti_base_class_arrays, desc="Generating class hierachy"):
            section = pdb.sections[p["Segment"] - 1]
            offset = section['Rva'] + p['Offset']
            addrs = []
            names = []
            f.seek(offset)
            addr = int.from_bytes(f.read(4), 'little')
            while addr != 0:
                addrs.append(addr)
                addr = int.from_bytes(f.read(4), 'little')
            if any(a for a in addrs if a > 0x009bace4):
                continue
            for a in addrs:
                f.seek(a - 0x00400000)
                addr = int.from_bytes(f.read(4), 'little')
                f.seek(addr - 0x00400000 + 8)
                chars = []
                while True:
                    byte = f.read(1)
                    if byte == b'\x00' or byte == b'':
                        break
                    chars.append(byte)
                names.append(b''.join(chars).decode('utf-8', errors='replace'))
            unmangled_names = map(lambda n: subprocess.run(["llvm-undname", n, PDB_FILE_PATH], capture_output=True, text=True).stdout.splitlines()[1].removesuffix(" `RTTI Type Descriptor Name'"), names)
            result.append(list(zip(names, unmangled_names)))
    return result

def build_class_trees(pdb, rebuild):
    if rebuild:
        # This takes a long time to run and can have its results stored
        class_hierarchy = get_class_hierarchy(pdb)
        with open("class_hierarchy.json", "w") as f:
            json.dump(class_hierarchy, f)
            exit(0)
    with open("class_hierarchy.json", "r") as f:
        class_hierarchy = json.load(f)
    from treelib import Tree
    tree = Tree()
    tree.create_node("RTTI types", "RTTI types")
    for hiers in class_hierarchy:
        parent = "RTTI types"
        for i in hiers[::-1]:
            if i[1] not in tree:
                tree.create_node(i[1], i[1], parent=parent)
            parent = i[1]
    return tree


def get_vtable_map(tree, pdb):
    vtable_function_map = {}
    for node_id in tree.expand_tree():
        node = tree[node_id]
        if node.is_root(tree.identifier):
            continue
        type_name = node.tag.removeprefix("class ").removeprefix("struct ")
        fields = pdb.vftable_decls.get(type_name)
        parent_node = tree.parent(node_id)
        parent_type_name = parent_node.tag.removeprefix("class ").removeprefix("struct ")
        if fields is None:
            if not parent_node.is_root(tree.identifier):
                fields = vtable_function_map[parent_type_name]
            else:
                raise ValueError(f"No base vftable for tree of {type_name}")
        vtable_function_map[type_name] = fields
    return vtable_function_map


def get_all_entries_in_lines(entry_lines: list[str]):
    result = []
    for _, l in entry_lines:
        assert(l.startswith(".long "))
        for j in l[len(".long "):].split(","):
            result.append(j.strip())
    return result


def mangle_namespace_typename(name):
    parts = name.split("::")
    return "@".join(parts[::-1])


def unmangle_namespace_typename(name):
    parts = name.split("@")
    return "::".join(parts[::-1])


def find_base_declaration(tree, vftables, func_addr, type_name):
    vtable = vftables[mangle_namespace_typename(type_name)]
    func_index = vtable.index(func_addr)
    node = tree.get_node(f"struct {type_name}") or tree.get_node(f"class {type_name}")
    while True:
        parent = tree.parent(node.tag)
        parent_type_name = parent.tag.removeprefix("class ").removeprefix("struct ")
        parent_vtable = vftables.get(parent_type_name) # if not in here it means we already have this in C so each function is named
        if parent_vtable and len(parent_vtable) > func_index and parent_vtable[func_index] == func_addr:
            type_name = parent_type_name
            node = parent
        else:
            break
    return type_name


def build_vftable_addrs(vtable_function_count_map):
    literal_func_addrs = dict()
    class_vftables = dict()
    VFTABLE_FILEPATHS = list(map(Path, glob("src/asm/unprocessed/rdata.*-vftables.asm")))
    for vftable_filepath in VFTABLE_FILEPATHS:
        with vftable_filepath.open() as f:
            lines = enumerate(f.readlines())
            # Ignore all blank lines
            lines = [(i, l) for i, l in lines if l.strip()]
            for i in range(len(lines)):
                l = lines[i][1]
                if not l.startswith("VftableAndRTTI"):
                    continue
                name = l.split()[1]
                mangled_name = name
                if "@std@" in mangled_name or mangled_name.endswith("@std"):
                    continue
                class_vftable = list()
                if name.startswith("?$"):
                    pre, post = name.split("@", 1)
                    template_args = list()
                    if post.endswith("@@"):
                        if post.startswith("V"):
                            template_args.append("class " + post[1:-2])
                        else:
                            assert(False)
                    else:
                        template_args_mangled = list(post)
                        for a in template_args_mangled:
                            template_args.append({"M": "float", "K": "unsigned long"}[a])
                    name = f"{pre.removeprefix("?$")}<{', '.join(template_args)}>"
                elif "@" in name:
                    parts = name.split("@")
                    name = "::".join(parts[::-1])
                # TODO: when building this map it should default to the parent's count
                num_functions = vtable_function_count_map[name]
                entry_lines = lines[i+1:i+1+num_functions]
                num_commas = sum(map(lambda x: x[1].count(","), entry_lines))
                entry_lines = lines[i+1:i+1+num_functions-num_commas]
                for e in get_all_entries_in_lines(entry_lines):
                    e = e.split("//")[0].rstrip()
                    if e.startswith("0x"):
                        literal_func_addrs[e] = name
                    class_vftable.append(e)
                class_vftables[mangled_name] = class_vftable
    return class_vftables, literal_func_addrs


def get_literal_bases(tree, literal_func_addrs, class_vftables):
    literal_func_base_classes = dict()
    for addr, type_name in literal_func_addrs.items():
        literal_func_base_classes[addr] = find_base_declaration(tree, class_vftables, addr, type_name)
    return literal_func_base_classes


ref_param_set = {
    ("Update", 6),
    ("UpdateMain", 6),
    ("UpdateState", 6),
    ("ValidToApplyThisToMapCoord", 3),
    ("IsPosValidForMapCellExistance", 2),
    ("CallVirtualFunctionsForCreation", 2),
    ("IsPosValidForTurnAngle", 2),
    ("Save", 2),
    ("SaveExtraData", 2),
    ("SaveObject", 2),
    ("SaveObject", 3),
    ("Load", 2),
    ("GetPileWood", 2),
    ("IsOkToCreateAtPos", 2),
    ("GetNearestPathTo", 2),
    ("UseFootpathIfNecessary", 3),
    ("InitialisePhysics", 2),
    ("InitialisePhysics", 3),
    ("ApplyThisToMapCoord", 3),
    ("AreWeThere", 2),
    ("InitWithPos", 3),
    ("InitWithPos", 5),
    ("InitWithObject", 5),
    ("SpellEvent", 2),
    ("DoCreatureMimicAfterAddingResource", 3),
    ("SetNewWander", 2),
    ("MoveByTeleport", 2),
    ("GetBaseInfo", 2),
    ("AddResource", 2),
    ("FillInEffectDefenceMultiplier", 2),
    ("GetSubMeshData", 2),
    ("InitialisePhysicsFromHand", 2),
    ("InitialisePhysicsFromHand", 3),
    ("GetBoundingSphere", 2),
    ("ApplyEffect", 2),
    ("GetMapChild", 2),
}


def mac_mangle(pdb, namespace: str, func):
    def resolve_type_mac(pdb, a, use_ref = False, use_long = False):
        """Helper function to resolve types for Mac mangling"""
        ref_level = 0
        const = False
        while True:
            t = pdb.get_type(a)
            if t['Kind'] == 'LF_POINTER':
                ref_level += 1
                a = t['Pointer']['ReferentType']
            elif t['Kind'] == 'LF_MODIFIER':
                if 'Const' in t['Modifier']['Modifiers']:
                    const = True
                    a = t['Modifier']['ModifiedType']
                else:
                    assert False
            else:
                break
        
        if t['Kind'] in {'LF_STRUCTURE', 'LF_ENUM'}:
            arg_name = (t.get('Class') or t.get('Enum'))['Name']
            arg_name = f"{len(arg_name)}{arg_name}"
        elif t['Kind'] == 'SimpleTypeKind':
            simple_type_kind_table = {
                0x3: 'v',
                0x10: 'c',
                0x11: 's',
                0x20: 'Uc',
                0x21: 'Us',
                0x30: 'b',
                0x40: 'f',
                0x70: 'c',
                0x71: 'w',
                0x74: 'l' if use_long else 'i',
                0x75: 'Ul' if use_long else 'Ui',
            }
            kind_index = t['Index'] & 0xFF
            mode = (t['Index'] & ~0xFF) >> 8
            arg_name = simple_type_kind_table[kind_index]
            if mode == 0:
                pass
            elif mode == 4:
                arg_name = 'P' + arg_name
            else:
                assert False
        elif t['Kind'] == 'LF_PROCEDURE':
            # Handle function pointer
            proc = t['Procedure']
            ret_type = resolve_type_mac(pdb, proc['ReturnType'])
            
            # Get argument list if it exists
            arg_types = []
            if proc['ArgumentList'] != 0:
                arg_list = pdb.get_type(proc['ArgumentList'])
                if arg_list['Kind'] == 'LF_ARGLIST':
                    for arg_type_id in arg_list['ArgList']['ArgIndices']:
                        arg_types.append(resolve_type_mac(pdb, arg_type_id))
            
            if not arg_types:
                arg_types = ['v']
            
            # Mac function pointer format: PF<args>_<return_type>
            arg_name = f"PF{''.join(arg_types)}_{ret_type}"
            ref_level -= 1
        else:
            assert False, f"Unsupported type kind: {t['Kind']}"

        return f"{('R' if use_ref else '') * (ref_level)}{'C' if const else ''}{('' if use_ref else 'P') * (ref_level)}{arg_name}"

    arg_strs = []
    known_subs = {
        "CP9MapCoords": "RC9MapCoords",
        "CP7LHPoint": "RC7LHPoint",
    }
    long_param_set = {
        ("AddResource", 3),
        ("JustAddResource", 3),
        ("RemoveResource", 3),
        ("JustRemoveResource", 3),
        ("JustGetResource", 3),
        ("Init", 2),
        ("Init", 3),
        ("NumGameTurnsToReactToPredatorFunction", 3),
        ("NumGameTurnsBeforeReactingAgainToPredatorFunction", 3),
        ("NumGameTurnsToReactToCreatureFunction", 3),
        ("NumGameTurnsBeforeReactingAgainToCreatureFunction", 3),
        ("NumGameTurnsToReactToShieldFunction", 3),
        ("NumGameTurnsBeforeReactingToShieldAgainFunction", 3),
        ("NumGameTurnsToReactToBurningObjectFunction", 3),
        ("NumGameTurnsBeforeReactingAgainToBurningObjectFunction", 3),
        ("SetSpeed", 2),
        ("SetMaxObjectsToCreate", 2),
        ("DebugShowTime", 2),
        ("GetBaseInfo", 2),
        ("SetNewWander", 3),
        ("SetNewWander", 4),
        ("UpdateTime", 2),
        ("SetAnimTime", 2),
        ("SetAnimTime", 3),
        ("SetAge", 2),
        ("StandardNumGameTurnsToReactFunction", 3),
        ("StandardNumGameTurnsBeforeReactingAgainFunction", 3),
        ("StandardNumGameTurnsBeforeReactingToWoodAgainFunction", 3),
        ("SetArgumentOfSubActionAgenda", 3),
        ("GetShowNeedsPos", 2),
        ("GetSpecialPos", 2),
        ("GetResourcePos", 3),
        ("ForDrawFXGetVertexPos", 2),
        ("GetActualMemoryRequired", 2),
    }
    for i, a in enumerate(func.args):
        use_ref = False
        use_long = False
        for ref_arg_func_name, ref_arg_num in ref_param_set:
            if func.name == ref_arg_func_name and i == ref_arg_num:
                use_ref = True
        for long_arg_func_name, long_arg_num in long_param_set:
            if func.name == long_arg_func_name and i == long_arg_num:
                use_long = True
        arg_str = resolve_type_mac(pdb, a, use_ref, use_long)
        arg_strs.append(known_subs.get(arg_str, arg_str))
    
    if func.call_conv == 'NearFast' and len(arg_strs) > 1 and arg_strs[1] == 'CPv':
        arg_strs.pop(1)
    const_func = arg_strs.pop(0)[0] == 'C'
    if len(arg_strs) == 0:
        arg_strs = ['v']
    if func.name == '__dt':
        arg_strs = ['v']
    if func.name == 'SendMessageA' and arg_strs[0] == 'CPc':
        arg_strs[0] = 'PCc'
    if func.name == 'GetBaseInfo' and arg_strs[0] == 'PUl':
        arg_strs[0] = 'RUl'
    if func.name == 'GetBoundingSphere' and arg_strs[1] == 'Pf':
        arg_strs[1] = 'Rf'
    if func.name == 'GetResourceNearestEdge' and arg_strs[0] == 'P9MapCoords':
        arg_strs.pop(0)
    namespace_parts = namespace.split("::")
    formatted_parts = "".join(f"{len(part)}{part}" for part in namespace_parts)
    namespace = f"Q{len(namespace_parts)}{formatted_parts}" if len(namespace_parts) > 1 else formatted_parts
    result = f"{func.name}__{namespace}{'C' if const_func else ''}F{"".join(arg_strs)}"
    assert "::" not in result
    assert "FCv" not in result
    return result


def msvc_mangle(pdb, mangler, known_class_structs, forward_decls, namespace: str, func):
    with tempfile.NamedTemporaryFile(suffix="_forward_decls.h", delete_on_close=False) as fp:
        fp.write(";\n".join(forward_decls).encode() + b";\n")
        fp.close()

        forward_decl_filename = fp.name
        used_structs = set()
        used_enums = set()
        
        call_conv_map = {
            'NearC': '__cdecl',
            'NearFast': '__fastcall',
            'NearStd': '__stdcall',
            'ThisCall': '__thiscall'
        }

        def resolve_type(pdb, a, use_ref=False):
            ref_level = 0
            const = False
            while True:
                t = pdb.get_type(a)
                if t['Kind'] == 'LF_POINTER':
                    ref_level += 1
                    a = t['Pointer']['ReferentType']
                elif t['Kind'] == 'LF_MODIFIER':
                    if 'Const' in t['Modifier']['Modifiers']:
                        const = True
                        a = t['Modifier']['ModifiedType']
                    else:
                        assert False
                else:
                    break
            if t['Kind'] == 'LF_STRUCTURE':
                arg_name = t['Class']['Name']
                used_structs.add(arg_name)
                arg_name = "struct " + arg_name
            elif t['Kind'] == 'LF_ENUM':
                arg_name = t['Enum']['Name']
                used_enums.add(arg_name)
                arg_name = "enum " + arg_name
            elif t['Kind'] == 'SimpleTypeKind':
                simple_type_kind_table = {
                    0x3: 'void',
                    0x10: 'int8_t',
                    0x11: 'int16_t',
                    0x20: 'uint8_t',
                    0x21: 'uint16_t',
                    0x30: 'bool',
                    0x40: 'float',
                    0x70: 'char',
                    0x71: 'wchar_t',
                    0x74: 'int32_t',
                    0x75: 'uint32_t',
                }
                kind_index = t['Index'] & 0xFF
                mode = (t['Index'] & ~0xFF) >> 8
                arg_name = simple_type_kind_table[kind_index]
                if mode == 0:
                    pass
                elif mode == 4:
                    arg_name += '*'
                else:
                    assert False
            elif t['Kind'] == 'LF_PROCEDURE':
                # Handle function pointer for MSVC
                proc = t['Procedure']
                ret_type = resolve_type(pdb, proc['ReturnType'])
                
                proc_call_conv = call_conv_map.get(proc['CallConv'], '__cdecl')
                
                # Get argument list
                arg_types = []
                if proc['ArgumentList'] != 0:
                    arg_list = pdb.get_type(proc['ArgumentList'])
                    if arg_list['Kind'] == 'LF_ARGLIST':
                        for arg_type_id in arg_list['ArgList']['ArgIndices']:
                            arg_types.append(resolve_type(pdb, arg_type_id))
                
                if not arg_types:
                    arg_types = ['void']

                arg_name = f"{ret_type} ({proc_call_conv}{'*' * ref_level})({', '.join(arg_types)})"

                ref_level = 0
            else:
                raise NotImplementedError(t['Kind'])
            if const:
                arg_name = 'const ' + arg_name
            return f"{arg_name}{('&' if use_ref else '*') * ref_level}"

        arg_strs = []
        for i, a in enumerate(func.args):
            use_ref = False
            for ref_arg_func_name, ref_arg_num in ref_param_set:
                if func.name == ref_arg_func_name and i == ref_arg_num:
                    use_ref = True
            arg_strs.append(resolve_type(pdb, a, use_ref))

        ret_str = resolve_type(pdb, func.return_type)

        func_name = func.name
        c_args = arg_strs[::]
        c_ret = ret_str
        c_call_conv = "__fastcall" if func.call_conv == 'NearFast' else "ERROR_OR_MSSING_CALL_CONV"

        call_conv = func.call_conv
        if func.call_conv == 'NearFast' and len(arg_strs) > 1 and arg_strs[1] == 'const void*':
            arg_strs.pop(1)
            call_conv = "__thiscall"
        elif len(arg_strs) == 1:
            call_conv = "__thiscall"
        const_func = arg_strs.pop(0).startswith('const ')

        assert call_conv == "__thiscall"

        if func.name == 'SendMessageA' and arg_strs[0] == 'const char*':
            arg_strs[0] = 'char const*'
        if func.name == 'GetBaseInfo' and arg_strs[0] == 'uint32_t*':
            arg_strs[0] = 'uint32_t&'
        if func.name == 'GetBoundingSphere' and arg_strs[1] == 'float*':
            arg_strs[1] = 'float&'

        func_line = f"public: virtual {ret_str} {func_name}({", ".join(arg_strs)}) {'const' if const_func else ''};"

        redefinition_avoider_string = "REPLACEMECLASSREDEFINITIONAVOIDER"
        external_namespace = namespace.split("::")
        class_name = external_namespace.pop()
            
        code = f"""\
#include <stdint.h>
#include "{forward_decl_filename}"
{(f"namespace {redefinition_avoider_string}" + "::".join(external_namespace) + "{") if external_namespace else ""}
class {redefinition_avoider_string}{class_name} {{
{func_line}
}};
{"}" if external_namespace else ""}
"""
        mangled = mangler.generate_msvc_mangled_name(code, func_name)

    # remove the redefinition avoider string
    assert redefinition_avoider_string in mangled
    mangled = mangled.replace(redefinition_avoider_string, "")
    # fix structs into classes
    for s in used_structs:
        if s in known_class_structs:
            mangled = mangled.replace(f"U{s}", f"V{s}")
    
    if func.name == '__dt':
        mangled = f"??_G{mangle_namespace_typename(namespace)}@@UAEPAXI@Z"

    return mangled, c_args, c_ret, c_call_conv


def get_forward_decls(pdb, known_classes: set):
    def filter_out(string: str) -> bool:
        if string in {"max_align_t"}:
            return True
        if ":" in string:
            return True
        if "<" in string:
            return True
        return False
    forward_decls = set()
    for s in pdb.structures:
        if filter_out(s['Name']):
            continue
        if s['Name'] in known_classes:
            forward_decls.add("class " + s['Name'])
        else:
            forward_decls.add("struct " + s['Name'])
    for e in pdb.enums:
        if filter_out(e['Name']):
            continue
        forward_decls.add("enum " + e['Name'])
    for u in pdb.unions:
        if filter_out(u['Name']):
            continue
        forward_decls.add("union " + u['Name'])
    return forward_decls


def mac_function_fuzzy_match(choices, strings, threshold):
    cdist = rapidfuzz.process.cdist(strings, choices, scorer=rapidfuzz.fuzz.WRatio, processor=rapidfuzz.utils.default_process)
    substitutions = {}
    for i, s in enumerate(strings):
        best_score_idx = cdist[i].argmax()
        best_score = cdist[i][best_score_idx]
        if best_score < threshold or best_score == 100:
            continue
        best_match = choices[best_score_idx]
        if s.split("__")[0] != best_match.split("__")[0]:
            continue
        if s.split("__")[1][:3] != best_match.split("__")[1][:3]:
            continue
        if s.startswith("Load__") or s.startswith("Save__") or s.startswith("__dt__") or s.startswith("CallVirtualFunctionsForCreation__") or s.startswith("GetDebugText__") or s.startswith("ToBeDeleted__") or s.startswith("InterfaceSetInMagicHand__"):
            continue
        substitutions[s] = {
            'match': best_match,
            'score': best_score,
        }
    return substitutions

def main():
    import csv
    mac_functions = {}
    with open("mac_functions.csv") as f:
        mac_functions_reader = csv.DictReader(f)
        for row in mac_functions_reader:
            name = row["Name"].lstrip('.')
            if "__" not in name[1:]:
                continue
            mac_functions[name] = int(row['Location'], 16)
    mangler = ClangMSVCMangler()
    pdb = PdbYaml(PDB_FILE_PATH)
    tree = build_class_trees(pdb, rebuild=False)

    vtable_function_map = get_vtable_map(tree, pdb) # Fill in missing vtable class associations
    vtable_function_count_map = {k: len(v) for k, v in vtable_function_map.items()}
    class_vftables, literal_func_addrs = build_vftable_addrs(vtable_function_count_map)
    literal_func_base_classes = get_literal_bases(tree, literal_func_addrs, class_vftables)

    forward_decls = get_forward_decls(pdb, set(class_vftables.keys()))

    funcs = {e: vtable_function_map[unmangle_namespace_typename(class_name)][i] 
         for class_name, vftable in class_vftables.items() 
         for i, e in enumerate(vftable) 
         if e.startswith("0x")}
    funcs_at = {e : vtable_function_map[class_name][i] for class_name, vftable in class_vftables.items() for i, e in enumerate(vftable) if e.startswith("_") or e.startswith("@")}

    mangled_names = {}
    guessed_mac_mangled = list()

    for e in sorted(funcs.keys()):
        func = funcs[e]
        base_name = literal_func_base_classes[e]
        # TODO: For mac mangled we probably need to look-up ghidra mac function names, it will also get us the mac addr
        # TODO: For msvc mangled we need to xref with vftable declaration in the pdb and mangle using llvm
        mac_mangled = mac_mangle(pdb, base_name, func) # TODO: can't we just get this from the exported functions from mac??
        msvc_mangled, c_args, c_ret, c_call_conv = msvc_mangle(pdb, mangler, set(class_vftables.keys()), forward_decls, base_name, func)
        assert "::" not in mac_mangled
        assert "Q1" not in mac_mangled
        assert "FCv" not in mac_mangled
        assert "::" not in msvc_mangled
        mangled_names[e] = (mac_mangled, msvc_mangled, base_name, c_args, c_ret, c_call_conv)
        guessed_mac_mangled.append(mac_mangled)

    output_fuzzy_matching = False
    if output_fuzzy_matching:
        mac_fuzzy_matches = mac_function_fuzzy_match(list(mac_functions.keys()), guessed_mac_mangled, 90)
        import json
        with open("mac_function_fuzzy_match.json", "w") as f:
            json.dump([{"source": m, "rplcmt": mac_fuzzy_matches[m]["match"], "score": float(mac_fuzzy_matches[m]["score"])} for m in mac_fuzzy_matches], f)
        exit(0)

    with open("rdata_vtable_functions.csv", "w") as f:
        f.write('"msvc_addr","mac_addr","class_name","msvc_mangled","msvc_unmangled","mac_mangled","mac_unmangled"\n')
        for e in sorted(mangled_names.keys()):
            mac_mangled, msvc_mangled, class_name, c_args, c_ret, c_call_conv = mangled_names[e]
            mac_addr = f"{mac_functions[mac_mangled]:08x}" if mac_functions.get(mac_mangled) else 'inline'
            msvc_addr = f"{int(e, 16):08x}"
            mac_unmangled = cxx_filt(mac_mangled)
            c_args[0] = f"{c_args[0]} this"
            if len(c_args) > 1:
                c_args[1] = f"{c_args[1]} edx"
            for i in range(2, len(c_args)):
                if "*)" in c_args[i]:
                    offset = c_args[i].index("*)") + 1
                    c_args[i] = f"{c_args[i][:offset]} param_{i - 1}{c_args[i][offset:]}"
                else:
                    c_args[i] = f"{c_args[i]} param_{i - 1}"
            msvc_unmangled = f"{c_ret} {c_call_conv} {mac_mangled}({", ".join(c_args)})"
            assert " " not in msvc_mangled
            assert "<" not in msvc_mangled
            assert ">" not in msvc_mangled
            assert "-" not in msvc_mangled
            assert "," not in msvc_mangled
            assert "." not in msvc_mangled
            assert "{" not in msvc_mangled
            assert "}" not in msvc_mangled
            f.write(f'"{msvc_addr}","{mac_addr}","{class_name}","{msvc_mangled}","{msvc_unmangled}","{mac_mangled}","{mac_unmangled}"\n')

main()