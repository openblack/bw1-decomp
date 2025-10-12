#ifndef BW1_DECOMP_ARENA_INCLUDED_H
#define BW1_DECOMP_ARENA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Fixed.h" /* For struct Fixed */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

struct Base;
struct Creature;
struct EffectValues;
struct GameOSFile;
struct GameThing;
struct LHOSFile;
struct MapCoords;
struct Object;

struct GArena
{
  struct GameThingWithPos super;  /* 0x0 */
  uint8_t field_0x28[0x24];
};
static_assert(sizeof(struct GArena) == 0x4c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c95e0 mac inlined GArena::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__6GArena asm("??_R0?AVGArena@@@8");
// win1.41 009a79f8 mac inlined GArena::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__6GArena asm("??_R1A@?0A@A@GArena@@8");
// win1.41 009a7a10 mac inlined GArena::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__6GArena asm("??_R2GArena@@8");
// win1.41 009a7a28 mac inlined GArena::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__6GArena asm("??_R3GArena@@8");
// win1.41 008c2c94 mac 10735f14 GArena::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__6GArena asm("??_R4GArena@@6B@");
// win1.41 008c2c98 mac 106f5c54 GArena::`vftable'
extern const struct GameThingVftable __vt__6GArena asm("??_7GArena@@6B@");

// Override methods

// win1.41 004247c0 mac 100ad310 GArena::_dt(void)
void __fastcall __dt__6GArenaFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGArena@@UAEPAXI@Z");
// win1.41 00424960 mac 100ac760 GArena::ToBeDeleted(int)
void __fastcall ToBeDeleted__6GArenaFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@GArena@@UAEXH@Z");
// win1.41 00424780 mac 10027dd0 GArena::GetRadius(void)
float __fastcall GetRadius__6GArenaFv(struct GameThing* this) asm("?GetRadius@GArena@@UAEMXZ");
// win1.41 004247b0 mac 100ad420 GArena::GetDebugText(void)
char* __fastcall GetDebugText__6GArenaFv(struct GameThing* this) asm("?GetDebugText@GArena@@UAEPADXZ");
// win1.41 004251d0 mac 100aa860 GArena::Load(GameOSFile &)
uint32_t __fastcall Load__6GArenaFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@GArena@@UAEIAAVGameOSFile@@@Z");
// win1.41 004250d0 mac 100aa9e0 GArena::Save(GameOSFile &)
uint32_t __fastcall Save__6GArenaFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@GArena@@UAEIAAVGameOSFile@@@Z");
// win1.41 004247a0 mac 100ad3e0 GArena::GetSaveType(void)
uint32_t __fastcall GetSaveType__6GArenaFv(struct GameThing* this) asm("?GetSaveType@GArena@@UAEIXZ");
// win1.41 00424790 mac 100ad3a0 GArena::GetText(void)
const char* __fastcall GetText__6GArenaFv(struct GameThingWithPos* this) asm("?GetText@GArena@@UAEPBDXZ");

DECLARE_LH_LIST_HEAD(GArena);

struct ArenaSpellIcon
{
  struct Fixed super;  /* 0x0 */
};
static_assert(sizeof(struct ArenaSpellIcon) == 0x58, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c9628 mac inlined ArenaSpellIcon::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14ArenaSpellIcon asm("??_R0?AVArenaSpellIcon@@@8");
// win1.41 009a7a88 mac inlined ArenaSpellIcon::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14ArenaSpellIcon asm("??_R1A@?0A@A@ArenaSpellIcon@@8");
// win1.41 009a7aa0 mac inlined ArenaSpellIcon::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14ArenaSpellIcon asm("??_R2ArenaSpellIcon@@8");
// win1.41 009a7ac0 mac inlined ArenaSpellIcon::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14ArenaSpellIcon asm("??_R3ArenaSpellIcon@@8");

// Override methods

// win1.41 00425350 mac 100aa680 ArenaSpellIcon::_dt(void)
void __fastcall __dt__14ArenaSpellIconFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GArenaSpellIcon@@UAEPAXI@Z");
// win1.41 00425600 mac 100aa280 ArenaSpellIcon::ToBeDeleted(int)
void __fastcall ToBeDeleted__14ArenaSpellIconFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@ArenaSpellIcon@@UAEXH@Z");
// win1.41 00425330 mac 100a9c90 ArenaSpellIcon::GetDebugText(void)
char* __fastcall GetDebugText__14ArenaSpellIconFv(struct GameThing* this) asm("?GetDebugText@ArenaSpellIcon@@UAEPADXZ");
// win1.41 004257d0 mac 100a9ef0 ArenaSpellIcon::Load(GameOSFile &)
uint32_t __fastcall Load__14ArenaSpellIconFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@ArenaSpellIcon@@UAEIAAVGameOSFile@@@Z");
// win1.41 004256e0 mac 100aa070 ArenaSpellIcon::Save(GameOSFile &)
uint32_t __fastcall Save__14ArenaSpellIconFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@ArenaSpellIcon@@UAEIAAVGameOSFile@@@Z");
// win1.41 00425320 mac 100a9c50 ArenaSpellIcon::GetSaveType(void)
uint32_t __fastcall GetSaveType__14ArenaSpellIconFv(struct GameThing* this) asm("?GetSaveType@ArenaSpellIcon@@UAEIXZ");
// win1.41 00425540 mac 100aa340 ArenaSpellIcon::Create3DObject(void)
void __fastcall Create3DObject__14ArenaSpellIconFv(struct Object* this) asm("?Create3DObject@ArenaSpellIcon@@UAEXXZ");
// win1.41 004256c0 mac 100aa250 ArenaSpellIcon::Draw(void)
void __fastcall Draw__14ArenaSpellIconFv(struct Object* this) asm("?Draw@ArenaSpellIcon@@UAEXXZ");
// win1.41 00425420 mac 100aa4a0 ArenaSpellIcon::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__14ArenaSpellIconFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@ArenaSpellIcon@@UAEXABUMapCoords@@@Z");
// win1.41 004256d0 mac 100aa200 ArenaSpellIcon::IsEffectReceiver(EffectValues *)
uint32_t __fastcall IsEffectReceiver__14ArenaSpellIconFP12EffectValues(struct Object* this, const void* edx, struct EffectValues* param_1) asm("?IsEffectReceiver@ArenaSpellIcon@@UAEIPAVEffectValues@@@Z");
// win1.41 00425310 mac 100a9c00 ArenaSpellIcon::CreatureMustAvoid(Creature *)
bool __fastcall CreatureMustAvoid__14ArenaSpellIconFP8Creature(struct Object* this, const void* edx, struct Creature* param_1) asm("?CreatureMustAvoid@ArenaSpellIcon@@UAE_NPAVCreature@@@Z");
// win1.41 00425300 mac 100a9bb0 ArenaSpellIcon::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__14ArenaSpellIconFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@ArenaSpellIcon@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");

#endif /* BW1_DECOMP_ARENA_INCLUDED_H */
