import re
import capstone
import pefile

from dataclasses import dataclass
from capstone.x86_const import X86_OP_REG, X86_OP_IMM, X86_OP_MEM
from collections import OrderedDict
from pathlib import Path


COMMENT_INDICATIOR = '//'
JMP_TARGET_PREFIX = "_jmp_addr_"
REGISTERS_32_BIT = {'eax', 'ebx', 'ecx', 'edx', 'ebp', 'edi', 'esi', 'esp'}
REGISTERS = {'al', 'bl', 'cl', 'dl', 'ah', 'bh', 'ch', 'dh'}.union(REGISTERS_32_BIT)
RE_ESP_RELATIVE_ACCESS = re.compile(r"(\[esp(?:\s*[\+\-]\s*[a-zA-Z]\w*(?:\s*\*\s*\d+)?)?)\]")
OPERANDLESS_INSTRUCTIONS = [
    'stos',
    'lods',
    'scas',
    'cmps',
]
MEMORY_UNIT_TYPE_NAMES = {
    1: "byte",
    2: "word",
    4: "dword",
    8: "qword",
    10: "tbyte",
    16: "xmmword",
    28: "byte",  # placeholder, i don't know what name this would have
}

@dataclass
class Snippet:
    type_: str
    start: int
    end: int

    def __repr__(self) -> str:
        return f"Snippet: {self.type_}, [0x{self.start:08x}, 0x{self.end:08x})"

    @property
    def range(self) -> tuple[int, int]:
        return self.start, self.end

    @property
    def size(self) -> int:
        return self.end - self.start

    def disassemble(self, md: capstone.Cs, code: bytes, program_base: int):
        """Disassemble a snippet of code and return the disassembly lines."""
        region = code[self.start - program_base:self.end - program_base]
        return md.disasm(region, self.start)


def initialize_disassembler() -> capstone.Cs:
    """Initialize the Capstone disassembler."""
    md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_32)
    md.detail = True
    return md


def get_segment_data_addr_op(addr: int, program_base: int, sections: OrderedDict[str, pefile.SectionStructure]):
    for name, section in sections.items():
        if section.VirtualAddress <= addr - program_base < section.VirtualAddress + section.Misc:
            offset = addr - program_base - section.VirtualAddress
            return f"{name.lstrip('.')}_bytes + {hex(offset)}"
    return None


def is_operandless_instruction(instruction: capstone.CsInsn) -> bool:
    mnemonic = instruction.mnemonic.lower()
    for pattern in OPERANDLESS_INSTRUCTIONS:
        for sz in 'bwdq':
            if (pattern + sz) in mnemonic:
                return True
    for i, sz in enumerate('bw'):
        if ('movs' + sz) in mnemonic:
            if mnemonic.startswith('rep '):
                return True
            if instruction.size == (1 << i):
                return True
    return False


def twos_comp(val, bits):
    """compute the 2's complement of int value val"""
    if (val & (1 << (bits - 1))) != 0: # if sign bit is set e.g., 8bit: 128-255
        val = val - (1 << bits)        # compute negative value
    return val                         # return positive value as is


def hex_ex(value: int, size: int, allow_neg: bool=False):
    if allow_neg:
        if value > 0 and size < 4:
            try:
                value = int.from_bytes(value.to_bytes(size), signed=True)
            except:
                pass
        return f"{'-' if value < 0 else ''}0x{abs(value):>0{2 * size}x}"
    else:
        if value < 0:
            value = twos_comp(value, size * 8)
        value &= ((1 << (size * 8)) - 1)
        return f"0x{value:>0{2 * size}x}"


def get_operand_str(program_base: int, sections: OrderedDict[str, pefile.SectionStructure], operand: capstone.x86.X86Op, instruction: capstone.CsInsn):
    if operand.type == X86_OP_REG:
        return instruction.reg_name(operand.reg)
    elif operand.type == X86_OP_IMM:
        return hex_ex(operand.value.imm, instruction.imm_size, not (
            (instruction.mnemonic == 'cmp' and operand.value.imm in {0xf8fe, 0x0100}) or
            (instruction.mnemonic == 'and' and operand.value.imm in {0xfcff})
        ))
    elif operand.type == X86_OP_MEM:
        segment_part = f"{MEMORY_UNIT_TYPE_NAMES[operand.size]} ptr "
        if operand.value.mem.segment:
            segment_part = f"{instruction.reg_name(operand.value.mem.segment)}:"
        elements = []
        if operand.value.mem.base != 0:
            elements.append(instruction.reg_name(operand.value.mem.base))
        if operand.value.mem.index != 0:
            elements.append(instruction.reg_name(operand.value.mem.index) + " * " + hex(operand.value.mem.scale))
        if not elements:
            addr_op = get_segment_data_addr_op(operand.value.mem.disp, program_base, sections)
            elements.append(addr_op or hex(operand.value.mem.disp))
        elif instruction.disp_size:
            elements.append(hex_ex(operand.value.mem.disp, instruction.disp_size, True))
        return f"{segment_part}[{' + '.join(elements)}]"
    else:
        assert(False)


