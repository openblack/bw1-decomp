#ifndef BW1_DECOMP_SPELL_ICON_INCLUDED_H
#define BW1_DECOMP_SPELL_ICON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum SPELL_SEED_TYPE */
#include <lionhead/lh3dlib/development/LH3DColor.h> /* For struct LH3DColor */
#include <reversing_utils/re_common.h> /* For bool32_t */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "LightSheet.h" /* For struct LightSheet */
#include "MapCoords.h" /* For struct MapCoords */
#include "MultiMapFixed.h" /* For struct MultiMapFixed */

// Forward Declares

struct Base;
struct Creature;
struct GInterfaceStatus;
struct GPlayer;
struct GSpellIconInfo;
struct GSpellSeedInfo;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct Object;
struct SpellSeedGraphic;
struct WorshipSite;

struct Q29SpellIcon13TChargingData
{
  uint8_t field_0x0;
  struct LightSheet light_sheet;
  uint32_t field_0x64;
  uint32_t field_0x68;
  uint32_t field_0x6c;
  int field_0x70;
  uint32_t field_0x74;
};
static_assert(sizeof(struct Q29SpellIcon13TChargingData) == 0x78, "Data type is of wrong size");

// Constructors

// win1.41 00726690 mac 10524570 SpellIcon::TChargingData::TChargingData(void)
struct Q29SpellIcon13TChargingData* __fastcall __ct__Q29SpellIcon13TChargingDataFv(struct Q29SpellIcon13TChargingData* this);

