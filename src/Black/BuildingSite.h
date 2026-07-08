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
	MultiMapFixed*         root_building; /* 0x14 */
	LHLinkedList<Villager> building_worker_list;
	uint8_t                field_0x20[0x14];
	LHPoint                building_positions[0x7f]; /* 0x34 */
	uint8_t                field_0x628[0x14];
	uint8_t                field_0x63c[0x4];
	float                  life; /* 0x640 */

	// Override methods

	// BW1W120 0043b7b0 BW1M100 100bcd40 BuildingSite::_dt(void)
	virtual ~BuildingSite();
	// BW1W120 0043b960 BW1M100 100bc6d0 BuildingSite::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0043c0b0 BW1M100 100bb940 BuildingSite::GetTown(void)
	virtual Town* GetTown();
	// BW1W120 0043d050 BW1M100 100b96d0 BuildingSite::GetRadius(void)
	virtual float GetRadius();
	// BW1W120 0043c5b0 BW1M100 100bae60 BuildingSite::GetResource(RESOURCE_TYPE)
	virtual uint32_t GetResource(RESOURCE_TYPE param_1);
	// BW1W120 0043c490 BW1M100 100bb090 BuildingSite::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
	virtual uint32_t AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4,
	                             const MapCoords* param_5, int param_6);
	// BW1W120 0043c530 BW1M100 100baf20 BuildingSite::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
	virtual uint32_t RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
	// BW1W120 0043cad0 BW1M100 100b9cf0 BuildingSite::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0043c830 BW1M100 100ba480 BuildingSite::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0043b7a0 BW1M100 100be420 BuildingSite::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 0043b950 BW1M100 100bcd10 BuildingSite::Init(void)
	virtual void Init();

	// Constructors

	// BW1W120 0043b700 BW1M100 100bd350 BuildingSite::BuildingSite(PlannedMultiMapFixed *)
	BuildingSite(PlannedMultiMapFixed* param_1);
	// BW1W120 0043b7e0 BW1M100 100bcec0 BuildingSite::BuildingSite(MultiMapFixed *)
	BuildingSite(MultiMapFixed* param_1);

	// Non-virtual methods

	// BW1W120 0043bc70 BW1M100 1005fd40 BuildingSite::GetBuilding(void)
	MultiMapFixed* GetBuilding();
	// BW1W120 0043bca0 BW1M100 1006caf0 BuildingSite::GetRootBuilding(void)
	MultiMapFixed* GetRootBuilding();
	// BW1W120 0043bde0 BW1M100 100bbf60 BuildingSite::GetClearAreaRadius(void)
	float GetClearAreaRadius();
	// BW1W120 0043be00 BW1M100 100bbeb0 BuildingSite::GetDesireToBeRepaired(void)
	float GetDesireToBeRepaired();
	// BW1W120 0043c0c0 BW1M100 100bb810 BuildingSite::GetWoodValue(void)
	float GetWoodValue();
	// BW1W120 0043c5f0 BW1M100 0043c5f0 BuildingSite::GetWoodNeededToBuild(void)
	float GetWoodNeededToBuild();
	// BW1W120 0043c680 BW1M100 100ba9d0 BuildingSite::ShouldIGetWood(Villager *)
	bool32_t ShouldIGetWood(Villager* param_1);
	// BW1W120 0043d080 BW1M100 100b9660 BuildingSite::BuildBy(float)
	void BuildBy(float amount);
};

#endif /* BW1_DECOMP_BUILDING_SITE_INCLUDED_H */
