#ifndef BW1_DECOMP_BUILDING_SITE_INCLUDED_H
#define BW1_DECOMP_BUILDING_SITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h>                          /* For enum RESOURCE_TYPE */
#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>   /* For struct LHLinkedList */
#include <re_common.h>                            /* For bool32_t */

#include "GameThing.h" /* For struct GameThing, struct GameThingVftable */
#include "Villager.h"  /* For struct Villager */

// Forward Declares

class Base;
class GInterfaceStatus;
class GameOSFile;
struct MapCoords;
class MultiMapFixed;
class Object;
class PlannedMultiMapFixed;
class Pot;
class PotStructure;
class Town;

class BuildingSite : public GameThing
{
public:
	MultiMapFixed*          RootBuilding; /* 0x14 */
	LHLinkedList<Villager*> BuildingWorkerList;
	uint32_t                field_0x20;
	uint32_t                field_0x24;
	uint8_t                 field_0x28[0xc];
	LHPoint                 BuildingPositions[0x7f]; /* 0x34 */
	uint8_t                 field_0x628[0x14];
	uint8_t                 field_0x63c[0x4];
	float                   life; /* 0x640 */

	// Override methods

	// BW1W120 0043b7b0 BW1M119 010c02d0
	virtual ~BuildingSite();
	// BW1W120 0043b960 BW1M119 010bfc60
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0043c0b0 BW1M119 010bed40
	virtual Town* GetTown();
	// BW1W120 0043d050 BW1M119 010bc9c0
	virtual float GetRadius();
	// BW1W120 0043c5b0 BW1M119 010be200
	virtual uint32_t GetResource(RESOURCE_TYPE param_1);
	// BW1W120 0043c490 BW1M119 010be430
	virtual uint32_t AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4,
	                             const MapCoords* param_5, int param_6);
	// BW1W120 0043c530 BW1M119 010be2c0
	virtual uint32_t RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
	// BW1W120 0043cad0 BW1M119 010bcfe0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0043c830 BW1M119 010bd820
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0043b7a0 BW1M119 010c1920
	virtual uint32_t GetSaveType();
	// BW1W120 0043b950 BW1M119 010c02a0
	virtual void Init();

	// Constructors

	// BW1W120 0043b700 BW1M119 010c0860
	BuildingSite(PlannedMultiMapFixed* param_1);
	// BW1W120 0043b7e0 BW1M119 010c0450
	BuildingSite(MultiMapFixed* param_1);

	// Non-virtual methods

	// BW1W120 0043bc70 BW1M119 010624b0
	MultiMapFixed* GetBuilding();
	// BW1W120 0043bca0 BW1M119 0106f270
	MultiMapFixed* GetRootBuilding();
	// BW1W120 0043bde0 BW1M119 010bf360
	float GetClearAreaRadius();
	// BW1W120 0043be00 BW1M119 010bf2b0
	float GetDesireToBeRepaired();
	// BW1W120 0043c0c0 BW1M119 010beba0
	float GetWoodValue();
	// BW1W120 0043c5f0 BW1M119 010be060
	float GetWoodNeededToBuild();
	// BW1W120 0043c680 BW1M119 010bdd70
	bool32_t ShouldIGetWood(Villager* param_1);
	// BW1W120 0043d080 BW1M119 010bc950
	void BuildBy(float amount);
};

#endif /* BW1_DECOMP_BUILDING_SITE_INCLUDED_H */
