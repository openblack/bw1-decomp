#ifndef BW1_DECOMP_ANIMAL_TIGER_INCLUDED_H
#define BW1_DECOMP_ANIMAL_TIGER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "AnimalLion.h" /* For struct Lion */

// Forward Declares

struct Base;
struct GameThing;
struct Object;

struct Tiger
{
  struct Lion super;  /* 0x0 */
};
static_assert(sizeof(struct Tiger) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c9440 mac inlined Tiger::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__5Tiger asm("??_R0?AVTiger@@@8");
// win1.41 009a7768 mac inlined Tiger::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__5Tiger asm("??_R1A@?0A@A@Tiger@@8");
// win1.41 009a7780 mac inlined Tiger::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__5Tiger asm("??_R2Tiger@@8");
// win1.41 009a77b0 mac inlined Tiger::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__5Tiger asm("??_R3Tiger@@8");

// Override methods

// win1.41 00421440 mac 10177fa0 Tiger::_dt(void)
void __fastcall __dt__5TigerFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GTiger@@UAEPAXI@Z");
// win1.41 00421430 mac 10178060 Tiger::GetDebugText(void)
char* __fastcall GetDebugText__5TigerFv(struct GameThing* this) asm("?GetDebugText@Tiger@@UAEPADXZ");
// win1.41 00421420 mac 10178030 Tiger::GetSaveType(void)
uint32_t __fastcall GetSaveType__5TigerFv(struct GameThing* this) asm("?GetSaveType@Tiger@@UAEIXZ");
// win1.41 0041c430 mac 1016f530 Tiger::StandAnimation(void)
uint32_t __fastcall StandAnimation__5TigerFv(struct Object* this) asm("?StandAnimation@Tiger@@UAEIXZ");

#endif /* BW1_DECOMP_ANIMAL_TIGER_INCLUDED_H */
