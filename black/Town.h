#ifndef BW1_DECOMP_TOWN_INCLUDED_H
#define BW1_DECOMP_TOWN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For MAGIC_TYPE_LAST_142, TOWN_DESIRE_INFO_LAST, enum ABODE_TYPE, enum LIVING_TYPE, enum MAGIC_TYPE, enum RESOURCE_TYPE, enum TOWN_DESIRE_INFO, enum TRIBE_TYPE */
#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_common.h> /* For bool32_t */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Abode.h" /* For struct Abode */
#include "Artifact.h" /* For struct TownArtifact */
#include "Belief.h" /* For struct GBelief */
#include "BuildingSite.h" /* For struct BuildingSite */
#include "Container.h" /* For struct Container */
#include "EffectValues.h" /* For struct EffectValues */
#include "Field.h" /* For struct Field */
#include "FishFarm.h" /* For struct FishFarm */
#include "MapCoords.h" /* For struct MapCoords */
#include "Object.h" /* For struct Object */
#include "PlannedMultiMapFixed.h" /* For struct PlannedMultiMapFixed */
#include "TownDesire.h" /* For struct TownDesire */
#include "TownSpellIcon.h" /* For struct TownSpellIcon */
#include "TownStats.h" /* For struct TownStats */
#include "Villager.h" /* For struct Villager */

// Forward Declares

struct Base;
struct Citadel;
struct Creature;
struct Creche;
struct GMultiMapFixedInfo;
struct GPlayer;
struct GTownInfo;
struct GTribeInfo;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct MultiMapFixed;
struct StoragePit;
struct TotemStatue;
struct TownCentre;
struct TownDesireFlags;
struct Workshop;
struct WorshipSite;

struct PlayerTownInteract
{
  uint32_t field_0x0;
  float field_0x4;
  float field_0x8;
  uint32_t field_0xc;
  float field_0x10;
  uint32_t field_0x14[0xa];
  struct EffectValues effect_values;  /* 0x3c */
  uint32_t field_0x7c;
};
static_assert(sizeof(struct PlayerTownInteract) == 0x80, "Data type is of wrong size");

// Constructors

// win1.41 0073e040 mac 1054fa10 PlayerTownInteract::PlayerTownInteract(void)
struct PlayerTownInteract* __fastcall __ct__18PlayerTownInteractFv(struct PlayerTownInteract* this) asm("??0PlayerTownInteract@@QAE@XZ");

