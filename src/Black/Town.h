#ifndef BW1_DECOMP_TOWN_INCLUDED_H
#define BW1_DECOMP_TOWN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For MAGIC_TYPE_LAST, TOWN_DESIRE_INFO_LAST, enum ABODE_TYPE, enum LIVING_TYPE, enum MAGIC_TYPE, enum RESOURCE_TYPE, enum TOWN_DESIRE_INFO, enum TRIBE_TYPE */
#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */
#include <re_common.h>          /* For bool32_t */

#include "Abode.h"                /* For struct Abode */
#include "Artifact.h"             /* For struct TownArtifact */
#include "Belief.h"               /* For struct GBelief */
#include "BuildingSite.h"         /* For struct BuildingSite */
#include "Camera.h"               /* For struct CameraStore */
#include "Container.h"            /* For struct Container */
#include "EffectValues.h"         /* For struct EffectValues */
#include "Field.h"                /* For struct Field */
#include "FishFarm.h"             /* For struct FishFarm */
#include "MapCoords.h"            /* For struct MapCoords */
#include "Object.h"               /* For struct Object */
#include "PlannedMultiMapFixed.h" /* For struct PlannedMultiMapFixed */
#include "PlayerName.h"           /* For enum PLAYER_NAME */
#include "TownDesire.h"           /* For struct TownDesire */
#include "TownSpellIcon.h"        /* For struct TownSpellIcon */
#include "TownStats.h"            /* For struct TownStats */
#include "Villager.h"             /* For struct Villager */

// Forward Declares

class Animal;
class Base;
class Ball;
class Citadel;
class Creature;
class Dance;
class Creche;
class Fixed;
class Flock;
class Forest;
class Graveyard;
class Living;
class Meeting;
class LHOSFile;
class PBall;
class PlannedAbode;
class Playtime;
class PlaytimeElement;
class Pot;
class Scaffold;
class GMultiMapFixedInfo;
class GPlayer;
class GTownInfo;
class GTribeInfo;
class GVillagerInfo;
class GameOSFile;
class GameThing;
class EffectValues;
class GameThingWithPos;
class LHOSFile;
class MissionaryControl;
class MultiMapFixed;
class StoragePit;
class Totem;
class TotemStatue;
class TownCentre;
class TownCreatureInfo;
class TownDesireFlags;
class Wonder;
class Workshop;
class WorshipSite;

struct PlayerTownInteract
{
	uint32_t     field_0x0;
	float        Aggression;
	uint32_t     LastDamageTurn;
	uint32_t     field_0xc;
	float        Trust;
	float        DamageDone[DEATH_REASON_LAST];
	EffectValues effect_values;
	uint32_t     LastArtifactBeliefGiftTurn;

	// Constructors

	// BW1W120 0073e040 BW1M119 01559070
	PlayerTownInteract();

	// Non-virtual methods

	// BW1W120 0073e0d0 BW1M119 null
	float GetTotalDamageDone();
	// BW1W120 0073e0f0 BW1M119 01558ec0
	void UpdateDamageDone(EffectValues& values, float value);
	// BW1W120 0073e160 BW1M119 null
	void ReduceTrust(Town* town);
	// BW1W120 0073e190 BW1M119 0105f300
	void Process(Town* town);
};

