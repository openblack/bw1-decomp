# Inline declaration order vs. the Abode.cpp COMDAT magnet blocks (BW1W120)

Task C2. This report checks the declaration order in `GameThing.h`, `GameThingWithPos.h`, `Object.h`, `Fixed.h`,
`MultiMapFixed.h`, `Abode.h`, `PlannedMultiMapFixed.h` and `PlannedAbode.h` against the order in which the image
keeps those classes' inline virtuals.

## Method

MSVC 6 emits the inline virtuals of a vftable group in declaration order, and the link keeps the first copy of each
(`docs/msvc6_comdat.md` sections 3 and 6). Each class's kept copies therefore form runs in the image, and the address
order inside a run is the declaration order of those functions. Copies kept by some other unit are folded away and
leave no gap, so a run only fixes the relative order of its own members.

- The runs come from the functions that follow each constructor and are slots of `??_7Abode` / `??_7PlannedAbode`.
  The vftables are read from `orig/BW1W120/runblack-decrypted.exe` up to the first word outside `.text` (587 and
  327 slots).
- Each function is mapped to its header declaration through the `// BW1W120 <addr>` comment. A run function is
  "misplaced" if it falls outside a longest in-order subsequence, which gives the smallest set of moves.
- Slot kinds come from comparing each class's vftable with its base's vftable. An override (OVR) reuses a base slot
  and can be declared anywhere. New virtuals (NEW) must keep their relative order.
- Our compiled `Abode.o` was compared with the target section by section, per class (`comdat-scan.py`-style section
  walk).
- `tools/decl-order.py --class X` (added in this branch) automates the check for any class. It also looks at runs in
  other units, for example `AnimatedStatic.cpp`, `BigForest.cpp` and `GameOSFile.cpp`.

The block contents match the task description:

| Block | Runs (class: functions) |
|---|---|
| after `Abode::Abode` (0x401350) | Fixed 9, MultiMapFixed 23, Abode 19 + `??_GAbode`, GameThing 21, GameThingWithPos 171, Object 95, then `??1Abode` |
| after `PlannedAbode::PlannedAbode` (0x405080) | PlannedMultiMapFixed 2, PlannedAbode 3 + `??_GPlannedAbode`, GameThing 19, GameThingWithPos 47 |

## Finding 1: the base-class runs come after `??_G`, which implies a precompiled header

In the target, the GameThing / GameThingWithPos / Object bodies come **after** `??_GAbode`. Our build, like every
non-PCH test in `docs/msvc6_comdat.md`, emits them **first**, because inherited bodies precede the class's own. No
header order can fix this.

A test with the project compiler reproduces the target's shape exactly:

```
base.h:    struct G { virtual ~G(){} virtual int g1(){..} virtual int g2(){..} }; struct P : G { p1, p2 };
derived.h: struct F : P { F(); virtual ~F(); f1, g2 }; struct A : F { A(int); virtual ~A(); a1, p2 };
t.cpp:     #include "base.h" / #include "derived.h" / A::A(int x) { f = x; }

no PCH:              ??0A  g1@G p1@P f1@F g2@F a1@A p2@A ??_GA
/Ycbase.h, /Yubase.h: ??0A  f1@F g2@F a1@A p2@A ??_GA  g1@G p1@P
```

Moving the base bodies out of their classes (`inline int G::g1() {...}` before `F`) does not move them after `??_G`.

The original `Abode.cpp` was therefore most likely compiled with a precompiled header that contained `GameThing.h`,
`GameThingWithPos.h` and `Object.h`, but not `Fixed.h`, `MultiMapFixed.h`, `Abode.h` or `PlannedMultiMapFixed.h`.
Base bodies follow `??_G` in the same way after `??_GAnimal` (GameThingWithPos), `??_GGArena` (GameThingWithPos),
`??_GTownArtifact` (GameThing) and `??_GLeashObj` (Object).

**Consequence.** `Abode.cpp` cannot reproduce the target's cross-class COMDAT order without a PCH, or something
that emulates one, in the build. The per-class order inside each run is unaffected and has now been fixed (below).
**Human decision:** whether the project should model PCHs (`/Yc`/`/Yu` per unit, with the original PCH header set).
`docs/msvc6_comdat.md` section 3 ("inherited bodies come first") should get a PCH exception.

