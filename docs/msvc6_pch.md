# MSVC 6 precompiled headers: what they change and how the build models them

The game code shows the marks of a precompiled header (PCH) in its target objects
([issue #538](https://github.com/openblack/bw1-decomp/issues/538)). This note describes what
`cl` 6.0 (SP4 and SP5) does differently with one, and how the build reproduces it.

Confidence markers, as in [`msvc6_comdat.md`](msvc6_comdat.md):

- **[verified]**: reproduced with small test files compiled by the project compilers.
- **[measured]**: counted on the target objects of the five Windows versions with
  `tools/comdat-scan.py order` and `initializers`, against objects built with and without the
  PCH.

## 1. What a PCH changes in a unit

`/Yc<header>` compiles a unit and saves the compiler's state after `#include "<header>"` (or
after a `/FI<header>` forced include) into a `.pch` file. `/Yu<header>` restores that state
instead of compiling the header again. The sections below list what that changes in a
unit, and what does not tell a unit built with a PCH apart.

### Inline bodies of the PCH's classes come after the derived class's group [verified]

Without a PCH, a vftable group emits the inherited inline bodies first, in source order, and
`??_G` last (`msvc6_comdat.md` §3). With a PCH, every inline body defined inside the PCH is
emitted after the unit's own bodies, usually after `??_G`:

```
base.h:    struct G { virtual ~G(){} virtual int g1(){..} virtual int g2(){..} }; struct P : G { p1, p2 };
derived.h: struct F : P { F(); virtual ~F(); f1, g2 }; struct A : F { A(int); virtual ~A(); a1, p2 };
t.cpp:     #include "base.h" / #include "derived.h" / A::A(int x) { f = x; }

no PCH:                       ??0A  g1@G p1@P f1@F g2@F a1@A p2@A ??_GA
/Yu base.h:                   ??0A  f1@F g2@F a1@A p2@A ??_GA  g1@G p1@P
/Yc base.h, t.cpp creating it: the same as /Yu
PCH = base.h + derived.h:     ??0A  ??_GA  g1@G p1@P f1@F g2@F a1@A p2@A
```

The PCH's bodies are compiled lazily, and their final position also depends on the code that
follows. A second constructor after `A::A` (with its own vftable group) can come before the
rest of the first group's PCH bodies: `??0K1 k@K1 ??_GK1 g1@G g2@G ??0K2 k@K2 ??_GK2 ??_GG
p1@P p2@P`. Moving a non-PCH body into or out of the class changes the order as well; only a
complete source reproduces a magnet unit's order.

### A PCH function comes where the unit's code passes its offset [verified]

The rule behind the orders above is one of offsets in the code IL (`ex`, `msvc6_passes.md`). The
front end writes the IL of every function it parses, inline or not, into that stream in parse
order, and `c2` emits the functions a unit needs while it reads the stream. A PCH keeps the
offsets its functions had when it was built (the first function of a compile sits near offset
1012), while the stream of a `/Yu` unit starts again at 0. `c2` then emits a function of the PCH
that the unit needs when the unit's own stream passes that function's offset, or when the function
is first needed if that comes later. Functions needed at the same point come out in offset
order, the PCH's and the unit's mixed.

```
pch.h: struct P { int x; P() : x(0) {} };  inline void T() { P a[2]; }
       compiled alone: ??0P at 1019, T at 1123, ??_H at 1216
s.cpp: #include "pch.h" / struct H2 { P* p; void Make2(int n) { p = new P[n]; } };
       int mk0() { return 0; } ... int mk39() { return 39; }      (61 bytes of IL each)

/Yu pch.h:  mk0 .. mk16 (IL offset 1196)  ??_H  mk17 (1257) .. mk39
```

So a small unit emits the PCH's functions after all of its own, and a large one emits them in
the middle. In a vftable group the unit's own bodies come before the PCH's while their offsets
in the unit (how much inline code the unit parses ahead of them) are smaller than the offsets of
the PCH's bodies (how much inline code the PCH holds ahead of those): inline code added to the
PCH ahead of a class moves that class's bodies later in every unit, and code added after it moves
nothing.

The compiler's helpers follow the same rule. The front end generates the vector constructor
iterator (`??_H`) at the first array of objects with a constructor (a local array, the inline
constructor of a class with such a member, `new T[n]`), and the vector destructor iterator
(`??_I`) and a class's vector deleting destructor (`??_E`) likewise. A helper generated in the
unit is emitted right there, used or not. One the PCH has already generated is emitted by the
offset rule, in the units that hold such a construct themselves.

### `.bss`: reverse first-mention order with `/Yu`, name hashes otherwise [verified]

Without a PCH, and in the compile that creates one with `/Yc`, `cl` lays out a unit's
uninitialised statics in the order of a hash of their names (identifier for file statics,
decorated name for local statics and static members), then its `= 0` initialised ones in
definition order. With `/Yu`, the uninitialised statics come in the reverse order of their
first mention in the unit instead: their definition, or an earlier use, also one in an inline
function body (a declaration alone is not a mention). The `= 0` initialised ones still follow
in definition order.

```
int Alpha; int Beta; int Gamma; int First() { return Gamma; } int Delta;
int Use() { return Beta + Delta + Alpha + Cls::Mem + Decl + HdrStatic; }  int Cls::Mem; int Decl;

no PCH, /Yc: Mem Gamma Beta Decl HdrStatic Alpha Delta        (hash order)
/Yu:         HdrStatic Decl Mem Delta Gamma Beta Alpha        (HdrStatic is defined in the PCH)
```

A static the unit defines but never uses still gets its slot in both modes (unnamed in the
object). A static defined in the PCH gets one only if the unit uses it, at its first use.

### Initializer numbers continue from the PCH [verified]

`cl` numbers the `_$E` initializer functions and `_$S` pointers of a unit in one sequence.
With `/Yu` the sequence continues after the numbers the PCH's headers used, so every
initializer of the unit gets another name. The numbers do not reach the executable; the
labels in `symbols.txt` were fitted to our compiles.

### RTTI order is not a PCH signal [verified]

The order of a unit's `??_R0` type descriptors (and of other RTTI COMDATs) changes with the
length of the checkout path the compiler runs from, and with `/Zi`, with or without a PCH.
`CreatureMentalLearn`, compiled from checkout paths of 7 to 23 characters, puts the
descriptor of `CreatureLearning` before that of `CreaturePreviousLesson` at 12 of the 17
lengths without a PCH and at 13 with `/Yu`. Nothing about the original build can be read
from it.

The order depends on the memory the front end's path strings take, not on the source alone. The build
therefore hands the compiler the original paths in every checkout (`tools/cl6_paths.py`): the
order is then the same in every checkout, and follows the source, those paths and the temporary
directory's.

### How cl6 orders a unit's RTTI [verified]

`c1xx` keeps the classes whose vtables are still to be emitted in an array sorted by the low 14 bits
of each class record's address, `pointer & 0x3fff`. In 6.5's `c1xx.dll` the search is at
`0x10411c67`, the insert at `0x10411d02` and the array's pointer at `0x104d76c4`; 6.4 holds the same
routine. At the end of the unit it walks the array and emits each class's vtable and RTTI. Among the
classes whose vtables one function stores, the object ends up with the RTTI of the class with the
larger value first.

A class's record is made where the class is first declared, a bare `class X;` included. The front
end's memory is a reserved region filled from the front, so an address counts what was allocated
before it: a typedef takes 60 bytes and its name rounded up to 4, a `#define` about 36, an opened
file about 64 with its full path, and the source's path is kept twice, the working and the temporary
directory once (`TMP`, else `TMPDIR` under wibo, else `/tmp`). Comments, blank lines and unused `/I`
directories take nothing. In a file of two classes, declarations put before them swap the order for
a short stretch once every 16,384 bytes. With `/Yu` the classes of the PCH keep the addresses they
had when it was built, since its image is mapped back where it was, and the unit's own go to a
second region.

Two classes first declared one after the other therefore keep their order: the second has the higher
address and its RTTI comes first, unless a 16 KB boundary falls into the 130 bytes between them. Two
classes declared far apart are in an order that any change ahead of either can swap. Abode.cpp's
`GAbodeInfo` constructor stores the vtables of `Base`, declared in the PCH, and of `GAbodeInfo`,
first declared in the unit: the 181 characters by which #788 lengthened macro names in a PCH header
moved `Base`'s record by 8,064 bytes and swapped the two groups in 1.20, and the five commits after
it swapped them in 1.00, 1.20 and 1.30. The shipped images do the same. Of the neighbouring pairs of
object locators, 26 of 924 are the other way round in 1.10 than in 1.00, 39 of 1,005 in 1.20 than in
1.10, and 26 of 1,013 in 1.30 than in 1.20, which is the same source built in another directory;
`Base` and `GAbodeInfo` are among them twice. An order in the image tells how Lionhead's memory lay
in that build, not how the source was written.

`BlackPCH.h` therefore declares `Base` and `GAbodeInfo` back to back ahead of everything else, in
each version's order. On two revisions of `main` whose own order was right in different versions,
the pair gave the image's order in 1.00, 1.10, 1.20 and 1.30. It has a price. `GAbodeInfo` is one
more class in the PCH, so every later symbol's number rises by one
([`msvc6_symbol_numbering.md`](msvc6_symbol_numbering.md)): 1.00's `Object::SetUpPhysObAsATree` left
its window, and `BlackPCHPointArray` gives the number back with `new` in place of a local array. The
two records also move the rest of the PCH's heap, which swaps descriptor pairs in units that are not
linked (`CreatureMentalLearnAction`, `CreatureMentalExploration`, `PlaytimeDance`). And the pair's
conditional ends in `#else`: with an `#elif` naming the two versions there, 17 of Creature Isle's
objects differed from `main`'s although that version skips the whole group, and with `#else` none
does.

The records' addresses can be read from a copy of `c1xx.dll` patched to pass each class of the array
to an API that wibo's `-D` log prints.

### Debug information [verified]

The game was compiled with `/Zi`. It changes code only in rare cases, but those exist:
without `/Zi` (or `/Zd`) `Town::SetToZero` is scheduled differently, and without any debug
information the COFF function records that give objdiff a function's size are missing, so
the alignment padding after a jump table counts as code (`Audio`, `ScriptFind`, `Villager`).
`/Z7` compiles exactly as `/Zi` does (identical report for every game unit), but `lld-link
/debug` hangs on `/Yu /Z7` objects.

`/Yu` with `/Zi` needs the PDB that built the PCH: the unit's `/Fd` must have the same file
name (C2858), and the file must be that PDB or a copy of it (C2859). The directory can differ.
`cl` writes PDB file names in lower case.

## 2. How the build models it

`configure.py` declares each precompiled header with `PrecompiledHeader(header, source)`, where
`source` compiles nothing but the header, like a StdAfx.cpp. Each library's object helper
takes a `pch` argument that selects its library's PCH:

- `GameCodeObject` uses `gamecode_pch`, `src/Black/BlackPCH.h` (built from
  `src/Black/BlackPCH.cpp`), by default, since the game was built with it in nearly every unit.
  Its `pch` argument marks the exceptions (§4): `False` where the target shows a compile without
  it, `PCH_EXCEPT_NO_STRING` or `PCHExceptNoStringIn(...)` where the `<string>` in ours keeps a
  unit off it in 1.20 and 1.30, and `PCH_PENDING` for units whose sources still reproduce the
  layout of a compile without it.
- `LH3DLibObject` uses `lh3dlib_pch`, `src/Lionhead/LH3DLib/development/LH3DLibPCH.h`, with
  `pch=True`. The units using it are those whose `.bss` only reproduces with `/Yu`.

Every unit using a PCH is compiled with `/FI<header> /Yu<header>`: the header is forced in,
so the unit's source does not include it. The PCH is built once per version at the source's
path, for example `build/<version>/src/Black/BlackPCH.pch`.

`BlackPCH.h` also holds stand-ins for inline code the original header had and ours lacks (§3):
functions made of a repeated statement, which nothing calls and no unit emits. They only move
the offsets of what follows them (§1).

- `BlackPCHCodeBeforeObject`, ahead of `Object.h` in 1.00, 1.10 and Creature Isle: 448
  statements, 16.4 KB of IL. `Abode`'s order holds from about 15.3 to 17.6 KB: with less,
  `GObjectInfo`'s bodies come out before `GAbodeInfo`'s. In 1.20 and 1.30 the `<string>` of
  `GameThingWithPos.h` gives that code.
- `BlackPCHCodeAfterObject` and `BlackPCHPointArray`, after `Object.h` in 1.00: 4096 statements
  (246 KB) and then the header's first array of constructed objects, which puts `??_H` at offset
  349 KB. 1.00's `Abode` needs it between 301 KB (the end of the unit's own functions) and 397 KB
  (`LHListHead<Villager>::AddToLast`, among the template members instantiated at the end).

