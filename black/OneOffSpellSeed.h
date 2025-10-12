#ifndef BW1_DECOMP_ONE_OFF_SPELL_SEED_INCLUDED_H
#define BW1_DECOMP_ONE_OFF_SPELL_SEED_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "MobileObject.h" /* For struct MobileObject */

// Forward Declares

struct Base;
struct Creature;
struct EffectValues;
struct GInterfaceStatus;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct LHOSFile;
struct MapCoords;
struct Object;
struct SpellSeed;

struct OneOffSpellSeed
{
  struct MobileObject super;  /* 0x0 */
  uint8_t field_0x68[0x14];
};
static_assert(sizeof(struct OneOffSpellSeed) == 0x7c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00beca20 mac inlined OneOffSpellSeed::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15OneOffSpellSeed asm("??_R0?AVOneOffSpellSeed@@@8");
// win1.41 009ad580 mac inlined OneOffSpellSeed::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15OneOffSpellSeed asm("??_R1A@?0A@A@OneOffSpellSeed@@8");
// win1.41 009ad598 mac inlined OneOffSpellSeed::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15OneOffSpellSeed asm("??_R2OneOffSpellSeed@@8");
// win1.41 009ad5b8 mac inlined OneOffSpellSeed::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15OneOffSpellSeed asm("??_R3OneOffSpellSeed@@8");
// win1.41 008f3770 mac 1099eba8 OneOffSpellSeed::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__15OneOffSpellSeed asm("??_R4OneOffSpellSeed@@6B@");
// win1.41 008f3774 mac 106f8cd0 OneOffSpellSeed::`vftable'
extern const struct ObjectVftable __vt__15OneOffSpellSeed asm("??_7OneOffSpellSeed@@6B@");

// Override methods

// win1.41 0055d170 mac 10526280 OneOffSpellSeed::_dt(void)
void __fastcall __dt__15OneOffSpellSeedFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GOneOffSpellSeed@@UAEPAXI@Z");
// win1.41 0072a420 mac 105278e0 OneOffSpellSeed::ToBeDeleted(int)
void __fastcall ToBeDeleted__15OneOffSpellSeedFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@OneOffSpellSeed@@UAEXH@Z");
// win1.41 0055d140 mac 10526350 OneOffSpellSeed::GetComputerSeen(void)
bool __fastcall GetComputerSeen__15OneOffSpellSeedFv(struct GameThing* this) asm("?GetComputerSeen@OneOffSpellSeed@@UAE_NXZ");
// win1.41 0055d130 mac 10526310 OneOffSpellSeed::CastOneOffSpellSeed(void)
struct SpellSeed* __fastcall CastOneOffSpellSeed__15OneOffSpellSeedFv(struct GameThing* this) asm("?CastOneOffSpellSeed@OneOffSpellSeed@@UAEPAVSpellSeed@@XZ");
// win1.41 0055d160 mac 105263d0 OneOffSpellSeed::GetDebugText(void)
char* __fastcall GetDebugText__15OneOffSpellSeedFv(struct GameThing* this) asm("?GetDebugText@OneOffSpellSeed@@UAEPADXZ");
// win1.41 0072aa20 mac 10526a70 OneOffSpellSeed::Load(GameOSFile &)
uint32_t __fastcall Load__15OneOffSpellSeedFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@OneOffSpellSeed@@UAEIAAVGameOSFile@@@Z");
// win1.41 0072a930 mac 10526be0 OneOffSpellSeed::Save(GameOSFile &)
uint32_t __fastcall Save__15OneOffSpellSeedFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@OneOffSpellSeed@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055d150 mac 10526390 OneOffSpellSeed::GetSaveType(void)
uint32_t __fastcall GetSaveType__15OneOffSpellSeedFv(struct GameThing* this) asm("?GetSaveType@OneOffSpellSeed@@UAEIXZ");
// win1.41 0072ac50 mac 10526640 OneOffSpellSeed::GetOverwritePickUpToolTip(void)
uint32_t __fastcall GetOverwritePickUpToolTip__15OneOffSpellSeedFv(struct GameThingWithPos* this) asm("?GetOverwritePickUpToolTip@OneOffSpellSeed@@UAEIXZ");
// win1.41 0072ac80 mac 105265f0 OneOffSpellSeed::GetOverwriteTapToolTip(void)
uint32_t __fastcall GetOverwriteTapToolTip__15OneOffSpellSeedFv(struct GameThingWithPos* this) asm("?GetOverwriteTapToolTip@OneOffSpellSeed@@UAEIXZ");
// win1.41 004e48f0 mac 105e4890 OneOffSpellSeed::CanBeEatenByCreature(Creature *)
uint32_t __fastcall CanBeEatenByCreature__15OneOffSpellSeedFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeEatenByCreature@OneOffSpellSeed@@UAEIPAVCreature@@@Z");
// win1.41 004e4ab0 mac 105e4260 OneOffSpellSeed::IsOneOffSpellBelongingToOtherPlayer(Creature *)
uint32_t __fastcall IsOneOffSpellBelongingToOtherPlayer__15OneOffSpellSeedFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsOneOffSpellBelongingToOtherPlayer@OneOffSpellSeed@@UAEIPAVCreature@@@Z");
// win1.41 0072ab00 mac 105269e0 OneOffSpellSeed::IsOneOffSpellAggressive(Creature *)
uint32_t __fastcall IsOneOffSpellAggressive__15OneOffSpellSeedFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsOneOffSpellAggressive@OneOffSpellSeed@@UAEIPAVCreature@@@Z");
// win1.41 0072ab20 mac 10526950 OneOffSpellSeed::IsOneOffSpellCompassionate(Creature *)
uint32_t __fastcall IsOneOffSpellCompassionate__15OneOffSpellSeedFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsOneOffSpellCompassionate@OneOffSpellSeed@@UAEIPAVCreature@@@Z");
// win1.41 0072ab40 mac 105268c0 OneOffSpellSeed::IsOneOffSpellPlayful(Creature *)
uint32_t __fastcall IsOneOffSpellPlayful__15OneOffSpellSeedFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsOneOffSpellPlayful@OneOffSpellSeed@@UAEIPAVCreature@@@Z");
// win1.41 0072ab60 mac 10526820 OneOffSpellSeed::IsOneOffSpellToRestoreHealth(Creature *)
uint32_t __fastcall IsOneOffSpellToRestoreHealth__15OneOffSpellSeedFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsOneOffSpellToRestoreHealth@OneOffSpellSeed@@UAEIPAVCreature@@@Z");
// win1.41 004e4040 mac 105e6170 OneOffSpellSeed::IsStealableSpell(Creature *)
uint32_t __fastcall IsStealableSpell__15OneOffSpellSeedFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsStealableSpell@OneOffSpellSeed@@UAEIPAVCreature@@@Z");
// win1.41 0072ac90 mac 10526550 OneOffSpellSeed::GetQueryFirstEnumText(void)
enum HELP_TEXT __fastcall GetQueryFirstEnumText__15OneOffSpellSeedFv(struct GameThingWithPos* this) asm("?GetQueryFirstEnumText@OneOffSpellSeed@@UAE?AW4HELP_TEXT@@XZ");
// win1.41 0072acb0 mac 105264c0 OneOffSpellSeed::GetQueryLastEnumText(void)
enum HELP_TEXT __fastcall GetQueryLastEnumText__15OneOffSpellSeedFv(struct GameThingWithPos* this) asm("?GetQueryLastEnumText@OneOffSpellSeed@@UAE?AW4HELP_TEXT@@XZ");
// win1.41 0072a910 mac 10526db0 OneOffSpellSeed::GetMesh( const(void))
int __fastcall GetMesh__15OneOffSpellSeedCFv(const struct Object* this) asm("?GetMesh@OneOffSpellSeed@@UBEHXZ");
// win1.41 00518e90 mac 100c7fc0 OneOffSpellSeed::Draw(void)
void __fastcall Draw__15OneOffSpellSeedFv(struct Object* this) asm("?Draw@OneOffSpellSeed@@UAEXXZ");
// win1.41 00518c50 mac 100c8340 OneOffSpellSeed::DrawOutOfMap(bool)
void __fastcall DrawOutOfMap__15OneOffSpellSeedFb(struct Object* this, const void* edx, bool param_1) asm("?DrawOutOfMap@OneOffSpellSeed@@UAEX_N@Z");
// win1.41 0072a450 mac 105276e0 OneOffSpellSeed::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__15OneOffSpellSeedFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@OneOffSpellSeed@@UAEXABUMapCoords@@@Z");
// win1.41 0072a530 mac 105275c0 OneOffSpellSeed::InterfaceSetInMagicHand(GInterfaceStatus *)
uint32_t __fastcall InterfaceSetInMagicHand__15OneOffSpellSeedFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceSetInMagicHand@OneOffSpellSeed@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 0072a630 mac 10527330 OneOffSpellSeed::InterfaceValidToTap(GInterfaceStatus *)
uint32_t __fastcall InterfaceValidToTap__15OneOffSpellSeedFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceValidToTap@OneOffSpellSeed@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 0072a640 mac 105271d0 OneOffSpellSeed::InterfaceTap(GInterfaceStatus *)
uint32_t __fastcall InterfaceTap__15OneOffSpellSeedFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceTap@OneOffSpellSeed@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 0072a520 mac 10527690 OneOffSpellSeed::IsEffectReceiver(EffectValues *)
uint32_t __fastcall IsEffectReceiver__15OneOffSpellSeedFP12EffectValues(struct Object* this, const void* edx, struct EffectValues* param_1) asm("?IsEffectReceiver@OneOffSpellSeed@@UAEIPAVEffectValues@@@Z");
// win1.41 0072a920 mac 10526d60 OneOffSpellSeed::GetPhysicsConstantsType(void)
uint32_t __fastcall GetPhysicsConstantsType__15OneOffSpellSeedFv(struct Object* this) asm("?GetPhysicsConstantsType@OneOffSpellSeed@@UAEIXZ");
// win1.41 0072ab80 mac 105266e0 OneOffSpellSeed::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__15OneOffSpellSeedFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@OneOffSpellSeed@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");

#endif /* BW1_DECOMP_ONE_OFF_SPELL_SEED_INCLUDED_H */
