import re

def demangle_type(mangled_type_name: str) -> str:
    if len(mangled_type_name) > 2 and mangled_type_name[0] == 'Q':
        parts = []
        num_namespaces = int(mangled_type_name[1])
        index = 2
        for _ in range(num_namespaces):
            l = re.match(r"\d+", mangled_type_name[index:]).group(0)
            m = re.match(r"\d+(\w{%s})" % l, mangled_type_name[index:])
            index += len(m.group(0))
            parts.append(m.group(1))
        return "::".join(parts)
    return mangled_type_name
