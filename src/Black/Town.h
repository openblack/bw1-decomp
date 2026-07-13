#ifndef BW1_DECOMP_TOWN_INCLUDED_H
#define BW1_DECOMP_TOWN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For MAGIC_TYPE_LAST_142, TOWN_DESIRE_INFO_LAST, enum ABODE_TYPE, enum LIVING_TYPE, enum MAGIC_TYPE, enum RESOURCE_TYPE, enum TOWN_DESIRE_INFO, enum TRIBE_TYPE */
#include <re_common.h>   /* For bool32_t */

#include "Abode.h"                /* For struct Abode */
#include "Artifact.h"             /* For struct TownArtifact */
#include "Belief.h"               /* For struct GBelief */
#include "BuildingSite.h"         /* For struct BuildingSite */
#include "Container.h"            /* For struct Container */
#include "EffectValues.h"         /* For struct EffectValues */
#include "Field.h"                /* For struct Field */
#include "FishFarm.h"             /* For struct FishFarm */
#include "MapCoords.h"            /* For struct MapCoords */
#include "Object.h"               /* For struct Object */
#include "PlannedMultiMapFixed.h" /* For struct PlannedMultiMapFixed */
#include "TownDesire.h"           /* For struct TownDesire */
#include "TownSpellIcon.h"        /* For struct TownSpellIcon */
#include "TownStats.h"            /* For struct TownStats */
#include "Villager.h"             /* For struct Villager */

// Forward Declares

class Base;
class Citadel;
class Creature;
class Creche;
class GMultiMapFixedInfo;
class GPlayer;
class GTownInfo;
class GTribeInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class MultiMapFixed;
class StoragePit;
class TotemStatue;
class TownCentre;
class TownDesireFlags;
class Workshop;
class WorshipSite;

struct PlayerTownInteract
{
	uint32_t     field_0x0;
	float        field_0x4;
	float        field_0x8;
	uint32_t     field_0xc;
	float        field_0x10;
	uint32_t     field_0x14[0xa];
	EffectValues effect_values; /* 0x3c */
	uint32_t     field_0x7c;

	// Constructors

	// BW1W120 0073e040 BW1M100 1054fa10 PlayerTownInteract::PlayerTownInteract(void)
	PlayerTownInteract();
};

class Town : public Container
{
public:
	StoragePit*                      StoragePitList; /* 0x30 */
	TownDesire                       desire;
	uint8_t                          field_0x598[0x18];
	char*                            field_0x5b0;
	uint32_t                         field_0x5b4;
	TRIBE_TYPE                       tribe_type;
	uint8_t                          player_number;
	float                            worship_percentage; /* 0x5c0 */
	uint32_t                         WorshipCount;
	float                            influence;
	int                              field_0x5cc;
	uint32_t                         field_0x5d0;
	uint32_t                         field_0x5d4;
	float                            BeliefInNeutralPlayer;
	float                            field_0x5dc;
	uint32_t                         field_0x5e0;
	uint32_t                         field_0x5e4;
	uint32_t                         field_0x5e8;
	uint32_t                         field_0x5ec;
	uint32_t                         field_0x5f0;
	uint32_t                         field_0x5f4;
	uint32_t                         field_0x5f8;
	uint32_t                         field_0x5fc;
	uint32_t                         field_0x600;
	uint32_t                         field_0x604;
	uint32_t                         forests;
	uint32_t                         field_0x60c;
	TownStats                        stats; /* 0x610 */
	MapCoords                        field_0x728;
	MapCoords                        field_0x734;
	uint32_t                         field_0x740;
	Creche*                          creche;
	uint32_t                         field_0x748;
	Abode*                           Abode0x74c;
	uint32_t                         field_0x750;
	LHListHead<Abode>                AbodeList;
	Town*                            next;
	uint32_t                         field_0x760;
	uint32_t                         field_0x764;
	LHListHead<Villager>             HomelessList;
	uint32_t                         field_0x770;
	uint32_t                         field_0x774;
	LHListHead<TownSpellIcon>        SpellIconList;
	LHLinkedList<Field>              FieldList; /* 0x780 */
	LHLinkedList<FishFarm>           FishFarms;
	LHListHead<BuildingSite>         BuildingSiteList; /* 0x790 */
	GBelief                          belief;
	uint32_t                         field_0x968;
	uint32_t                         field_0x96c;
	uint32_t                         field_0x970;
	uint32_t                         field_0x974;
	uint32_t                         field_0x978;
	LHLinkedList<Object>             playthings;
	uint32_t                         field_0x984;
	uint32_t                         field_0x988;
	uint32_t                         field_0x98c;
	uint32_t                         field_0x990;
	LHLinkedList<TownArtifact>       artifacts;
	uint32_t                         field_0x99c;
	uint32_t                         field_0x9a0;
	TownCentre*                      town_centre;
	LHListHead<PlannedMultiMapFixed> PlannedList;
	TownDesireFlags*                 town_desire_flags[TOWN_DESIRE_INFO_LAST]; /* 0x9b0 */
	uint32_t                         field_0x9f4;
	uint32_t                         field_0x9f8;
	PlayerTownInteract               field_0x9fc[0x8];
	int                              MagicRemainder[MAGIC_TYPE_LAST_142]; /* 0xdfc */
	uint32_t                         field_0xea4;
	uint32_t                         field_0xea8;
	uint32_t                         field_0xeac;
	uint32_t                         field_0xeb0;
	float                            field_0xeb4;
	float                            field_0xeb8;
	uint32_t                         field_0xebc;
	uint32_t                         field_0xec0;
	uint32_t                         field_0xec4;
	void*                            field_0xec8[0x10];
	uint32_t                         field_0xf08;
	uint32_t                         field_0xf0c;
	MapCoords                        CongregationPos; /* 0xf10 */
	uint32_t                         field_0xf1c;
	uint32_t                         field_0xf20;
	uint32_t                         field_0xf24;