Both windows move when inline code is added to the headers: to the PCH's, or to those `Abode.cpp`
includes ahead of `AbodeInfo.h` (the first window) or at all (the second). `tools/comdat-scan.py
order --unit Abode` shows the functions out of order; one `BLACK_PCH_REPEAT_64` line is 2.3 KB in
the first function and 3.8 KB in the second.

`tools/project.py` implements it with the `pch` object option (`header`, `source`):

- The PCH is built with the units' `cflags`, `/Zi` included, and `/Fd` naming
  `blackpch.pdb` (`lh3dlibpch.pdb`). Each `/Yu` unit compiles with `/Fd` naming its own copy of
  that PDB, `build/<version>/src/Black/<unit>/blackpch.pdb`. Units with other `cflags` cannot
  share it: `configure.py` fails instead of building a mismatched PCH. A unit's `extra_cflags`
  are not part of the PCH's flags. Where they differ from them, as `/GX` does for `LH3DIsland`
  and `LH3DMesh`, cl warns (C4652) and the unit's option overrides the PCH's, as with a per-file
  setting in a Visual C++ project.
- The PCH compiles with `cl` like every unit, and like them has no header dependencies: cl 6
  cannot list the files a compile reads. After editing a header the PCH reads, delete the
  `.pch`; Ninja then rebuilds it, and every unit using it, since they depend on it.

