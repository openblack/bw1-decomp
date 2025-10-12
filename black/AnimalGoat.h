#ifndef BW1_DECOMP_ANIMAL_GOAT_INCLUDED_H
#define BW1_DECOMP_ANIMAL_GOAT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "AnimalCow.h" /* For struct Cow */

// Forward Declares

struct Base;
struct GameThing;
struct Object;

struct Goat
{
  struct Cow super;  /* 0x0 */
};
static_assert(sizeof(struct Goat) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c9008 mac inlined Goat::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__4Goat asm("??_R0?AVGoat@@@8");
// win1.41 009a6e48 mac inlined Goat::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__4Goat asm("??_R1A@?0A@A@Goat@@8");
// win1.41 009a6e60 mac inlined Goat::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__4Goat asm("??_R2Goat@@8");
// win1.41 009a6e90 mac inlined Goat::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__4Goat asm("??_R3Goat@@8");

// Override methods

// win1.41 0041d6e0 mac 101710a0 Goat::_dt(void)
void __fastcall __dt__4GoatFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGoat@@UAEPAXI@Z");
// win1.41 0041d6d0 mac 10171160 Goat::GetDebugText(void)
char* __fastcall GetDebugText__4GoatFv(struct GameThing* this) asm("?GetDebugText@Goat@@UAEPADXZ");
// win1.41 0041d6c0 mac 10171130 Goat::GetSaveType(void)
uint32_t __fastcall GetSaveType__4GoatFv(struct GameThing* this) asm("?GetSaveType@Goat@@UAEIXZ");
// win1.41 0041c9d0 mac 1016e580 Goat::StandAnimation(void)
uint32_t __fastcall StandAnimation__4GoatFv(struct Object* this) asm("?StandAnimation@Goat@@UAEIXZ");

#endif /* BW1_DECOMP_ANIMAL_GOAT_INCLUDED_H */