	// Override methods

	// BW1W120 007392b0 BW1M100 10558ef0 Town::_dt(void)
	virtual ~Town();
	// BW1W120 00739970 BW1M100 10556980 Town::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 007391e0 BW1M100 1054a050 Town::GetTown(void)
	virtual Town* GetTown();
	// BW1W120 0073ff00 BW1M100 1054a490 Town::GetVillagerActivityDesire(Villager *)
	virtual float GetVillagerActivityDesire(Villager* param_1);
	// BW1W120 0073ff10 BW1M100 100956a0 Town::SetVillagerActivity(Villager *)
	virtual uint32_t SetVillagerActivity(Villager* param_1);
	// BW1W120 0073d6e0 BW1M100 10550600 Town::GetRadius(void)
	virtual float GetRadius();
	// BW1W120 0073af80 BW1M100 10555020 Town::GetNumberOfInstanceForGlobalList(void)
	virtual uint16_t GetNumberOfInstanceForGlobalList();
	// BW1W120 007392a0 BW1M100 105594a0 Town::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 0073f450 BW1M100 1054aa80 Town::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0073ed30 BW1M100 1054c770 Town::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00739290 BW1M100 10559470 Town::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 007412e0 BW1M100 10547990 Town::ResolveLoad(void)
	virtual void ResolveLoad();
	// BW1W120 007391f0 BW1M100 10559130 Town::GetCreatureBeliefType(void)
	virtual uint32_t GetCreatureBeliefType();
	// BW1W120 00739200 BW1M100 10559170 Town::GetCreatureBeliefListType(void)
	virtual uint32_t GetCreatureBeliefListType();
	// BW1W120 0073bc40 BW1M100 10553f20 Town::GetCitadel(void)
	virtual Citadel* GetCitadel();
	// BW1W120 007391d0 BW1M100 10559100 Town::GetOrigin(void)
	virtual uint32_t GetOrigin();
	// BW1W120 00739250 BW1M100 inlined Town::IsTown_0(void)
	virtual bool IsTown_0();
	// BW1W120 00739220 BW1M100 inlined Town::IsTown_1(Creature *)
	virtual bool IsTown_1(Creature* param_1);
	// BW1W120 004e47f0 BW1M100 105e4b50 Town::IsActivityObjectWhichAngerAppliesTo(Creature *)
	virtual bool IsActivityObjectWhichAngerAppliesTo(Creature* param_1);
	// BW1W120 00739230 BW1M100 105592e0 Town::IsActivityObjectWhichCompassionAppliesTo(Creature *)
	virtual bool IsActivityObjectWhichCompassionAppliesTo(Creature* param_1);
	// BW1W120 00739240 BW1M100 10559340 Town::IsActivityObjectWhichPlayfulnessAppliesTo(Creature *)
	virtual bool IsActivityObjectWhichPlayfulnessAppliesTo(Creature* param_1);
	// BW1W120 004e4750 BW1M100 105e4c40 Town::IsTownBelongingToAnotherPlayer(Creature *)
	virtual bool IsTownBelongingToAnotherPlayer(Creature* param_1);
	// BW1W120 00739260 BW1M100 105593a0 Town::IsSuitableForCreatureActivity(void)
	virtual uint32_t IsSuitableForCreatureActivity();
	// BW1W120 00739270 BW1M100 105593f0 Town::CanBePlayedWithByCreature(Creature *)
	virtual uint32_t CanBePlayedWithByCreature(Creature* param_1);
	// BW1W120 0073c940 BW1M100 1006fa90 Town::GetWorshipSite(void)
	virtual WorshipSite* GetWorshipSite();
	// BW1W120 004e4140 BW1M100 105e5e00 Town::IsTownBelongingToOtherPlayer(Creature *)
	virtual uint32_t IsTownBelongingToOtherPlayer(Creature* param_1);
	// BW1W120 00739210 BW1M100 105591b0 Town::IsScriptContainer( const(void))
	virtual uint32_t IsScriptContainer();
	// BW1W120 00739280 BW1M100 10559440 Town::GetText(void)
	virtual const char* GetText();
	// BW1W120 00747f00 BW1M100 10065180 Town::CalculateDesireForFood(void)
	virtual float CalculateDesireForFood();
	// BW1W120 0073e200 BW1M100 1054f630 Town::GetScriptObjectType(void)
	virtual uint32_t GetScriptObjectType();