## Finding 2: declaration-order contradictions

### Fixed (`Fixed.h`)
No contradictions. The 9 functions are in declaration order.

### GameThing (`GameThing.h`)
No contradictions in the Abode block (21 functions).

### MultiMapFixed (`MultiMapFixed.h`): fixed
The header split overrides ("Override methods") from new virtuals ("Virtual methods"). The image interleaves them.

| Run | Contradiction |
|---|---|
| Abode.cpp 0x401490.. | `IsSolidToNewAbode`, `CastMultiMapFixed` (OVR) come after `GetBuildingObject`, before `SetPower` |
| Abode.cpp | `IsBeingBuilt`, `NeedsRepair`, `IsFootpathLink`, `GetFootpathLink`, `GetCollideData` (OVR) come after `CalulateAmountOverMaximum` |
| AnimatedStatic.cpp 0x421fe0.. | `IsWonder` (OVR) comes between `IsCivic` and `GetAbodeType` |
| AnimatedStatic.cpp | `GetTown` (OVR) comes between `SetTown` and `GetShouldNotBeAddedToPlanned` |

All of these are overrides, so they were moved (commit "MultiMapFixed: Order the inline virtuals...") and the two
divider comments were merged into one. The exact position relative to declarations that these runs do not constrain
(for example, `IsSolidToNewAbode` before or after `IsCivic`) is a choice. I placed them next to the nearest
constrained neighbour.

### Abode (`Abode.h`): fixed
In the image, the new virtuals `RestartBeingFunctional` and `CausesTownEmergencyIfDamaged` sit among the overrides:
`... SetShouldNotBeAddedToPlanned, RestartBeingFunctional, SetTown, IsRepaired, IsBuilt,
CausesTownEmergencyIfDamaged, GetDestructionMesh ...`. Moving the new virtuals is only safe if their order is kept,
so the block `MoveAbodeToPlannedAbodes .. RestartBeingFunctional` was moved after `SetShouldNotBeAddedToPlanned`
and `CausesTownEmergencyIfDamaged` after `IsBuilt`. `CanBeHiddenIn` and `GetTribe` stay last. The slot order
579..586 is unchanged. Where the out-of-line new virtuals (`MoveAbodeToPlannedAbodes` ... `StopBeingFunctional`)
go is not constrained by the image.

### GameThingWithPos (`GameThingWithPos.h`): fixed
Seven overload pairs were declared next to each other, but the image emits the second overload much later:
`IsTown()`, `IsRock(Creature*)`, `IsField(Creature*)`, `IsWorkshop()`, `IsTree()`, `IsCitadelPart()`, `IsLiving()`.
These are new virtuals, but MSVC 6 groups a class's new overloads at the first declaration's slot, with later
declarations taking the earlier slots. A test confirms this (`f(int*); x; y; f()` gives the slots `f() f(int*) x y`).
The second declaration can therefore move down without changing the vftable. Each one was moved to just after its
predecessor in the run.

### Object (`Object.h`): fixed
The header sorted the overrides by base slot. The image places them among the new virtuals: `GetScale` after
`GetZAngle`, `GetLife` after `GetBeliefSprite`, `IsMoving` after `GetFoodType`, `IsObject` after `IsEffectReceiver`,
and the creature-interaction overrides `IsSuitableForCreatureAction, CanBePoodOn, CanBeAttackedByCreature,
CanBePlayedWithByCreature, CanBeImpressedByCreature, CanBeHelpedByCreature, CanBeExaminedByCreature, IsOnFire`
after `GetAlwaysRemainsInPhysicsInternalSystem`, in that order. The Mac copies of the creature group,
0x010a3100..0x010a3370, appear in the same order. All of these are overrides and were moved. The out-of-line
overrides of the creature group (`CanBeEatenByCreature`, `CanBeInspectedByCreature`, ...) are unconstrained and were
left in place, so that group is now split.

### PlannedMultiMapFixed (`PlannedMultiMapFixed.h`): fixed
The `GameOSFile.cpp` group (0x55cbd0) has `GetSaveType` before `GetDebugText`. Both are overrides, so
`GetDebugText` was moved after `GetSaveType`.