def make_db_from_instr(bytes):
    result = ".byte " + ", ".join(map(hex, bytes))
    return result

def patch_line_instruction(mnemonic, op_str, bytes):
    BYTES_BLACKLIST = [
        b'\x05\x00\x00\x00\x00',         # ADD        EAX, 0x00000000
        b'\x8d\x74\x26\x00',             # LEA        ESI, [ESI]
        b'\x8d\xb4\x26\x00\x00\x00\x00', # LEA        ESI, [ESI]
        b'\x8d\xbc\x27\x00\x00\x00\x00', # LEA        EDI, [EDI]
    ]
    if bytes[:2] == b'\x66\x81' and bytes[-1:] == b'\xff':
        return '.byte', make_db_from_instr(bytes).lstrip(".byte ") + f"{COMMENT_INDICATIOR} {mnemonic} {op_str}"

    # TODO: This should probably happen in process_operands
    if bytes[:-1] in [b'\x6a', b'\x83\xc8', b'\x83\xc1']:
        operands = op_str.split(", ")
        return mnemonic, ", ".join(operands[:-1] + [hex(int.from_bytes(bytes[-1:], signed=True))])

    if bytes == b'\x64\x8f\x05\x00\x00\x00\x00':
        return 'pop', f"dword ptr {op_str}"
    if bytes in BYTES_BLACKLIST:
        return '.byte', make_db_from_instr(bytes).lstrip(".byte ") + f"{COMMENT_INDICATIOR} {mnemonic} {op_str}"
    if bytes[0] == 0x72: # Relative short jump
        return '.byte', make_db_from_instr(bytes).lstrip(".byte ") + f"{COMMENT_INDICATIOR} {mnemonic} {op_str}"
    return mnemonic, op_str


def process_jmp_operand_refs(op_str: str, program_base: int, addr_referred_to: set[int]):
    try:
        op_int = int(op_str, 0)
        assert(op_int >= program_base)
        op_str = f"{JMP_TARGET_PREFIX}0x{op_int:08x}"
        addr_referred_to.add(op_int)
    except ValueError:
        pass
    return op_str


def is_alternative_encoding(instruction: capstone.CsInsn):
    if instruction.bytes == b'\xdc\xc0': # fadd st(0), st(0)
        return True
    if len(instruction.operands) == 2 and instruction.operands[0].type == capstone.CS_OP_REG and instruction.operands[1].type == capstone.CS_OP_REG:
        byte_to_check = instruction.bytes[0]
        if byte_to_check == 0x66:
            byte_to_check = instruction.bytes[1]
        if instruction.mnemonic == 'mov' and byte_to_check in {0x8a, 0x8b}:
            return True
        if instruction.mnemonic == 'cmp' and byte_to_check in {0x3a, 0x3b}:
            return True
        if instruction.mnemonic == 'and' and byte_to_check in {0x22, 0x23}:
            return True
        if instruction.mnemonic == 'or'  and byte_to_check in {0x0a, 0x0b}:
            return True
        if instruction.mnemonic == 'xor' and byte_to_check in {0x32, 0x33}:
            return True
        if instruction.mnemonic == 'add' and byte_to_check in {0x02, 0x03}:
            return True
        if instruction.mnemonic == 'sub' and byte_to_check in {0x2a, 0x2b}:
            return True
        if instruction.mnemonic == 'adc' and byte_to_check in {0x12, 0x13}:
            return True
        if instruction.mnemonic == 'sbb' and byte_to_check in {0x1a, 0x1b}:
            return True
    if len(instruction.operands) == 2 and instruction.operands[0].type == capstone.CS_OP_REG and instruction.operands[1].type == capstone.CS_OP_IMM:
        byte_to_check = instruction.bytes[0]
        if byte_to_check == 0x66:
            byte_to_check = instruction.bytes[1]
            if instruction.mnemonic == 'and' and byte_to_check in {0x83}:
                return True
    return False