The tools that recompile units handle the PCH options:

- `decomp-verify.py` builds the PCH and the PDB copies as prerequisites, treats `/Fp` of a
  `/Yu` compile as an input (no serial replay), and selects the units using a PCH when its
  source changes. Before replaying, it deletes a PCH older than a file it reads, which a
  preprocessor (`/E`) run of the PCH's command lists, so that the prerequisites rebuild it.
- `codegen-check.py` compiles its own copy of each PCH into the snapshot directory, from the
  current sources, and gives each `/Yu` unit compiled with `/Zi` a copy of its PDB there.
- `tools/msvc_probe.py` (`tiebreak-probe.py`, `variant-sweep.py`, `inline-budget.py`,
  `minmax-scan.py`, `c2-il.py`) compiles its own copy too, from its private copy of `src/`
  where it has one, and again whenever the PCH's command or a file it read differs.
- `comdat-scan.py order` compares a unit's emission order with its target object.

`/Yc` and `/Yu` work under wibo 1.2.0 on Linux. `/YX` (automatic precompiled headers, the
default of a new Visual C++ 6 project) aborts under wibo: it calls `MoveFileExW`, which wibo
does not implement.

### After a rebase

The `_$E`/`_$S` names in `symbols.txt` follow the compiled objects (§1). When they conflict,
take `main`'s `symbols.txt` and regenerate them, for each version:

