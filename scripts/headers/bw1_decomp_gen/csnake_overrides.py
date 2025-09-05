from dataclasses import dataclass

from typing import Iterable, Union, Optional
from collections import deque
from csnake.cconstructs import _ArrStructInitGen, _shape, assure_str, ShapelessError, NoValueError, Function, FuncPtr, FormattedLiteral, Variable, CExtendedLiteral, VariableValue, CStructLiteral, Struct, CodeWriterLite, LiteralFormatters, CArrayLiteral, generate_c_value_initializer, CLiteral


@dataclass
class CSnakeHexCIntLiteral(VariableValue):
    value: int

    def init_target_code(self, formatters: Optional[LiteralFormatters] = None):
        return str(self)

    def __str__(self):
        return hex(self.value)


# TODO: Replace with csnake.Union when https://gitlab.com/andrejr/csnake/-/merge_requests/5 lands
class CSnakeUnion(Struct):
    def generate_declaration(self, indent=4):
        writer = CodeWriterLite(indent=indent)
        if self.typedef:
            writer.add_line(f"typedef union")
        else:
            writer.add_line(f"union {self.name}")
        writer.open_brace()
        for var in self.variables:
            writer.add_line(var.declaration)
        writer.close_brace()

        if self.typedef:
            writer.add(" " + self.name + ";")
        else:
            writer.add(";")

        return writer


class CSnakeFuncPtr(FuncPtr):
    __slots__ = ("return_type", "arguments", "calling_convention", "indirection_level")

    def __init__(
        self,
        return_type: str,
        arguments: Optional[Iterable] = None,
        calling_convention: Optional[str] = None,
        indirection_level = 1,
    ) -> None:
        super().__init__(return_type, arguments)
        self.calling_convention = calling_convention
        self.indirection_level = indirection_level

    def get_type_only(self) -> str:
        jointargs = ", ".join(
            arg.primitive for arg in self.arguments
        )

        retval = "{rt} ({conv}*)({arguments})".format(
            rt=self.return_type,
            arguments=jointargs if self.arguments else "",
            conv=self.calling_convention if self.calling_convention else "",
        )

        return retval


    def get_declaration(
        self,
        name: str,
        qualifiers: Optional[str] = None,
        array: Optional[str] = None,
    ) -> str:
        jointargs = ", ".join(
            arg.generate_declaration() for arg in self.arguments
        )

        retval = "{rt} ({conv}{indir}{qual}{name}{arr})({arguments})".format(
            rt=self.return_type,
            qual=qualifiers if qualifiers else "",
            name=name,
            arguments=jointargs if self.arguments else "",
            arr=array if array else "",
            conv=self.calling_convention if self.calling_convention else "",
            indir="*" * self.indirection_level + (" " if qualifiers or name or array else ""),
        )

        return retval

    def get_typedef(
        self,
        name: str,
        qualifiers: Optional[str] = None,
        array: Optional[str] = None,
    ) -> str:
        jointargs = ", ".join(
            arg.generate_declaration() for arg in self.arguments
        )

        retval = "typedef {rt} ({conv} {qual}{name}{arr})({arguments})".format(
            rt=self.return_type,
            qual=qualifiers if qualifiers else "",
            name=name,
            arguments=jointargs if self.arguments else "",
            arr=array if array else "",
            conv=self.calling_convention if self.calling_convention else ""
        )

        return retval


class CSnakeFunction(Function):

    __slots__ = (
        "name",
        "return_type",
        "arguments",
        "qualifiers",
        "codewriter",
        "mangled_name",
    )

    def __init__(
        self,
        name: str,
        return_type: str = "void",
        qualifiers: Optional[Union[str, Iterable[str]]] = None,
        arguments: Optional[Iterable] = None,
        mangled_name: Optional[str] = None,
    ) -> None:
        super().__init__(name, return_type, qualifiers, arguments)
        self.mangled_name = mangled_name

    def set_mangled_name(self, mangled_name: str):
        self.mangled_name = mangled_name

    def generate_prototype(self, extern: bool = False) -> str:
        result = super().generate_prototype(extern)
        if self.mangled_name is not None:
            result = result + f' asm("{self.mangled_name}")'
        return result


