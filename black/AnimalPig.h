#ifndef BW1_DECOMP_ANIMAL_PIG_INCLUDED_H
#define BW1_DECOMP_ANIMAL_PIG_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "AnimalCow.h" /* For struct Cow */

// Forward Declares

struct Base;
struct GameThing;
struct Object;

struct Pig
{
  struct Cow super;  /* 0x0 */
};
static_assert(sizeof(struct Pig) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c90b8 mac inlined Pig::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__3Pig asm("??_R0?AVPig@@@8");
// win1.41 009a7008 mac inlined Pig::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__3Pig asm("??_R1A@?0A@A@Pig@@8");
// win1.41 009a7020 mac inlined Pig::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__3Pig asm("??_R2Pig@@8");
// win1.41 009a7050 mac inlined Pig::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__3Pig asm("??_R3Pig@@8");

// Override methods

// win1.41 0041d9d0 mac 101207f0 Pig::_dt(void)
void __fastcall __dt__3PigFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPig@@UAEPAXI@Z");
// win1.41 0041d9c0 mac 10170ef0 Pig::GetDebugText(void)
char* __fastcall GetDebugText__3PigFv(struct GameThing* this) asm("?GetDebugText@Pig@@UAEPADXZ");
// win1.41 0041d9b0 mac 10170ec0 Pig::GetSaveType(void)
uint32_t __fastcall GetSaveType__3PigFv(struct GameThing* this) asm("?GetSaveType@Pig@@UAEIXZ");
// win1.41 0041cd90 mac 100a0190 Pig::StandAnimation(void)
uint32_t __fastcall StandAnimation__3PigFv(struct Object* this) asm("?StandAnimation@Pig@@UAEIXZ");

#endif /* BW1_DECOMP_ANIMAL_PIG_INCLUDED_H */