	// Static methods

	// BW1W120 0073b170 BW1M100 10554ef0 Town::GetNearestTownToPos(MapCoords const &, TRIBE_TYPE, ABODE_TYPE, float)
	static Town* GetNearestTownToPos(const MapCoords& coords, TRIBE_TYPE tribe_type, ABODE_TYPE abode_type,
	                                 float max_distance);
	// BW1W120 0073eac0 BW1M100 1054e290 Town::AsssignTownFeature(void)
	static void AsssignTownFeature();
	// BW1W120 007412f0 BW1M100 100233e0 Town::FindClearArea(MapCoords &, MapCoords &, float, float, float, int (Object::)(void const *, void const *), Object *)
	static bool FindClearArea(MapCoords* param_1, MapCoords* param_2, float param_3, float param_4, float param_5,
	                          bool(__fastcall* callback)(Object*), int index, uint32_t param_8, uint32_t param_9,
	                          Object* obj);
	// BW1W120 007413d0 BW1M100 10038890 Town::CheckForClearArea(MapCoords &, float, int (Object::)(void const *, void const *), Object *)
	static bool CheckForClearArea(MapCoords* param_1, float param_2, bool(__fastcall* callback)(Object*), int index,
	                              uint32_t param_5, uint32_t param_6, Object* obj);

	// Constructors

	// BW1W120 00739350 BW1M100 105575b0 Town::__ct(MapCoords const &, GTownInfo const *, GPlayer *, TRIBE_TYPE, char *, unsigned long, int)
	Town(MapCoords* coords, GTownInfo* info, GPlayer* player, TRIBE_TYPE tribe_type, char* param_5, uint32_t param_6,
	     int param_7);

	// Non-virtual methods

