#ifndef BW1_DECOMP_TOWN_INCLUDED_H
#define BW1_DECOMP_TOWN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For MAGIC_TYPE_LAST_142, TOWN_DESIRE_INFO_LAST, enum ABODE_TYPE, enum LIVING_TYPE, enum MAGIC_TYPE, enum RESOURCE_TYPE, enum TOWN_DESIRE_INFO, enum TRIBE_TYPE */
#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */
#include <re_common.h>          /* For bool32_t */

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
class Flock;
class GMultiMapFixedInfo;
class GPlayer;
class GTownInfo;
class GTribeInfo;
class GameOSFile;
class GameThing;
class EffectValues;
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

	// BW1W120 0073e040 BW1M119 01559070
	PlayerTownInteract();
};

class Town : public Container
{
public:
	StoragePit* StoragePitList; /* 0x30 */
	TownDesire  desire;
	uint8_t     field_0x598[0x18];
	char*       field_0x5b0;
	uint32_t    field_0x5b4;
	TRIBE_TYPE  tribe_type;
	uint8_t     player_number;
	float       worship_percentage; /* 0x5c0 */
	uint32_t    WorshipCount;
	float       influence;
	int         field_0x5cc;
	uint32_t    field_0x5d0;
	float       Promiscuity; /* 0x5d4 */
	float       BeliefInNeutralPlayer;
	float       field_0x5dc;
	uint32_t    field_0x5e0;
	uint32_t    field_0x5e4;
	uint32_t    field_0x5e8;
	uint32_t    field_0x5ec;
	uint32_t    field_0x5f0;
	uint32_t    field_0x5f4;
	uint32_t    field_0x5f8;
	uint32_t    field_0x5fc;
	uint32_t    field_0x600;
	uint32_t    field_0x604;
	uint32_t    forests;
	uint32_t    field_0x60c;
	TownStats   stats; /* 0x610 */
	MapCoords   field_0x728;
	MapCoords   field_0x734;
#ifdef VERSION_BW1W120
	uint32_t field_0x740;
#endif
	Creche* creche;
#ifndef VERSION_BW1W100
	uint32_t field_0x748;
#endif
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
	LHLinkedList<Field*>             FieldList; /* 0x780 */
	LHLinkedList<FishFarm*>          FishFarms;
	LHListHead<BuildingSite>         BuildingSiteList; /* 0x790 */
	GBelief                          belief;
	uint32_t                         field_0x968;
	uint32_t                         field_0x96c;
	uint32_t                         field_0x970;
	uint32_t                         field_0x974;
	uint32_t                         field_0x978;
	LHLinkedList<Object*>            playthings;
	uint32_t                         field_0x984;
	uint32_t                         field_0x988;
	uint32_t                         field_0x98c;
	uint32_t                         field_0x990;
	LHLinkedList<TownArtifact*>      artifacts;
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
	float                            field_0xf24;

	// Override methods

	// BW1W120 007392b0 BW1M119 01562430
	virtual ~Town();
	// BW1W120 00739970 BW1M119 015601d0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 007391e0 BW1M119 01553830
	virtual Town* GetTown();
	// BW1W120 0073ff00 BW1M119 01553900
	virtual float GetVillagerActivityDesire(Villager* param_1);
	// BW1W120 0073ff10 BW1M119 010975f0
	virtual uint32_t SetVillagerActivity(Villager* param_1);
	// BW1W120 0073d6e0 BW1M119 01559cb0
	virtual float GetRadius();
	// BW1W120 0073af80 BW1M119 0155e850
	virtual uint16_t GetNumberOfInstanceForGlobalList();
	// BW1W120 007392a0 BW1M119 015629e0
	virtual char* GetDebugText();
	// BW1W120 0073f450 BW1M119 01553ef0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0073ed30 BW1M119 01555e20
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00739290 BW1M119 015629b0
	virtual uint32_t GetSaveType();
	// BW1W120 007412e0 BW1M119 01550e80
	virtual void ResolveLoad();
	// BW1W120 007391f0 BW1M119 01562670
	virtual uint32_t GetCreatureBeliefType();
	// BW1W120 00739200 BW1M119 015626b0
	virtual uint32_t GetCreatureBeliefListType();
	// BW1W120 0073bc40 BW1M119 0155d6b0
	virtual Citadel* GetCitadel();
	// BW1W120 007391d0 BW1M119 01562640
	virtual uint32_t GetOrigin();
	// BW1W120 00739250 BW1M119 inlined
	virtual bool IsTown_0();
	// BW1W120 00739220 BW1M119 inlined
	virtual bool IsTown_1(Creature* param_1);
	// BW1W120 004e47f0 BW1M119 015ec850
	virtual bool32_t IsActivityObjectWhichAngerAppliesTo(Creature* creature);
	// BW1W120 00739230 BW1M119 01562820
	virtual bool32_t IsActivityObjectWhichCompassionAppliesTo(Creature* creature);
	// BW1W120 00739240 BW1M119 01562880
	virtual bool32_t IsActivityObjectWhichPlayfulnessAppliesTo(Creature* creature);
	// BW1W120 004e4750 BW1M119 015ec940
	virtual bool32_t IsTownBelongingToAnotherPlayer(Creature* creature);
	// BW1W120 00739260 BW1M119 015628e0
	virtual uint32_t IsSuitableForCreatureActivity();
	// BW1W120 00739270 BW1M119 01562930
	virtual uint32_t CanBePlayedWithByCreature(Creature* param_1);
	// BW1W120 0073c940 BW1M119 01072210
	virtual WorshipSite* GetWorshipSite();
	// BW1W120 004e4140 BW1M119 015edb00
	virtual uint32_t IsTownBelongingToOtherPlayer(Creature* param_1);
	// BW1W120 00739210 BW1M119 015626f0
	virtual uint32_t IsScriptContainer() const;
	// BW1W120 00739280 BW1M119 01562980
	virtual const char* GetText();
	// BW1W120 00747f00 BW1M119 01067940
	virtual float CalculateDesireForFood();
	// BW1W120 0073e200 BW1M119 01558d50
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();

