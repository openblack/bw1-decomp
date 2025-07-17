import re
from typing import List, Optional

INDENT = 4


def handle_known_pattern_return_0(line_group: List[str]) -> str | None:
    if len(line_group) == 2:
        if (
            re.search(r'\bxor\.s\s+eax,\s*eax\b', line_group[0]) and
            re.search(r'\bret\b', line_group[1])
        ):
            return f'{' ' * INDENT}return 0;'
    return None


def handle_known_pattern_return_immediate(line_group: List[str]) -> str | None:
    if len(line_group) == 2:
        match = re.search(r'\bmov\s+ax,\s*0x([0-9a-fA-F]{4})\b', line_group[0]) or re.search(r'\bmov\s+eax,\s*0x([0-9a-fA-F]{8})\b', line_group[0])
        if match and re.search(r'\bret\b', line_group[1]):
            imm_value = int(match.group(1), 16)
            return f'{" " * INDENT}return {imm_value if imm_value < 10 else hex(imm_value)};'
    return None


def handle_known_pattern_return(line_group: List[str]) -> str | None:
    if len(line_group) == 1:
        if re.search(r'\bret\b', line_group[0]):
            return f'{' ' * INDENT}return;'
    return None

KNOWN_PATTERN_HANDLERS = [
    handle_known_pattern_return_0,
    handle_known_pattern_return_immediate,
    handle_known_pattern_return,
]


def handle_known_patterns(line_group: List[str]) -> str | None:
    for handler in KNOWN_PATTERN_HANDLERS:
        result = handler(line_group)
        if result is not None:
            return result
    return None


def is_comment(line: str) -> bool:
    return line.strip().startswith("//")


def is_label(line: str) -> bool:
    return re.match(r'^\s*[a-zA-Z_][\w]*:', line) is not None


def split_asm_line(line: str) -> tuple[Optional[str], str, Optional[str]]:
    # This captures:
    # - optional label
    # - instruction part
    # - exact trailing comment including its leading spaces
    match = re.match(r'^\s*(?:(\w+):)?\s*(.*?)((\s*//.*)?)$', line)
    if match:
        label = match.group(1)
        instruction = match.group(2).rstrip()
        comment = match.group(3) if match.group(3).strip().startswith('//') else None
        return label, instruction, comment
    return None, line.strip(), None


def get_required_attributes(input: str) -> list[str]:
    attributes = []
    if "xor.s" in input:
        attributes.append("XOR32rr_REV")
    return attributes


def convert_asm_to_c_body(input: str) -> str:
    lines = input.splitlines()
    known_resolution = handle_known_patterns(lines)
    if known_resolution is not None:
        return known_resolution

    output_lines = []

    for i, line in enumerate(lines):
        if is_comment(line) or line.strip() == "":
            output_lines.append(line.strip())
        else:
            label, instruction, comment = split_asm_line(line)
            if label:
                output_lines.append(f'asm("{label}:");')
            asm_line = f'asm("{instruction}");'
            if comment:
                asm_line += comment
            output_lines.append(asm_line)

    output_lines.append("__builtin_unreachable();")

    output = (INDENT * ' ') + f"\n{INDENT * ' '}".join(output_lines)
    return output.rstrip()