struct Town
{
  struct Container super;  /* 0x0 */
  struct StoragePit* storage_pit_list;  /* 0x30 */
  struct TownDesire desire;
  uint8_t field_0x598[0x18];
  char* field_0x5b0;
  uint32_t field_0x5b4;
  enum TRIBE_TYPE tribe_type;
  uint8_t player_number;
  float worship_percentage;  /* 0x5c0 */
  uint32_t worship_count;
  float influence;
  int field_0x5cc;
  uint32_t field_0x5d0;
  uint32_t field_0x5d4;
  float belief_in_neutral_player;
  float field_0x5dc;
  uint32_t field_0x5e0;
  uint32_t field_0x5e4;
  uint32_t field_0x5e8;
  uint32_t field_0x5ec;
  uint32_t field_0x5f0;
  uint32_t field_0x5f4;
  uint32_t field_0x5f8;
  uint32_t field_0x5fc;
  uint32_t field_0x600;
  uint32_t field_0x604;
  uint32_t forests;
  uint32_t field_0x60c;
  struct TownStats stats;  /* 0x610 */
  struct MapCoords field_0x728;
  struct MapCoords field_0x734;
  uint32_t field_0x740;
  struct Creche* creche;
  uint32_t field_0x748;
  struct Abode* abode_0x74c;
  uint32_t field_0x750;
  struct LHListHead__Abode abode_list;
  struct Town* next;
  uint32_t field_0x760;
  uint32_t field_0x764;
  struct LHLinkedList__Villager homeless_list;
  uint32_t field_0x770;
  uint32_t field_0x774;
  struct LHListHead__TownSpellIcon spell_icon_list;
  struct LHLinkedList__Field field_list;  /* 0x780 */
  struct LHLinkedList__FishFarm fish_farms;
  struct LHListHead__BuildingSite building_site_list;  /* 0x790 */
  struct GBelief belief;
  uint32_t field_0x968;
  uint32_t field_0x96c;
  uint32_t field_0x970;
  uint32_t field_0x974;
  uint32_t field_0x978;
  struct LHLinkedList__Object playthings;
  uint32_t field_0x984;
  uint32_t field_0x988;
  uint32_t field_0x98c;
  uint32_t field_0x990;
  struct LHLinkedList__TownArtifact artifacts;
  uint32_t field_0x99c;
  uint32_t field_0x9a0;
  struct TownCentre* town_centre;
  struct LHListHead__PlannedMultiMapFixed planned_list;
  struct TownDesireFlags* town_desire_flags[TOWN_DESIRE_INFO_LAST];  /* 0x9b0 */
  uint32_t field_0x9f4;
  uint32_t field_0x9f8;
  struct PlayerTownInteract field_0x9fc[0x8];
  int magic_remainder[MAGIC_TYPE_LAST_142];  /* 0xdfc */
  uint32_t field_0xea4;
  uint32_t field_0xea8;
  uint32_t field_0xeac;
  uint32_t field_0xeb0;
  float field_0xeb4;
  float field_0xeb8;
  uint32_t field_0xebc;
  uint32_t field_0xec0;
  uint32_t field_0xec4;
  void* field_0xec8[0x10];
  uint32_t field_0xf08;
  uint32_t field_0xf0c;
  struct MapCoords congregation_pos;  /* 0xf10 */
  uint32_t field_0xf1c;
  uint32_t field_0xf20;
  uint32_t field_0xf24;
};
static_assert(sizeof(struct Town) == 0xf28, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cfa40 mac inlined Town::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__4Town asm("??_R0?AVTown@@@8");
// win1.41 009b9a90 mac inlined Town::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__4Town asm("??_R1A@?0A@A@Town@@8");
// win1.41 009b9aa8 mac inlined Town::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__4Town asm("??_R2Town@@8");
// win1.41 009b9ac0 mac inlined Town::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__4Town asm("??_R3Town@@8");
// win1.41 00999ae0 mac 1077dcc8 Town::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__4Town asm("??_R4Town@@6B@");
// win1.41 00999ae4 mac 106f6950 Town::`vftable'
extern const struct ContainerVftable __vt__4Town asm("??_7Town@@6B@");

// Static methods

// win1.41 0073b170 mac 10554ef0 Town::GetNearestTownToPos(MapCoords const &, TRIBE_TYPE, ABODE_TYPE, float)
struct Town* __cdecl GetNearestTownToPos__4TownFRC9MapCoords10TRIBE_TYPE10ABODE_TYPEf(struct MapCoords* coords, enum TRIBE_TYPE tribe_type, enum ABODE_TYPE abode_type, float max_distance) asm("?GetNearestTownToPos@Town@@SAPAV1@ABUMapCoords@@W4TRIBE_TYPE@@W4ABODE_TYPE@@M@Z");
// win1.41 0073eac0 mac 1054e290 Town::AsssignTownFeature(void)
void __cdecl AsssignTownFeature__4TownFv(void) asm("?AsssignTownFeature@Town@@SAXXZ");
// win1.41 007412f0 mac 100233e0 Town::FindClearArea(MapCoords &, MapCoords &, float, float, float, int (Object::)(void const *, void const *), Object *)
bool __cdecl FindClearArea__4TownFR9MapCoordsR9MapCoordsfffM6ObjectFPCvPCv_iP6Object(struct MapCoords* param_1, struct MapCoords* param_2, float param_3, float param_4, float param_5, bool (__fastcall* callback)(struct Object * param_1), int index, uint32_t param_8, uint32_t param_9, struct Object* obj) asm("?FindClearArea@Town@@SA_NAAUMapCoords@@0MMMP8Object@@AEHPBX1@ZPAV3@@Z");
// win1.41 007413d0 mac 10038890 Town::CheckForClearArea(MapCoords &, float, int (Object::)(void const *, void const *), Object *)
bool __cdecl CheckForClearArea__4TownFR9MapCoordsfM6ObjectFPCvPCv_iP6Object(struct MapCoords* param_1, float param_2, bool (__fastcall* callback)(struct Object * param_1), int index, uint32_t param_5, uint32_t param_6, struct Object* obj) asm("?CheckForClearArea@Town@@SA_NAAUMapCoords@@MP8Object@@AEHPBX1@ZPAV3@@Z");

// Constructors

// win1.41 00739350 mac 105575b0 Town::__ct(MapCoords const &, GTownInfo const *, GPlayer *, TRIBE_TYPE, char *, unsigned long, int)
struct Town* __fastcall __ct__4TownFRC9MapCoordsPC9GTownInfoP7GPlayer10TRIBE_TYPEPcUli(struct Town* this, const void* edx, struct MapCoords* coords, struct GTownInfo* info, struct GPlayer* player, enum TRIBE_TYPE tribe_type, char* param_5, uint32_t param_6, int param_7) asm("??0Town@@QAE@ABUMapCoords@@PBVGTownInfo@@PAVGPlayer@@W4TRIBE_TYPE@@PADKH@Z");

// Non-virtual methods

// win1.41 007399a0 mac 10556850 Town::AddStructureToTown(MultiMapFixed *)
void __fastcall AddStructureToTown__4TownFP13MultiMapFixed(struct Town* this, const void* edx, struct MultiMapFixed* structure) asm("?AddStructureToTown@Town@@QAEXPAVMultiMapFixed@@@Z");
// win1.41 00739a20 mac 105567f0 Town::AddAbodeToTownStats(Abode *)
void __fastcall AddAbodeToTownStats__4TownFP5Abode(struct Town* this, const void* edx, struct Abode* abode) asm("?AddAbodeToTownStats@Town@@QAEXPAVAbode@@@Z");
// win1.41 0073a090 mac 10556400 Town::AddVillagerToTown(Villager *)
bool __fastcall AddVillagerToTown__4TownFP8Villager(struct Town* this, const void* edx, struct Villager* villager) asm("?AddVillagerToTown@Town@@QAE_NPAVVillager@@@Z");
// win1.41 0073a140 mac 10007ca0 Town::GetBestPlanned(float &, ABODE_TYPE)
struct PlannedMultiMapFixed* __fastcall GetBestPlanned__4TownFRf10ABODE_TYPE(struct Town* this, const void* edx, float* param_1, enum ABODE_TYPE param_2) asm("?GetBestPlanned@Town@@QAEPAVPlannedMultiMapFixed@@AAMW4ABODE_TYPE@@@Z");
// win1.41 0073a1a0 mac 100896c0 Town::GetDesireToBeBuilt(GMultiMapFixedInfo const *, unsigned long)
float __fastcall GetDesireToBeBuilt__4TownFPC18GMultiMapFixedInfoUl(struct Town* this, const void* edx, const struct GMultiMapFixedInfo* param_1, unsigned long param_2) asm("?GetDesireToBeBuilt@Town@@QAEMPBVGMultiMapFixedInfo@@K@Z");
// win1.41 0073a650 mac 105561f0 Town::RequestBestPlanned(void)
bool32_t __fastcall RequestBestPlanned__4TownFv(struct Town* this) asm("?RequestBestPlanned@Town@@QAEIXZ");
// win1.41 0073af50 mac 10555160 Town::ChildToAdult(Villager *)
void __fastcall ChildToAdult__4TownFP8Villager(struct Town* this, const void* edx, struct Villager* param_1) asm("?ChildToAdult@Town@@QAEXPAVVillager@@@Z");
// win1.41 0073b2d0 mac 10554e90 Town::IsHarvestTime(void)
bool __fastcall IsHarvestTime__4TownFv(struct Town* this) asm("?IsHarvestTime@Town@@QAE_NXZ");
// win1.41 0073b330 mac 1009ada0 Town::RequestANewAbode(ABODE_TYPE)
bool32_t __fastcall RequestANewAbode__4TownF10ABODE_TYPE(struct Town* this, const void* edx, enum ABODE_TYPE param_1) asm("?RequestANewAbode@Town@@QAEIW4ABODE_TYPE@@@Z");
// win1.41 0073b370 mac 10554d60 Town::FindAbodeWithSpaceInTown(Villager *, float)
struct Abode* __fastcall FindAbodeWithSpaceInTown__4TownFP8Villagerf(struct Town* this, const void* edx, struct Villager* villager, float min_score) asm("?FindAbodeWithSpaceInTown@Town@@QAEPAVAbode@@PAVVillager@@M@Z");
// win1.41 0073b3d0 mac 10554c70 Town::FindClosesFieldToWithFood(MapCoords const &)
struct Field* __fastcall FindClosesFieldToWithFood__4TownFRC9MapCoords(struct Town* this, const void* edx, const struct MapCoords* param_1) asm("?FindClosesFieldToWithFood@Town@@QAEPAVField@@ABUMapCoords@@@Z");
// win1.41 0073b580 mac 10554bd0 Town::IsVillagerInHomelessList(Villager *)
bool32_t __fastcall IsVillagerInHomelessList__4TownFP8Villager(struct Town* this, const void* edx, struct Villager* villager) asm("?IsVillagerInHomelessList@Town@@QAE_NPAVVillager@@@Z");
// win1.41 0073b5b0 mac 100572e0 Town::GetStoragePit(void)
struct StoragePit* __fastcall GetStoragePit__4TownFv(struct Town* this) asm("?GetStoragePit@Town@@QAEPAVStoragePit@@XZ");
// win1.41 0073b5d0 mac 10554b00 Town::Birthday(void)
void __fastcall Birthday__4TownFv(struct Town* this) asm("?Birthday@Town@@QAEXXZ");
// win1.41 0073b860 mac 10554610 Town::AddBuildingSite(PlannedMultiMapFixed *)
struct BuildingSite* __fastcall AddBuildingSite__4TownFP20PlannedMultiMapFixed(struct Town* this, const void* edx, struct PlannedMultiMapFixed* param_1) asm("?AddBuildingSite@Town@@QAEPAVBuildingSite@@PAVPlannedMultiMapFixed@@@Z");
// win1.41 0073b8a0 mac 10554530 Town::AddBuildingSiteNoFixedCheck(PlannedMultiMapFixed *)
struct BuildingSite* __fastcall AddBuildingSiteNoFixedCheck__4TownFP20PlannedMultiMapFixed(struct Town* this, const void* edx, struct PlannedMultiMapFixed* param_1) asm("?AddBuildingSiteNoFixedCheck@Town@@QAEPAVBuildingSite@@PAVPlannedMultiMapFixed@@@Z");
// win1.41 0073b910 mac 10554340 Town::AddBuildingSite(BuildingSite *)
void __fastcall AddBuildingSite__4TownFP12BuildingSite(struct Town* this, const void* edx, struct BuildingSite* param_1) asm("?AddBuildingSite@Town@@QAEXPAVBuildingSite@@@Z");
// win1.41 0073ba20 mac 10554100 Town::RemoveBuildingSite(MultiMapFixed *)
uint32_t __fastcall RemoveBuildingSite__4TownFP13MultiMapFixed(struct Town* this, const void* edx, struct MultiMapFixed* param_1) asm("?RemoveBuildingSite@Town@@QAEIPAVMultiMapFixed@@@Z");
// win1.41 0073ba70 mac 10554050 Town::SetBeliefInPlayer(GPlayer *, float)
void __fastcall SetBeliefInPlayer__4TownFP7GPlayerf(struct Town* this, const void* edx, struct GPlayer* player, float value) asm("?SetBeliefInPlayer@Town@@QAEXPAVGPlayer@@M@Z");
// win1.41 0073c060 mac 105539a0 Town::SetWorshipPercentage(float)
void __fastcall SetWorshipPercentage__4TownFf(struct Town* this, const void* edx, float worship_percentage) asm("?SetWorshipPercentage@Town@@QAEXM@Z");
// win1.41 0073c0f0 mac 10552710 Town::AdjustWorshipersWorshipping(long, int, int)
void __fastcall AdjustWorshipersWorshipping__4TownFlii(struct Town* this, const void* edx, long param_1, int param_2, int param_3) asm("?AdjustWorshipersWorshipping@Town@@QAEXJHH@Z");
// win1.41 0073c840 mac 1005d020 Town::GetTribe(void) const
struct GTribeInfo* __fastcall GetTribe__4TownCFv(struct Town* this) asm("?GetTribe@Town@@QBEPAVGTribeInfo@@XZ");
// win1.41 0073c860 mac 10092530 Town::GetWorshipersNeeded(int, int, int *)
int __fastcall GetWorshipersNeeded__4TownFiiPi(struct Town* this, const void* edx, int param_1, int param_2, int* result) asm("?GetWorshipersNeeded@Town@@QAEHHHPAH@Z");
// win1.41 0073cf00 mac 10551920 Town::IsBuildingSiteValid(BuildingSite *)
bool32_t __fastcall IsBuildingSiteValid__4TownFP12BuildingSite(struct Town* this, const void* edx, struct BuildingSite* param_1) asm("?IsBuildingSiteValid@Town@@QAEIPAVBuildingSite@@@Z");
// win1.41 0073cf60 mac 10097910 Town::GetBestBuildingSite(MapCoords const &, int)
bool32_t __fastcall GetBestBuildingSite__4TownFRC9MapCoordsi(struct Town* this, const void* edx, const struct MapCoords* param_1, int param_2) asm("?GetBestBuildingSite@Town@@QAEIABUMapCoords@@H@Z");
// win1.41 0073d080 mac 105516a0 Town::AddPlanned(PlannedMultiMapFixed *)
void __fastcall AddPlanned__4TownFP20PlannedMultiMapFixed(struct Town* this, const void* edx, struct PlannedMultiMapFixed* planned) asm("?AddPlanned@Town@@QAEXPAVPlannedMultiMapFixed@@@Z");
// win1.41 0073d0d0 mac 10551530 Town::RemovePlanned(PlannedMultiMapFixed *)
void __fastcall RemovePlanned__4TownFP20PlannedMultiMapFixed(struct Town* this, const void* edx, struct PlannedMultiMapFixed* planned) asm("?RemovePlanned@Town@@QAEXPAVPlannedMultiMapFixed@@@Z");
// win1.41 0073d150 mac 105514f0 Town::AllVillagersCheckNeedNewAbode(void)
void __fastcall AllVillagersCheckNeedNewAbode__4TownFv(struct Town* this) asm("?AllVillagersCheckNeedNewAbode@Town@@QAEXXZ");
// win1.41 0073d360 mac 10550fd0 Town::GetNextSpellIcon(TownSpellIcon *)
struct TownSpellIcon* __fastcall GetNextSpellIcon__4TownFP13TownSpellIcon(const struct Town* this, const void* edx, struct TownSpellIcon* icon) asm("?GetNextSpellIcon@Town@@QAEPAVTownSpellIcon@@PAV2@@Z");
// win1.41 0073d380 mac 10550e80 Town::AddMagicTypesHeld(MAGIC_TYPE)
bool __fastcall AddMagicTypesHeld__4TownF10MAGIC_TYPE(struct Town* this, const void* edx, enum MAGIC_TYPE type) asm("?AddMagicTypesHeld@Town@@QAE_NW4MAGIC_TYPE@@@Z");
// win1.41 0073d630 mac 10550b00 Town::IsMagicTypeHeld(MAGIC_TYPE)
bool __fastcall IsMagicTypeHeld__4TownF10MAGIC_TYPE(struct Town* this, const void* edx, enum MAGIC_TYPE type) asm("?IsMagicTypeHeld@Town@@QAE_NW4MAGIC_TYPE@@@Z");
// win1.41 0073de30 mac 1054fb60 Town::GetFlock(LIVING_TYPE, int)
bool __fastcall GetFlock__4TownF11LIVING_TYPEi(struct Town* this, const void* edx, enum LIVING_TYPE param_1, int param_2) asm("?GetFlock@Town@@QAE_NW4LIVING_TYPE@@H@Z");
// win1.41 0073e1d0 mac 1054f6b0 Town::GetTotemStatue(void)
struct TotemStatue* __fastcall GetTotemStatue__4TownFv(struct Town* this) asm("?GetTotemStatue@Town@@QAEPAVTotemStatue@@XZ");
// win1.41 0073e210 mac 1054f460 Town::RemoveVillager(Villager *)
void __fastcall RemoveVillager__4TownFP8Villager(struct Town* this, const void* edx, struct Villager* villager) asm("?RemoveVillager@Town@@QAEXPAVVillager@@@Z");
// win1.41 0073e360 mac 1054f190 Town::RemoveVillagerOnWayToWorshipSite(Villager *)
void __fastcall RemoveVillagerOnWayToWorshipSite__4TownFP8Villager(struct Town* this, const void* edx, struct Villager* villager) asm("?RemoveVillagerOnWayToWorshipSite@Town@@QAEXPAVVillager@@@Z");
// win1.41 0073e400 mac 10060840 Town::GetDesire(TOWN_DESIRE_INFO)
float __fastcall GetDesire__4TownF16TOWN_DESIRE_INFO(struct Town* this, const void* edx, enum TOWN_DESIRE_INFO param_1) asm("?GetDesire@Town@@QAEMW4TOWN_DESIRE_INFO@@@Z");
// win1.41 0073e420 mac 10055140 Town::GetRawDesire(TOWN_DESIRE_INFO)
float __fastcall GetRawDesire__4TownF16TOWN_DESIRE_INFO(struct Town* this, const void* edx, enum TOWN_DESIRE_INFO param_1) asm("?GetRawDesire@Town@@QAEMW4TOWN_DESIRE_INFO@@@Z");
// win1.41 0073e900 mac 1054e460 Town::GetTemporaryResourceStorePotOrPos(MapCoords const &, MapCoords &, RESOURCE_TYPE)
void* __fastcall GetTemporaryResourceStorePotOrPos__4TownFRC9MapCoordsR9MapCoords13RESOURCE_TYPE(struct Town* this, const void* edx, const struct MapCoords* param_1, struct MapCoords* param_2, enum RESOURCE_TYPE param_3) asm("?GetTemporaryResourceStorePotOrPos@Town@@QAEPAXABUMapCoords@@AAU2@W4RESOURCE_TYPE@@@Z");
// win1.41 0073eb00 mac 1054dfe0 Town::AssignForestsToTown(void)
void __fastcall AssignForestsToTown__4TownFv(struct Town* this) asm("?AssignForestsToTown@Town@@QAEXXZ");
// win1.41 00740250 mac 10549810 Town::GetBestWorkshop(MapCoords &, int, int)
struct Workshop* __fastcall GetBestWorkshop__4TownFR9MapCoordsii(struct Town* this, const void* edx, struct MapCoords* param_1, int param_2, int param_3) asm("?GetBestWorkshop@Town@@QAEPAVWorkshop@@AAUMapCoords@@HH@Z");
// win1.41 007408b0 mac 10008020 Town::GetCongregationPos(void)
struct MapCoords* __fastcall GetCongregationPos__4TownFv(struct Town* this, const void* edx, struct MapCoords* coords) asm("?GetCongregationPos@Town@@QAEPAUMapCoords@@PAU2@@Z");
// win1.41 00741b40 mac 105464d0 Town::MakeScenicForest(void)
void __fastcall MakeScenicForest__4TownFv(struct Town* this) asm("?MakeScenicForest@Town@@QAEXXZ");
// win1.41 007437f0 mac 10071340 Town::UpdateAttitudeToCreature(void)
void __fastcall UpdateAttitudeToCreature__4TownFv(struct Town* this) asm("?UpdateAttitudeToCreature@Town@@QAEXXZ");
// win1.41 00747380 mac 100556c0 Town::Process(void)
uint32_t __fastcall Process__4TownFv(struct Town* this) asm("?Process@Town@@QAEIXZ");
// win1.41 007477a0 mac 10067510 Town::ProcessTownEmergency(void)
void __fastcall ProcessTownEmergency__4TownFv(struct Town* this) asm("?ProcessTownEmergency@Town@@QAEXXZ");
// win1.41 00747970 mac 1006d3c0 Town::IsInStateOfEmergency(void)
bool __fastcall IsInStateOfEmergency__4TownFv(struct Town* this) asm("?IsInStateOfEmergency@Town@@QAE_NXZ");
// win1.41 007479a0 mac 105602e0 Town::SetInStateOfEmergency(void)
void __fastcall SetInStateOfEmergency__4TownFv(struct Town* this) asm("?SetInStateOfEmergency@Town@@QAEXXZ");
// win1.41 00747ea0 mac 1055f880 Town::GetBestRepairBuildingSite(void)
bool32_t __fastcall GetBestRepairBuildingSite__4TownFv(struct Town* this) asm("?GetBestRepairBuildingSite@Town@@QAEIXZ");
// win1.41 007635d0 mac 10012ce0 Town::DisplayHowImpressed(void)
bool32_t __fastcall DisplayHowImpressed__4TownFv(struct Town* this) asm("?DisplayHowImpressed@Town@@QAEIXZ");

// Override methods

// win1.41 007392b0 mac 10558ef0 Town::_dt(void)
void __fastcall __dt__4TownFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GTown@@UAEPAXI@Z");
// win1.41 00739970 mac 10556980 Town::ToBeDeleted(int)
void __fastcall ToBeDeleted__4TownFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@Town@@UAEXH@Z");
// win1.41 007391e0 mac 1054a050 Town::GetTown(void)
struct Town* __fastcall GetTown__4TownFv(struct GameThing* this) asm("?GetTown@Town@@UAEPAVTown@@XZ");
// win1.41 0073ff00 mac 1054a490 Town::GetVillagerActivityDesire(Villager *)
float __fastcall GetVillagerActivityDesire__4TownFP8Villager(struct GameThing* this, const void* edx, struct Villager* param_1) asm("?GetVillagerActivityDesire@Town@@UAEMPAVVillager@@@Z");
// win1.41 0073ff10 mac 100956a0 Town::SetVillagerActivity(Villager *)
uint32_t __fastcall SetVillagerActivity__4TownFP8Villager(struct GameThing* this, const void* edx, struct Villager* param_1) asm("?SetVillagerActivity@Town@@UAEIPAVVillager@@@Z");
// win1.41 0073d6e0 mac 10550600 Town::GetRadius(void)
float __fastcall GetRadius__4TownFv(struct GameThing* this) asm("?GetRadius@Town@@UAEMXZ");
// win1.41 0073af80 mac 10555020 Town::GetNumberOfInstanceForGlobalList(void)
uint16_t __fastcall GetNumberOfInstanceForGlobalList__4TownFv(struct GameThing* this) asm("?GetNumberOfInstanceForGlobalList@Town@@UAEGXZ");
// win1.41 007392a0 mac 105594a0 Town::GetDebugText(void)
char* __fastcall GetDebugText__4TownFv(struct GameThing* this) asm("?GetDebugText@Town@@UAEPADXZ");
// win1.41 0073f450 mac 1054aa80 Town::Load(GameOSFile &)
uint32_t __fastcall Load__4TownFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Town@@UAEIAAVGameOSFile@@@Z");
// win1.41 0073ed30 mac 1054c770 Town::Save(GameOSFile &)
uint32_t __fastcall Save__4TownFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@Town@@UAEIAAVGameOSFile@@@Z");
// win1.41 00739290 mac 10559470 Town::GetSaveType(void)
uint32_t __fastcall GetSaveType__4TownFv(struct GameThing* this) asm("?GetSaveType@Town@@UAEIXZ");
// win1.41 007412e0 mac 10547990 Town::ResolveLoad(void)
void __fastcall ResolveLoad__4TownFv(struct GameThing* this) asm("?ResolveLoad@Town@@UAEXXZ");
// win1.41 007391f0 mac 10559130 Town::GetCreatureBeliefType(void)
uint32_t __fastcall GetCreatureBeliefType__4TownFv(struct GameThingWithPos* this) asm("?GetCreatureBeliefType@Town@@UAEIXZ");
// win1.41 00739200 mac 10559170 Town::GetCreatureBeliefListType(void)
uint32_t __fastcall GetCreatureBeliefListType__4TownFv(struct GameThingWithPos* this) asm("?GetCreatureBeliefListType@Town@@UAEIXZ");
// win1.41 0073bc40 mac 10553f20 Town::GetCitadel(void)
struct Citadel* __fastcall GetCitadel__4TownFv(struct GameThingWithPos* this) asm("?GetCitadel@Town@@UAEPAVCitadel@@XZ");
// win1.41 007391d0 mac 10559100 Town::GetOrigin(void)
uint32_t __fastcall GetOrigin__4TownFv(struct GameThingWithPos* this) asm("?GetOrigin@Town@@UAEIXZ");
// win1.41 00739250 mac inlined Town::IsTown_0(void)
bool __fastcall IsTown_0__4TownFv(struct GameThingWithPos* this) asm("?IsTown@Town@@UAE_NXZ");
// win1.41 00739220 mac inlined Town::IsTown_1(Creature *)
bool __fastcall IsTown_1__4TownFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsTown@Town@@UAE_NPAVCreature@@@Z");
// win1.41 004e47f0 mac 105e4b50 Town::IsActivityObjectWhichAngerAppliesTo(Creature *)
bool __fastcall IsActivityObjectWhichAngerAppliesTo__4TownFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsActivityObjectWhichAngerAppliesTo@Town@@UAE_NPAVCreature@@@Z");
// win1.41 00739230 mac 105592e0 Town::IsActivityObjectWhichCompassionAppliesTo(Creature *)
bool __fastcall IsActivityObjectWhichCompassionAppliesTo__4TownFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsActivityObjectWhichCompassionAppliesTo@Town@@UAE_NPAVCreature@@@Z");
// win1.41 00739240 mac 10559340 Town::IsActivityObjectWhichPlayfulnessAppliesTo(Creature *)
bool __fastcall IsActivityObjectWhichPlayfulnessAppliesTo__4TownFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsActivityObjectWhichPlayfulnessAppliesTo@Town@@UAE_NPAVCreature@@@Z");
// win1.41 004e4750 mac 105e4c40 Town::IsTownBelongingToAnotherPlayer(Creature *)
bool __fastcall IsTownBelongingToAnotherPlayer__4TownFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsTownBelongingToAnotherPlayer@Town@@UAE_NPAVCreature@@@Z");
// win1.41 00739260 mac 105593a0 Town::IsSuitableForCreatureActivity(void)
uint32_t __fastcall IsSuitableForCreatureActivity__4TownFv(struct GameThingWithPos* this) asm("?IsSuitableForCreatureActivity@Town@@UAEIXZ");
// win1.41 00739270 mac 105593f0 Town::CanBePlayedWithByCreature(Creature *)
uint32_t __fastcall CanBePlayedWithByCreature__4TownFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBePlayedWithByCreature@Town@@UAEIPAVCreature@@@Z");
// win1.41 0073c940 mac 1006fa90 Town::GetWorshipSite(void)
struct WorshipSite* __fastcall GetWorshipSite__4TownFv(struct GameThingWithPos* this) asm("?GetWorshipSite@Town@@UAEPAVWorshipSite@@XZ");
// win1.41 004e4140 mac 105e5e00 Town::IsTownBelongingToOtherPlayer(Creature *)
uint32_t __fastcall IsTownBelongingToOtherPlayer__4TownFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsTownBelongingToOtherPlayer@Town@@UAEIPAVCreature@@@Z");
// win1.41 00739210 mac 105591b0 Town::IsScriptContainer( const(void))
uint32_t __fastcall IsScriptContainer__4TownCFv(const struct GameThingWithPos* this) asm("?IsScriptContainer@Town@@UBEIXZ");
// win1.41 00739280 mac 10559440 Town::GetText(void)
const char* __fastcall GetText__4TownFv(struct GameThingWithPos* this) asm("?GetText@Town@@UAEPBDXZ");
// win1.41 00747f00 mac 10065180 Town::CalculateDesireForFood(void)
float __fastcall CalculateDesireForFood__4TownFv(struct GameThingWithPos* this) asm("?CalculateDesireForFood@Town@@UAEMXZ");
// win1.41 0073e200 mac 1054f630 Town::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__4TownFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@Town@@UAEIXZ");

DECLARE_LH_LINKED_LIST(Town);

DECLARE_LH_LIST_HEAD(Town);

#endif /* BW1_DECOMP_TOWN_INCLUDED_H */
