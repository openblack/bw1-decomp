# MSVC 6 COMDATs: what a unit emits and which copy the image keeps

This note explains why a recompiled unit contains many functions that the original object does
not: inline functions, vftables and template instances that the shipped executable keeps in
another unit. objdiff lists them as "extra". It covers what `cl` 6.0 SP5 (c1xx/c2 8966) emits
for a unit, the order it emits it in, and which copy the original `link.exe` 6 keeps.

Confidence markers:

- **[verified]**: reproduced with the small test files below, compiled by the project compiler
  and (for link behaviour) linked with the original `build/compilers/MSVC/6.5/link.exe`.
- **[measured]**: counted on BW1W120 with `tools/comdat-scan.py`, against our objects, the split
  target objects, `symbols.txt` and `splits.txt`.

## Reproducing

Run from `/work` with **relative** paths: under wibo, `cl` and `link` treat any argument that
starts with `/` as an option. Keep test files under `build/scratch/` (ignored).

```sh
build/tools/wibo build/compilers/MSVC/6.5/cl.exe /nologo /W3 /O2 /Og /Ob1 /MT /GR /DNDEBUG=1 /G6 /c \
    build/scratch/t.cpp /Fobuild/scratch/t.o
python3 tools/comdat-scan.py dump build/scratch/t.o
# link without a CRT; /MAP shows which object every kept symbol came from
build/tools/wibo build/compilers/MSVC/6.5/link.exe /nologo /NODEFAULTLIB /ENTRY:entry /SUBSYSTEM:CONSOLE \
    /OPT:NOREF build/scratch/a.o build/scratch/b.o build/scratch/main.o /OUT:build/scratch/ab.exe \
    /MAP:build/scratch/ab.map
```

`tools/comdat-scan.py dump` prints each section in emission order with its COMDAT selection, the
symbols it defines and the weak externals. `tools/decomp_binary.py` (`Coff`) gives the raw data:
section flag `0x1000` = `IMAGE_SCN_LNK_COMDAT`, aux byte 14 of the section symbol = selection,
symbol storage class 105 = weak external (aux bytes 0-3 = index of the default symbol).
`.debug$F` (FPO) sections are ASSOCIATIVE to their function; `dump` hides them.

The game's flags add `/Zi`. That interleaves `.debug$S` sections but does not change any selection
or order described here [verified on t1].

## 1. Every function is a COMDAT under `/O2` [verified]

`/O2` implies `/Gy`, so every function gets its own `.text` section. The selection depends on the
kind of function:

| What | Selection |
|---|---|
| Out-of-line (non-inline) function, `static` functions included | 1 `NODUPLICATES` |
| Inline function, implicit member, `??_G`/`??_E`, template instance | 2 `ANY` |
| vftable (with `/GR`) | 6 `LARGEST` |
| vftable (with `/GR-`) | 2 `ANY` |
| RTTI (`??_R0`..`??_R4`) | 2 `ANY` |

`t1.cpp`:

```cpp
int Plain(int x) { return x * 3; }
static int Local(int x) { return x + 1; }
int UsesLocal(int x) { return Local(x) + Local(x + 2); }

struct Shape {
	Shape() {}
	virtual ~Shape() {}
	virtual int Area() { return 0; }
	int Size;
};

Shape* MakeShape() { return new Shape; }
```

```
  [  2] .text    size=0x00010 COMDAT NODUPLICATES   ?Plain@@YAHH@Z
  [  4] .text    size=0x00020 COMDAT NODUPLICATES   ?UsesLocal@@YAHH@Z
  [  6] .text    size=0x00010 COMDAT NODUPLICATES   ?Local@@YAHH@Z (static)
  [  8] .text    size=0x00020 COMDAT NODUPLICATES   ?MakeShape@@YAPAUShape@@XZ
  [  9..13] .rdata$r / .data  COMDAT ANY            ??_R1, ??_R2, ??_R3, ??_R0, ??_R4
  [ 14] .rdata   size=0x0000c COMDAT LARGEST        +4 ??_7Shape@@6B@
  [ 16] .text    size=0x00010 COMDAT ANY            ?Area@Shape@@UAEHXZ
  [ 18] .text    size=0x00020 COMDAT ANY            ??_GShape@@UAEPAXI@Z
  weak external ??_EShape@@UAEPAXI@Z -> default ??_GShape@@UAEPAXI@Z
```

