#ifndef BW1_DECOMP_ANIMAL_SWALLOW_INCLUDED_H
#define BW1_DECOMP_ANIMAL_SWALLOW_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "AnimalDove.h" /* For struct Dove */

// Forward Declares

struct Base;
struct GameThing;
struct Object;

struct Swallow
{
  struct Dove super;  /* 0x0 */
};
static_assert(sizeof(struct Swallow) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c9210 mac inlined Swallow::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__7Swallow asm("??_R0?AVSwallow@@@8");
// win1.41 009a7310 mac inlined Swallow::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__7Swallow asm("??_R1A@?0A@A@Swallow@@8");
// win1.41 009a7328 mac inlined Swallow::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__7Swallow asm("??_R2Swallow@@8");
// win1.41 009a7358 mac inlined Swallow::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__7Swallow asm("??_R3Swallow@@8");

// Override methods

// win1.41 0041ece0 mac 101715b0 Swallow::_dt(void)
void __fastcall __dt__7SwallowFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GSwallow@@UAEPAXI@Z");
// win1.41 0041ecd0 mac 10171680 Swallow::GetDebugText(void)
char* __fastcall GetDebugText__7SwallowFv(struct GameThing* this) asm("?GetDebugText@Swallow@@UAEPADXZ");
// win1.41 0041ecc0 mac 10171640 Swallow::GetSaveType(void)
uint32_t __fastcall GetSaveType__7SwallowFv(struct GameThing* this) asm("?GetSaveType@Swallow@@UAEIXZ");
// win1.41 0041c070 mac 101700d0 Swallow::StandAnimation(void)
uint32_t __fastcall StandAnimation__7SwallowFv(struct Object* this) asm("?StandAnimation@Swallow@@UAEIXZ");

#endif /* BW1_DECOMP_ANIMAL_SWALLOW_INCLUDED_H */
