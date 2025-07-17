import re
from typing import Generator, TextIO, Tuple, List

def parse_functions_from_file(file: TextIO) -> Generator[Tuple[str, str], None, None]:
    current_name = None
    current_body: List[str] = []
    start_line = None
    end_line = None

    def strip_trailing_nops(instructions: List[str]) -> List[str]:
        i = len(instructions)
        while i > 0 and re.fullmatch(r'\s*nop\s*(//.*)?', instructions[i - 1]):
            i -= 1
        return instructions[:i]

    for lineno, line in enumerate(file, start=1):
        if re.match(r'^\?\??\w+@', line):
            if current_name is not None:
                end_line = lineno - 1
                yield current_name, "\n".join(strip_trailing_nops(current_body)), start_line, end_line
            start_line = lineno
            before, after = line.strip().split(':')
            current_name = before
            current_body = []
            if after:
                current_body.append(after)
        elif current_name is not None:
            if line.strip():
                current_body.append(line.rstrip('\n'))

    if current_name is not None:
        yield current_name, "\n".join(strip_trailing_nops(current_body)), start_line, end_line