The same file with other flags shows that `/O2` implies `/Gy`:

| Flags | Out-of-line functions | Inline functions, vftable |
|---|---|---|
| `/O2`, `/O1`, `/Gy` | one `NODUPLICATES` COMDAT each | `ANY` / `LARGEST` |
| `/Og`, `/Od` | all in one plain `.text` section | `ANY` / `LARGEST` |

Only the out-of-line functions change. Inline functions and vftables are always COMDATs.

## 2. Which units emit a class's vftable [verified]

A unit emits `??_7X` (with its RTTI) only when the code it finally generates contains a
reference to `??_7X`. In practice that means a vptr store left by a constructor or destructor of
`X` that the unit compiles, either the out-of-line definition or an inlined copy. With the
vftable come its `??_G` and every **inline** virtual it points at. The emitted `??_G` inlines
the base destructors, which store the base vptrs, so the closure pulls in each base's vftable
too. Out-of-line virtuals stay undefined externals.

The working rule was "iff the unit compiles a ctor or dtor". That is close, but the vptr store
has to **survive optimisation**. A by-value local whose inline ctor and dtor do no other work
loses both stores as dead, and then nothing is emitted (`t2d`, `t2j`, `t2k` below).

`shape.h`:

```cpp
struct Base {
	Base() {}
	virtual ~Base() {}
	virtual int Inl() { return 1; }
	virtual int OutOfLine();
	int Size;
};
struct Derived : Base {
	Derived();                 // out-of-line ctor
	virtual ~Derived() {}
	virtual int Inl() { return 2; }
	virtual int OutOfLine();
};
struct InlineDtorOnly {
	InlineDtorOnly(int x);     // out-of-line ctor
	virtual ~InlineDtorOnly() { }
	virtual int Inl() { return 3; }
	int X;
};
struct OutDtor {
	OutDtor() {}
	virtual ~OutDtor();        // out-of-line dtor
	virtual int Inl() { return 4; }
};
```

| Unit body | Emitted besides the function |
|---|---|
| `t2a`: `new Derived` (out-of-line ctor), `b->Inl()`, `delete b` | nothing; `??0Derived` stays external |
| `t2b`: `new Base` (inline ctor) | `??_7Base`, `Base::Inl`, `??_GBase`; `Base::OutOfLine` external |
| `t2c`: `Derived::Derived() {}` | `??_7Derived`, `Derived::Inl`, `??_GDerived`, then `??_7Base`, `Base::Inl`, `??_GBase` (via the `Base` vptr store inside `??_GDerived`) |
| `t2d`: `InlineDtorOnly x(5); return x.X;` | nothing: the inlined dtor's vptr store is dead |
| `t2e`: `new OutDtor` (inline ctor, dtor external) | `??_7OutDtor`, `OutDtor::Inl`, `??_GOutDtor` (calls external `??1OutDtor`) |
| `t2f`: `OutDtor::~OutDtor() {}` | `??_7OutDtor`, `OutDtor::Inl`, `??_GOutDtor` |
| `t2j`: `Base b; return b.Size;` | nothing: both inline stores are dead |
| `t2k`: `Base b; return b.Inl();` | nothing: the call is devirtualised and inlined |

`shape2.h` checks the dead-store explanation:

```cpp
void Sink(void*);
struct WithBody {
	WithBody(int x);
	virtual ~WithBody() { Sink(this); }
	virtual int Inl() { return 3; }
	int X;
};
struct NoBody {
	NoBody(int x);
	virtual ~NoBody() {}
	virtual int Inl() { return 3; }
	int X;
};
```

| Unit body | Emitted |
|---|---|
| `t2g`: `WithBody x(5); return x.X;` | full vftable set: `this` escapes into `Sink`, so the store stays |
| `t2h`: `p->~NoBody();` (virtual call through the vftable) | nothing |
| `t2i`: `p->NoBody::~NoBody();` | full vftable set: `mov dword ptr [eax], offset ??_7NoBody@@6B@` survives |
| `t2d` compiled with `/Od` | full vftable set: the dtor is an out-of-line call that stores the vptr |

