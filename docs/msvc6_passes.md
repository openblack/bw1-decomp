# MSVC6 compiler passes and their IL

This note records how `cl.exe` (12.00.8966, `build/compilers/MSVC/6.5`) runs the front end and the
back end, and what passes between them. `tools/c2-il.py` builds on it. For what the back end does
with the IL, see [`msvc6_inliner.md`](msvc6_inliner.md) and [`msvc6_scheduler.md`](msvc6_scheduler.md).

## How cl.exe runs the passes

`cl /Bd` prints each pass it runs. A C++ file goes through two:

```
c1xx.dll -il <TMP>\a33984 -f src\Black\Tree.cpp ... -Ob1 -G6 -Fo...
c2.dll   -il <TMP>\a33984 -f src\Black\Tree.cpp ... -Gy -G6 -Fo...
```

- Each pass DLL exports `_InvokeCompilerPass@12` and `_AbortCompilerPass@4`; `cl.exe` loads the
  DLL and calls the first. (`c1.dll` is the C front end.)
- The two passes share nothing but the IL files named by `-il <prefix>`, created in `%TMP%` and
  deleted when `cl.exe` finishes.
- `/B1 <path>` and `/B2 <path>` replace the front end and the back end. A path that is not a DLL is
  run as a program (`cmd /c` for a batch file). That program gets no arguments: `cl.exe` passes the
  pass's command line in the environment variable `MSC_CMD_FLAGS`, starting with `-il <prefix>`.

So a batch file given as `/B2` can copy the front end's IL away (capture), and one given as `/B1`
can put kept IL in place for the real `c2.dll` (replay). Replayed IL gives byte-identical code and
data sections. Only the debug sections differ, because they name the PDB.

## The IL files

| Suffix | Holds | Notes |
|---|---|---|
| `ex` | Code: the expression tuples of every function | Contains source line markers `4f 01 80 <u16 line>`. Nothing else changes when lines move. |
| `gl` | Globals | Records file paths: a variant compiled from a different path differs here. |
| `sy` | Symbols | Names: renaming a local changes it, not `ex`. |
| `in` | A small index | |
| `db` | Debug data, written only with `/Zi` | Holds a signature that differs on every run. |

Measured on `Abode.cpp`:

| Change | `ex` | `gl`/`sy` |
|---|---|---|
| Same source again | same | same |
| Blank lines inserted | line markers only | same |
| Local variable renamed | same | differ |
| One constant changed | differs | same |

The line markers are present with and without `/Zi`: the front end needs them for diagnostics.

## Comparing sources with tools/c2-il.py

`c2-il.py compare` captures the IL of two sources with the unit's own command line, compiled from
the same path in a private copy of `src/`, and says which of three cases applies:

- **identical**: every IL file matches, ignoring line numbers. The objects are certain to match,
  including section and COMDAT order and every inline budget.
- **same code**: `ex` matches but the symbol files differ. Same instructions, but section and
  COMDAT order can move (it depends on names), which matters only for linked units.
- **different**: `ex` differs. The compiler sees a different program even if this unit's bytes
  do not change. A different IL size, for example, can move another caller's inline budget.

Use it to show that a readability change (renames, formatting, a macro for an expression) cannot
change code anywhere, or to find out whether two shapes that compile to the same bytes are really
the same to the compiler.

## Not a speed-up

Splitting the passes saves little. On this machine a full compile of `Creature3D.cpp` takes about
0.47 s, a capture (front end only) about 0.34 s, and a replay (back end only) about 0.48 s: process
start-up and the PDB dominate. Precompiled headers (`/YX`) gave no gain either and reorder COMDATs.