```sh
python configure.py -v BW1W120 && ninja && python tools/relabel-initializers.py --prefix runblack/ --apply && ninja
```

The first `ninja` splits the target with `main`'s names and compiles the units, which the tool
reads; the second splits with the new names. `relabel-initializers.py` pairs each target
initializer with the compiled one by structure: `.CRT$XCU` slots in order, the ctype guard's
registration by its use of the guard, the stub's calls (body, atexit thunk) by position, and,
where the two objects initialise their statics in another order, the static initialised or the
code. It renames only names that are already such labels, and slots dtk left unnamed, and a
second run renames nothing. It also renames labels `main` already had out of step with its own
compiles (`GameThing`'s, for one), so a run on `main` alone is not empty.

## 3. Which units used it

The game was built from the Visual C++ IDE, whose project file (`.dsp`) sets the PCH options
for the whole project, with per-file overrides as exceptions. The target objects show the same
shape: most game units were compiled with `/Yu`, a few without.

### The initializer test [measured]

A unit runs the dynamic initializers of its statics in definition order, its `.CRT$XCU`
order. For the header statics many units define (`SecondsPerYear`, `White`,
`LandscapeExtent`, `OneOverLogHalf`, `GS_ANGLE_TOLERANCE`, ...) the first mention is the
definition, so `/Yu` lays them out in `.bss` in reverse `.CRT$XCU` order, while a compile
without a PCH (or with `/Yc`) lays them out by name hash, the same in every unit whatever the
include order. `SecondsPerYear` and `White` in 1.20:

| Units | `.bss`: `White` first | `.bss`: `SecondsPerYear` first |
|---|---|---|
| Target, `SecondsPerYear` initialised first | 132 | 5 |
| Target, `White` initialised first | 2 | 42 |
| Our compile without a PCH, `SecondsPerYear` initialised first | 106 | 0 |
| Our compile without a PCH, `White` initialised first | 13 | 0 |
| Our compile with `/Yu`, `SecondsPerYear` initialised first | 88 | 0 |
| Our compile with `/Yu`, `White` initialised first | 0 | 11 |

Over every pair of these statics (`comdat-scan.py initializers`), the units in reverse
`.CRT$XCU` order are 47 of 48 in 1.00, 52 of 54 in 1.10, 192 of 204 in 1.20, 151 of 162 in
1.30 and 111 of 113 in Creature Isle. Two LH3DLib constants, `EighthScale` and `PI_OVER_2`, are
left out: in about twenty units they come first in `.bss` although they are initialised
first, and nothing explains that yet.

Statics named after the Mac symbols, whose names were not picked, give the same answer without
the header statics: `Alignment`, `Creature`, `Field`, `GatheringInterface`, `PrayerSite`,
`SpellSeedInfo` and `Weather` hold theirs in reverse `.CRT$XCU` order, against their hash order,
and `CreatureLessonChooser`'s six local `text` buffers are in reverse function order.
`EditorIconBase`'s four colours are exactly in hash order, and so are `CPUCheck`'s four `Driver*`
buffers, which the executables place through immediates in every version: their definition
order, which `/Yu` would reverse. `Base`'s statics are in hash order in every version too: five
of them from 1.00 to 1.30, and seven in Creature Isle, among them `$S166`, the guard the
compiler names for a local static.

The sources fitted before the PCH was modeled reproduce the `/Yu` layout with names instead:
`LandscapeExtent` was picked among 22 candidates for its hash, `WhiteColour.h` defines a
lowercase twin of `White` for the units that include the colours first, `Object.cpp` declared
fabricated static members to move `$S` guard names into the right hash buckets (it is built with
the PCH now), and several units define an unused `static float` to fill a slot.

### The `std::ctype<unsigned short>` guard [measured]

`<xlocale>` makes every unit that includes it register `std::ctype<unsigned short>::id` for
destruction. In 1.20 and 1.30 nearly every target refers to it (429 of 448 in 1.20, 416 of 436
in 1.30), including units whose sources include nothing that could pull it in (`Rand`, `Utils`,
`Global`, the `HandState*` and `MPFE*` units). The units without it still used the PCH: those
with a testable pair of header statics (`Debug` in 1.20 and 1.30, `RandomBuildingPlacement` in
1.20, `GameOptionsRoom` in 1.30) hold them in reverse `.CRT$XCU` order, as `/Yu` lays them out.
So the PCH did not carry the standard library; a header most units include after it did, which
the sources do not show yet (no header of the tree is included by the 429 units and not by the
19 without the guard). Until it is found, `GameThingWithPos.h` includes `<string>` in 1.20 and
1.30 to give the guard, and the units without it stay off the PCH there (§4). In 1.00, 1.10 and
Creature Isle only units that include the standard library themselves have it (8, 9 and 12
targets).

### COMDAT order [measured]

Functions in target order without the PCH / with it, out of the functions both objects
define:

| Unit | 1.00 | 1.10 | 1.20 | 1.30 | CI |
|---|---|---|---|---|---|
| Abode | 187 / 204 of 496 | 473 / 509 of 540 | 479 / 530 of 546 | 479 / 530 of 546 | 484 / 517 of 551 |
| Animal | 4 / 4 of 13 | 39 / 48 of 101 | 40 / 48 of 106 | 40 / 48 of 106 | 39 / 47 of 104 |
| CitadelHeart | 66 / 66 of 67 | 105 / 106 of 108 | 129 / 130 of 132 | 117 / 118 of 120 | 117 / 118 of 120 |
| CameraModeFree | 2 / 2 of 2 | 3 / 3 of 4 | 11 / 12 of 14 | 11 / 12 of 15 | 11 / 12 of 15 |

The target puts the bodies of `GameThing`, `GameThingWithPos`, `Object` and the LH3DLib math
classes after the scalar deleting destructor of the derived class, as the PCH does:

```
Abode target:  Fixed(9) MultiMapFixed(23) Abode(19) ??_GAbode GameThing(21) GameThingWithPos(171) Object(95) Abode(13)
  no PCH:      Abode(3) GameThing(23) GameThingWithPos(170) Object(92) Fixed(9) MultiMapFixed(23) Abode(17) ??_GAbode Abode(13)
  /Yu:         Abode(3) Fixed(9) MultiMapFixed(23) Abode(17) ??_GAbode GameThing(23) GameThingWithPos(170) Object(92) Abode(13)
```

1.00's numbers stay low because its `Abode` range holds small functions named after unrelated
classes (`CameraModeScript`, `Tree`, `TAtomEventCondition`). In 1.20 16 functions remain out
of order: the info classes at the start (`GBaseInfo`'s body comes before the unit's own info
class, as without a PCH, while `GObjectInfo`'s comes after it, as with one), and the
`PlannedAbode` group, whose `GetTown`, `GetSaveType` and `GetDebugText` are inline in the
original but out of line here. The PCH changes no kept function's order in any linked unit.

### The PCH's contents [measured]

- `Object.h` (through `BlackPCH.h`) gives the best order of the contents measured. Naming
  `GameThing.h` and `GameThingWithPos.h` first, before `Object.h`, loses Abode's gain.
- `GameTimeConstants.h` was not in it: a static with a dynamic initializer that is defined in
  the PCH is not emitted again by a `/Yu` unit, while most targets hold `SecondsPerYear`.
- `Villager.h` and `Living.h` were not in it: with them complete before
  `VillagerStateTableEntry` and `ReactionFunction` are declared, their member pointers
  become 4 bytes, while the target's tables use 16-byte entries.
- It held more inline code than `Object.h` gives now. `Abode`, the first unit of the link and so
  the one whose copy of every shared COMDAT the image keeps, emits `Fixed`'s, `MultiMapFixed`'s
  and its own bodies before `GameThing`'s in every version: about 16 KB of IL more ahead of the
  PCH's classes (§1). In 1.00 it emits `??_H` after its last function, although the initializer
  of `GAbodeInfo::AbodeInfos` needs the iterator before its first: the PCH had generated it, at
  an offset beyond the unit's own code, about 250 KB further than our headers reach. From 1.10
  on `Abode` emits it among the headers, after `??_EHelpTextInfo`. `BlackPCH.h` stands in for
  both (§2).

### The Mac build and the binaries' strings

The Mac build used a CodeWarrior prefix header, `BWMacPrefixStaticRelease.pch`: anonymous
classes compiled inside it are named after it (`@class$5976BWMacPrefixStaticRelease_pch`).
In order of their numbers it held `GameThingWithPos.h`, `Packet.h`, `Living.h`, `Villager.h`
and LH3DLib's `PhysOb.h`, more than the Windows PCH could have.

The Windows executables name no PCH. The only precompiled header in their strings is in the
banner Intel C++ left in `amaths.lib`: `-FpRelease/AMaths.pch -YX`, the defaults of a new
Visual C++ 6 project, which compiles every source with `/YX` (automatic precompiled headers).
`/YX` creates the PCH whenever a file's leading includes differ from the last one's and uses
it otherwise, so it also leaves per-file exceptions behind; it cannot run under wibo, and the
exceptions below are modeled as files without the PCH.

## 4. The exceptions

Only the first group below is an exception of the original build. The Visual C++ IDE sets the
PCH options for the project, so it needs a mechanism there: either `/YX`, under which a compile
reuses the PCH only if its leading includes and options are the ones the PCH was built from and
otherwise rebuilds it from its own (a rebuilding compile lays out `.bss` as `/Yc` does, by name
hash), or a per-file override in the `.dsp` ("Not using precompiled headers", or a `/Yc` of its
own). The other groups are artefacts of our build (what our PCH contains, how `project.py`
shares it) or of our sources.

- **The target contradicts `/Yu`** (header statics not in reverse `.CRT$XCU` order, or
  Mac-named statics or the unit's own, placed by the executable, in hash order): `Base`,
  `Belief`, `CPUCheck`, `EditorIconBase`, `GestureSystem`, `GestureSystemData`,
  `GestureSystemDataList`, `GestureSystemMatch`, `GestureSystemSamples`, `Language`,
  `MPFEConditionMessages`, `MPFECreatureDownload`, `MPFEDatabase`, `PlayerMessage`,
  `SpellShield`, `TotemStatue`, `VillagerStates`, `WorshipTotem`. Either mechanism gives
  this. `/YX` needs no nineteen overrides set by hand (and `CPUCheck`'s leading includes, DirectDraw's, are its own), and it
  fits the GestureSystem files: five are in
  hash order, and `GestureSystemResult`, which follows `GestureSystemMatch` in link order and
  would reuse the PCH it had rebuilt, is the only one of the six in `/Yu` order.
- **The `<string>` in our PCH** (`PCH_EXCEPT_NO_STRING`, `PCHExceptNoStringIn`): `AudioAnalyse`,
  `CarriedObject`, `Debug`, `DialogBoxKeyBinding`, `HelpDudeControl`, `HelpEditor`,
  `LivingStates`, `MagicObjectInfo`, `PSysBase`, `PSysBeam` and `ScriptDLL`
  have no ctype guard in 1.20 and 1.30, `RandomBuildingPlacement` none in 1.20
  and `GameOptionsRoom` and `MPFEConnectionStatus` none in 1.30 (an include that changed between
  versions). `LoadingScreen` has the guard but calls `_iswspace`, which `<ctype.h>` gives only
  before the standard library (after it, `iswspace` is an inline `iswctype` call). Their targets
  show the PCH where they can be tested, and it did not carry `<string>` (§3); ours reaches it
  through `GameThingWithPos.h` in 1.20 and 1.30, which would give them the guard or the inline
  call, so they are built without it in those two versions and with it in 1.00, 1.10 and
  Creature Isle. They get it back once `<string>` moves to the header that gave the other units
  the guard.

- **`/vmg`: `Fixed`, `Town` and `VillagerHome`.** cl only warns (C4652) when a `/Yu` compile's
  pointer-to-member representation differs from the PCH's, so under `/Yu` they could have used
  it, and `/YX` would rebuild it for them. They are out because `project.py` once shared a PCH
  only between units with all the same flags, not because of their targets. Their `extra_cflags`
  now override the PCH's, so whether they used it is open. `Fixed`'s `.bss` guard follows the
  name hash of its `$S` number, which every static data member its headers declare bumps:
  `FixedCounterPad` keeps the guard in the original's slot.
- **`PCH_PENDING`**: sources fitted to the layout of a compile without the PCH, whose targets
  do not rule it out. This is not a property of the original build, and they are follow-up
  work: `/Yu` puts their statics in the reverse order of their first mention, so the
  constructs below give way to definitions in the original's order, zero-initialised statics
  (`CreaturePlan` and `CreatureMentalEditor` needed only these), and, where the target has an
  unreferenced slot after the header statics, a static mentioned before them.

| Unit | Construct fitted to the hash order |
|---|---|
| `Container` | includes of `Creature.h` and `Game.h` to move a `$S` guard's number; filler `spare` |
| `GameThing`, `GlobalGameList`, `Object3D`, `OnMapTrajectory` | filler `static float unused;` |
| `GJProperty` | `OriginVector` and `PersistenceRegistry` named for their hashes; filler `static double unused;` |
| `PSysProperties` | `ParticleZeroPoint` named for its hash; filler `unused` |
| `ScriptFind` | `WhiteColour.h`'s lowercase `white`; filler `Unused` |
| `WorldRoom` | the `WorldRoomCounterPad` members; `OneOnLogHalf`, a second spelling named for its hash; `UnusedStatic` |
| `CameraModeNew3` | the definition order of its `Global_00c5b0ac`.. statics |
| `MobileObject` | the definition order of `InfoList` and the header statics |
| `Alignment`, `BWGameSpy`, `CreatureMentalDesireSource`, `GatheringInterface`, `PCMain` | definition order |

`LandscapeConstants.h`'s `LandscapeExtent`, picked among 22 names for its hash, and
`WhiteColour.h` serve units both with and without the PCH, and stay.

## 5. Results [measured]

Reports with the PCH and the labels regenerated by `relabel-initializers.py` (§2), against
`main` built in the same checkout (the RTTI order depends on the path, §1):

| | 1.00 | 1.10 | 1.20 | 1.30 | CI |
|---|---|---|---|---|---|
| Matched code (bytes) | unchanged | unchanged | +114 | +89 | +30 |
| Matched functions | unchanged | unchanged | +7 | +6 | +4 |
| Matched data (bytes) | +384 | +376 | +1,096 | +1,372 | +820 |
| Units with a higher `.bss` score | 9 | 9 | 16 | 16 | 10 |
| Units with a higher `.CRT$XCU` score | 26 | 25 | 281 | 292 | 43 |
| Units with a lower score | 0 | 0 | 7 | 7 | 0 |
| Hashes | 14 OK | 14 OK | 15 OK | 15 OK | 15 OK |

The PCH gives the code of `MagicLivingInfo` and `SpellSeedInfo` (1.20, 1.30);
`GatheringInterface`, `TotemStatue` and `Reaction` gain initializers whose labels now pair.
`CreaturePlan` and `CreatureMentalEditor` stay linked with the PCH. The largest `.bss` gains in
1.20 are `VillagerCivic` (7 to 100%), `puzzlegame` (1 to 86%), `MobileWallHug` (70 to 98%),
`EditorHug` (55 to 73%) and `GestureSystemResult` (75 to 91%).

The lower scores are the RTTI type descriptors in another order in `.data` (`Field` in 1.20 and
1.30, `ScriptTimer` in 1.20, `PlaytimeDance` in 1.30), and `.CRT$XCU` in `ChallengeRoom`, `JCMisc`, `Map`, `MultiplayerDatabase` and
`PSysEditor` (1.20, 1.30): a `_$S` label of their targets used to pair by name with an
unrelated slot of ours, and the slots that do correspond lie in a dtk pad or have no symbol,
which the tool does not create. `decomp-regress.py` lists each renamed label as a removed and
an added function.

## 6. Open questions

- Whether the original used `/Yu` with per-file overrides or `/YX`.
- `EighthScale` and `PI_OVER_2` (§3).
- The header that gave 429 of 1.20's units the ctype guard, for which `GameThingWithPos.h`'s
  `<string>` stands in (§3); with it found, the units of §4's second group return to the PCH.
- The edge of the PCH's contents: `BaseInfo.h` and `ObjectInfo.h`, which the base-class headers
  being reworked will settle.
- The inline code `BlackPCH.h` stands in for (§2): which headers held it, and what built 1.00's
  first array of constructed objects.

## Reproducing

Run from `/work` with relative paths and keep test files under `build/scratch/` (ignored):

```sh
CL="build/tools/wibo build/compilers/MSVC/6.5/cl.exe /nologo /W3 /O2 /Og /Ob1 /MT /GR /DNDEBUG=1 /G6"
$CL /Ycbase.h /Fpbuild/scratch/base.pch /c build/scratch/pch.cpp /Fobuild/scratch/pch.o
$CL /FIbase.h /Yubase.h /Fpbuild/scratch/base.pch /I build/scratch /c build/scratch/t.cpp /Fobuild/scratch/t.o
python3 tools/comdat-scan.py dump build/scratch/t.o
python3 tools/comdat-scan.py order --unit Abode --runs
python3 tools/comdat-scan.py initializers --prefix runblack/Black/ --skip _EighthScale --skip _PI_OVER_2
```