def process_operands(instruction: capstone.CsInsn, program_base: int, sections: OrderedDict[str, pefile.SectionStructure], addr_referred_to: set[int]):
    """Process instruction operands to handle jumps and data references."""
    mnemonic = instruction.mnemonic
    op_str = instruction.op_str

    # Use custom alternative alias for the opcodes that clang chooses
    if is_alternative_encoding(instruction):
        mnemonic = mnemonic + ".s"

    if mnemonic[-1] == 'w':
        split = mnemonic.split(" ")
        if len(split) == 2 and split[0] in {'rep', 'repe'} and instruction.bytes[0] == 0x66:
            mnemonic = f'data16 {split[0]} {split[1][:-1]}d'
    if is_operandless_instruction(instruction):
        return mnemonic, ""
    elif mnemonic in {'xchg'} and len(instruction.operands) == 2 and instruction.operands[0].type == X86_OP_REG and instruction.operands[1].type == X86_OP_REG:
        op_str = f"{instruction.reg_name(instruction.operands[1].reg)}, {instruction.reg_name(instruction.operands[0].reg)}"
    elif instruction.group(capstone.CS_GRP_JUMP) or instruction.group(capstone.CS_GRP_CALL):
        if instruction.operands[0].type == X86_OP_MEM:
            replacement = get_segment_data_addr_op(instruction.operands[0].mem.disp, program_base, sections)
            if replacement:
                op_str = op_str.replace(hex(instruction.operands[0].mem.disp), replacement)
        elif mnemonic in {'call'}:
            op_str = get_operand_str(program_base, sections, instruction.operands[0], instruction)
        op_str = process_jmp_operand_refs(op_str, program_base, addr_referred_to)
    elif mnemonic not in {'fxch', 'sal', 'sar', 'shl', 'shr', 'rcr', 'rol', 'or'}:
        op_strs = [get_operand_str(program_base, sections, ops, instruction) for ops in instruction.operands]
        if mnemonic in {'rep movsd', 'movsd'} and len(op_strs) == 2 and op_strs[0].startswith('es:[') and ' ptr [' in op_strs[1]:
            op_strs[1] = op_strs[1].replace(' ptr [', ' ptr ds:[')
        op_str = ", ".join(op_strs)

    if mnemonic in {'fadd', 'fsub', 'fsubr', 'fmul', 'fdiv', 'fdivr', 'fcomi'}:
        if len(instruction.operands) == 1 and op_str.startswith("st("):
            op_str = "st, " + op_str
    elif mnemonic in {'faddp', 'fsubp', 'fsubrp', 'fmulp', 'fdivp', 'fdivrp'}:
        if len(instruction.operands) == 1 and op_str.startswith("st("):
            op_str = op_str + ", st"

    if mnemonic in {
        "mov", "lea", "inc",
        "fld",  "fst",  "fcom",  'fadd',  'fsub',  'fmul',  'fdiv',
        "fild", "fist", "ficom", 'fiadd', 'fisub', 'fimul', 'fidiv',
        "fldr", "fstr", "fcomr", 'faddr', 'fsubr', 'fmulr', 'fdivr',
        "fldp", "fstp", "fcomp",
        'fcomi',
    }:
        if instruction.disp_size == 1:
            mnemonic = "{disp8} " + mnemonic
        elif instruction.disp_size == 4:
            mnemonic = "{disp32} " + mnemonic
    elif instruction.group(capstone.CS_GRP_JUMP):
        if instruction.disp_size == 1:
            mnemonic = "{disp8} " + mnemonic
        elif instruction.imm_size == 1:
            mnemonic = "{disp8} " + mnemonic
        elif instruction.imm_size == 4:
            mnemonic = "{disp32} " + mnemonic

    return mnemonic, op_str


