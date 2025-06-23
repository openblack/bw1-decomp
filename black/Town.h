#ifndef BW1_DECOMP_TOWN_INCLUDED_H
#define BW1_DECOMP_TOWN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For MAGIC_TYPE_LAST_142, TOWN_DESIRE_INFO_LAST, enum ABODE_TYPE, enum MAGIC_TYPE, enum TRIBE_TYPE */
#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

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

struct Creche;
struct GPlayer;
struct GTownInfo;
struct GTribeInfo;
struct MultiMapFixed;
struct StoragePit;
struct TotemStatue;
struct TownCentre;
struct TownDesireFlags;

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
struct PlayerTownInteract* __fastcall __ct__18PlayerTownInteractFv(struct PlayerTownInteract* this);

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

static struct ContainerVftable* const __vt__4Town = (struct ContainerVftable* const)0x00999ae4;

// Static methods

// win1.41 0073b170 mac 10554ef0 Town::GetNearestTownToPos(MapCoords const &, TRIBE_TYPE, ABODE_TYPE, float)
struct Town* __cdecl GetNearestTownToPos__4TownFRC9MapCoords10TRIBE_TYPE10ABODE_TYPEf(struct MapCoords* coords, enum TRIBE_TYPE tribe_type, enum ABODE_TYPE abode_type, float max_distance);
// win1.41 0073eac0 mac 1054e290 Town::AsssignTownFeature(void)
void __cdecl AsssignTownFeature__4TownFv(void);
// win1.41 007412f0 mac 100233e0 Town::FindClearArea(MapCoords &, MapCoords &, float, float, float, int (Object::)(void const *, void const *), Object *)
bool __cdecl FindClearArea__4TownFR9MapCoordsR9MapCoordsfffM6ObjectFPCvPCv_iP6Object(struct MapCoords* param_1, struct MapCoords* param_2, float param_3, float param_4, float param_5, bool (__fastcall* callback)(struct Object * param_1), int index, uint32_t param_8, uint32_t param_9, struct Object* obj);
// win1.41 007413d0 mac 10038890 Town::CheckForClearArea(MapCoords &, float, int (Object::)(void const *, void const *), Object *)
bool __cdecl CheckForClearArea__4TownFR9MapCoordsfM6ObjectFPCvPCv_iP6Object(struct MapCoords* param_1, float param_2, bool (__fastcall* callback)(struct Object * param_1), int index, uint32_t param_5, uint32_t param_6, struct Object* obj);

// Constructors

// win1.41 00739350 mac 105575b0 Town::__ct(MapCoords const &, GTownInfo const *, GPlayer *, TRIBE_TYPE, char *, unsigned long, int)
struct Town* __fastcall __ct__4TownFRC9MapCoordsPC9GTownInfoP7GPlayer10TRIBE_TYPEPcUli(struct Town* this, const void* edx, struct MapCoords* coords, struct GTownInfo* info, struct GPlayer* player, enum TRIBE_TYPE tribe_type, char* param_5, uint32_t param_6, int param_7);

// Non-virtual methods

