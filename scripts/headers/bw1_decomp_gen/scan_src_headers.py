from pathlib import Path
from clang import cindex


SRC_BASE_PATH = Path(__file__).parent / "src"


def extract_types(path: Path = Path("."), include_dirs_stripped=False) -> dict[str, Path]:
    paths = []

    if (SRC_BASE_PATH / path).is_file():
        paths = [path]
    else:
        paths = [x for x in (SRC_BASE_PATH / path).rglob('*') if x.is_file()]

    result: dict[str, Path] = {}

    include_all_headers_src = '\n'.join(f'#include "{p}"' for p in paths)
    translation_unit = cindex.TranslationUnit.from_source('tmp.c', args=["-m32", "-I", SRC_BASE_PATH.as_posix()], options=cindex.TranslationUnit.PARSE_DETAILED_PROCESSING_RECORD, unsaved_files=[('tmp.c', include_all_headers_src)])
    for child in translation_unit.cursor.get_children():
        if child.location.file is None:
            continue
        child_path = Path(child.location.file.name)
        if not child_path.is_relative_to(SRC_BASE_PATH):
            continue
        if child.spelling.strip("_") != child.spelling:
            continue
        if include_dirs_stripped:
            value = child_path.name
        else:
            value = child_path.relative_to(SRC_BASE_PATH)
            if value.is_relative_to("libs"):
                value = value.relative_to("libs")
        key = child.spelling
        if child.kind.name == "STRUCT_DECL":
           key = f"struct {key}"
        if child.kind.name == "ENUM_DECL":
           tokens = list(child.get_tokens())
           if len(tokens) < 2 or tokens[1].kind.name != "IDENTIFIER":
               continue
           key = f"enum {key}"
           result.update({cc.spelling: value for cc in child.get_children()})
        elif child.kind.name == "MACRO_DEFINITION":
            # Catch non-function-like macros
            if not any(t.kind.name == "PUNCTUATION" for t in child.get_tokens()):
                continue
        elif child.kind.name in ("INCLUSION_DIRECTIVE"):
            continue
        result[key] = value

    return result