def output_disassembly(output, addr_referred_to: set[int], program_base: int, snippets: list[Snippet], disassembly_map: dict[int, list[capstone.CsInsn]], code: bytes, opt_str_line_map: dict[int, list[tuple[str, str]]]):
    max_label_str_length = len(JMP_TARGET_PREFIX) + len("0x00000000 ")

    procname = f"start_0x{snippets[0].start:08x}_0x{snippets[-1].end:08x}"
    output.write(f"{procname}:\n")

    last_byte_address = 0

    for snippet in snippets:
        if snippet.start < last_byte_address:
            raise RuntimeError(f"snippet overlap detected: {snippet.start:08x} < {last_byte_address:08x}")

        output.write(f"{COMMENT_INDICATIOR} {snippet}\n")
        if snippet.type_ == 'asm':
            disassembled_lines = disassembly_map[snippet.start]
            opt_str_lines = opt_str_line_map[snippet.start]
            max_mnemonic_length, max_opt_str_length = (
                max(map(lambda a: len(a[0]), opt_str_lines)),
                max(map(lambda a: len(a[1]), opt_str_lines))
            )

            for i, (mnemonic, op_str) in zip(disassembled_lines, opt_str_lines):
                mnemonic, op_str = patch_line_instruction(mnemonic, op_str, i.bytes)
                label = " " * max_label_str_length
                if i.address in addr_referred_to:
                    label = f"{JMP_TARGET_PREFIX}0x{i.address:08x}:"
                output.write(f"{label}    {mnemonic:<{max_mnemonic_length + 4}} {op_str:<{max_opt_str_length}} {COMMENT_INDICATIOR} 0x{i.address:08x}    {''.join(f'{byte:02x}' for byte in i.bytes)}\n")
        else:
            extra_bytes = code[snippet.start-program_base:snippet.end-program_base]
            output.writelines(f".byte {', '.join(f'0x{b:02x}' for b in extra_bytes[i: i + 4]):<27} {COMMENT_INDICATIOR} 0x{snippet.start + i:08x}\n" for i in range(0, len(extra_bytes), 4))

        output.write("\n")
        last_byte_address = snippet.end


def output_extern_jmp_addr(output, addrs_referred_to, exclude: tuple[int, int]):
    for addr in sorted(addrs_referred_to):
        if not (exclude[0] <= addr < exclude[1]):
            label = f"{JMP_TARGET_PREFIX}0x{addr:08x}"
            output.write(f".extern {label}\n")


def output_public_jmp_exports(output, addrs_referred_to, include: tuple[int, int]):
    for addr in sorted(addrs_referred_to):
        if include[0] <= addr < include[1]:
            label = f"{JMP_TARGET_PREFIX}0x{addr:08x}"
            output.write(f".globl {label}\n")


def output_incomplete_jmp_addr_assembly(output, addr_referred_to, program_base, include: tuple[int, int], exclude: tuple[int, int], max_label_str_length, max_opt_str_length):
    for addr in addr_referred_to:
        if (include[0] <= addr < include[1]) and not (exclude[0] <= addr < exclude[1]):
            org_staement = f"org 0x{addr - program_base - 0x1000:08x}"
            label = f"{JMP_TARGET_PREFIX}0x{addr:08x}"
            padding = max_label_str_length + max_opt_str_length + 8 - len(org_staement) + len(label)
            output.write(f"{org_staement:<{padding}}{COMMENT_INDICATIOR} 0x{addr:08x} - 0x{program_base + 0x1000:08x}\n")
            output.write(f"{label}:    int 3\n")


def inc_filename(output_file: Path, seg_name, snippet: tuple[int, int]):
    return output_file.parent / (output_file.stem.replace(f".{snippet[0]:08x}-{snippet[1]:08x}", "") + f".{seg_name}.inc")


def process_disssembled_lines(disassembled_lines: list[capstone.CsInsn], program_base: int, sections: OrderedDict[str, pefile.SectionStructure]) -> tuple[list[str], set[int]]:
    opt_str_lines: list[tuple[str, str]] = list()
    addr_referred_to: set[int] = set()
    for i in disassembled_lines:
        try:
            memnonic, op_str = process_operands(i, program_base, sections, addr_referred_to)
            opt_str_lines.append((memnonic, op_str))
        except Exception:
            import sys
            sys.stderr.write(f"Error processing {i}\n")
            raise
    return opt_str_lines, addr_referred_to


def output_assembly(md, code: bytes, program_base: int, size_of_stack: int, sections: OrderedDict[str, pefile.SectionStructure], snippets: list[Snippet], exteral_addresses_refs: set[int], output_file: Path):
    """Output assembly instructions to a file or print to console."""

    disassembly_map = dict()
    opt_str_line_map: dict[int, list[tuple[str, str]]] = dict()
    addr_referred_to: set[int] = set()

    for snippet in snippets:
        if snippet.type_ == 'asm':
            disassembly_map[snippet.start] = list(snippet.disassemble(md, code, program_base))
            l, a = process_disssembled_lines(disassembly_map[snippet.start], program_base, sections)
            opt_str_line_map[snippet.start] = l
            addr_referred_to.update(a)

    with output_file.open("w") as output:
        output.write(f"""\
.intel_syntax noprefix
.align 16

""")

        for seg in sections:
            extern_name = seg.lstrip(".") + "_bytes"
            output.write(f".extern {extern_name}\n")
        output.write("\n")

        group_range = (snippets[0].start, snippets[-1].end)

        output_extern_jmp_addr(output, exteral_addresses_refs.intersection(addr_referred_to), group_range)
        output.write("\n")

        output_public_jmp_exports(output, exteral_addresses_refs, group_range)
        output.write("\n")

        # output.write(".code\n")
        # output.write("\n")

        # output_incomplete_jmp_addr_assembly(output, addr_referred_to, program_base, text_range, snippet, max_label_str_length, max_opt_str_length)
        # output.write("\n")

        output_disassembly(output, exteral_addresses_refs, program_base, snippets, disassembly_map, code, opt_str_line_map)