## 3. Emission order [verified]

Order matters because a unit's target object holds its own copies in the order the original
compiler emitted them.

- Out-of-line functions are emitted in source **definition** order.
- Inline functions that an out-of-line function needs are emitted right after that function and
  before the next one. A vftable's group comes in this order: the RTTI, the vftable, the inline
  virtuals, then `??_G`.
- Within a vftable group, the inline virtuals follow the **source order of their bodies, not the
  slot order**. Inherited, non-overridden bodies come first, because the base class is earlier in
  the source. `??_G` is always last, wherever the destructor is declared.
- Out-of-class `inline` definitions (`inline int D::N1() {...}` after the class) are emitted at
  their own source position. In the tests they came after the base vftable group as well.
- Template function instances are emitted at the **end of the unit**, after every non-template
  function. Instances called directly come in first-call order. Instances needed only by another
  instantiated template body come after those.

`t6.cpp` (base declares `A1, A2, A3`; derived declares `N1, A3, N2, A1`):

```cpp
struct A {
	A() {}
	virtual ~A() {}
	virtual int A1() { return 1; }
	virtual int A2() { return 2; }
	virtual int A3() { return 3; }
};
struct D : A {
	D() {}
	virtual int N1() { return 11; }
	virtual int A3() { return 13; }
	virtual int N2() { return 12; }
	virtual int A1() { return 14; }
};
int Before(int x) { return x + 1; }
D* MakeD() { return new D; }
int After(int x) { return x + 2; }
```

```
?Before  ?MakeD
  ??_R*D  ??_7D   A::A2  D::N1  D::A3  D::N2  D::A1  ??_GD
  ??_R*A  ??_7A   A::A1  A::A3  ??_GA
?After
vftable D slots: ??_ED A1@D A2@A A3@D N1@D N2@D
```