class Town : public Container
{
public:
	StoragePit* MainStoragePit;
	TownDesire  desire;
	CameraStore CameraView;
	char*       Name;
	uint32_t    ID;
	TRIBE_TYPE  tribe_type;
	uint8_t     player_number;
	float       worship_percentage;
	int         WorshipCount;
	float       influence;
	uint32_t    NumVillagersOnWayToWorshipSite;
	float       AverageGameTurnsToTravelToWorshipSite;
	float       Promiscuity;
	float       BeliefInNeutralPlayer;
	float       BalanceBeliefScale;
	bool32_t    Raining;
	bool32_t    BuildingRequested;
	bool32_t    DesireDirty;
	uint32_t    DesireDirtyTimer;
	bool32_t    CannotBuildWorshipSite;
	bool32_t    Uninhabitable;
#ifndef VERSION_BW1W100
	// Absent from BW1W100: unlike BW1W110, its Town::Load does not clear it, and the later members sit 8 bytes
	// lower there.
	int ZeroBaseInfluence;
#endif
#ifdef VERSION_BW1W120
	// Absent from BW1W110 and BW1W100: ZeroBaseInfluence keeps its offset in BW1W110 while TemporaryResourceStorePots and every
	// later member sit 4 bytes lower.
	bool32_t CompleteNewTownBuilt;
#endif
	Pot*                             TemporaryResourceStorePots[RESOURCE_TYPE_LAST];
	LHLinkedList<Forest*>            forests;
	TownStats                        stats;
	MapCoords                        AreaMin;
	MapCoords                        AreaMax;
	Totem*                           totem;
	Creche*                          creche;
	Graveyard*                       graveyard;
	LHListHead<Workshop>             WorkshopList;
	LHListHead<Abode>                AbodeList;
	Town*                            next;
	LHListHead<Meeting>              MeetingList;
	LHListHead<Villager>             HomelessList;
	LHListHead<Villager>             ExtraVillagerList;
	LHListHead<TownSpellIcon>        SpellIconList;
	LHLinkedList<Field*>             FieldList;
	LHLinkedList<FishFarm*>          FishFarms;
	LHLinkedList<BuildingSite*>      BuildingSiteList;
	GBelief                          belief;
	LHLinkedList<Villager*>          VillagerList;
	LHLinkedList<TownCreatureInfo*>  CreatureInfoList;
	GameThing*                       NearestTown;
	LHLinkedList<Object*>            playthings;
	LHLinkedList<Animal*>            AnimalList;
	WorshipSite*                     worship_site;
	Playtime*                        playtime;
	LHListHead<TownArtifact>         ArtifactList;
	LHListHead<MissionaryControl>    MissionaryList;
	TownCentre*                      town_centre;
	LHListHead<PlannedMultiMapFixed> PlannedList;
	TownDesireFlags*                 town_desire_flags[TOWN_DESIRE_INFO_LAST];
	PlayerTownInteract               PlayerInteract[_PLAYER_NAME_COUNT];
	LHLinkedList<Villager*>          VillagersOnWayToWorshipSite;
	bool32_t                         MagicTypesHeld[MAGIC_TYPE_LAST];
	GameThing*                       FootballPitch;
	uint32_t                         field_0xea8;
	GameThing*                       LastAttackingPlayer;
	uint32_t                         LastAttackedTurn;
	float                            OtherPlayersAggressorScale;
	float                            OwnerAggressorScale;
	float                            OwnerInteractionTotal;
	float                            OtherInteractionTotal;
	float                            WorshipPercentageBeforeEmergency;
	uint32_t                         ResourceLastRemovedTurn[_PLAYER_NAME_COUNT][RESOURCE_TYPE_LAST];
	LHLinkedList<Flock*>             FlockList;
	MapCoords                        CongregationPos;
	uint32_t                         EmergencyStartTurn;
	uint32_t                         EmptyTownTimer;
	float                            LastAddedInfluence;

	// Override methods

	// BW1W120 007391d0 BW1M119 01562640
	virtual uint32_t GetOrigin() { return 1; }
	// BW1W120 007391e0 BW1M119 01553830
	virtual Town* GetTown() { return this; }
	// BW1W120 007391f0 BW1M119 01562670
	virtual uint32_t GetCreatureBeliefType() { return 0; }
	// BW1W120 00739200 BW1M119 015626b0
	virtual uint32_t GetCreatureBeliefListType() { return 0; }
	// BW1W120 00739210 BW1M119 015626f0
	virtual bool32_t IsScriptContainer() const { return true; }
	// BW1W120 00739220 BW1M119 015627e0
	virtual bool32_t IsTown(Creature* creature) { return true; }
	// BW1W120 00739230 BW1M119 01562820
	virtual bool32_t IsActivityObjectWhichCompassionAppliesTo(Creature* creature) { return true; }
	// BW1W120 00739240 BW1M119 01562880
	virtual bool32_t IsActivityObjectWhichPlayfulnessAppliesTo(Creature* creature) { return true; }
	// BW1W120 00739250 BW1M119 01000d70
	virtual bool32_t IsTown() { return true; }
	// BW1W120 00739260 BW1M119 015628e0
	virtual bool32_t IsSuitableForCreatureActivity() { return true; }
	// BW1W120 00739270 BW1M119 01562930
	virtual bool32_t CanBePlayedWithByCreature(Creature* creature) { return false; }
	// BW1W120 00739280 BW1M119 01562980
	virtual const char* GetText() { return "Town"; }
	// BW1W120 00739290 BW1M119 015629b0
	virtual uint32_t GetSaveType() { return 0x28; }
	// BW1W120 007392a0 BW1M119 015629e0
	virtual char* GetDebugText() { return "Town:"; }

	// BW1W120 00739970 BW1M119 015601d0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0073ff00 BW1M119 01553900
	virtual float GetVillagerActivityDesire(Villager* villager);
	// BW1W120 0073ff10 BW1M119 010975f0
	virtual uint32_t SetVillagerActivity(Villager* villager);
	// BW1W120 0073d6e0 BW1M119 01559cb0
	virtual float GetRadius();
	// BW1W120 0073af80 BW1M119 0155e850
	virtual uint16_t GetNumberOfInstanceForGlobalList();
	// BW1W120 0073f450 BW1M119 01553ef0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0073ed30 BW1M119 01555e20
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 007412e0 BW1M119 01550e80
	virtual void ResolveLoad();
	// BW1W120 0073bc40 BW1M119 0155d6b0
	virtual Citadel* GetCitadel();
	// BW1W120 004e47f0 BW1M119 015ec850
	virtual bool32_t IsActivityObjectWhichAngerAppliesTo(Creature* creature);
	// BW1W120 004e4750 BW1M119 015ec940
	virtual bool32_t IsTownBelongingToAnotherPlayer(Creature* creature);
	// BW1W120 0073c940 BW1M119 01072210
	virtual WorshipSite* GetWorshipSite();
	// BW1W120 004e4140 BW1M119 015edb00
	virtual bool32_t IsTownBelongingToOtherPlayer(Creature* creature);
	// BW1W120 00747f00 BW1M119 01067940
	virtual float CalculateDesireForFood();
	// BW1W120 0073e200 BW1M119 01558d50
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();