struct SpellIcon
{
  struct MultiMapFixed super;  /* 0x0 */
  struct SpellSeedGraphic* graphic;  /* 0x7c */
  struct GSpellSeedInfo* seed_info;  /* 0x80 */
  uint32_t field_0x84;
  struct Q29SpellIcon13TChargingData charging_data;
  struct MapCoords spell_coords;  /* 0x100 */
  uint32_t field_0x10c;
};
static_assert(sizeof(struct SpellIcon) == 0x110, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00beceb0 mac inlined SpellIcon::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9SpellIcon asm("??_R0?AVSpellIcon@@@8");
// win1.41 009ae7f8 mac inlined SpellIcon::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9SpellIcon asm("??_R1A@?0A@A@SpellIcon@@8");
// win1.41 009ae9a8 mac inlined SpellIcon::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9SpellIcon asm("??_R2SpellIcon@@8");
// win1.41 009ae9c8 mac inlined SpellIcon::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9SpellIcon asm("??_R3SpellIcon@@8");
// win1.41 008f84a8 mac 10733a6c SpellIcon::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__9SpellIcon asm("??_R4SpellIcon@@6B@");
// win1.41 008f84ac mac 10733aa4 SpellIcon::`vftable'
extern const struct MultiMapFixedVftable __vt__9SpellIcon asm("??_7SpellIcon@@6B@");

// Constructors

// win1.41 00725ff0 mac 105257f0 SpellIcon::SpellIcon(const MapCoords &, const GSpellIconInfo *, const GSpellSeedInfo *, float, float, float, int)
struct SpellIcon* __fastcall __ct__9SpellIconFRC9MapCoordsPC14GSpellIconInfoPC14GSpellSeedInfofffi(struct SpellIcon* this, const void* edx, const struct MapCoords* coords, const struct GSpellIconInfo* icon_info, const struct GSpellSeedInfo* seed_info, float y_angle, float scale, float param_6, int param_7) asm("??0SpellIcon@@QAE@ABUMapCoords@@PBVGSpellIconInfo@@PBVGSpellSeedInfo@@MMMH@Z");

// Non-virtual methods

// win1.41 007260f0 mac 10525590 SpellIcon::SetToZero(void)
void __fastcall SetToZero__9SpellIconFv(struct SpellIcon* this) asm("?SetToZero@SpellIcon@@QAEXXZ");
// win1.41 00726310 mac 10524d40 SpellIcon::IsSpellSeed(SPELL_SEED_TYPE)
bool32_t __fastcall IsSpellSeed__9SpellIconF15SPELL_SEED_TYPE(struct SpellIcon* this, const void* edx, enum SPELL_SEED_TYPE type) asm("?IsSpellSeed@SpellIcon@@QAEIW4SPELL_SEED_TYPE@@@Z");
// win1.41 00726350 mac 10524e60 SpellIcon::GetSpellSeedInfo(void) const
struct GSpellSeedInfo* __fastcall GetSpellSeedInfo__9SpellIconCFv(const struct SpellIcon* this) asm("?GetSpellSeedInfo@SpellIcon@@QBEPAVGSpellSeedInfo@@XZ");
// win1.41 00726360 mac 10524cb0 SpellIcon::GetSpellSeedType(void)
enum SPELL_SEED_TYPE __fastcall GetSpellSeedType__9SpellIconFv(struct SpellIcon* this) asm("?GetSpellSeedType@SpellIcon@@QAE?AW4SPELL_SEED_TYPE@@XZ");

// Override methods

// win1.41 0055d480 mac 10525750 SpellIcon::_dt(void)
void __fastcall __dt__9SpellIconFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GSpellIcon@@UAEPAXI@Z");
// win1.41 007260a0 mac 10525680 SpellIcon::ToBeDeleted(int)
void __fastcall ToBeDeleted__9SpellIconFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@SpellIcon@@UAEXH@Z");
// win1.41 00726540 mac 10524800 SpellIcon::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__9SpellIconFv(struct GameThing* this) asm("?GetPlayer@SpellIcon@@UAEPAVGPlayer@@XZ");
// win1.41 00726570 mac 10524770 SpellIcon::SetPlayer(GPlayer *)
void __fastcall SetPlayer__9SpellIconFP7GPlayer(struct GameThing* this, const void* edx, struct GPlayer* param_1) asm("?SetPlayer@SpellIcon@@UAEXPAVGPlayer@@@Z");
// win1.41 0055d370 mac 10525d20 SpellIcon::CastSpellIcon(void)
struct SpellIcon* __fastcall CastSpellIcon__9SpellIconFv(struct GameThing* this) asm("?CastSpellIcon@SpellIcon@@UAEPAVSpellIcon@@XZ");
// win1.41 0055d470 mac 10526050 SpellIcon::GetDebugText(void)
char* __fastcall GetDebugText__9SpellIconFv(struct GameThing* this) asm("?GetDebugText@SpellIcon@@UAEPADXZ");
// win1.41 00727a00 mac 10521bb0 SpellIcon::Load(GameOSFile &)
uint32_t __fastcall Load__9SpellIconFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@SpellIcon@@UAEIAAVGameOSFile@@@Z");
// win1.41 00727940 mac 10521ce0 SpellIcon::Save(GameOSFile &)
uint32_t __fastcall Save__9SpellIconFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@SpellIcon@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055d460 mac 10526010 SpellIcon::GetSaveType(void)
uint32_t __fastcall GetSaveType__9SpellIconFv(struct GameThing* this) asm("?GetSaveType@SpellIcon@@UAEIXZ");
// win1.41 0055d420 mac 10525ee0 SpellIcon::GetCreatureBeliefType(void)
uint32_t __fastcall GetCreatureBeliefType__9SpellIconFv(struct GameThingWithPos* this) asm("?GetCreatureBeliefType@SpellIcon@@UAEIXZ");
// win1.41 00726420 mac 10524aa0 SpellIcon::GetOverwriteTapToolTip(void)
uint32_t __fastcall GetOverwriteTapToolTip__9SpellIconFv(struct GameThingWithPos* this) asm("?GetOverwriteTapToolTip@SpellIcon@@UAEIXZ");
// win1.41 0055d430 mac 10525f20 SpellIcon::CanBeFrighteningToCreature(Creature *)
uint32_t __fastcall CanBeFrighteningToCreature__9SpellIconFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeFrighteningToCreature@SpellIcon@@UAEIPAVCreature@@@Z");
// win1.41 0055d3a0 mac 1049e650 SpellIcon::GetWorshipSite(void)
struct WorshipSite* __fastcall GetWorshipSite__9SpellIconFv(struct GameThingWithPos* this) asm("?GetWorshipSite@SpellIcon@@UAEPAVWorshipSite@@XZ");
// win1.41 0055d450 mac 10525fd0 SpellIcon::IsSpellIcon(void)
uint32_t __fastcall IsSpellIcon__9SpellIconFv(struct GameThingWithPos* this) asm("?IsSpellIcon@SpellIcon@@UAEIXZ");
// win1.41 007261a0 mac 105252a0 SpellIcon::Create3DObject(void)
void __fastcall Create3DObject__9SpellIconFv(struct Object* this) asm("?Create3DObject@SpellIcon@@UAEXXZ");
// win1.41 007265d0 mac 10524600 SpellIcon::MoveMapObject(MapCoords const &)
int __fastcall MoveMapObject__9SpellIconFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?MoveMapObject@SpellIcon@@UAEHPBUMapCoords@@@Z");
// win1.41 0055d380 mac inlined SpellIcon::SetSpecularColor(LH3DColor)
void __fastcall SetSpecularColor__9SpellIconF9LH3DColor(struct Object* this, const void* edx, struct LH3DColor param_1) asm("?SetSpecularColor@SpellIcon@@UAEXULH3DColor@@@Z");
// win1.41 0055d390 mac 10525da0 SpellIcon::GetSpecularColor(void)
struct LH3DColor __fastcall GetSpecularColor__9SpellIconFv(struct Object* this) asm("?GetSpecularColor@SpellIcon@@UAE?AULH3DColor@@XZ");
// win1.41 007265c0 mac 10524740 SpellIcon::Process(void)
uint32_t __fastcall Process__9SpellIconFv(struct Object* this) asm("?Process@SpellIcon@@UAEIXZ");
// win1.41 0055d440 mac 10525f70 SpellIcon::GetMesh( const(void))
int __fastcall GetMesh__9SpellIconCFv(const struct Object* this) asm("?GetMesh@SpellIcon@@UBEHXZ");
// win1.41 00519650 mac 100c77b0 SpellIcon::Draw(void)
void __fastcall Draw__9SpellIconFv(struct Object* this) asm("?Draw@SpellIcon@@UAEXXZ");
// win1.41 00726160 mac 105253c0 SpellIcon::CallVirtualFunctionsForCreation(const MapCoords &)
void __fastcall CallVirtualFunctionsForCreation__9SpellIconFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* coords) asm("?CallVirtualFunctionsForCreation@SpellIcon@@UAEXABUMapCoords@@@Z");
// win1.41 0055d400 mac 10525e50 SpellIcon::IsSpellSeedReturnPoint( const(void))
bool __fastcall IsSpellSeedReturnPoint__9SpellIconCFv(const struct Object* this) asm("?IsSpellSeedReturnPoint@SpellIcon@@UBE_NXZ");
// win1.41 0055d410 mac 10525e90 SpellIcon::ValidAsInterfaceLeashTarget(void)
uint32_t __fastcall ValidAsInterfaceLeashTarget__9SpellIconFv(struct Object* this) asm("?ValidAsInterfaceLeashTarget@SpellIcon@@UAEIXZ");
// win1.41 007263c0 mac 10524b00 SpellIcon::InterfaceValidToTap(GInterfaceStatus *)
uint32_t __fastcall InterfaceValidToTap__9SpellIconFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceValidToTap@SpellIcon@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00726430 mac 105249c0 SpellIcon::InterfaceTap(GInterfaceStatus *)
uint32_t __fastcall InterfaceTap__9SpellIconFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceTap@SpellIcon@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 007260e0 mac 10525630 SpellIcon::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__9SpellIconFv(struct Object* this) asm("?InteractsWithPhysicsObjects@SpellIcon@@UAE_NXZ");
// win1.41 0055d3b0 mac 10525de0 SpellIcon::IsRepaired(void)
bool __fastcall IsRepaired__9SpellIconFv(struct MultiMapFixed* this) asm("?IsRepaired@SpellIcon@@UAE_NXZ");
// win1.41 0055d3d0 mac 100c7990 SpellIcon::IsBuilt(void)
bool __fastcall IsBuilt__9SpellIconFv(struct MultiMapFixed* this) asm("?IsBuilt@SpellIcon@@UAE_NXZ");

#endif /* BW1_DECOMP_SPELL_ICON_INCLUDED_H */