def output_data_inc(program_base, code, segment, output_file: Path) -> int:
    section_alignment = segment.pe.OPTIONAL_HEADER.SectionAlignment
    segment_virtual_size = segment.Misc
    segment_virtual_size_aligned = (segment_virtual_size + section_alignment - 1) & ~(section_alignment - 1)
    name = segment.Name.decode().rstrip('\0')

    with output_file.open("w") as output:
        paddr = segment.PointerToRawData
        size = segment.SizeOfRawData
        vaddr = program_base + segment.VirtualAddress
        vsize = segment_virtual_size_aligned
        undef_size = vsize - size
        output.write(f"{COMMENT_INDICATIOR} {name} paddr: 0x{paddr:08x} size: {hex(size)} vaddr: 0x{vaddr:08x} vsize: {hex(vsize):>8}\n")
        output.write(f"{segment.Name.decode().rstrip('\0').lstrip('.')}_bytes ")
        output.write("".join(f".byte 0x{c:02x}               {COMMENT_INDICATIOR} [{hex(i)}] 0x{vaddr:08x} + {hex(i)} = 0x{vaddr + i:08x}\n" for i, c in enumerate(code[segment.PointerToRawData:segment.PointerToRawData+size])))
        if undef_size:
            output.write(f".byte 0x{undef_size:08x} DUP (0x00) {COMMENT_INDICATIOR} 0x{vaddr:08x} + 0x{size:08x} = 0x{vaddr + size:08x} to 0x{vaddr:08x} + 0x{vsize:08x} = 0x{vaddr + vsize:08x}\n")

    return segment_virtual_size_aligned


def get_segments(pe) -> tuple[int, int, int, OrderedDict[str, pefile.SectionStructure]]:
    program_base = pe.OPTIONAL_HEADER.ImageBase
    file_alignment = pe.OPTIONAL_HEADER.FileAlignment
    size_of_stack = pe.OPTIONAL_HEADER.SizeOfStackCommit

    segments: OrderedDict[str, pefile.SectionStructure] = OrderedDict()
    for section in pe.sections:
        name = section.Name.decode("ascii").strip("\x00")
        segments[name] = section
    return program_base, file_alignment, size_of_stack, segments


def export_asm(code: bytes, pe, output_file: Path, snippets: list[Snippet], exteral_addresses_refs: set[int]=set()):
    program_base, file_alignment, size_of_stack, segments = get_segments(pe)
    segments.pop(".text")

    md = initialize_disassembler()

    output_assembly(md, code, program_base, size_of_stack, segments, snippets, exteral_addresses_refs, output_file)
    sections_start = OrderedDict((name, program_base + s.VirtualAddress) for name, s in segments.items())
    return dict(program_base=program_base, file_alignment=file_alignment, sections_start=sections_start)


def get_all_referred_to_addresses(code: bytes, pe, snippet: Snippet) -> set[int]:
    program_base = pe.OPTIONAL_HEADER.ImageBase

    md = initialize_disassembler()
    disassembled_lines: list[capstone.CsInsn] = list(snippet.disassemble(md, code, program_base))

    addr_referred_to = set()
    for instruction in disassembled_lines:
        if instruction.group(capstone.CS_GRP_JUMP) or instruction.group(capstone.CS_GRP_CALL):
            process_jmp_operand_refs(instruction.op_str, program_base, addr_referred_to)

    return addr_referred_to


if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Disassemble and output assembly code.")
    parser.add_argument("--input", "-i", type=Path, default=Path("runblack.nocd.1.20.exe"), help="Input file for the binary code")
    parser.add_argument("--output", "-o", type=Path, default=Path("runblack.reassemble.asm"), help="Optional output file for the assembly code")
    args = parser.parse_args()
    pe = pefile.PE(args.input.as_posix())
    with args.input.open("rb") as f:
        export_asm(
            pe=pe,
            code=f.read(),
            output_file=args.output,
            snippets=[Snippet("asm", 0x007a238d, 0x007a2390)],
        )