	// New virtual methods

	// BW1W120 00739690 BW1M119 01560250
	virtual void DeleteDependancys();

	// Static methods

	// BW1W120 0073aee0 BW1M119 0155e9f0
	static void UpdateNearestTowns();
	// BW1W120 0073b170 BW1M119 0155e720
	static Town* GetNearestTownToPos(const MapCoords& coords, TRIBE_TYPE tribe_type, ABODE_TYPE abode_type,
	                                 float max_distance);
	// BW1W120 0073eac0 BW1M119 01557940
	static void AsssignTownFeature();
	// Both return the full register. The member-function pointers are passed in the 16-byte general
	// representation, so Town.cpp needs /vmg like Fixed.cpp.
	// BW1W120 007412f0 BW1M119 01025f70
	static bool32_t FindClearArea(MapCoords& result, MapCoords& pos, float param_3, float param_4, float radius,
	                              int (Object::*callback)() const, Object* obj);
	// BW1W120 007413d0 BW1M119 0103b1f0
	static bool32_t CheckForClearArea(MapCoords& pos, float radius, int (Object::*callback)() const, Object* obj);
	// BW1W120 0073fbd0 BW1M119 null
	static void BuildNearestTownSitesCheat();

	// Constructors

	// BW1W120 00738ff0 BW1M119 01561fd0
	Town();
#ifdef VERSION_BW1W100
	// The BW1W100 constructor has no seventh argument (ret 0x18): ZeroBaseInfluence does not exist yet.
	Town(const MapCoords& coords, const GTownInfo* info, GPlayer* player, TRIBE_TYPE tribe_type, char* name,
	     unsigned long id);
#else
	// BW1W120 00739350 BW1M119 01560de0
	Town(const MapCoords& coords, const GTownInfo* info, GPlayer* player, TRIBE_TYPE tribe_type, char* name,
	     unsigned long id, int param_7);
#endif

	// Non-virtual methods

	// BW1W120 inlined BW1M119 01497b90
	float GetInfluence() { return influence; }