class CSnakeVariable(Variable):

    __slots__ = (
        "name",
        "primitive",
        "qualifiers",
        "array",
        "comment",
        "value",
        "mangled_name",
    )

    def __init__(
        self,
        name: str,
        primitive: Union[str, FuncPtr],
        qualifiers: Optional[Union[Iterable[str], str]] = None,
        array: Optional[Iterable] = None,
        comment: Optional[str] = None,
        value: Optional[CLiteral] = None,
        mangled_name: Optional[str] = None,
    ) -> None:
        super().__init__(name, primitive, qualifiers, array, comment, value)
        self.mangled_name = mangled_name

    def set_mangled_name(self, mangled_name: str):
        self.mangled_name = mangled_name

    def generate_declaration(self, extern: bool = False) -> str:
        result = super().generate_declaration(extern)
        if self.mangled_name is not None:
            result = result + f' asm("{self.mangled_name}")'
        return result


class CSnakeMultiLinetructInitGen(_ArrStructInitGen):
    @staticmethod
    def c_array_literal_handler(
        top,
        stack: deque,
        writer: CodeWriterLite,
        formatters: LiteralFormatters,
    ) -> LiteralFormatters:
        stack.append(CSnakeMultiLinetructInitGen.ClosedBrace())
        try:
            stack.extend(reversed(top))  # type: ignore
        except TypeError:
            tempdeq: deque = deque()
            assert isinstance(top, Iterable)
            tempdeq.extendleft(top)
            stack.extend(tempdeq)
        stack.append(CSnakeMultiLinetructInitGen.OpenBrace())
        return formatters

    @staticmethod
    def closed_brace_handler(
        top,
        stack: deque,
        writer: CodeWriterLite,
        formatters: LiteralFormatters,
    ) -> LiteralFormatters:
        writer.dedent()
        writer.add_line("}")

        try:
            lookahead = CSnakeMultiLinetructInitGen.lookahead_ignoring_format(stack)
        except IndexError:
            pass
        else:
            if isinstance(lookahead, CSnakeMultiLinetructInitGen.ClosedBrace):
                writer.dedent()
                writer.add_line("")
                writer.indent()
            elif isinstance(
                lookahead, (CArrayLiteral, CSnakeMultiLinetructInitGen.OpenBrace)
            ):
                writer.add(",")
                writer.add_line("")
            else:
                writer.add(",")
        return formatters

    @staticmethod
    def literal_or_value_handler(
        top,
        stack: deque,
        writer: CodeWriterLite,
        formatters: LiteralFormatters,
    ) -> LiteralFormatters:
        writer.indent
        writer.add_line(generate_c_value_initializer(top, formatters))
        writer.add(",")