The slot order is `A1 A2 A3 N1 N2`, but the bodies come out in the order `A2` (inherited),
`N1 A3 N2 A1` (D's declaration order). Variants:

- `t6b`: `~D` declared between `A3` and `N2`, and `A::A4` added. `??_GD` is still last. The
  inherited bodies come first in base order: `A2 A4 N1 A3 N2 A1 ??_GD`.
- `t6c`: `D::N1` and `A::A2` are defined out of class, after `D`. The output is
  `A3 N2 A1@D ??_GD [??_7A A1@A ??_GA] N1 A2`.
- `t6d`: `A::A2` is defined out of class between `A` and `D`, and `D::N1` after `D`. The output
  is `A2 A3 N2 A1@D ??_GD [??_7A A1@A ??_GA] N1`.

`t8.cpp` (`/Ob0`, so nothing is inlined) mixes the kinds of functions:

```cpp
inline int Helper(int x) { return x * 7; }
template <class T> int Tmpl(T x) { return (int)x + 1; }
struct S { S() {} virtual int V() { return 2; } };
typedef int (*Fn)(int);
Fn First() { return &Helper; }
int Second(char c) { return Tmpl(c); }
S* Third(void* p);
int Fourth(int x) { return x; }
inline void* operator new(unsigned int, void* p) { return p; }
S* Third(void* p) { return new (p) S; }
int Fifth(int x) { return x + 5; }
```

```
First Helper Second Fourth Third ??0S [RTTI ??_7S] S::V ??2(placement) Fifth Tmpl<char>
```

**Game example [measured]**: `GlobalGameList.cpp` (Matching) calls `WriteSafe` 44 times in
`Save` and `ReadSafe` 44 times in `Load`. The first 8 `WriteSafe` and first 12 `ReadSafe` calls
are inlined, presumably until the inline budget ran out (see `msvc6_inliner.md`), and those types
get no out-of-line copy. The object has 36 `WriteSafe` and 32 `ReadSafe` instances. They are
emitted after every out-of-line function and after the `LHLinkedList`/`LHListHead` members that
`ClearMap` calls, exactly in first-call order, in our object and in the target. Instances
referenced only from inside the inlined bodies, such as `LHListHead<Ball>::GetNext` from the
inlined `WriteSafe<Ball>`, are emitted after the `ReadSafe` instances. So the order is not
strictly by first reference.

## 4. `??_E`, `??_G` and `new X[n]` [verified]

Slot 0 (the destructor slot) of a vftable references `??_EX`, the vector deleting destructor. In
units that do not need a real `??_E`, this is a **weak external that defaults to `??_GX`**, and
`??_GX` is emitted. Only a unit that compiles `new X[n]` defines a strong `??_EX`, together with
`` `vector constructor iterator' `` (`??_H`) and `` `vector destructor iterator' `` (`??_I`).
That unit's vftable then points at `??_E` directly, and it emits no `??_G` at all. `delete[] p`
on its own does not create `??_E`; it just calls slot 0 with flag 3.

```cpp
struct V {
	V() {}
	virtual ~V() {}
	int X;
};
V* MakeOne() { return new V; }
V* MakeMany(int n) { return new V[n]; }   // t4 only
void KillMany(V* v) { delete[] v; }
```

| Unit | `??_EV` | `??_GV` |
|---|---|---|
| `t4` (with `MakeMany`) | strong, COMDAT ANY, plus `??_H`, `??_I` | not emitted |
| `t4b` (without) | weak external -> `??_GV` | emitted |
| `t4c` (`V()` out of line, only `new V[n]`) | strong; its inlined dtor pulls in the vftable | not emitted |

A strong definition beats the weak default **from any position in the link order**. With
`lka.o` (vftable and weak `??_E`) linked before `lkc.o` (`new K[n]`), the map shows `??_7K` from
`lka.o` and `??_EK` from `lkc.o`, and slot 0 holds `lkc.o`'s `??_E`. With `/OPT:NOREF` the
now-unreferenced `??_GK` from `lka.o` is still kept. With `/OPT:REF` it is discarded. A
weak-only link places `??_E` at the `??_G` address (`??_GK` and `??_EK` both `00401050` in the
map).

**Game example [measured]**: the `GestureSystemData` vftable at `0x8df7e0` belongs to
`Game.cpp`'s `.rdata`. Its slot 1 points to `??_EGestureSystemData` at `0x579690`, in
`GestureSystemDataList.cpp`, which does `Data = new GestureSystemData[Count]`. No
`??_GGestureSystemData` exists in the image. In BW1W120's `symbols.txt`, 113 of the 117 `??_E`
labels share their address with a `??_G` (the weak fallbacks). The four strong ones are
`GestureSystemData`, `AudioTagList`, `HelpDudeSoundInfo` and `exception`.

## 5. vftable layout [verified]

With `/GR`, the vftable COMDAT section starts with a pointer to the class's `??_R4` (complete
object locator). The `??_7` symbol is at **offset 4** in that section. The section is
`4 + 4 * slots` bytes, with selection `LARGEST`. With `/GR-`, the section is just the slots, `??_7`
is at offset 0 and the selection is `ANY`. In the game the word before
`??_7GestureSystemData` (`0x8df7dc`) points to `??_R4GestureSystemData@@6B@`.

## 6. The link keeps the first copy [verified, measured]

`link.exe` 6 resolves an `ANY` COMDAT to the copy in the **first object on its command line**
and discards the rest. `LARGEST` keeps the biggest copy, so the first only wins a tie.

`lk.h` is included by `lka.cpp` (`#define VARIANT 3`) and by `lkb.cpp` (`#define VARIANT 5`). Each
unit returns `&Shared` and does `new (where) K`:

```cpp
inline void* operator new(unsigned int, void* p) { return p; }
inline int Shared(int x) { return x * VARIANT; }
struct K {
	K() {}
	virtual ~K() {}
	virtual int Get() { return VARIANT; }
};
```

```
link lka.o lkb.o main.o:  ?Shared, ?Get@K, ??_GK, ??_EK, ??_7K  from lka.o
link lkb.o lka.o main.o:  ?Shared, ?Get@K, ??_GK, ??_EK, ??_7K  from lkb.o
```

For LARGEST, `lkd.cpp` declares `K` with one extra virtual. Linked `lka.o lkd.o`, `??_7K` comes
from `lkd.o` (the larger one) and the `ANY` functions from `lka.o`. Normally every unit sees the
same class definition, so the vftables are the same size and the first copy wins.

