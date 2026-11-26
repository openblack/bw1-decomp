#ifndef BW1_DECOMP_BUILDING_SITE_INCLUDED_H
#define BW1_DECOMP_BUILDING_SITE_INCLUDED_H

#include <assert.h>
#include <stdint.h>

#include <chlasm/Enum.h>
#include <LHPoint.h>
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>
#include <re_common.h>

#include "GameThing.h"
#include "LHPTR.h"
#include "Villager.h"

#define POS_BUILDER_POSITION_COUNT  128
#define POS_BUILDER_MAX_EDGE_HEIGHT 2.5f
#define POS_BUILDER_EDGE_MARGIN     1.0f

#define BUILDING_SITE_MAX_ANGLE          (3 * TWO_PI)
#define BUILDING_SITE_LIFE_SCALE         1.1f
#define BUILDING_SITE_LIFE_OFFSET        0.1f
#define BUILDING_SITE_EJECT_MARGIN       2.0f
#define BUILDING_SITE_CLEAR_AREA_SCALE   1.2f
#define BUILDING_SITE_WOOD_DROP_SCALE    1.25
#define BUILDING_SITE_WORSHIP_WOOD_X     9.0f
#define BUILDING_SITE_WORSHIP_WOOD_Z     -50.0f
#define BUILDING_SITE_WOOD_DOOR_MARGIN   4.0f
#define BUILDING_SITE_WOOD_NEAR_DISTANCE 50.0f
#define BUILDING_SITE_WOOD_MAX_DISTANCE  5000.0f
#define BUILDING_SITE_BUILDER_SPACING    2.0f

class Base;
class GInterfaceStatus;
class GameOSFile;
class LH3DObject;
struct MapCoords;
class MultiMapFixed;
class Object;
class PlannedMultiMapFixed;
class Pot;
class PotStructure;
class Scaffold;
class Town;

class PosBuilder
{
public:
	LHPoint Positions[POS_BUILDER_POSITION_COUNT];

#ifdef VERSION_BW1W100
	void Process(LH3DObject* object);
#else
	// BW1W120 0043ae10 BW1M119 010c0d80
	void Process(LH3DObject* object, bool32_t circular);
#endif
	// BW1W120 0043b630 BW1M119 010c0a20
	static bool32_t __fastcall TestIntersection(LHPoint* start, LHPoint* end, LHPoint* direction, LHPoint* edge_start,
	                                            LHPoint* edge_end, LHPoint* intersection);
	// BW1W120 0043b5a0 BW1M119 010c0bc0
	static bool32_t __fastcall IsInside(LHPoint* start, LHPoint* end, LHPoint* point);
	// BW1W120 0043b4f0 BW1M119 010c0ca0
	static bool32_t __fastcall GetIntersection(LHPoint* origin, LHPoint* direction, LHPoint* line_point,
	                                           LHPoint* line_normal, LHPoint* intersection);
};

class BuildingSite : public GameThing
{
public:
	LHPTR<MultiMapFixed>    RootBuilding;
	LHLinkedList<Villager*> BuildingWorkerList;
	LHLinkedList<Scaffold*> ScaffoldList;
	LHLinkedList<Villager*> ScaffoldCarrierList;
	uint32_t                ScaffoldCarrierCount;
	PosBuilder              BuilderPositions;
	uint32_t                BuildingWorkerCount;
	bool32_t                WasConstructed;
	float                   ForcedDesire;
	float                   life;