CSnakeMultiLinetructInitGen.type_action_pairs = (
    CSnakeMultiLinetructInitGen.TypeActionPair(
        types=(CArrayLiteral), action=CSnakeMultiLinetructInitGen.c_array_literal_handler
    ),
    CSnakeMultiLinetructInitGen.TypeActionPair(
        types=(CStructLiteral),
        action=CSnakeMultiLinetructInitGen.c_struct_literal_handler,
    ),
    CSnakeMultiLinetructInitGen.TypeActionPair(
        types=(CSnakeMultiLinetructInitGen.ClosedBrace),
        action=CSnakeMultiLinetructInitGen.closed_brace_handler,
    ),
    CSnakeMultiLinetructInitGen.TypeActionPair(
        types=(CSnakeMultiLinetructInitGen.OpenBrace),
        action=CSnakeMultiLinetructInitGen.open_brace_handler,
    ),
    CSnakeMultiLinetructInitGen.TypeActionPair(
        types=(CExtendedLiteral, VariableValue),
        action=CSnakeMultiLinetructInitGen.literal_or_value_handler,
    ),
    CSnakeMultiLinetructInitGen.TypeActionPair(
        types=(CSnakeMultiLinetructInitGen.Designator),
        action=CSnakeMultiLinetructInitGen.designator_handler,
    ),
    CSnakeMultiLinetructInitGen.TypeActionPair(
        types=(FormattedLiteral),
        action=CSnakeMultiLinetructInitGen.formatted_literal_handler,
    ),
    CSnakeMultiLinetructInitGen.TypeActionPair(
        types=(LiteralFormatters),
        action=CSnakeMultiLinetructInitGen.literal_formatters_handler,
    ),
)
class CSnakeMultiLineArrayVariable(Variable):
    def __array_dimensions(self) -> str:
        value = self.value
        if value is not None:
            value, _ = self.merge_formatters(value)

        if isinstance(self.array, CArrayLiteral):
            array = "".join(f"[{dim}]" for dim in self.array)
        elif self.array is not None:
            array = f"[{self.array}]"
        elif self.array is None and isinstance(value, str):
            array = "[]"
        elif self.array is None and isinstance(value, Iterable):
            try:
                val_shape = _shape(value)
                array = "".join(f"[{dim}]" for dim in val_shape)
            except ShapelessError:
                array = ""
        else:
            array = ""

        return array

    def generate_initialization(
        self, indent: Union[int, str] = 4
    ) -> CodeWriterLite:
        """Return a :class:`CodeWriterLite` instance containing the
        initialization code for this :class:`Variable`.

        Ends with a semicolon (;).

        Args:
            indent: indent :obj:`str` or :obj:`int` denoting the number of
                spaces for indentation


        Example:
            >>> import numpy as np
            >>> from csnake import Variable
            >>> var = Variable(
            ...     "test",
            ...     primitive="int",
            ...     value=np.arange(24).reshape((2, 3, 4))
            ... )
            >>> print(var.generate_initialization())
            int test[2][3][4] = {
                {
                    {0, 1, 2, 3},
                    {4, 5, 6, 7},
                    {8, 9, 10, 11}
                },
                {
                    {12, 13, 14, 15},
                    {16, 17, 18, 19},
                    {20, 21, 22, 23}
                }
            };

        """

        # main part: generating initializer
        if self.value is None:
            raise NoValueError

        writer = CodeWriterLite(indent=indent)

        if not isinstance(self.qualifiers, str) and isinstance(
            self.qualifiers, Iterable
        ):
            qual = " ".join(self.qualifiers) + " "
        elif self.qualifiers is not None:
            qual = assure_str(self.qualifiers) + " "
        else:
            qual = ""

        array = self.__array_dimensions()

        if isinstance(self.primitive, FuncPtr):
            decl = self.primitive.get_declaration(
                name=self.name, qualifiers=qual, array=array
            )
            writer.add_line(decl)
        else:
            writer.add_line(f"{qual}{self.primitive} {self.name}{array}")

        writer.add(" = ")

        value, formatters = self.merge_formatters(self.value)

        if isinstance(value, (CArrayLiteral, CStructLiteral)):
            self.__generate_array_struct_initialization(
                value, indent, writer, formatters
            )
        else:
            assignment = generate_c_value_initializer(value, formatters)
            writer.add(assignment)

        writer.add(";")
        return writer

    def __generate_array_struct_initialization(
        self,
        array: Union[CArrayLiteral, CStructLiteral],
        indent: Union[int, str] = 4,
        writer: Optional[CodeWriterLite] = None,
        formatters: Optional[LiteralFormatters] = None,
    ) -> None:
        """Print (multi)dimensional arrays."""
        if self.value is None:
            raise NoValueError

        stack: deque = deque()
        stack.append(array)
        if not formatters:
            formatters = LiteralFormatters()
        if writer is None:
            writer = CodeWriterLite(indent=indent)

        while stack:
            top = stack.pop()
            for types, action in CSnakeMultiLinetructInitGen.type_action_pairs:
                if isinstance(top, types):
                    formatters = action(
                        top=top,
                        stack=stack,
                        writer=writer,
                        formatters=formatters,
                    )
                    break
            else:
                raise TypeError("Unknown type on stack")