The game's link order is its `.text` order in `splits.txt`. For `Black/` that is
case-insensitive alphabetical, then a trailing group (`ChallengeRoom`, `CreatureRoom`, ...,
`TempleRoom`, `UniverseRoom`, `WorldRoom`) and two exceptions (`GJUtils` before `GJPersistent`,
`TerrainMaterialInfo` before `TerrainMapInfo`). `Abode.cpp` is first.

**Game measurement [measured]** (`python3 tools/comdat-scan.py where --complete --prefix
runblack/Black/ --summary`): the 28 complete (Matching) `Black/` units compile 2110 function
copies that the exe keeps in another unit (599 distinct functions). **Every one is kept in an
earlier unit.** 1707 of them (80.9%) are in `Abode.cpp`, then `GJPersistent.cpp` 146,
`CameraModeCitadel.cpp` 85, `GJProperty.cpp` 69 and `AnimatedStatic.cpp` 29.
`WorshipSiteUpgrade.cpp` compiles 396 external functions. 16 stay in it, and the other 380 are
kept in `Abode.cpp` (365) and `AnimatedStatic.cpp` (15). Those 380 are exactly objdiff's 380
"extra" symbols for the unit. Per-unit `_$E` initializers are excluded: each object numbers them
independently, so a name match is meaningless.

## 7. Consequences for matching

- **Extra symbols of other classes are expected** in a unit's objdiff report: copies the image
  keeps in an earlier unit. `tools/comdat-scan.py where --unit X` lists each one and the unit
  that holds it. Before linking a recompiled unit, `tools/project.py` runs `dtk coff fold`, which
  redirects these COMDATs onto the image's copies ("Fold a compiled object's COMDAT definitions
  onto the copies the shipped image already holds elsewhere"). For example,
  `WorshipSiteUpgrade.fold.o` defines 24 external symbols where `WorshipSiteUpgrade.o` defines 451.
  objdiff still reads the unfolded object.
- **Keep such functions inline in the headers.** Never move an inline virtual or accessor into
  the "magnet" unit's `.cpp` to make it "belong" there. An out-of-line function becomes a
  `NODUPLICATES` definition that every other unit sees only as an external (section 2). That
  changes their inlining and stops their vftable groups from emitting it. It also moves the
  function's emission position (section 3).
- **Magnets match last.** The first unit in link order that emits a vftable keeps the whole
  group. Its target object therefore holds, in emission order, the inline bodies of every class
  whose ctor or dtor it compiles, and of all their bases, and those bodies come from many
  headers. On BW1W120, counting functions in the unit's `.text` range whose demangled owner is
  another class:
  - `Abode.cpp`: 454 functions of 16 other classes (420 virtual, in 12 classes). The largest
    groups are `GameThingWithPos` 218, `Object` 95, `GameThing` 40 and `MultiMapFixed` 23.
  - `GameOSFile.cpp`: 779 functions of 169 other classes (666 virtual, in 138 classes), such as
    `Tree` 26, `Villager` 24 and `Spell` 23. This is the inline-virtual pattern: for example
    `Tree::GetMesh`, `Tree::CanBePickedUp` and `Tree::IsTree`.

  These figures are approximate: they rely on `llvm-undname` and on the class owner being the
  outermost qualifier. The earlier working figures (`Abode.cpp` 414 copies, `GameOSFile.cpp` 626
  copies of 158 classes) did not reproduce with this method; how they were counted is unknown.
  Such a unit matches only once every header it inlines from is complete and in the original
  declaration order.

## Where the working hypotheses were wrong

- "Every function is a COMDAT with selection 2 ANY" is only true for inline and template
  functions. Out-of-line functions are selection 1 `NODUPLICATES`. The vftable is `LARGEST` only
  with `/GR`.
- "A unit gets a class's vftable iff it compiles a ctor or dtor" needs the vptr store to survive
  optimisation (`t2d`, `t2j`, `t2k`). It also applies transitively to base classes through `??_G`
  (`t2c`).
- "Inline virtuals are emitted in declaration order" is true for in-class bodies. More exactly,
  they follow source body order: inherited bodies first, `??_G` last, out-of-class `inline`
  definitions at their own source position.
- "Template instances in first-call order" holds for directly called instances. Instances
  reached only through other instantiated template bodies come later.
- The magnet counts quoted in claim 7 were not reproduced exactly (see section 7).
