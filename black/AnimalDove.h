#ifndef BW1_DECOMP_ANIMAL_DOVE_INCLUDED_H
#define BW1_DECOMP_ANIMAL_DOVE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "Animal.h" /* For struct Animal */

// Forward Declares

struct Base;
struct Creature;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct Living;
struct MapCoords;
struct Object;

struct Dove
{
  struct Animal super;  /* 0x0 */
};
static_assert(sizeof(struct Dove) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c9170 mac inlined Dove::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__4Dove asm("??_R0?AVDove@@@8");
// win1.41 009a71c8 mac inlined Dove::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__4Dove asm("??_R1A@?0A@A@Dove@@8");
// win1.41 009a71e0 mac inlined Dove::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__4Dove asm("??_R2Dove@@8");
// win1.41 009a7208 mac inlined Dove::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__4Dove asm("??_R3Dove@@8");

// Override methods

// win1.41 0041dda0 mac 10171a70 Dove::_dt(void)
void __fastcall __dt__4DoveFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GDove@@UAEPAXI@Z");
// win1.41 0041dd90 mac 10172860 Dove::GetDebugText(void)
char* __fastcall GetDebugText__4DoveFv(struct GameThing* this) asm("?GetDebugText@Dove@@UAEPADXZ");
// win1.41 0041f130 mac 10173580 Dove::Load(GameOSFile &)
uint32_t __fastcall Load__4DoveFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Dove@@UAEIAAVGameOSFile@@@Z");
// win1.41 0041f110 mac 101735e0 Dove::Save(GameOSFile &)
uint32_t __fastcall Save__4DoveFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@Dove@@UAEIAAVGameOSFile@@@Z");
// win1.41 0041dd80 mac 10172830 Dove::GetSaveType(void)
uint32_t __fastcall GetSaveType__4DoveFv(struct GameThing* this) asm("?GetSaveType@Dove@@UAEIXZ");
// win1.41 0041f190 mac 10173450 Dove::CanBePickedUpByCreature(Creature *)
uint32_t __fastcall CanBePickedUpByCreature__4DoveFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBePickedUpByCreature@Dove@@UAEIPAVCreature@@@Z");
// win1.41 0041f150 mac 101734d0 Dove::CanBeStompedOnByCreature(Creature *)
uint32_t __fastcall CanBeStompedOnByCreature__4DoveFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeStompedOnByCreature@Dove@@UAEIPAVCreature@@@Z");
// win1.41 0041dd70 mac 10171570 Dove::CanBePoodOn(Creature *)
uint32_t __fastcall CanBePoodOn__4DoveFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBePoodOn@Dove@@UAEIPAVCreature@@@Z");
// win1.41 004d1b10 mac 10243110 Dove::GetHowMuchCreatureWantsToLookAtMe(void)
float __fastcall GetHowMuchCreatureWantsToLookAtMe__4DoveFv(struct GameThingWithPos* this) asm("?GetHowMuchCreatureWantsToLookAtMe@Dove@@UAEMXZ");
// win1.41 0041eaa0 mac 10173fb0 Dove::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__4DoveFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@Dove@@UAEIXZ");
// win1.41 0041f680 mac 10037cf0 Dove::Draw(void)
void __fastcall Draw__4DoveFv(struct Object* this) asm("?Draw@Dove@@UAEXXZ");
// win1.41 0041f240 mac 101732a0 Dove::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__4DoveFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@Dove@@UAEXABUMapCoords@@@Z");
// win1.41 0041bd80 mac 10170ba0 Dove::StandAnimation(void)
uint32_t __fastcall StandAnimation__4DoveFv(struct Object* this) asm("?StandAnimation@Dove@@UAEIXZ");

struct SpellDove
{
  struct Dove super;  /* 0x0 */
};
static_assert(sizeof(struct SpellDove) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c91b8 mac inlined SpellDove::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9SpellDove asm("??_R0?AVSpellDove@@@8");
// win1.41 009a7230 mac inlined SpellDove::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9SpellDove asm("??_R1A@?0A@A@SpellDove@@8");
// win1.41 009a7248 mac inlined SpellDove::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9SpellDove asm("??_R2SpellDove@@8");
// win1.41 009a7278 mac inlined SpellDove::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9SpellDove asm("??_R3SpellDove@@8");

// Override methods

// win1.41 0041eb60 mac 10173770 SpellDove::_dt(void)
void __fastcall __dt__9SpellDoveFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GSpellDove@@UAEPAXI@Z");
// win1.41 0041eb50 mac 10175210 SpellDove::GetDebugText(void)
char* __fastcall GetDebugText__9SpellDoveFv(struct GameThing* this) asm("?GetDebugText@SpellDove@@UAEPADXZ");
// win1.41 0041fad0 mac 10172970 SpellDove::Load(GameOSFile &)
uint32_t __fastcall Load__9SpellDoveFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@SpellDove@@UAEIAAVGameOSFile@@@Z");
// win1.41 0041fb40 mac 10172890 SpellDove::Save(GameOSFile &)
uint32_t __fastcall Save__9SpellDoveFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@SpellDove@@UAEIAAVGameOSFile@@@Z");
// win1.41 0041eb40 mac 101751d0 SpellDove::GetSaveType(void)
uint32_t __fastcall GetSaveType__9SpellDoveFv(struct GameThing* this) asm("?GetSaveType@SpellDove@@UAEIXZ");
// win1.41 0041f5c0 mac 10172e20 SpellDove::SetDying(void)
bool __fastcall SetDying__9SpellDoveFv(struct Object* this) asm("?SetDying@SpellDove@@UAE_NXZ");
// win1.41 0041bde0 mac 10170a20 SpellDove::StandAnimation(void)
uint32_t __fastcall StandAnimation__9SpellDoveFv(struct Object* this) asm("?StandAnimation@SpellDove@@UAEIXZ");
// win1.41 0041f620 mac 10172de0 SpellDove::GetNumTurnsToDieOver(void)
uint32_t __fastcall GetNumTurnsToDieOver__9SpellDoveFv(struct Living* this) asm("?GetNumTurnsToDieOver@SpellDove@@UAEIXZ");

#endif /* BW1_DECOMP_ANIMAL_DOVE_INCLUDED_H */
