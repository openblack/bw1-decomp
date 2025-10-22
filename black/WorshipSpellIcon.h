#ifndef BW1_DECOMP_WORSHIP_SPELL_ICON_INCLUDED_H
#define BW1_DECOMP_WORSHIP_SPELL_ICON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int16_t, uint32_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Fixed.h" /* For struct SingleMapFixed */
#include "SpellIcon.h" /* For struct SpellIcon */

// Forward Declares

struct Base;
struct Citadel;
struct EffectValues;
struct GPlayer;
struct GSpellIconInfo;
struct GSpellSeedInfo;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct LHOSFile;
struct MapCoords;
struct Object;
struct PSysProcessInfo;
struct Spell;
struct Town;
struct WorshipSite;

struct WorshipSpellIcon
{
  struct SpellIcon super;  /* 0x0 */
  struct WorshipSpellIcon* next;  /* 0x110 */
  int16_t field_0x114;
  uint32_t site;
  float field_0x11c;
  uint32_t field_0x120;
  int field_0x124;
  uint32_t field_0x128;
  uint32_t field_0x12c;
  uint32_t field_0x130;
  float field_0x134;
  uint32_t field_0x138;
  int16_t slot;
};
static_assert(sizeof(struct WorshipSpellIcon) == 0x140, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf4178 mac inlined WorshipSpellIcon::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16WorshipSpellIcon asm("??_R0?AVWorshipSpellIcon@@@8");
// win1.41 009ba4a8 mac inlined WorshipSpellIcon::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16WorshipSpellIcon asm("??_R1A@?0A@A@WorshipSpellIcon@@8");
// win1.41 009ba4c0 mac inlined WorshipSpellIcon::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16WorshipSpellIcon asm("??_R2WorshipSpellIcon@@8");
// win1.41 009ba4e8 mac inlined WorshipSpellIcon::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16WorshipSpellIcon asm("??_R3WorshipSpellIcon@@8");
// win1.41 0099d874 mac 10733ab0 WorshipSpellIcon::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__16WorshipSpellIcon asm("??_R4WorshipSpellIcon@@6B@");
// win1.41 0099d878 mac 106f5b44 WorshipSpellIcon::`vftable'
extern const struct MultiMapFixedVftable __vt__16WorshipSpellIcon asm("??_7WorshipSpellIcon@@6B@");

// Static methods

// win1.41 0077f2b0 mac 105b6cf0 WorshipSpellIcon::Create(MapCoords const &, GSpellIconInfo const *, GSpellSeedInfo const *, WorshipSite *, short, float, int)
struct WorshipSpellIcon* __cdecl Create__16WorshipSpellIconFRC9MapCoordsPC14GSpellIconInfoPC14GSpellSeedInfoP11WorshipSitesfi(struct MapCoords* coords, struct GSpellIconInfo* icon_info, struct GSpellSeedInfo* seed_info, struct WorshipSite* site, int16_t slot, float param_6, int param_7) asm("?Create@WorshipSpellIcon@@SAPAV1@ABUMapCoords@@PBVGSpellIconInfo@@PBVGSpellSeedInfo@@PAVWorshipSite@@FMH@Z");

// Constructors

// win1.41 0077f140 mac 105b7070 WorshipSpellIcon::WorshipSpellIcon(MapCoords const &, GSpellIconInfo const *, GSpellSeedInfo const *, WorshipSite *, short, float, int)
struct WorshipSpellIcon* __fastcall __ct__16WorshipSpellIconFRC9MapCoordsPC14GSpellIconInfoPC14GSpellSeedInfoP11WorshipSitesfi(struct WorshipSpellIcon* this, const void* edx, const struct MapCoords* coords, const struct GSpellIconInfo* icon_info, const struct GSpellSeedInfo* seed_info, struct WorshipSite* site, int16_t slot, float param_6, int param_7) asm("??0WorshipSpellIcon@@QAE@ABUMapCoords@@PBVGSpellIconInfo@@PBVGSpellSeedInfo@@PAVWorshipSite@@FMH@Z");

// Non-virtual methods

// win1.41 0077f1f0 mac inlined WorshipSpellIcon::SetZero(void)
void __fastcall SetZero__16WorshipSpellIconFv(struct WorshipSpellIcon* this) asm("?SetZero@WorshipSpellIcon@@QAEXXZ");
// win1.41 0077f320 mac 105b6bf0 WorshipSpellIcon::UpdateGraphicsWithPULevels(void)
void __fastcall UpdateGraphicsWithPULevels__16WorshipSpellIconFv(struct WorshipSpellIcon* this) asm("?UpdateGraphicsWithPULevels@WorshipSpellIcon@@QAEXXZ");
// win1.41 0077ff40 mac 105b4ff0 WorshipSpellIcon::StopRemoveFromPlayer(void)
void __fastcall StopRemoveFromPlayer__16WorshipSpellIconFv(struct WorshipSpellIcon* this) asm("?StopRemoveFromPlayer@WorshipSpellIcon@@QAEXXZ");

// Override methods

// win1.41 0077f110 mac 105b6fb0 WorshipSpellIcon::_dt(void)
void __fastcall __dt__16WorshipSpellIconFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GWorshipSpellIcon@@UAEPAXI@Z");
// win1.41 0077f230 mac 105b6ed0 WorshipSpellIcon::ToBeDeleted(int)
void __fastcall ToBeDeleted__16WorshipSpellIconFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@WorshipSpellIcon@@UAEXH@Z");
// win1.41 0077f6f0 mac inlined WorshipSpellIcon::MaintainSpell(unsigned int, float)
void __fastcall MaintainSpell__16WorshipSpellIconFUif(struct GameThing* this, const void* edx, uint32_t param_1, float param_2) asm("?MaintainSpell@WorshipSpellIcon@@UAEXIM@Z");
// win1.41 0077f750 mac 105b64c0 WorshipSpellIcon::UpdateSpellInfo(Spell *, PSysProcessInfo *)
void __fastcall UpdateSpellInfo__16WorshipSpellIconFP5SpellP15PSysProcessInfo(struct GameThing* this, const void* edx, struct Spell* param_1, struct PSysProcessInfo* param_2) asm("?UpdateSpellInfo@WorshipSpellIcon@@UAEXPAVSpell@@PAUPSysProcessInfo@@@Z");
// win1.41 0077f100 mac 105b4440 WorshipSpellIcon::GetDebugText(void)
char* __fastcall GetDebugText__16WorshipSpellIconFv(struct GameThing* this) asm("?GetDebugText@WorshipSpellIcon@@UAEPADXZ");
// win1.41 007801f0 mac 105b4690 WorshipSpellIcon::Load(GameOSFile &)
uint32_t __fastcall Load__16WorshipSpellIconFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@WorshipSpellIcon@@UAEIAAVGameOSFile@@@Z");
// win1.41 0077ff80 mac 105b4bc0 WorshipSpellIcon::Save(GameOSFile &)
uint32_t __fastcall Save__16WorshipSpellIconFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@WorshipSpellIcon@@UAEIAAVGameOSFile@@@Z");
// win1.41 0077f0f0 mac 105b4400 WorshipSpellIcon::GetSaveType(void)
uint32_t __fastcall GetSaveType__16WorshipSpellIconFv(struct GameThing* this) asm("?GetSaveType@WorshipSpellIcon@@UAEIXZ");
// win1.41 0077f0a0 mac 10381d20 WorshipSpellIcon::GetWorshipSite(void)
struct WorshipSite* __fastcall GetWorshipSite__16WorshipSpellIconFv(struct GameThingWithPos* this) asm("?GetWorshipSite@WorshipSpellIcon@@UAEPAVWorshipSite@@XZ");
// win1.41 0077f0e0 mac 105b43b0 WorshipSpellIcon::ApplyEffect(EffectValues &, int)
void __fastcall ApplyEffect__16WorshipSpellIconFR12EffectValuesi(struct Object* this, const void* edx, struct EffectValues* param_1, int param_2) asm("?ApplyEffect@WorshipSpellIcon@@UAEXAAVEffectValues@@H@Z");
// win1.41 0077f390 mac 105b6a70 WorshipSpellIcon::Process(void)
uint32_t __fastcall Process__16WorshipSpellIconFv(struct Object* this) asm("?Process@WorshipSpellIcon@@UAEIXZ");
// win1.41 0077f290 mac 105b6e40 WorshipSpellIcon::CallVirtualFunctionsForCreation(const MapCoords &)
void __fastcall CallVirtualFunctionsForCreation__16WorshipSpellIconFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* coords) asm("?CallVirtualFunctionsForCreation@WorshipSpellIcon@@UAEXABUMapCoords@@@Z");
// win1.41 0077f0b0 mac 105b42c0 WorshipSpellIcon::IsEffectReceiver(EffectValues *)
uint32_t __fastcall IsEffectReceiver__16WorshipSpellIconFP12EffectValues(struct Object* this, const void* edx, struct EffectValues* param_1) asm("?IsEffectReceiver@WorshipSpellIcon@@UAEIPAVEffectValues@@@Z");
// win1.41 0077f0d0 mac 105b4360 WorshipSpellIcon::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__16WorshipSpellIconFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@WorshipSpellIcon@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");

