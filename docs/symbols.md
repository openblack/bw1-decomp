# `symbols.txt`

This file contains all symbols for a module, one per line.

Example line (PE/COFF, MSVC 6 mangling):

```
?Update@Abode@@UAEXXZ = .text:0x00401AB0; // type:function size:0x40 scope:global align:4
```

## Format

Numbers can be written as decimal or hexadecimal. Hexadecimal numbers must be prefixed with `0x`.

Comment lines starting with `//` or `#` are permitted, but are currently **not** preserved when updating the file.

```
symbol_name = section:address; // [attributes]
```

- `symbol_name` - The name of the symbol. For C++ this is the mangled name (e.g. `?Update@Abode@@UAEXXZ` for MSVC, `__dt__13mDoExt_bckAnmFv` for CodeWarrior).
- `section` - The section the symbol is in.
- `address` - The absolute virtual address of the symbol.

### Attributes

All attributes are optional, and are separated by spaces.

- `type:` The symbol type. `function`, `object`, or `label`.
- `size:` The size of the symbol.
- `scope:` The symbol's visibility. `global` (default), `local` or `weak`.
- `align:` The symbol's alignment.
- `data:` The data type used when writing disassembly. `byte`, `2byte`, `4byte`, `8byte`, `float`, `double`, `int`, `short`, `string`, `wstring`, `string_table`, `wstring_table`, `sjis`, or `sjis_table`.
- `hidden` Marked as "hidden" in the generated object.
- `noreloc` Prevents the _contents_ of the symbol from being interpreted as addresses. Used for objects containing data that look like pointers, but aren't.
- `noexport` Excludes the symbol from being exported when `export_all` is enabled.
- `stripped` Indicates a symbol that was stripped by the linker, despite not existing in the final binary.