	// BW1W120 inlined BW1M119 inlined
	inline GTownInfo* GetInfo() const { return (GTownInfo*)info.Get(); }
	// BW1W120 inlined BW1M119 010732b0
	uint32_t GetPopulation() const { return stats.NumChildren + stats.NumAdults; }
	// BW1W120 inlined BW1M119 015594a0
	Totem* GetTotem() { return totem; }
	// BW1W120 inlined BW1M119 010b7e50
	TownCentre* GetTownCentre() { return town_centre; }
	// BW1W120 007399a0 BW1M119 015600a0
	void AddStructureToTown(MultiMapFixed* structure);
	// BW1W120 00739a20 BW1M119 01560040
	void AddAbodeToTownStats(Abode* abode);
	// BW1W120 00739a40 BW1M119 inlined
	void RemoveAbodeFromTownStats(Abode* abode);
	// BW1W120 00739a60 BW1M119 0155fd70
	void RemoveStructureFromTown(MultiMapFixed* structure);
	// BW1W120 00739bd0 BW1M119 null
	Abode* FindAbodeForVillager(Villager* villager);
	// BW1W120 00739be0 BW1M119 null
	Abode* FindAbodeForVillagerInfo(const GVillagerInfo* villager_info);
	// BW1W120 00739d10 BW1M119 null
	int PopulateTown(unsigned long count);
	// BW1W120 0073a090 BW1M119 0155fc30
	bool32_t AddVillagerToTown(Villager* villager);
	// BW1W120 0073a140 BW1M119 01007bb0
	PlannedMultiMapFixed* GetBestPlanned(float& desire, ABODE_TYPE abode_type);
	// BW1W120 0073a1a0 BW1M119 0108ba20
	float GetDesireToBeBuilt(const GMultiMapFixedInfo* info, unsigned long num_scaffolds);
	// BW1W120 0073a650 BW1M119 0155fa40
	bool32_t RequestBestPlanned();
	// BW1W120 0073a690 BW1M119 null
	void JustSetWorshipPercentage(float percentage);
	// BW1W120 0073a6a0 BW1M119 null
	bool32_t CreateFootballPitch();
	// BW1W120 0073a730 BW1M119 null
	uint32_t FindFootballPitchPos(MapCoords& pos, long max_cells);
	// BW1W120 0073a7d0 BW1M119 0155f860
	void RemoveTownFromPlayer();
	// BW1W120 0073a8f0 BW1M119 0155f6b0
	void AddTownToPlayer(GPlayer* player);
	// BW1W120 0073a9c0 BW1M119 0155f4a0
	void ResetAllDiscipleStates();
	// BW1W120 0073aa50 BW1M119 0155f2d0
	void SetAverageGameTurnsToTravelToWorshipSite();
	// BW1W120 0073aaf0 BW1M119 0155ef30
	void SetTownArea();
	// BW1W120 0073ac90 BW1M119 0155ec00
	void SetTownArea(Object* object);
	// BW1W120 0073ae10 BW1M119 0155eb10
	MapCoords GetAreaCentre();
	// BW1W120 0073aec0 BW1M119 0155eaa0
	void UpdateNearestTown();
	// BW1W120 0073af30 BW1M119 null
	bool32_t IsInTown(GameThing* thing);
	// BW1W120 0073af50 BW1M119 0155e990
	void ChildToAdult(Villager* villager);
	// BW1W120 0073af70 BW1M119 null
	void Unknown0073af70(Villager* villager);
	// BW1W120 0073b010 BW1M119 null
	GVillagerInfo* GetVillagerInfo(VILLAGER_NUMBER villager_number);
	// BW1W120 0073b040 BW1M119 null
	bool32_t FindNavigablePosNear(MapCoords& pos, float width, float depth);
	// BW1W120 0073b0e0 BW1M119 null
	bool32_t IsAreaNavigable(const MapCoords& pos, long width, long depth);
	// BW1W120 0073b230 BW1M119 null
	void CreateAllPlannedNoFixedCheck();
	// BW1W120 0073b260 BW1M119 null
	void ConvertUnstartedAbodesToPlanned();
	// BW1W120 0073b2d0 BW1M119 0155e6c0
	bool32_t IsHarvestTime();
	// BW1W120 0073b2f0 BW1M119 null
	PlannedMultiMapFixed* FindPlanned(ABODE_TYPE abode_type);
	// BW1W120 0073b330 BW1M119 0109cbc0
	bool32_t RequestANewAbode(ABODE_TYPE abode_type);
	// BW1W120 0073b370 BW1M119 0155e4f0
	Abode* FindAbodeWithSpaceInTown(Villager* villager, float min_score);
	// BW1W120 0073b3d0 BW1M119 0155e3e0
	Field* FindClosesFieldToWithFood(const MapCoords& pos);
	// BW1W120 0073b450 BW1M119 null
	Field* FindClosestFieldNotFull(const MapCoords& pos);
	// BW1W120 0073b4d0 BW1M119 null
	void AddVillagerToList968(Villager* villager);
	// BW1W120 0073b510 BW1M119 null
	void RemoveVillagerFromList968(Villager* villager);
	// BW1W120 0073b570 BW1M119 null
	bool32_t FUN_0073b570(Villager* villager);
	// BW1W120 0073b580 BW1M119 0155e340
	bool32_t IsVillagerInHomelessList(Villager* villager);
	// BW1W120 0073b5b0 BW1M119 01059fb0
	StoragePit* GetStoragePit();
	// BW1W120 0073b5d0 BW1M119 0155e2a0
	void Birthday();
	// BW1W120 0073b5e0 BW1M119 0155e200
	void UseFood(unsigned long amount);
	// BW1W120 0073b620 BW1M119 0155e160
	void UseWood(unsigned long amount);
	// BW1W120 0073b660 BW1M119 null
	PlannedAbode* FindPlannedAbode(int abode_type_mask);
	// BW1W120 0073b6c0 BW1M119 null
	PlannedMultiMapFixed* FindPlannedOfType(OBJECT_TYPE type);
	// BW1W120 0073b6f0 BW1M119 null
	Ball* GetBall();
	// BW1W120 0073b720 BW1M119 0155e080
	Object* FindPlaything(OBJECT_TYPE type);
	// BW1W120 0073b760 BW1M119 null
	PBall* GetPBall();
	// BW1W120 0073b7a0 BW1M119 0155df80
	bool32_t AddPlaythingIfNoneThere(Object* plaything);
	// BW1W120 0073b800 BW1M119 0155de80
	void RemovePlaything(Object* plaything);
	// BW1W120 0073b860 BW1M119 0155ddb0
	BuildingSite* AddBuildingSite(PlannedMultiMapFixed* site);
	// BW1W120 0073b8a0 BW1M119 0155dcd0
	BuildingSite* AddBuildingSiteNoFixedCheck(PlannedMultiMapFixed* site);
	// BW1W120 0073b8e0 BW1M119 0155dc30
	BuildingSite* AddBuildingSite(MultiMapFixed* site);
	// BW1W120 0073b910 BW1M119 0155dae0
	void AddBuildingSite(BuildingSite* site);
	// BW1W120 0073b990 BW1M119 0155d970
	void RemoveBuildingSite(BuildingSite* site);
	// BW1W120 0073ba20 BW1M119 0155d8a0
	uint32_t RemoveBuildingSite(MultiMapFixed* site);
	// BW1W120 0073ba70 BW1M119 0155d7f0
	void SetBeliefInPlayer(GPlayer* player, float value);
	// BW1W120 0073bab0 BW1M119 01064100
	float GetBeliefInPlayer(GPlayer* player);
	// BW1W120 0073bad0 BW1M119 null
	int GetNumPlayersWithBelief();
	// BW1W120 0073bb10 BW1M119 0105e7b0
	int GetBeliefOrderForPlayer(unsigned long player_number);
	// BW1W120 0073bc60 BW1M119 null
	void UpdateAverageGameTurnsToTravelToWorshipSite(unsigned long start_turn);
	// BW1W120 0073bca0 BW1M119 0155d220
	uint32_t SaveObject(LHOSFile& file, const MapCoords& offset);
	// BW1W120 0073c060 BW1M119 0155d120
	void SetWorshipPercentage(float worship_percentage);
	// BW1W120 0073c0f0 BW1M119 0155be90
	void AdjustWorshipersWorshipping(long worshippers_needed, int ignore_low_life, int num_needed);
	// BW1W120 0073c650 BW1M119 0155bd60
	void IncrementWorshipPercentage();
	// BW1W120 0073c710 BW1M119 0155ba50
	void SetToZero();
	// BW1W120 0073c840 BW1M119 0105fcd0
	GTribeInfo* GetTribe() const;
	// BW1W120 0073c860 BW1M119 01094750
	int GetWorshipersNeeded(int include_on_way, int include_requesting_home, int* out_has_enough_worshippers);
	// BW1W120 0073c950 BW1M119 0155b880
	uint32_t GetFoodForWorshipSiteIfEnough();
	// BW1W120 0073c980 BW1M119 01072250
	int GetFoodNeededByWorshipSite();
	// BW1W120 0073c9b0 BW1M119 0155b500
	void UpdateAggressor(const EffectValues& values, float aggressor_value);
	// BW1W120 0073cb30 BW1M119 null
	void fn_0073CB30();
	// BW1W120 0073cb40 BW1M119 null
	void fn_0073CB40(int param_1);
	// BW1W120 0073cb50 BW1M119 0155b360
	void PlayerTakeTownCheat(GPlayer* player, float belief);
	// BW1W120 0073cc60 BW1M119 0155b2f0
	float GetBeliefNeededToConvertTown(GPlayer* player);
	// BW1W120 0073cc80 BW1M119 null
	void SetVillagerBuildingSite(BuildingSite* site, Villager* villager);
	// BW1W120 0073cce0 BW1M119 null
	bool32_t IsBuildingSiteValidForVillager(BuildingSite* site, Villager* villager);
	// BW1W120 0073ccf0 BW1M119 null
	MultiMapFixed* GetBuildingSiteBuilding(BuildingSite* site);
	// BW1W120 0073cd20 BW1M119 0155b1f0
	bool32_t IsInBuildingList(MultiMapFixed* building);
	// BW1W120 0073cd60 BW1M119 null
	bool32_t IsAbodeTypeInBuildingList(ABODE_TYPE abode_type);
	// BW1W120 0073cda0 BW1M119 null
	int GetBuildersNeeded(ABODE_TYPE abode_type);
	// BW1W120 0073cdf0 BW1M119 null
	uint32_t GetMaxVillagersInBuildingSites();
	// BW1W120 0073ce40 BW1M119 0155b140
	BuildingSite* GetBuildingSiteInList(MultiMapFixed* building);
	// BW1W120 0073ce80 BW1M119 null
	float GetDesireForVillagers(ABODE_TYPE abode_type, int* count);
	// BW1W120 0073cef0 BW1M119 null
	bool32_t IsBuilderNeeded(BuildingSite* site);
	// BW1W120 0073cf00 BW1M119 0155b040
	bool32_t IsBuildingSiteValid(BuildingSite* site);
	// BW1W120 0073cf60 BW1M119 01099850
	BuildingSite* GetBestBuildingSite(const MapCoords& pos, int param_2);
	// BW1W120 0073d030 BW1M119 0155ae60
	void SetWorshipSite(WorshipSite* site);
	// BW1W120 0073d080 BW1M119 0155ad60
	void AddPlanned(PlannedMultiMapFixed* planned);
	// BW1W120 0073d0d0 BW1M119 0155abf0
	void RemovePlanned(PlannedMultiMapFixed* planned);
	// BW1W120 0073d150 BW1M119 0155abb0
	void AllVillagersCheckNeedNewAbode();
	// BW1W120 0073d160 BW1M119 null
	Wonder* GetNextWonder(Abode* abode);
	// BW1W120 0073d1c0 BW1M119 0155aad0
	void AddSpellIcon(TownSpellIcon* icon);
	// BW1W120 0073d220 BW1M119 0155a840
	void RemoveSpellIcon(TownSpellIcon* icon);
	// BW1W120 0073d2a0 BW1M119 0155a7a0
	TownSpellIcon* GetSpellIcon(SPELL_SEED_TYPE seed_type);
	// BW1W120 0073d2e0 BW1M119 0155a6f0
	bool32_t IsSpellIconPresent(SPELL_SEED_TYPE seed_type);
	// BW1W120 0073d320 BW1M119 null
	bool32_t IsSpellIconPresent(MAGIC_TYPE magic_type);
	// BW1W120 0073d360 BW1M119 0155a690
	TownSpellIcon* GetNextSpellIcon(TownSpellIcon* icon);
	// BW1W120 0073d380 BW1M119 0155a540
	bool32_t AddMagicTypesHeld(MAGIC_TYPE type);
	// BW1W120 0073d450 BW1M119 0155a400
	void RemoveMagicTypesHeld(MAGIC_TYPE type);
	// BW1W120 0073d500 BW1M119 0155a2e0
	bool32_t StealSpellSeedType(SPELL_SEED_TYPE seed_type, int (*held)[POWER_UP_TYPE_LAST + 1]);
	// BW1W120 0073d5a0 BW1M119 0155a210
	void GiveSpellSeedType(SPELL_SEED_TYPE seed_type, const int (&held)[POWER_UP_TYPE_LAST + 1]);
	// BW1W120 0073d5f0 BW1M119 null
	bool32_t IsSpaceForNewTownCentreSpell();
	// BW1W120 0073d610 BW1M119 null
	void ClearMagicTypesHeld();
	// BW1W120 0073d630 BW1M119 0155a1b0
	bool32_t IsMagicTypeHeld(MAGIC_TYPE type);
	// BW1W120 0073d650 BW1M119 0155a0b0
	void SetTotem(Totem* totem);
	// BW1W120 0073d690 BW1M119 01559fc0
	void SetGraveyard(Graveyard* graveyard);
	// BW1W120 0073d6b0 BW1M119 01559f20
	uint32_t IsAbodeTypeInTown(ABODE_TYPE abode_type);
	// BW1W120 0073d780 BW1M119 null
	Dance* GetPlaytimeDance(PLAYTIME_INFO type);
	// BW1W120 0073d7b0 BW1M119 null
	bool32_t AddPlaytimeVillager(Villager* villager);
	// BW1W120 0073d7d0 BW1M119 01559b80
	PlaytimeElement* GetPlaytime(PLAYTIME_INFO type);
	// BW1W120 0073d800 BW1M119 inlined
	void CreateTownDesireFlags();
	// BW1W120 0073d850 BW1M119 null
	void ProcessDesireFlags();
	// BW1W120 0073d8a0 BW1M119 null
	void DrawDesireFlags();
	// BW1W120 0073d8d0 BW1M119 015599d0
	bool32_t TryToCreateNewBuildingAt(PlannedAbode** planned, const MapCoords& pos, unsigned long num_scaffolds,
	                                  TRIBE_TYPE tribe_type, Object* ignore_object, long abode_number,
	                                  int skip_suitability_check);
	// BW1W120 0073d980 BW1M119 015597c0
	float GetNewPlannedBuilding(PlannedAbode** planned, const MapCoords& pos, float& y_angle, float default_scale,
	                            unsigned long num_scaffolds, Object* ignore_object, TRIBE_TYPE tribe_type,
	                            long abode_number, int skip_suitability_check);
	// BW1W120 0073daf0 BW1M119 015594d0
	float GetWonderPower(const MapCoords& pos);
	// BW1W120 0073dc40 BW1M119 null
	float GetWonderScale(const MapCoords& pos);
	// BW1W120 0073dc80 BW1M119 null
	Field* FindBestFieldNearPos(const MapCoords& pos, float max_distance);
	// BW1W120 0073dd50 BW1M119 01559300
	MapCoords GetTownNeedsPos(unsigned long index);
	// BW1W120 0073de30 BW1M119 015591d0
	Flock* GetFlock(LIVING_TYPE living_type, int include_shepherded);
	// BW1W120 0073dec0 BW1M119 0105f160
	void ProcessPlayerInteract();
	// BW1W120 0073e0a0 BW1M119 01558fb0
	void UpdateDamageDoneToVillager(GPlayer* player, DEATH_REASON reason, float damage);
	// BW1W120 0073e1d0 BW1M119 01558dd0
	TotemStatue* GetTotemStatue();
	// BW1W120 0073e1f0 BW1M119 01558d90
	void UpdateInfluence(float value);
	// BW1W120 0073e210 BW1M119 01558b80
	void RemoveVillager(Villager* villager);
	// BW1W120 0073e2f0 BW1M119 0109efe0
	bool32_t IsBuildingHappening();
	// BW1W120 0073e300 BW1M119 015589d0
	void AddVillagerOnWayToWorshipSite(Villager* villager);
	// BW1W120 0073e360 BW1M119 01558870
	void RemoveVillagerOnWayToWorshipSite(Villager* villager);
	// BW1W120 0073e3e0 BW1M119 01558820
	void AddVillagerToWorshipCount();
	// BW1W120 0073e3f0 BW1M119 015587d0
	void RemoveVillagerFromWorshipCount();
	// BW1W120 0073e400 BW1M119 01062fb0
	float GetDesire(TOWN_DESIRE_INFO desire_type);
	// BW1W120 0073e420 BW1M119 01057ad0
	float GetRawDesire(TOWN_DESIRE_INFO desire_type);
	// BW1W120 0073e440 BW1M119 01558640
	void VillagerDead(Villager* villager, DEATH_REASON reason, GPlayer* player, float param_4);
	// BW1W120 0073e4b0 BW1M119 01070000
	float GetBeliefInNeutralPlayer();
	// BW1W120 0073e4c0 BW1M119 01558470
	PlannedMultiMapFixed* GetPlannedAtPos(const MapCoords& pos, float radius, int param_3);
	// BW1W120 0073e560 BW1M119 01558380
	static bool32_t ForceBuildingOfPlannedAtPos(const MapCoords& pos, float desire);
	// BW1W120 0073e5e0 BW1M119 01069430
	float GetTribalPower(TRIBE_TYPE tribe_type);
	// BW1W120 0073e600 BW1M119 01558220
	Villager* FindVillager(int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                       SCRIPT_OBJECT_TYPE type, uint32_t param_3);
	// BW1W120 0073e670 BW1M119 01558130
	float GetTownAndVillagerHealthTotal();
	// BW1W120 0073e6e0 BW1M119 01558030
	Animal* FindAnimal(int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t), SCRIPT_OBJECT_TYPE type,
	                   uint32_t param_3);
	// BW1W120 0073e720 BW1M119 null
	Living* FindLiving(int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t), SCRIPT_OBJECT_TYPE type,
	                   uint32_t param_3);
	// BW1W120 0073e750 BW1M119 01557f20
	FishFarm* FindBestFishFarm(Villager* villager, float* score);
	// BW1W120 0073e7f0 BW1M119 01557e40
	Flock* FindBestFlock(Villager* villager, float* score);
	// BW1W120 0073e870 BW1M119 01557d40
	Field* FindBestField(Villager* villager, float* score);
	// BW1W120 0073e900 BW1M119 01557af0
	void* GetTemporaryResourceStorePotOrPos(const MapCoords& pos, MapCoords& out_pos, RESOURCE_TYPE type);
	// BW1W120 0073ea60 BW1M119 01557a00
	void SetStoragePit(StoragePit* storage_pit);
	// BW1W120 0073eb00 BW1M119 01557690
	void AssignForestsToTown();
	// BW1W120 0073ec10 BW1M119 015574e0
	Forest* FindNearestForestToPos(const MapCoords& pos);
	// BW1W120 0073fbc0 BW1M119 01073dc0
	float CalculateInfluencePower();
	// BW1W120 0073fce0 BW1M119 null
	Abode* GetNextDamagedAbode(Object* object);
	// BW1W120 0073fd40 BW1M119 01069c00
	float GetBaseInfluence();
	// BW1W120 0073fda0 BW1M119 01553c50
	TownArtifact* AddArtifact(Fixed* artifact, GPlayer* player);
	// BW1W120 0073fe60 BW1M119 015539e0
	TownArtifact* RemoveArtifact(Fixed* artifact);
	// BW1W120 0073fec0 BW1M119 01553970
	TownArtifact* FindArtifact(Fixed* artifact);
	// Not in BW1M119 and never called in BW1W120.
	// BW1W120 0073fee0 BW1M119 null
	bool32_t IsArtifactInTown(Fixed* artifact);
	// BW1W120 0073ffd0 BW1M119 01553750
	bool IsSpaceForNewVillager();
	// BW1W120 00740030 BW1M119 015535d0
	float GetGameTurnResourceLastRemovedModifier(unsigned long param_1, RESOURCE_TYPE type);
	// BW1W120 007400d0 BW1M119 01553540
	void SetGameTurnResourceLastRemoved(unsigned long param_1, RESOURCE_TYPE type);
	// BW1W120 00740100 BW1M119 null
	Abode* GetRandomAbode();
	// BW1W120 00740140 BW1M119 null
	Villager* GetRandomHomelessVillager();
	// BW1W120 00740180 BW1M119 015533f0
	void AddWorkshop(Workshop* workshop);
	// BW1W120 007401d0 BW1M119 01553100
	void RemoveWorkshop(Workshop* workshop);
	// BW1W120 00740250 BW1M119 01552ff0
	Workshop* GetBestWorkshop(MapCoords& pos, int param_2, int param_3);
	// BW1W120 00740300 BW1M119 01552f40
	bool32_t IsScaffoldAwayFromWorkshops(Scaffold* scaffold);
	// BW1W120 00740340 BW1M119 01552e90
	bool32_t CheckScaffoldSnapToPoint(Scaffold* scaffold);
	// BW1W120 00740380 BW1M119 null
	int GetNumVillagersInGroup(unsigned long group);
	// BW1W120 00740430 BW1M119 null
	void OnCreatedOrLoaded();
	// fabricated name: empty and never called in BW1W120; not in BW1M119.
	// BW1W120 00740440 BW1M119 null
	void FUN_00740440();
	// BW1W120 00740450 BW1M119 015524d0
	float GetPosWhereVillagersAre(const MapCoords& from, MapCoords& pos);
	// BW1W120 007408b0 BW1M119 01007f30
	MapCoords GetCongregationPos();
	// BW1W120 00740b40 BW1M119 015520c0
	Abode* FindAbodeNumber(ABODE_NUMBER number, float percent_built, int param_3);
	// BW1W120 00740bb0 BW1M119 01552040
	bool32_t IsAllowedToCreateWorshipSite();
	// BW1W120 00740bf0 BW1M119 01551f20
	void CheckAddWorshipSite();
	// BW1W120 00740c50 BW1M119 01551d80
	MultiMapFixed* GetBestAttackObject(const MapCoords& pos);
	// BW1W120 00740d60 BW1M119 01551d40
	int GetDeathsFromWorshipping();
	// BW1W120 00740d70 BW1M119 null
	int GetDeaths(DEATH_REASON reason);
	// BW1W120 00740d90 BW1M119 01551c30
	void GiveTownAllOtherTownsSpells(Town* other);
	// BW1W120 00740e10 BW1M119 01551b20
	bool32_t IsCompletelyDestroyed();
	// BW1W120 00740e80 BW1M119 01551a60
	GameThing* GetTownBeliefAttackDefendObject();
	// BW1W120 00740ea0 BW1M119 015519a0
	float GetBeliefNeededOrLeft(GPlayer* player);
	// BW1W120 00740ed0 BW1M119 01551890
	float GetDesireToBeTakenOver(GPlayer* player);
	// BW1W120 00740f80 BW1M119 01551790
	GameThing* GetStoragePitObjectForComputerPlayer(RESOURCE_TYPE type);
	// BW1W120 00740fd0 BW1M119 01551560
	void AddMissionary(Villager* villager, GPlayer* player);
	// BW1W120 00741020 BW1M119 01096160
	bool32_t IsBuildingTownCentre();
	// BW1W120 00741080 BW1M119 01551300
	void SetTownEmpty();
	// BW1W120 007410f0 BW1M119 01551220
	float GetModifierForArtifacts();
	// BW1W120 00741160 BW1M119 015510c0
	void GiveBeliefForArtifactIfNecessary(TownArtifact* artifact);
	// BW1W120 00741220 BW1M119 01550fb0
	float GetAlignmentForMakingDisciple(Villager* villager);
	// BW1W120 007412a0 BW1M119 01550eb0
	StoragePit* GetStoragePitEvenIfPlanned();
	// BW1W120 00741500 BW1M119 01550c90
	void CheckWhenNewBuildingCreated(MultiMapFixed& building);
	// BW1W120 00741540 BW1M119 01550840
	void ShuffleVillagersAroundAbodes();
	// BW1W120 00741820 BW1M119 015506e0
	float GetDesireToGiveWorshippers();
	// BW1W120 00741920 BW1M119 015505f0
	float GetBeliefAttackImportanceMultiplier(GPlayer* player);
	// BW1W120 00741980 BW1M119 01550450
	bool32_t GetHighestTownEffectMagicAndPhysical(float& highest, float& magic, float& physical);
	// BW1W120 00741a70 BW1M119 01550310
	void RemoveForest(Forest* forest);
	// BW1W120 00741af0 BW1M119 015501a0
	void AddForest(Forest* forest);
	// BW1W120 00741b40 BW1M119 0154ff00
	void MakeScenicForest();
	// BW1W120 00741cf0 BW1M119 null
	void DeleteTownContents();
	// BW1W120 00741ee0 BW1M119 0154fba0
	Object* GetResourceDropObject(RESOURCE_TYPE type);
	// BW1W120 00741f30 BW1M119 0154f6e0
	void SaveTown(LHOSFile& file, const MapCoords& offset);

	// Defined in other translation units

	// BW1W120 007436f0 BW1M119 01562d50
	void GetTownAttitudeToCreature(Creature* creature);
	// BW1W120 00743720 BW1M119 01562b70
	void CreateCreatureInfo(Creature* creature);
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
	// BW1W120 00747a40 BW1M119 01569350
	int CalculateFoodSpareForWorship();
	// BW1W120 00747ea0 BW1M119 01568b10
	bool32_t GetBestRepairBuildingSite();
	// BW1W120 007635d0 BW1M119 010158b0
	static void DisplayHowImpressed();
	// BW1W120 007489c0 BW1M119 0102c470
	void Draw();
};

#endif /* BW1_DECOMP_TOWN_INCLUDED_H */
