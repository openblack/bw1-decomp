# MSVC6 back end: order of uninitialised data and of file-level functions

This note records what decides the layout of a unit's `.bss` and the emission
order of its functions under `cl.exe` 12.00.8804/8966 (`build/compilers/MSVC/6.4`
and `6.5`). Matching every function of a unit is not enough to link it: when the
object's `.bss` symbols or functions sit in another order, every reference into
the unit from other objects shifts and the executable hash fails, while objdiff,
which compares symbol by symbol, still reports 100%. The rules were established
on `LH3DTech.cpp` with compiler experiments (`docs/msvc6_operand_order.md`
describes the hook framework used for the register allocator; none of these
rules needed hooks).

Confidence markers: **[verified]** reproduced by experiments on the real unit;
**[decompiled]** inferred only.

## `.bss`: reverse order of first mention [verified]

The front end keeps one list of the unit's uninitialised symbols, appending a
symbol the first time it meets it while translating the unit, and the object's
`.bss` holds the symbols in the **reverse** of that list. Mentions are:

- an inline body of a class defined in a header the unit parses itself. In-class
  bodies count when the class ends, in header order; an out-of-class `inline`
  member definition counts where it stands. Unused bodies count too.
- a definition in the `.cpp`, including the symbols a dynamic initialiser reads
  (`LHPoint LH3DTech::g_sun_light(DEFAULT_SUN);` mentions `DEFAULT_SUN`);
- an inline helper or a function body in the `.cpp`, at its position, for the
  symbols it reads or writes;
- a function-local `static` (and its `$S` guard) at its definition.

Declarations do not count: neither `extern` nor an in-class `static` member
declaration. A symbol referenced only by a header body that arrived through the
precompiled header (`/Yu`) is **not** mentioned by that body: the PCH's state is
not replayed into the list. That is why `LH3DLibPCH.h` includes `LH3DTech.h`:
with the class's accessor bodies in the PCH, `LH3DTech.cpp` orders its data by
its own definitions and function bodies alone.

Consequences:

- Function-local statics come first in `.bss` (mentioned last), in reverse
  function order.
- Definitions laid out at the top of a `.cpp` come out reversed; a symbol first
  read by a helper defined above the definitions lands behind them all.
- Without `/Yu` the order is a hash scramble of the names (observed, not
  modelled); the project's `/Yu` builds reproduce the originals' orders.

Dynamic initialisers (`_$E` functions and the `.CRT$XCU` table) run in
definition order regardless of mentions, which can force a definition to sit
after another symbol's while its `.bss` slot needs an earlier mention.
`LH3DTech.cpp`'s `OrderSunDirections()` is such a mention and nothing else.

## Functions: definition order, except deferred statics [verified]

Functions are emitted in definition order, but a `static` (internal linkage)
function is held back until the first function that calls it has been compiled
and is emitted right after that caller. `?NewClipLine@@YAXGGK@Z` and
`?AddEdge@@YAXJJ@Z` sit at their definition points in the image, so they are
external functions in `LH3DTech.cpp`; their mangled names carry no linkage.
Inline functions with out-of-line COMDAT copies are emitted where they are first
used and are discarded by the linker when an earlier unit keeps a copy.

## Checking a layout

Compare the extracted object's `.bss` symbol table with the compiled one
(`tools/decomp_binary.py`'s `Coff` gives section index, value and name) and the
function order of both `.text` symbol lists; `tools/decomp-diff.py --sections`
cannot show either. A linked unit must also pass `ninja` (`build.sha1`).