	// Static methods

	// BW1W120 0073b170 BW1M119 0155e720
	static Town* GetNearestTownToPos(const MapCoords& coords, TRIBE_TYPE tribe_type, ABODE_TYPE abode_type,
	                                 float max_distance);
	// BW1W120 0073eac0 BW1M119 01557940
	static void AsssignTownFeature();
	// BW1W120 007412f0 BW1M119 01025f70
	static bool FindClearArea(MapCoords* param_1, MapCoords* param_2, float param_3, float param_4, float param_5,
	                          bool(__fastcall* callback)(Object*), int index, uint32_t param_8, uint32_t param_9,
	                          Object* obj);
	// BW1W120 007413d0 BW1M119 0103b1f0
	static bool CheckForClearArea(MapCoords* param_1, float param_2, bool(__fastcall* callback)(Object*), int index,
	                              uint32_t param_5, uint32_t param_6, Object* obj);

	// Constructors

	// BW1W120 00739350 BW1M119 01560de0
	Town(MapCoords* coords, GTownInfo* info, GPlayer* player, TRIBE_TYPE tribe_type, char* param_5, uint32_t param_6,
	     int param_7);

	// Non-virtual methods

	// BW1W120 inlined BW1M119 inlined
	inline GTownInfo* GetInfo() const { return (GTownInfo*)info; }
	// BW1W120 0073c9b0 BW1M119 0155b500
	void UpdateAggressor(const EffectValues& values, float aggressor_value);
	// BW1W120 007399a0 BW1M119 015600a0
	void AddStructureToTown(MultiMapFixed* structure);
	// BW1W120 00739a20 BW1M119 01560040
	void AddAbodeToTownStats(Abode* abode);
	// BW1W120 00739a60 BW1M119 0155fd70
	void RemoveStructureFromTown(MultiMapFixed* structure);
	// BW1W120 0073a090 BW1M119 0155fc30
	bool AddVillagerToTown(Villager* villager);
	// BW1W120 0073a140 BW1M119 01007bb0
	PlannedMultiMapFixed* GetBestPlanned(float& param_1, ABODE_TYPE param_2);
	// BW1W120 0073a1a0 BW1M119 0108ba20
	float GetDesireToBeBuilt(const GMultiMapFixedInfo* param_1, unsigned long param_2);
	// BW1W120 0073a650 BW1M119 0155fa40
	bool32_t RequestBestPlanned();
	// BW1W120 0073af50 BW1M119 0155e990
	void ChildToAdult(Villager* villager);
	// BW1W120 0073b2d0 BW1M119 0155e6c0
	bool IsHarvestTime();
	// BW1W120 0073b330 BW1M119 0109cbc0
	bool32_t RequestANewAbode(ABODE_TYPE param_1);
	// BW1W120 0073b370 BW1M119 0155e4f0
	Abode* FindAbodeWithSpaceInTown(Villager* villager, float min_score);
	// BW1W120 0073ffd0 BW1M119 01553750
	bool IsSpaceForNewVillager();
	// BW1W120 0073b3d0 BW1M119 0155e3e0
	Field* FindClosesFieldToWithFood(const MapCoords& param_1);
	// BW1W120 0073b580 BW1M119 0155e340
	bool32_t IsVillagerInHomelessList(Villager* villager);
	// BW1W120 0073b5b0 BW1M119 01059fb0
	StoragePit* GetStoragePit();
	// BW1W120 0073b5d0 BW1M119 0155e2a0
	void Birthday();
	// BW1W120 0073b5e0 BW1M119 0155e200
	void UseFood(uint32_t param_1);
	// BW1W120 0073b860 BW1M119 0155ddb0
	BuildingSite* AddBuildingSite(PlannedMultiMapFixed* site);
	// BW1W120 0073b8a0 BW1M119 0155dcd0
	BuildingSite* AddBuildingSiteNoFixedCheck(PlannedMultiMapFixed* site);
	// BW1W120 0073b8e0 BW1M119 0155dc30
	void AddBuildingSite(MultiMapFixed* site);
	// BW1W120 0073b910 BW1M119 0155dae0
	void AddBuildingSite(BuildingSite* site);
	// BW1W120 0073ba20 BW1M119 0155d8a0
	uint32_t RemoveBuildingSite(MultiMapFixed* site);
	// BW1W120 0073ba70 BW1M119 0155d7f0
	void SetBeliefInPlayer(GPlayer* player, float value);
	// BW1W120 0073c060 BW1M119 0155d120
	void SetWorshipPercentage(float worship_percentage);
	// BW1W120 0073c0f0 BW1M119 0155be90
	void AdjustWorshipersWorshipping(long param_1, int param_2, int param_3);
	// BW1W120 0073c840 BW1M119 0105fcd0
	GTribeInfo* GetTribe() const;
	// BW1W120 0073c860 BW1M119 01094750
	int GetWorshipersNeeded(int param_1, int param_2, int* result);
	// BW1W120 0073c950 BW1M119 0155b880
	uint32_t GetFoodForWorshipSiteIfEnough();
	// BW1W120 0073ce40 BW1M119 0155b140
	BuildingSite* GetBuildingSiteInList(MultiMapFixed* building);
	// BW1W120 0073cf00 BW1M119 0155b040
	bool32_t IsBuildingSiteValid(BuildingSite* param_1);
	// BW1W120 0073cf60 BW1M119 01099850
	bool32_t GetBestBuildingSite(const MapCoords& param_1, int param_2);
	// BW1W120 0073d080 BW1M119 0155ad60
	void AddPlanned(PlannedMultiMapFixed* planned);
	// BW1W120 0073d0d0 BW1M119 0155abf0
	void RemovePlanned(PlannedMultiMapFixed* planned);
	// BW1W120 0073d150 BW1M119 0155abb0
	void AllVillagersCheckNeedNewAbode();
	// BW1W120 0073d360 BW1M119 0155a690
	TownSpellIcon* GetNextSpellIcon(TownSpellIcon* icon);
	// BW1W120 0073d380 BW1M119 0155a540
	bool AddMagicTypesHeld(MAGIC_TYPE type);
	// BW1W120 0073d630 BW1M119 0155a1b0
	bool IsMagicTypeHeld(MAGIC_TYPE type);
	// BW1W120 0073de30 BW1M119 015591d0
	Flock* GetFlock(LIVING_TYPE living_type, int include_shepherded);
	// BW1W120 0073e1d0 BW1M119 01558dd0
	TotemStatue* GetTotemStatue();
	// BW1W120 0073e210 BW1M119 01558b80
	void RemoveVillager(Villager* villager);
	// BW1W120 0073e300 BW1M119 015589d0
	void AddVillagerOnWayToWorshipSite(Villager* villager);
	// BW1W120 0073e360 BW1M119 01558870
	void RemoveVillagerOnWayToWorshipSite(Villager* villager);
	// BW1W120 0073e400 BW1M119 01062fb0
	float GetDesire(TOWN_DESIRE_INFO param_1);
	// BW1W120 0073e420 BW1M119 01057ad0
	float GetRawDesire(TOWN_DESIRE_INFO param_1);
	// BW1W120 0073e900 BW1M119 01557af0
	void* GetTemporaryResourceStorePotOrPos(const MapCoords& param_1, MapCoords& param_2, RESOURCE_TYPE param_3);
	// BW1W120 00740030 BW1M119 015535d0
	float GetGameTurnResourceLastRemovedModifier(RESOURCE_TYPE type, int param_2);
	// BW1W120 007400d0 BW1M119 01553540
	void SetGameTurnResourceLastRemoved(RESOURCE_TYPE type, int param_2);
	// BW1W120 0073eb00 BW1M119 01557690
	void AssignForestsToTown();
	// BW1W120 00740250 BW1M119 01552ff0
	Workshop* GetBestWorkshop(MapCoords& param_1, int param_2, int param_3);
	// BW1W120 0073d6b0 BW1M119 01559f20
	uint32_t IsAbodeTypeInTown(ABODE_TYPE abode_type);
	// BW1W120 007408b0 BW1M119 01007f30
	MapCoords GetCongregationPos();
	// BW1W120 00741b40 BW1M119 0154ff00
	void MakeScenicForest();
	// BW1W120 007437f0 BW1M119 01073a90
	void UpdateAttitudeToCreature();
	// BW1W120 00747380 BW1M119 01058050
	uint32_t Process();
	// BW1W120 007477a0 BW1M119 01069cb0
	void ProcessTownEmergency();
	// BW1W120 00747970 BW1M119 0106fb40
	bool32_t IsInStateOfEmergency();
	// BW1W120 007479a0 BW1M119 01569510
	void SetInStateOfEmergency();
	// BW1W120 00747ea0 BW1M119 01568b10
	bool32_t GetBestRepairBuildingSite();
	// BW1W120 007635d0 BW1M119 010158b0
	static void DisplayHowImpressed();
};

#endif /* BW1_DECOMP_TOWN_INCLUDED_H */
