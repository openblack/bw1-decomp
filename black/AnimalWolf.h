#ifndef BW1_DECOMP_ANIMAL_WOLF_INCLUDED_H
#define BW1_DECOMP_ANIMAL_WOLF_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "AnimalLion.h" /* For struct Lion */

// Forward Declares

struct Base;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct Living;
struct MapCoords;
struct MobileWallHug;
struct Object;

struct SpellWolf
{
  struct Lion super;  /* 0x0 */
};
static_assert(sizeof(struct SpellWolf) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c93f0 mac inlined SpellWolf::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9SpellWolf asm("??_R0?AVSpellWolf@@@8");
// win1.41 009a76f8 mac inlined SpellWolf::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9SpellWolf asm("??_R1A@?0A@A@SpellWolf@@8");
// win1.41 009a7710 mac inlined SpellWolf::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9SpellWolf asm("??_R2SpellWolf@@8");
// win1.41 009a7740 mac inlined SpellWolf::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9SpellWolf asm("??_R3SpellWolf@@8");

// Override methods

// win1.41 004208e0 mac 10176960 SpellWolf::_dt(void)
void __fastcall __dt__9SpellWolfFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GSpellWolf@@UAEPAXI@Z");
// win1.41 004208a0 mac 101769f0 SpellWolf::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__9SpellWolfFv(struct GameThing* this) asm("?GetPlayer@SpellWolf@@UAEPAVGPlayer@@XZ");
// win1.41 004208b0 mac 10176a30 SpellWolf::SetPlayer(GPlayer *)
void __fastcall SetPlayer__9SpellWolfFP7GPlayer(struct GameThing* this, const void* edx, struct GPlayer* param_1) asm("?SetPlayer@SpellWolf@@UAEXPAVGPlayer@@@Z");
// win1.41 004208d0 mac 10176ab0 SpellWolf::GetDebugText(void)
char* __fastcall GetDebugText__9SpellWolfFv(struct GameThing* this) asm("?GetDebugText@SpellWolf@@UAEPADXZ");
// win1.41 004210b0 mac 10176d80 SpellWolf::Load(GameOSFile &)
uint32_t __fastcall Load__9SpellWolfFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@SpellWolf@@UAEIAAVGameOSFile@@@Z");
// win1.41 004211d0 mac 10176bb0 SpellWolf::Save(GameOSFile &)
uint32_t __fastcall Save__9SpellWolfFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@SpellWolf@@UAEIAAVGameOSFile@@@Z");
// win1.41 004208c0 mac 10176a70 SpellWolf::GetSaveType(void)
uint32_t __fastcall GetSaveType__9SpellWolfFv(struct GameThing* this) asm("?GetSaveType@SpellWolf@@UAEIXZ");
// win1.41 0051c560 mac 100c4a10 SpellWolf::Draw(void)
void __fastcall Draw__9SpellWolfFv(struct Object* this) asm("?Draw@SpellWolf@@UAEXXZ");
// win1.41 00420910 mac 10177d60 SpellWolf::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__9SpellWolfFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@SpellWolf@@UAEXABUMapCoords@@@Z");
// win1.41 00420cf0 mac 101777b0 SpellWolf::SetDying(void)
bool __fastcall SetDying__9SpellWolfFv(struct Object* this) asm("?SetDying@SpellWolf@@UAE_NXZ");
// win1.41 0041c6a0 mac 1016ee70 SpellWolf::StandAnimation(void)
uint32_t __fastcall StandAnimation__9SpellWolfFv(struct Object* this) asm("?StandAnimation@SpellWolf@@UAEIXZ");
// win1.41 004209b0 mac 10177c00 SpellWolf::SetSpeed(long)
void __fastcall SetSpeed__9SpellWolfFl(struct MobileWallHug* this, const void* edx, int param_1) asm("?SetSpeed@SpellWolf@@UAEXH@Z");
// win1.41 00420d50 mac 10177770 SpellWolf::GetNumTurnsToDieOver(void)
uint32_t __fastcall GetNumTurnsToDieOver__9SpellWolfFv(struct Living* this) asm("?GetNumTurnsToDieOver@SpellWolf@@UAEIXZ");

struct Wolf
{
  struct Lion super;  /* 0x0 */
};
static_assert(sizeof(struct Wolf) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c9488 mac inlined Wolf::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__4Wolf asm("??_R0?AVWolf@@@8");
// win1.41 009a77d8 mac inlined Wolf::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__4Wolf asm("??_R1A@?0A@A@Wolf@@8");
// win1.41 009a77f0 mac inlined Wolf::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__4Wolf asm("??_R2Wolf@@8");
// win1.41 009a7820 mac inlined Wolf::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__4Wolf asm("??_R3Wolf@@8");

// Override methods

// win1.41 00421680 mac 10120e40 Wolf::_dt(void)
void __fastcall __dt__4WolfFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GWolf@@UAEPAXI@Z");
// win1.41 00421670 mac 101790c0 Wolf::GetDebugText(void)
char* __fastcall GetDebugText__4WolfFv(struct GameThing* this) asm("?GetDebugText@Wolf@@UAEPADXZ");
// win1.41 00421660 mac 10179090 Wolf::GetSaveType(void)
uint32_t __fastcall GetSaveType__4WolfFv(struct GameThing* this) asm("?GetSaveType@Wolf@@UAEIXZ");
// win1.41 0041c580 mac 1016f1b0 Wolf::StandAnimation(void)
uint32_t __fastcall StandAnimation__4WolfFv(struct Object* this) asm("?StandAnimation@Wolf@@UAEIXZ");

#endif /* BW1_DECOMP_ANIMAL_WOLF_INCLUDED_H */
