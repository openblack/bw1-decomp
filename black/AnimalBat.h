#ifndef BW1_DECOMP_ANIMAL_BAT_INCLUDED_H
#define BW1_DECOMP_ANIMAL_BAT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "AnimalDove.h" /* For struct Dove, struct SpellDove */

// Forward Declares

struct Base;
struct Creature;
struct GameThing;
struct GameThingWithPos;
struct Object;

struct Bat
{
  struct Dove super;  /* 0x0 */
};
static_assert(sizeof(struct Bat) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c9288 mac inlined Bat::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__3Bat asm("??_R0?AVBat@@@8");
// win1.41 009a7460 mac inlined Bat::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__3Bat asm("??_R1A@?0A@A@Bat@@8");
// win1.41 009a7478 mac inlined Bat::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__3Bat asm("??_R2Bat@@8");
// win1.41 009a74a8 mac inlined Bat::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__3Bat asm("??_R3Bat@@8");

// Override methods

// win1.41 0041ef30 mac 10171c00 Bat::_dt(void)
void __fastcall __dt__3BatFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GBat@@UAEPAXI@Z");
// win1.41 0041ef10 mac 10171cc0 Bat::GetDebugText(void)
char* __fastcall GetDebugText__3BatFv(struct GameThing* this) asm("?GetDebugText@Bat@@UAEPADXZ");
// win1.41 0041ef00 mac 10171c90 Bat::GetSaveType(void)
uint32_t __fastcall GetSaveType__3BatFv(struct GameThing* this) asm("?GetSaveType@Bat@@UAEIXZ");
// win1.41 0041ef20 mac 10171d00 Bat::CanBeFrighteningToCreature(Creature *)
uint32_t __fastcall CanBeFrighteningToCreature__3BatFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeFrighteningToCreature@Bat@@UAEIPAVCreature@@@Z");
// win1.41 0041be40 mac 101708a0 Bat::StandAnimation(void)
uint32_t __fastcall StandAnimation__3BatFv(struct Object* this) asm("?StandAnimation@Bat@@UAEIXZ");

struct SpellBat
{
  struct SpellDove super;  /* 0x0 */
};
static_assert(sizeof(struct SpellBat) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c92a8 mac inlined SpellBat::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8SpellBat asm("??_R0?AVSpellBat@@@8");
// win1.41 009a74d0 mac inlined SpellBat::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8SpellBat asm("??_R1A@?0A@A@SpellBat@@8");
// win1.41 009a74e8 mac inlined SpellBat::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8SpellBat asm("??_R2SpellBat@@8");
// win1.41 009a7518 mac inlined SpellBat::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8SpellBat asm("??_R3SpellBat@@8");

// Override methods

// win1.41 0041f010 mac 101719e0 SpellBat::_dt(void)
void __fastcall __dt__8SpellBatFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GSpellBat@@UAEPAXI@Z");
// win1.41 0041eff0 mac 10171b30 SpellBat::GetDebugText(void)
char* __fastcall GetDebugText__8SpellBatFv(struct GameThing* this) asm("?GetDebugText@SpellBat@@UAEPADXZ");
// win1.41 0041efe0 mac 10171af0 SpellBat::GetSaveType(void)
uint32_t __fastcall GetSaveType__8SpellBatFv(struct GameThing* this) asm("?GetSaveType@SpellBat@@UAEIXZ");
// win1.41 0041f000 mac 10171b70 SpellBat::CanBeFrighteningToCreature(Creature *)
uint32_t __fastcall CanBeFrighteningToCreature__8SpellBatFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeFrighteningToCreature@SpellBat@@UAEIPAVCreature@@@Z");
// win1.41 0041bea0 mac 10170720 SpellBat::StandAnimation(void)
uint32_t __fastcall StandAnimation__8SpellBatFv(struct Object* this) asm("?StandAnimation@SpellBat@@UAEIXZ");

#endif /* BW1_DECOMP_ANIMAL_BAT_INCLUDED_H */