// win1.41 007399a0 mac 10556850 Town::AddStructureToTown(MultiMapFixed *)
void __fastcall AddStructureToTown__4TownFP13MultiMapFixed(struct Town* this, const void* edx, struct MultiMapFixed* structure);
// win1.41 00739a20 mac 105567f0 Town::AddAbodeToTownStats(Abode *)
void __fastcall AddAbodeToTownStats__4TownFP5Abode(struct Town* this, const void* edx, struct Abode* abode);
// win1.41 0073a090 mac 10556400 Town::AddVillagerToTown(Villager *)
bool __fastcall AddVillagerToTown__4TownFP8Villager(struct Town* this, const void* edx, struct Villager* villager);
// win1.41 0073b370 mac 10554d60 Town::FindAbodeWithSpaceInTown(Villager *, float)
struct Abode* __fastcall FindAbodeWithSpaceInTown__4TownFP8Villagerf(struct Town* this, const void* edx, struct Villager* villager, float min_score);
// win1.41 0073b5b0 mac 100572e0 Town::GetStoragePit(void)
struct StoragePit* __fastcall GetStoragePit__4TownFv(struct Town* this);
// win1.41 0073b5d0 mac 10554b00 Town::Birthday(void)
void __fastcall Birthday__4TownFv(struct Town* this);
// win1.41 0073ba20 mac 10554100 Town::RemoveBuildingSite(MultiMapFixed *)
uint32_t __fastcall RemoveBuildingSite__4TownFP13MultiMapFixed(struct Town* this, const void* edx, struct MultiMapFixed* param_1);
// win1.41 0073ba70 mac 10554050 Town::SetBeliefInPlayer(GPlayer *, float)
void __fastcall SetBeliefInPlayer__4TownFP7GPlayerf(struct Town* this, const void* edx, struct GPlayer* player, float value);
// win1.41 0073c060 mac 105539a0 Town::SetWorshipPercentage(float)
void __fastcall SetWorshipPercentage__4TownFf(struct Town* this, const void* edx, float worship_percentage);
// win1.41 0073c0f0 mac 10552710 Town::AdjustWorshipersWorshipping(long, int, int)
void __fastcall AdjustWorshipersWorshipping__4TownFlii(struct Town* this, const void* edx, long param_1, int param_2, int param_3);
// win1.41 0073c840 mac 1005d020 Town::GetTribe(void) const
struct GTribeInfo* __fastcall GetTribe__4TownCFv(struct Town* this);
// win1.41 0073c860 mac 10092530 Town::GetWorshipersNeeded(int, int, int *)
int __fastcall GetWorshipersNeeded__4TownFiiPi(struct Town* this, const void* edx, int param_1, int param_2, int* result);
// win1.41 0073d080 mac 105516a0 Town::AddPlanned(PlannedMultiMapFixed *)
void __fastcall AddPlanned__4TownFP20PlannedMultiMapFixed(struct Town* this, const void* edx, struct PlannedMultiMapFixed* planned) asm("?AddPlanned@Town@@QAEXPAVPlannedMultiMapFixed@@@Z");
// win1.41 0073d0d0 mac 10551530 Town::RemovePlanned(PlannedMultiMapFixed *)
void __fastcall RemovePlanned__4TownFP20PlannedMultiMapFixed(struct Town* this, const void* edx, struct PlannedMultiMapFixed* planned) asm("?RemovePlanned@Town@@QAEXPAVPlannedMultiMapFixed@@@Z");
// win1.41 0073d150 mac 105514f0 Town::AllVillagersCheckNeedNewAbode(void)
void __fastcall AllVillagersCheckNeedNewAbode__4TownFv(struct Town* this);
// win1.41 0073d360 mac 10550fd0 Town::GetNextSpellIcon(TownSpellIcon *)
struct TownSpellIcon* __fastcall GetNextSpellIcon__4TownFP13TownSpellIcon(const struct Town* this, const void* edx, const struct TownSpellIcon* icon);
// win1.41 0073d380 mac 10550e80 Town::AddMagicTypesHeld(MAGIC_TYPE)
bool __fastcall AddMagicTypesHeld__4TownF10MAGIC_TYPE(struct Town* this, const void* edx, enum MAGIC_TYPE type);
// win1.41 0073d630 mac 10550b00 Town::IsMagicTypeHeld(MAGIC_TYPE)
bool __fastcall IsMagicTypeHeld__4TownF10MAGIC_TYPE(struct Town* this, const void* edx, enum MAGIC_TYPE type);
// win1.41 0073e1d0 mac 1054f6b0 Town::GetTotemStatue(void)
struct TotemStatue* __fastcall GetTotemStatue__4TownFv(struct Town* this);
// win1.41 0073e210 mac 1054f460 Town::RemoveVillager(Villager *)
void __fastcall RemoveVillager__4TownFP8Villager(struct Town* this, const void* edx, struct Villager* villager);
// win1.41 0073eb00 mac 1054dfe0 Town::AssignForestsToTown(void)
void __fastcall AssignForestsToTown__4TownFv(struct Town* this);
// win1.41 007408b0 mac 10008020 Town::GetCongregationPos(void)
struct MapCoords* __fastcall GetCongregationPos__4TownFv(struct Town* this, const void* edx, struct MapCoords* coords);
// win1.41 00741b40 mac 105464d0 Town::MakeScenicForest(void)
void __fastcall MakeScenicForest__4TownFv(struct Town* this);
// win1.41 007437f0 mac 10071340 Town::UpdateAttitudeToCreature(void)
void __fastcall UpdateAttitudeToCreature__4TownFv(struct Town* this);
// win1.41 00747380 mac 100556c0 Town::Process(void)
uint32_t __fastcall Process__4TownFv(struct Town* this);
// win1.41 007477a0 mac 10067510 Town::ProcessTownEmergency(void)
void __fastcall ProcessTownEmergency__4TownFv(struct Town* this);
// win1.41 00747970 mac 1006d3c0 Town::IsInStateOfEmergency(void)
bool __fastcall IsInStateOfEmergency__4TownFv(struct Town* this);
// win1.41 007479a0 mac 105602e0 Town::SetInStateOfEmergency(void)
void __fastcall SetInStateOfEmergency__4TownFv(struct Town* this);

DECLARE_LH_LINKED_LIST(Town);
DECLARE_LH_LIST_HEAD(Town);

#endif /* BW1_DECOMP_TOWN_INCLUDED_H */
