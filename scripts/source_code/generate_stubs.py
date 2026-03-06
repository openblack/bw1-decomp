#!/usr/bin/env python3
"""Generate empty C++ stub implementations from extracted_reversing_data_bw_141.json.

Output: src/staging/<HeaderName>.cpp for each header that has matching functions.
Functions within each file are sorted ascending by win_addr.
"""
import json
import re
import sys
from collections import defaultdict
from pathlib import Path


# ---------------------------------------------------------------------------
# Header lookup helpers
# ---------------------------------------------------------------------------

def build_header_map(root: Path) -> dict[str, Path]:
    """Build stem -> Path mapping for all headers under black/ and libs/."""
    headers = (
        list((root / "black").glob("*.h")) +
        list((root / "libs").rglob("*.h"))
    )
    return {h.stem: h for h in headers}


def find_header(class_name: str, header_map: dict[str, Path]) -> Path | None:
    """Return the header Path for a class name, or None."""
    if class_name in header_map:
        return header_map[class_name]
    # Many internal names have a 'G' prefix: GAbodeInfo -> AbodeInfo.h
    if class_name.startswith("G") and class_name[1:] in header_map:
        return header_map[class_name[1:]]
    return None


# ---------------------------------------------------------------------------
# Type / signature helpers
# ---------------------------------------------------------------------------

# Strip struct/union/enum keyword and normalise spacing
_STRUCT_UNION_ENUM_RE = re.compile(r'\b(struct|union|enum)\s+')


def cpp_type(c_type: str) -> str:
    """Convert a C type string to a C++ type string."""
    t = _STRUCT_UNION_ENUM_RE.sub('', c_type)
    # Normalise pointer spacing: "Foo *" -> "Foo*"
    t = re.sub(r'\s+\*', '*', t)
    t = re.sub(r'\*\s+', '* ', t).rstrip()
    return t


def stub_return(func: dict) -> str:
    """Return a valid C++ stub return statement, or empty string for void/ctor/dtor."""
    if is_constructor(func) or is_destructor(func):
        return ""
    rt = func["return_type"].strip()
    if rt == "void":
        return ""
    return "    return 0;"


def is_destructor(func: dict) -> bool:
    return "_dt" in func["undecorated_name"] and func["undecorated_name"].startswith("__dt")


def is_constructor(func: dict) -> bool:
    return "_ct" in func["undecorated_name"] and func["undecorated_name"].startswith("__ct")


def build_signature(func: dict, class_name: str) -> str:
    """Build a C++ function signature (without body) for a stub."""
    call_type = func["call_type"]
    arg_types = func["argument_types"]
    arg_names = func["argument_names"]
    return_type = func["return_type"]
    variadic = func["is_function_variadic"]

    # For __thiscall methods, skip the implicit 'this' first argument
    is_member = call_type == "__thiscall"
    if is_member:
        arg_types = arg_types[1:]
        arg_names = arg_names[1:]

    # Build parameter list
    params = []
    for i, (t, n) in enumerate(zip(arg_types, arg_names)):
        t_cpp = cpp_type(t)
        label = n if n else f"param_{i + 1}"
        params.append(f"{t_cpp} {label}")
    if variadic:
        params.append("...")
    param_str = ", ".join(params)

    # Method name
    if is_destructor(func):
        return f"{class_name}::~{class_name}()"
    elif is_constructor(func):
        method_name = class_name
        return f"{class_name}::{method_name}({param_str})"
    else:
        # Extract method name from decorated_name: "ClassName::Method(args)"
        decorated = func["decorated_name"]
        # Find last '::' before '('
        paren = decorated.index('(')
        scope_end = decorated.rfind('::', 0, paren)
        if scope_end >= 0:
            method_name = decorated[scope_end + 2:paren]
        else:
            method_name = decorated[:paren]

        rt_cpp = cpp_type(return_type)
        return f"{rt_cpp} {class_name}::{method_name}({param_str})"


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def main(json_path: str = "extracted_reversing_data_bw_141.json",
         out_dir: str = "src/staging") -> None:
    root = Path(__file__).parent.parent.parent

    with open(root / json_path) as f:
        data = json.load(f)

    functions: list[dict] = data["functions"]
    header_map = build_header_map(root)

    # Group functions by resolved header path
    by_header: dict[Path, list[dict]] = defaultdict(list)
    skipped = 0
    for func in functions:
        decorated = func["decorated_name"]

        # Extract top-level class name
        m = re.match(r'^([A-Za-z_][A-Za-z0-9_]*)::', decorated)
        if m:
            class_name = m.group(1)
        else:
            # Free function – no class, skip for now
            skipped += 1
            continue

        header = find_header(class_name, header_map)
        if header is None:
            skipped += 1
            continue

        # Stash resolved class_name alongside function for later
        func = dict(func, _class_name=class_name, _header=header)
        by_header[header].append(func)

    print(f"Grouped {sum(len(v) for v in by_header.values())} functions across "
          f"{len(by_header)} headers ({skipped} skipped / unmatched)")

    out_path = root / out_dir
    out_path.mkdir(parents=True, exist_ok=True)

    generated = 0
    for header, funcs in sorted(by_header.items(), key=lambda kv: kv[0].name):
        # Sort by win_addr ascending; put inlined (addr -1) last
        funcs.sort(key=lambda f: (f["win_addr"] == -1, f["win_addr"]))

        # Strip the leading black/ or libs/<subdir>/ since those dirs are on the -I path
        try:
            rel_header = header.relative_to(root / "black")
        except ValueError:
            try:
                rel_header = header.relative_to(root / "libs")
            except ValueError:
                rel_header = header.relative_to(root)

        lines = [
            f'#include "{rel_header.as_posix()}"',
            "",
        ]

        for func in funcs:
            class_name = func["_class_name"]
            win_addr = func["win_addr"]
            mac_addr = func["mac_addr"]
            decorated = func["decorated_name"]

            # Address comment
            win_str = f"{win_addr:08x}" if win_addr >= 0 else "inlined"
            mac_str = f"{mac_addr:08x}" if mac_addr >= 0 else "inlined"
            lines.append(f"// win1.41 {win_str} mac {mac_str} {decorated}")

            try:
                sig = build_signature(func, class_name)
            except Exception as e:
                lines.append(f"// ERROR building signature: {e}")
                lines.append("")
                continue

            ret_stmt = stub_return(func)
            if ret_stmt:
                lines.append(f"{sig}")
                lines.append("{")
                lines.append(ret_stmt)
                lines.append("}")
            else:
                lines.append(f"{sig}")
                lines.append("{}")
            lines.append("")

        stem = header.stem
        out_file = out_path / f"{stem}.cpp"
        out_file.write_text("\n".join(lines))
        generated += 1

    print(f"Generated {generated} stub files in {out_path}")


if __name__ == "__main__":
    args = sys.argv[1:]
    main(*args)