### Report only: not inline in our headers
The image keeps these as inline copies inside vftable groups, but our headers declare them without a body. The
original had them inline.

| Class | Functions | Where we have them |
|---|---|---|
| Abode | `CastAbode`, `GetTown` | out of line in `Abode.cpp` |
| PlannedAbode | `GetTown`, `GetSaveType`, `GetDebugText` (the image has `GetDebugText` after `GetSaveType`) | out of line in `Abode.cpp` |
| GameThing | 19 functions at 0x405130..0x405250 (`GetDrawImportance`, `GetRadius`, `Get2DRadius`, `IsFootpathLink`, `GetFootpathLink`, `GetNearestPathTo`, `AddFootpath`, `RemoveFootpath`, `GetResource`, `AddResource`, `RemoveResource`, `CastAbode`, `CastMultiMapFixed`, `GetNumberOfInstanceForGlobalList`, `GetTownArtifactValue`, `CanBecomeArtifact`, `DrawInHand`, `IsFunctional`, `ResolveLoad`) | not defined |
| GameThingWithPos | `GetInteractPos`; 12 functions at 0x405260..0x405550 (`GetArrivePos`, `GetLife`, `IsMoving`, `IsObjectInMap`, `GetImpressiveValue`, `CanBePickedUpByCreature`, `CanBeDestroyedByStoning`, `GetCreatureMimicType`, `GetHowMuchCreatureWantsToLookAtMe`, `GetHeight`, `SetInScript`, `IsObject`); `IsWonder`, `CreateBuildingSite`, `GetDebugText` (Animal.cpp group, with `GetDebugText` after `CreateBuildingSite`); `GetScale`, `SetScale` (Arena.cpp group) | not defined |
| Object | `GetPtr`, `RemoveFromHand`, `InterfaceGiveObject` | not defined |
| PlannedMultiMapFixed | `CreatePlannedNoFixedCheck`, `IsCivic`, `IsWonder`, `GetAbodeType` (CitadelHeart.cpp group, with `IsWonder` after `IsCivic`) | not defined |

These were not changed. Giving them inline bodies changes code generation in consumers: inlining, call sets and the
vftable groups that other units emit. That is a body-recovery task for each owning unit, verified per consumer, not
a reorder. When they are written, they should be placed at the positions the runs above give.

## Verification

- `tools/codegen-check.py snapshot declorder --changed` was taken over all 461 consumers of the 8 headers before
  editing, and `compare --ignore-comdat-order` was run after each class.
  - Every consumer is identical apart from COMDAT order.
  - The plain `compare` shows order-only changes in about 20 Black units.
  - `src/zlib/*.c` and `LH3DP3.cpp` also differ in `.drectve`, and they differ in the same way with **no** edits
    (checked with `git stash`), so that is environment noise.
  - The vftables are unchanged.
- Full `ninja` after deleting `build/BW1W120/src`: `CHECK config/BW1W120/build.sha1`: **15 files OK**.
- `decomp-regress.py --refresh --baseline build/BW1W120/baseline.json`: **0 regressions**, no changed units. objdiff
  scores do not see COMDAT order.
- Inside our rebuilt `Abode.o`, each class's emission order now agrees with the target. The only differences left
  are the not-inline functions above and the cross-class order from Finding 1.
- I could not check BW1W100, BW1W110 or BW1W130 locally (only `orig/BW1W120` is present). The edits are
  version-independent reorders and touch no `#if` blocks, but CI should confirm those hashes.

## Open questions for a human

1. Should units be built with the original precompiled header (Finding 1)? Without it, `Abode.cpp`, and every unit
   whose groups carry GameThing / GameThingWithPos / Object bodies, cannot match its COMDAT order.
2. Where should the declarations that no run constrains go? Out-of-line overrides, and the out-of-line new virtuals
   of Abode, were left where they were or moved as a block with their constrained neighbours.
3. Should the "Override methods" / "Virtual methods" dividers stay? They are reconstruction artefacts and do not fit
   the interleaved original order. I merged them for MultiMapFixed and Abode and left them elsewhere.