	// BW1W120 0043b7b0 BW1M119 010c02d0
	virtual ~BuildingSite();
	// BW1W120 0043b960 BW1M119 010bfc60
	virtual void ToBeDeleted(bool32_t delete_now);
	// BW1W120 0043c0b0 BW1M119 010bed40
	virtual Town* GetTown();
	// BW1W120 0043d050 BW1M119 010bc9c0
	virtual float GetRadius();
	// BW1W120 0043c5b0 BW1M119 010be200
	virtual uint32_t GetResource(RESOURCE_TYPE type);
	// BW1W120 0043c490 BW1M119 010be430
	virtual uint32_t AddResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool poisoned,
	                             const MapCoords* coords, int from_other_player);
	// BW1W120 0043c530 BW1M119 010be2c0
	virtual uint32_t RemoveResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool* poisoned);
	// BW1W120 0043cad0 BW1M119 010bcfe0
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 0043c830 BW1M119 010bd820
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 0043b950 BW1M119 010c02a0
	virtual void Init();

	// BW1W120 purecall BW1M119 purecall
	virtual void Process() = 0;
	// BW1W120 0043c5e0 BW1M119 010be190
	virtual uint32_t GetWoodForStats();
	// BW1W120 purecall BW1M119 purecall
	virtual Pot* GetPileWood(const MapCoords& coords) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void SetPileWood(Pot* pot) = 0;
	// BW1W120 0043b780 BW1M119 010be5c0
	virtual void CreatePileWood();
	// BW1W120 0043c220 BW1M119 010be600
	virtual MapCoords GetResourcePosAndYAngle(RESOURCE_TYPE type, unsigned long index, float* y_angle);
	// BW1W120 0043b790 BW1M119 010c18d0
	virtual void RemovePotFromStructure(PotStructure* structure);
	// BW1W120 0043d0a0 BW1M119 010bc900
	virtual bool32_t IsLinkedToThisBuildingSite(Pot* pot);
	// BW1W120 0043ce40 BW1M119 010bcc70
	virtual MapCoords GetNearestEdge(float angle, float extra_radius, long* edge_index);
	// BW1W120 0043cf40 BW1M119 010bca50
	virtual MapCoords GetNextPosFromIndex(long* index);
	// BW1W120 0043cde0 BW1M119 010bce50
	virtual MapCoords GetRandomBuildPos(Object* object, long* index);

	// BW1W120 0043b7a0 BW1M119 010c1920
	virtual uint32_t GetSaveType();

	// BW1W120 inlined BW1M119 inlined
	BuildingSite();
	// BW1W120 0043b700 BW1M119 010c0860
	BuildingSite(PlannedMultiMapFixed* planned);
	// BW1W120 0043b7e0 BW1M119 010c0450
	BuildingSite(MultiMapFixed* building);

	// BW1W120 inlined BW1M119 010bab90
	void SetToZero();
	// BW1W120 0043bbb0 BW1M119 0106f1b0
	bool32_t IsBuilt();
	// BW1W120 0043bbc0 BW1M119 0106f210
	bool32_t IsRepaired();
	// BW1W120 0043cdb0 BW1M119 010bcf30
	void ComputePosForBuilders();
	// BW1W120 0043bef0 BW1M119 010bef40
	void AddScaffold(Scaffold* scaffold);
	// BW1W120 0043bc00 BW1M119 0106efd0
	int GetBuildersNeeded();
	// BW1W120 0043bc70 BW1M119 010624b0
	MultiMapFixed* GetBuilding();
	// BW1W120 0043bca0 BW1M119 0106f270
	MultiMapFixed* GetRootBuilding();
	// BW1W120 0043bd70 BW1M119 0106f0b0
	float GetDesireForVillagers();
	// BW1W120 0043bde0 BW1M119 010bf360
	float GetClearAreaRadius();
	// BW1W120 0043be00 BW1M119 010bf2b0
	float GetDesireToBeRepaired();
	// BW1W120 0043c0c0 BW1M119 010beba0
	float GetWoodValue();
	// BW1W120 0043c5f0 BW1M119 010be060
	float GetWoodNeededToBuild();
	// BW1W120 0043c680 BW1M119 010bdd70
	bool32_t ShouldIGetWood(Villager* villager);
	// BW1W120 0043bc60 BW1M119 01099990
	bool32_t IsBuilderNeeded();
	// BW1W120 0043d080 BW1M119 010bc950
	void BuildBy(float amount);
	// BW1W120 0043d0b0 BW1M119 010bc770
	void RemoveAllVillagersFromTown(Town* town);
	// BW1W120 0043bf20 BW1M119 010bee40
	void RemoveScaffold(Scaffold* scaffold);
	// BW1W120 0043bf70 BW1M119 null
	void ScaffoldChanged(Scaffold* scaffold);
	// BW1W120 0043bf80 BW1M119 null
	uint32_t GetScaffoldsNeeded();
	// BW1W120 0043bfb0 BW1M119 null
	void AddScaffoldCarrier(Villager* carrier, Scaffold* scaffold);
	// BW1W120 0043c010 BW1M119 null
	void RemoveScaffoldCarrier(Villager* carrier, Scaffold* scaffold);
	// BW1W120 0043c070 BW1M119 null
	void CarrierPlacedScaffold(Villager* carrier, Scaffold* scaffold);
	// BW1W120 0043c090 BW1M119 null
	bool HasAllScaffolds();
	// BW1W120 0043c0a0 BW1M119 null
	bool32_t IsScaffoldNeeded();
	// BW1W120 0043bcb0 BW1M119 010bf5c0
	float GetPercentBuilt();
	// BW1W120 0043bbd0 BW1M119 01062550
	int GetMaxVillagersNeededToBuild();
	// BW1W120 0043be40 BW1M119 010bf1a0
	void AddToBuildingWorkers(Villager* villager);
	// BW1W120 0043be90 BW1M119 010bf080
	void RemoveFromBuildingWorkers(Villager* villager);
	// BW1W120 0043bd00 BW1M119 01067b00
	static void CheckBuildingSites(LHLinkedList<BuildingSite*>& sites);
	// BW1W120 0043d100 BW1M119 010bc6c0
	MapCoords GetResourceDropPosForComputerPlayer(RESOURCE_TYPE type);
	// BW1W120 0043c120 BW1M119 010be9d0
	bool32_t GetPosForWoodDropOffNotIfOneThere(MapCoords& coords);
};

static_assert(sizeof(BuildingSite) == 0x644, "Data type is of wrong size");

#endif /* BW1_DECOMP_BUILDING_SITE_INCLUDED_H */
