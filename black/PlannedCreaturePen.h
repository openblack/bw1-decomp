#ifndef BW1_DECOMP_PLANNED_CREATURE_PEN_INCLUDED_H
#define BW1_DECOMP_PLANNED_CREATURE_PEN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "PlannedCitadelPart.h" /* For struct PlannedCitadelPart */

// Forward Declares

struct Base;
struct GameThingWithPos;

struct PlannedCreaturePen
{
  struct PlannedCitadelPart super;  /* 0x0 */
};
static_assert(sizeof(struct PlannedCreaturePen) == 0x48, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009ce8e8 mac inlined PlannedCreaturePen::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__18PlannedCreaturePen asm("??_R0?AVPlannedCreaturePen@@@8");
// win1.41 009ab290 mac inlined PlannedCreaturePen::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__18PlannedCreaturePen asm("??_R1A@?0A@A@PlannedCreaturePen@@8");
// win1.41 009ab2a8 mac inlined PlannedCreaturePen::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__18PlannedCreaturePen asm("??_R2PlannedCreaturePen@@8");
// win1.41 009ab2c8 mac inlined PlannedCreaturePen::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__18PlannedCreaturePen asm("??_R3PlannedCreaturePen@@8");

// Override methods

// win1.41 004ef050 mac 102748a0 PlannedCreaturePen::_dt(void)
void __fastcall __dt__18PlannedCreaturePenFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPlannedCreaturePen@@UAEPAXI@Z");
// win1.41 004ef040 mac 10274940 PlannedCreaturePen::GetText(void)
const char* __fastcall GetText__18PlannedCreaturePenFv(struct GameThingWithPos* this) asm("?GetText@PlannedCreaturePen@@UAEPBDXZ");

#endif /* BW1_DECOMP_PLANNED_CREATURE_PEN_INCLUDED_H */
