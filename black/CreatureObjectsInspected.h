#ifndef BW1_DECOMP_CREATURE_OBJECTS_INSPECTED_INCLUDED_H
#define BW1_DECOMP_CREATURE_OBJECTS_INSPECTED_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */

struct CreatureObjectsInspected
{
  struct Base super;  /* 0x0 */
  uint32_t field_0x8[0x18];
};
static_assert(sizeof(struct CreatureObjectsInspected) == 0x68, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bdfeb8 mac inlined CreatureObjectsInspected::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__24CreatureObjectsInspected asm("??_R0?AVCreatureObjectsInspected@@@8");
// win1.41 009ab0d8 mac inlined CreatureObjectsInspected::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__24CreatureObjectsInspected asm("??_R1A@?0A@A@CreatureObjectsInspected@@8");
// win1.41 009ab0f0 mac inlined CreatureObjectsInspected::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__24CreatureObjectsInspected asm("??_R2CreatureObjectsInspected@@8");
// win1.41 009ab100 mac inlined CreatureObjectsInspected::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__24CreatureObjectsInspected asm("??_R3CreatureObjectsInspected@@8");
// win1.41 008d0544 mac 10787634 CreatureObjectsInspected::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__24CreatureObjectsInspected asm("??_R4CreatureObjectsInspected@@6B@");
// win1.41 008d0548 mac 1078763c CreatureObjectsInspected::`vftable'
extern const struct BaseVftable __vt__24CreatureObjectsInspected asm("??_7CreatureObjectsInspected@@6B@");

// Override methods

// win1.41 004e3520 mac 102466c0 CreatureObjectsInspected::_dt(void)
void __fastcall __dt__24CreatureObjectsInspectedFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureObjectsInspected@@UAEPAXI@Z");

#endif /* BW1_DECOMP_CREATURE_OBJECTS_INSPECTED_INCLUDED_H */
