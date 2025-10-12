#ifndef BW1_DECOMP_ANIMAL_SEAGULL_INCLUDED_H
#define BW1_DECOMP_ANIMAL_SEAGULL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "AnimalDove.h" /* For struct Dove */

// Forward Declares

struct Base;
struct GameThing;
struct Object;

struct Seagull
{
  struct Dove super;  /* 0x0 */
};
static_assert(sizeof(struct Seagull) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c9260 mac inlined Seagull::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__7Seagull asm("??_R0?AVSeagull@@@8");
// win1.41 009a73f0 mac inlined Seagull::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__7Seagull asm("??_R1A@?0A@A@Seagull@@8");
// win1.41 009a7408 mac inlined Seagull::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__7Seagull asm("??_R2Seagull@@8");
// win1.41 009a7438 mac inlined Seagull::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__7Seagull asm("??_R3Seagull@@8");

// Override methods

// win1.41 0041ee60 mac 101716c0 Seagull::_dt(void)
void __fastcall __dt__7SeagullFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GSeagull@@UAEPAXI@Z");
// win1.41 0041ee50 mac 10171790 Seagull::GetDebugText(void)
char* __fastcall GetDebugText__7SeagullFv(struct GameThing* this) asm("?GetDebugText@Seagull@@UAEPADXZ");
// win1.41 0041ee40 mac 10171750 Seagull::GetSaveType(void)
uint32_t __fastcall GetSaveType__7SeagullFv(struct GameThing* this) asm("?GetSaveType@Seagull@@UAEIXZ");
// win1.41 0041bff0 mac 10170260 Seagull::StandAnimation(void)
uint32_t __fastcall StandAnimation__7SeagullFv(struct Object* this) asm("?StandAnimation@Seagull@@UAEIXZ");

#endif /* BW1_DECOMP_ANIMAL_SEAGULL_INCLUDED_H */