	// BW1W120 007399a0 BW1M100 10556850 Town::AddStructureToTown(MultiMapFixed *)
	void AddStructureToTown(MultiMapFixed* structure);
	// BW1W120 00739a20 BW1M100 105567f0 Town::AddAbodeToTownStats(Abode *)
	void AddAbodeToTownStats(Abode* abode);
	// BW1W120 0073a090 BW1M100 10556400 Town::AddVillagerToTown(Villager *)
	bool AddVillagerToTown(Villager* villager);
	// BW1W120 0073a140 BW1M100 10007ca0 Town::GetBestPlanned(float &, ABODE_TYPE)
	PlannedMultiMapFixed* GetBestPlanned(float* param_1, ABODE_TYPE param_2);
	// BW1W120 0073a1a0 BW1M100 100896c0 Town::GetDesireToBeBuilt(GMultiMapFixedInfo const *, unsigned long)
	float GetDesireToBeBuilt(const GMultiMapFixedInfo* param_1, unsigned long param_2);
	// BW1W120 0073a650 BW1M100 105561f0 Town::RequestBestPlanned(void)
	bool32_t RequestBestPlanned();
	// BW1W120 0073af50 BW1M100 10555160 Town::ChildToAdult(Villager *)
	void ChildToAdult(Villager* param_1);
	// BW1W120 0073b2d0 BW1M100 10554e90 Town::IsHarvestTime(void)
	bool IsHarvestTime();
	// BW1W120 0073b330 BW1M100 1009ada0 Town::RequestANewAbode(ABODE_TYPE)
	bool32_t RequestANewAbode(ABODE_TYPE param_1);
	// BW1W120 0073b370 BW1M100 10554d60 Town::FindAbodeWithSpaceInTown(Villager *, float)
	Abode* FindAbodeWithSpaceInTown(Villager* villager, float min_score);
	// BW1W120 0073ffd0 Town::IsSpaceForNewVillager(void)
	bool IsSpaceForNewVillager();
	// BW1W120 0073b3d0 BW1M100 10554c70 Town::FindClosesFieldToWithFood(MapCoords const &)
	Field* FindClosesFieldToWithFood(const MapCoords& param_1);
	// BW1W120 0073b580 BW1M100 10554bd0 Town::IsVillagerInHomelessList(Villager *)
	bool32_t IsVillagerInHomelessList(Villager* villager);
	// BW1W120 0073b5b0 BW1M100 100572e0 Town::GetStoragePit(void)
	StoragePit* GetStoragePit();
	// BW1W120 0073b5d0 BW1M100 10554b00 Town::Birthday(void)
	void Birthday();
	// BW1W120 0073b5e0 Town::UseFood(unsigned int)
	void UseFood(uint32_t param_1);
	// BW1W120 0073b860 BW1M100 10554610 Town::AddBuildingSite(PlannedMultiMapFixed *)
	BuildingSite* AddBuildingSite(PlannedMultiMapFixed* param_1);
	// BW1W120 0073b8a0 BW1M100 10554530 Town::AddBuildingSiteNoFixedCheck(PlannedMultiMapFixed *)
	BuildingSite* AddBuildingSiteNoFixedCheck(PlannedMultiMapFixed* param_1);
	// BW1W120 0073b910 BW1M100 10554340 Town::AddBuildingSite(BuildingSite *)
	void AddBuildingSite(BuildingSite* param_1);
	// BW1W120 0073ba20 BW1M100 10554100 Town::RemoveBuildingSite(MultiMapFixed *)
	uint32_t RemoveBuildingSite(MultiMapFixed* param_1);
	// BW1W120 0073ba70 BW1M100 10554050 Town::SetBeliefInPlayer(GPlayer *, float)
	void SetBeliefInPlayer(GPlayer* player, float value);
	// BW1W120 0073c060 BW1M100 105539a0 Town::SetWorshipPercentage(float)
	void SetWorshipPercentage(float worship_percentage);
	// BW1W120 0073c0f0 BW1M100 10552710 Town::AdjustWorshipersWorshipping(long, int, int)
	void AdjustWorshipersWorshipping(long param_1, int param_2, int param_3);
	// BW1W120 0073c840 BW1M100 1005d020 Town::GetTribe(void) const
	GTribeInfo* GetTribe() const;
	// BW1W120 0073c860 BW1M100 10092530 Town::GetWorshipersNeeded(int, int, int *)
	int GetWorshipersNeeded(int param_1, int param_2, int* result);
	// BW1W120 0073cf00 BW1M100 10551920 Town::IsBuildingSiteValid(BuildingSite *)
	bool32_t IsBuildingSiteValid(BuildingSite* param_1);
	// BW1W120 0073cf60 BW1M100 10097910 Town::GetBestBuildingSite(MapCoords const &, int)
	bool32_t GetBestBuildingSite(const MapCoords& param_1, int param_2);
	// BW1W120 0073d080 BW1M100 105516a0 Town::AddPlanned(PlannedMultiMapFixed *)
	void AddPlanned(PlannedMultiMapFixed* planned);
	// BW1W120 0073d0d0 BW1M100 10551530 Town::RemovePlanned(PlannedMultiMapFixed *)
	void RemovePlanned(PlannedMultiMapFixed* planned);
	// BW1W120 0073d150 BW1M100 105514f0 Town::AllVillagersCheckNeedNewAbode(void)
	void AllVillagersCheckNeedNewAbode();
	// BW1W120 0073d360 BW1M100 10550fd0 Town::GetNextSpellIcon(TownSpellIcon *)
	TownSpellIcon* GetNextSpellIcon(TownSpellIcon* icon);
	// BW1W120 0073d380 BW1M100 10550e80 Town::AddMagicTypesHeld(MAGIC_TYPE)
	bool AddMagicTypesHeld(MAGIC_TYPE type);
	// BW1W120 0073d630 BW1M100 10550b00 Town::IsMagicTypeHeld(MAGIC_TYPE)
	bool IsMagicTypeHeld(MAGIC_TYPE type);
	// BW1W120 0073de30 BW1M100 1054fb60 Town::GetFlock(LIVING_TYPE, int)
	bool GetFlock(LIVING_TYPE param_1, int param_2);
	// BW1W120 0073e1d0 BW1M100 1054f6b0 Town::GetTotemStatue(void)
	TotemStatue* GetTotemStatue();
	// BW1W120 0073e210 BW1M100 1054f460 Town::RemoveVillager(Villager *)
	void RemoveVillager(Villager* villager);
	// BW1W120 0073e300 Town::AddVillagerOnWayToWorshipSite(Villager *)
	void AddVillagerOnWayToWorshipSite(Villager* villager);
	// BW1W120 0073e360 BW1M100 1054f190 Town::RemoveVillagerOnWayToWorshipSite(Villager *)
	void RemoveVillagerOnWayToWorshipSite(Villager* villager);
	// BW1W120 0073e400 BW1M100 10060840 Town::GetDesire(TOWN_DESIRE_INFO)
	float GetDesire(TOWN_DESIRE_INFO param_1);
	// BW1W120 0073e420 BW1M100 10055140 Town::GetRawDesire(TOWN_DESIRE_INFO)
	float GetRawDesire(TOWN_DESIRE_INFO param_1);
	// BW1W120 0073e900 BW1M100 1054e460 Town::GetTemporaryResourceStorePotOrPos(MapCoords const &, MapCoords &, RESOURCE_TYPE)
	void* GetTemporaryResourceStorePotOrPos(const MapCoords& param_1, MapCoords& param_2, RESOURCE_TYPE param_3);
	// BW1W120 0073eb00 BW1M100 1054dfe0 Town::AssignForestsToTown(void)
	void AssignForestsToTown();
	// BW1W120 00740250 BW1M100 10549810 Town::GetBestWorkshop(MapCoords &, int, int)
	Workshop* GetBestWorkshop(MapCoords& param_1, int param_2, int param_3);
	// BW1W120 0073d6b0 Town::IsAbodeTypeInTown(ABODE_TYPE)
	uint32_t IsAbodeTypeInTown(ABODE_TYPE abode_type);
	// BW1W120 007408b0 BW1M100 10008020 Town::GetCongregationPos(void)
	MapCoords GetCongregationPos();
	// BW1W120 00741b40 BW1M100 105464d0 Town::MakeScenicForest(void)
	void MakeScenicForest();
	// BW1W120 007437f0 BW1M100 10071340 Town::UpdateAttitudeToCreature(void)
	void UpdateAttitudeToCreature();
	// BW1W120 00747380 BW1M100 100556c0 Town::Process(void)
	uint32_t Process();
	// BW1W120 007477a0 BW1M100 10067510 Town::ProcessTownEmergency(void)
	void ProcessTownEmergency();
	// BW1W120 00747970 BW1M100 1006d3c0 Town::IsInStateOfEmergency(void)
	bool32_t IsInStateOfEmergency();
	// BW1W120 007479a0 BW1M100 105602e0 Town::SetInStateOfEmergency(void)
	void SetInStateOfEmergency();
	// BW1W120 00747ea0 BW1M100 1055f880 Town::GetBestRepairBuildingSite(void)
	bool32_t GetBestRepairBuildingSite();
	// BW1W120 007635d0 BW1M100 10012ce0 Town::DisplayHowImpressed(void)
	bool32_t DisplayHowImpressed();
};

#endif /* BW1_DECOMP_TOWN_INCLUDED_H */
