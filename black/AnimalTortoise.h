#ifndef BW1_DECOMP_ANIMAL_TORTOISE_INCLUDED_H
#define BW1_DECOMP_ANIMAL_TORTOISE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "AnimalCow.h" /* For struct Cow */

// Forward Declares

struct Base;
struct GameThing;
struct Object;

struct Tortoise
{
  struct Cow super;  /* 0x0 */
};
static_assert(sizeof(struct Tortoise) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c9108 mac inlined Tortoise::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8Tortoise asm("??_R0?AVTortoise@@@8");
// win1.41 009a70e8 mac inlined Tortoise::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8Tortoise asm("??_R1A@?0A@A@Tortoise@@8");
// win1.41 009a7100 mac inlined Tortoise::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8Tortoise asm("??_R2Tortoise@@8");
// win1.41 009a7130 mac inlined Tortoise::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8Tortoise asm("??_R3Tortoise@@8");

// Override methods

// win1.41 0041db60 mac 101209b0 Tortoise::_dt(void)
void __fastcall __dt__8TortoiseFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GTortoise@@UAEPAXI@Z");
// win1.41 0041db50 mac 1016d0a0 Tortoise::GetDebugText(void)
char* __fastcall GetDebugText__8TortoiseFv(struct GameThing* this) asm("?GetDebugText@Tortoise@@UAEPADXZ");
// win1.41 0041db40 mac 1016d060 Tortoise::GetSaveType(void)
uint32_t __fastcall GetSaveType__8TortoiseFv(struct GameThing* this) asm("?GetSaveType@Tortoise@@UAEIXZ");
// win1.41 0041ce80 mac 1016d9a0 Tortoise::StandAnimation(void)
uint32_t __fastcall StandAnimation__8TortoiseFv(struct Object* this) asm("?StandAnimation@Tortoise@@UAEIXZ");

#endif /* BW1_DECOMP_ANIMAL_TORTOISE_INCLUDED_H */
