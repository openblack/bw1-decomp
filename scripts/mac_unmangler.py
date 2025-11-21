from dataclasses import dataclass
from enum import Enum
from typing import Union

class UnmangledDetails:
    fundamental_types = {
        "b": "bool",
        "v": "void",
        "c": "char",
        "w": "wchar_t",
        "s": "short",
        "i": "int",
        "l": "long",
        "f": "float",
        "d": "double",
        'e': "...",
    }

    @dataclass
    class Arg:
        class Qualifier(Enum):
            POINTER = 0
            REFERENCE = 1
            CONST = 2
        qualifiers: list[Qualifier]
        typename: Union[str,"UnmangledDetails.FunctionType"]

        def __str__(self):
            qualifier_map = {
                UnmangledDetails.Arg.Qualifier.POINTER: "*",
                UnmangledDetails.Arg.Qualifier.REFERENCE: "&",
                UnmangledDetails.Arg.Qualifier.CONST: "const",
            }
            qualifiers = self.qualifiers[::-1]
            return f"{self.typename}{' ' if qualifiers else ''}{' '.join(map(lambda x: qualifier_map[x], qualifiers))}"

    @dataclass
    class FunctionType:
        return_type: str
        arg_types: list['UnmangledDetails.Arg']
        is_member: bool = False
        class_type: str = ""
        call_conv: str = "__cdecl"

        def __str__(self):
            args_str = ', '.join(map(str, self.arg_types))
            member_part = ""
            if self.is_member:
                member_part = self.class_type + "::"
            return f"{self.return_type} ({self.call_conv} {member_part}*)({args_str})"

    @staticmethod
    def demangle_type(mangled: str) -> tuple[str, str]:
        length = ""
        for i in mangled:
            if i.isdigit():
                length += i
            else:
                break
        mangled = mangled[len(length):]
        length = int(length)
        assert(len(mangled) >= length)
        return mangled[:length], mangled[length:]

    @staticmethod
    def demangle_qualifiers(mangled: str) -> tuple[list[str], str]:
        if mangled[0] == '_':
            raise NotImplementedError("GNU mangled name with more than 9 classes.  The count is preceded by an underscore (to distinguish it from the <= 9 case) and followed by an underscore.")
        assert(mangled[0].isdigit() and mangled[0] != '0')
        num_qualifiers = int(mangled[0])
        mangled = mangled[1:]
        qualifiers = [None] * num_qualifiers
        for i in range(num_qualifiers):
            qualifiers[i], mangled = UnmangledDetails.demangle_type(mangled)
        return qualifiers, mangled

    @staticmethod
    def demangle_args(mangled: str, stop_at_underscore: bool = False) -> tuple[list[Arg], str]:
        """
        Demangle function arguments.
        If stop_at_underscore is True, stop parsing at '_' separator.
        """
        qualifier_map = {
            'P': UnmangledDetails.Arg.Qualifier.POINTER,
            'R': UnmangledDetails.Arg.Qualifier.REFERENCE,
            'C': UnmangledDetails.Arg.Qualifier.CONST,
        }
        unsignable_types = {
            'char',
            'short',
            'int',
            'long',
        }
        args = []
        if not mangled:
            return args, mangled
        arg = UnmangledDetails.Arg([], "")
        while mangled:
            # End of arguments marker
            if stop_at_underscore and mangled[0] == '_':
                break
            # Qualifiers
            qualifier = qualifier_map.get(mangled[0])
            if qualifier is not None:
                arg.qualifiers.append(qualifier)
                mangled = mangled[1:]
            # Member function pointer
            elif mangled[0] == 'M':
                func_type, mangled = UnmangledDetails.demangle_function_pointer(mangled[1:], True)
                arg.typename = func_type
                args.append(arg)
                arg = UnmangledDetails.Arg([], "")
            # Regular function pointer
            elif mangled[0] == 'F':
                assert(arg.qualifiers[-1] == UnmangledDetails.Arg.Qualifier.POINTER)
                arg.qualifiers.pop()
                func_type, mangled = UnmangledDetails.demangle_function_pointer(mangled[:], False)
                arg.typename = func_type
                args.append(arg)
                arg = UnmangledDetails.Arg([], "")
            # Type name
            elif mangled[0].isdigit():
                arg.typename, mangled = UnmangledDetails.demangle_type(mangled[:])
                args.append(arg)
                arg = UnmangledDetails.Arg([], "")
            # 'Q' qualified type name
            elif mangled[0] == 'Q':
                qualifiers, mangled = UnmangledDetails.demangle_qualifiers(mangled[1:])
                arg.typename = "::".join(qualifiers)
                args.append(arg)
                arg = UnmangledDetails.Arg([], "")
            # Fundamental types
            else:
                signed = False
                unsigned = False
                if mangled[0] == 'U':
                    unsigned = True
                    assert(UnmangledDetails.fundamental_types[mangled[1]] in unsignable_types)
                if mangled[0] == 'S':
                    signed = True
                    assert(UnmangledDetails.fundamental_types[mangled[1]] in unsignable_types)
                fundamental_type = UnmangledDetails.fundamental_types.get(mangled[unsigned or signed])
                assert(fundamental_type)
                mangled = mangled[1:]
                if unsigned:
                    fundamental_type = "unsigned " + fundamental_type
                    mangled = mangled[1:]
                if signed:
                    fundamental_type = "signed " + fundamental_type
                    mangled = mangled[1:]

                arg.typename = fundamental_type
                args.append(arg)
                arg = UnmangledDetails.Arg([], "")
        return args, mangled

    @staticmethod
    def demangle_function_pointer(mangled: str, is_member: bool) -> tuple['UnmangledDetails.FunctionType', str]:
        class_type = ""

        if is_member:
            if mangled[0].isdigit():
                class_type, mangled = UnmangledDetails.demangle_type(mangled)
            elif mangled[0] == 'Q':
                classes, mangled = UnmangledDetails.demangle_qualifiers(mangled[1:])
                class_type = "::".join(classes)
            else:
                raise NotImplementedError(f"Unknown class type encoding: {mangled[0]}")

        if not mangled or mangled[0] != 'F':
            raise NotImplementedError(f"Expected 'F' in function pointer, got: {mangled}")
        mangled = mangled[1:]

        # Demangle arguments (stop at '_' separator)
        args, mangled = UnmangledDetails.demangle_args(mangled, stop_at_underscore=True)

        # Skip the '_' separator
        if mangled and mangled[0] == '_':
            mangled = mangled[1:]
        else:
            raise NotImplementedError(f"Expected '_' separator in function pointer, got: {mangled[0] if mangled else 'EOF'}")

        # Demangle return type
        return_type = ""
        if mangled and mangled[0].isdigit():
            return_type, mangled = UnmangledDetails.demangle_type(mangled)
        elif mangled and mangled[0] == 'Q':
            qualifiers, mangled = UnmangledDetails.demangle_qualifiers(mangled[1:])
            return_type = "::".join(qualifiers)
        elif mangled and mangled[0] == 'P':
            # Pointer return type
            mangled = mangled[1:]
            if mangled and mangled[0].isdigit():
                return_type, mangled = UnmangledDetails.demangle_type(mangled)
            else:
                raise NotImplementedError(f"Unknown return type after P: {mangled[0] if mangled else 'EOF'}")
            return_type += "*"
        elif mangled:
            if mangled[0] in UnmangledDetails.fundamental_types:
                return_type = UnmangledDetails.fundamental_types[mangled[0]]
                mangled = mangled[1:]
            else:
                raise NotImplementedError(f"Unknown return type: {mangled[0]}")

        func_type = UnmangledDetails.FunctionType(return_type, args, is_member, class_type, "__thiscall" if is_member else '__cdecl')
        return func_type, mangled

    def __init__(self, mangled: str):
        self.isconst = False
        self.args = []
        mangled = mangled.strip()
        mangled = mangled.lstrip(".")

        # Get the function name
        if mangled.startswith("__") and "__" in mangled[2:] and "___" not in mangled[2:] and mangled[2:].count("__") == 1:
            function_name, mangled = tuple(mangled[2:].split("__", 1))
            self.function_name = "__" + function_name
        elif "__" in mangled and "___" not in mangled and mangled.count("__") == 1:
            self.function_name, mangled = tuple(mangled.split("__", 1))
        else:
            raise NotImplementedError(mangled)

        # Get the signature
        while mangled:
            if mangled[0] == 'Q':
                mangled = mangled[1:]
                if mangled[0] == '_':
                    raise NotImplementedError("demangle_qualified with more than 9 elements")
                assert mangled[0].isdigit()
                num_elems = int(mangled[0])
                mangled = mangled[1:]
                components = []
                for _ in range(num_elems):
                    type_name, mangled = self.demangle_type(mangled[:])
                    components.append(type_name)
                self.namespace = "::".join(components[:-1])
                self.type_name = components[-1]
            elif mangled[0] == 'C':
                self.isconst = True
                mangled = mangled[1:]
            elif mangled[0].isdigit():
                self.type_name, mangled = self.demangle_type(mangled[:])
                if self.type_name is None:
                    raise NotImplementedError()
            elif mangled[0] == 'F':
                self.args, mangled = self.demangle_args(mangled[1:])
            else:
                raise NotImplementedError(f"Unknown character: {mangled[0]}")

    def get_post_namespace_signature(self):
        if self.function_name == "__ct":
            function_name = self.type_name
        elif self.function_name == "__dt":
            return f"~{self.type_name}()"
        else:
            function_name = self.function_name
        return f"{function_name}({', '.join(map(str, self.args))}){' const' if self.isconst else ''}"

    def __str__(self):
        if hasattr(self, "namespace"):
            return f"{self.namespace}::{self.type_name}::{self.get_post_namespace_signature()}"
        if hasattr(self, "type_name"):
            return f"{self.type_name}::{self.get_post_namespace_signature()}"
        else:
            return self.get_post_namespace_signature()


def demangle(mangled: str):
    details = UnmangledDetails(mangled)
    return str(details)

if __name__ == '__main__':
    import sys
    for l in sys.argv[1].splitlines():
        print(l)
        print(demangle(l.strip()))