DECLARE_LH_LIST_HEAD(WorshipSpellIcon);

struct PrayerIcon
{
  struct SingleMapFixed super;  /* 0x0 */
};
static_assert(sizeof(struct PrayerIcon) == 0x5c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c02120 mac inlined PrayerIcon::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10PrayerIcon asm("??_R0?AVPrayerIcon@@@8");
// win1.41 009b3668 mac inlined PrayerIcon::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10PrayerIcon asm("??_R1A@?0A@A@PrayerIcon@@8");
// win1.41 009b3680 mac inlined PrayerIcon::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10PrayerIcon asm("??_R2PrayerIcon@@8");
// win1.41 009b36a0 mac inlined PrayerIcon::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10PrayerIcon asm("??_R3PrayerIcon@@8");

// Override methods

// win1.41 00670960 mac inlined PrayerIcon::_dt(void)
void __fastcall __dt__10PrayerIconFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPrayerIcon@@UAEPAXI@Z");
// win1.41 00670980 mac inlined PrayerIcon::ToBeDeleted(int)
void __fastcall ToBeDeleted__10PrayerIconFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@PrayerIcon@@UAEXH@Z");
// win1.41 006709a0 mac inlined PrayerIcon::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__10PrayerIconFv(struct GameThing* this) asm("?GetPlayer@PrayerIcon@@UAEPAVGPlayer@@XZ");
// win1.41 006709b0 mac inlined PrayerIcon::GetTown(void)
struct Town* __fastcall GetTown__10PrayerIconFv(struct GameThing* this) asm("?GetTown@PrayerIcon@@UAEPAVTown@@XZ");
// win1.41 00670940 mac inlined PrayerIcon::GetCreatureBeliefType(void)
uint32_t __fastcall GetCreatureBeliefType__10PrayerIconFv(struct GameThingWithPos* this) asm("?GetCreatureBeliefType@PrayerIcon@@UAEIXZ");
// win1.41 006709e0 mac inlined PrayerIcon::GetCitadel(void)
struct Citadel* __fastcall GetCitadel__10PrayerIconFv(struct GameThingWithPos* this) asm("?GetCitadel@PrayerIcon@@UAEPAVCitadel@@XZ");
// win1.41 006709d0 mac inlined PrayerIcon::Process(void)
uint32_t __fastcall Process__10PrayerIconFv(struct Object* this) asm("?Process@PrayerIcon@@UAEIXZ");
// win1.41 00670950 mac inlined PrayerIcon::GetMesh( const(void))
int __fastcall GetMesh__10PrayerIconCFv(const struct Object* this) asm("?GetMesh@PrayerIcon@@UBEHXZ");
// win1.41 006709f0 mac inlined PrayerIcon::Draw(void)
void __fastcall Draw__10PrayerIconFv(struct Object* this) asm("?Draw@PrayerIcon@@UAEXXZ");

#endif /* BW1_DECOMP_WORSHIP_SPELL_ICON_INCLUDED_H */
