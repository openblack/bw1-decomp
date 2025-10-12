#ifndef BW1_DECOMP_POWER_SPIN_INCLUDED_H
#define BW1_DECOMP_POWER_SPIN_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "DrawingObject.h" /* For struct DrawingObject */

struct PowerSpin
{
  struct DrawingObject super;  /* 0x0 */
};
static_assert(sizeof(struct PowerSpin) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c02088 mac inlined PowerSpin::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9PowerSpin asm("??_R0?AVPowerSpin@@@8");
// win1.41 009b34f0 mac inlined PowerSpin::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9PowerSpin asm("??_R1A@?0A@A@PowerSpin@@8");

struct PowerSpinRunner
{
  struct PowerSpin super;  /* 0x0 */
};
static_assert(sizeof(struct PowerSpinRunner) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c020a0 mac inlined PowerSpinRunner::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15PowerSpinRunner asm("??_R0?AVPowerSpinRunner@@@8");
// win1.41 009b3508 mac inlined PowerSpinRunner::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15PowerSpinRunner asm("??_R1A@?0A@A@PowerSpinRunner@@8");
// win1.41 009b3520 mac inlined PowerSpinRunner::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15PowerSpinRunner asm("??_R2PowerSpinRunner@@8");
// win1.41 009b3530 mac inlined PowerSpinRunner::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15PowerSpinRunner asm("??_R3PowerSpinRunner@@8");

// Override methods

// win1.41 0066fcb0 mac inlined PowerSpinRunner::DummyThereIsNoDrawingObjectVftableItsPureVirtualButCRequiresAValue(void)
void __fastcall DummyThereIsNoDrawingObjectVftableItsPureVirtualButCRequiresAValue__15PowerSpinRunnerFv(struct DrawingObject* this) asm("?DummyThereIsNoDrawingObjectVftableItsPureVirtualButCRequiresAValue@PowerSpinRunner@@UAEXXZ");

#endif /* BW1_DECOMP_POWER_SPIN_INCLUDED_H */
