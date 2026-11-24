#ifndef BW1_DECOMP_WORKSHOP_BUILDING_SITE_INCLUDED_H
#define BW1_DECOMP_WORKSHOP_BUILDING_SITE_INCLUDED_H

#include <assert.h>
#include <stdint.h>

#include <chlasm/Enum.h>

#include "BuildingSite.h"

class Base;
class GInterfaceStatus;
class GameThing;
class Pot;
class PotStructure;
struct MapCoords;

class WorkshopBuildingSite : public BuildingSite
{
public:
	// BW1W120 0043d950 BW1M119 010ba220
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_WORKSHOP_BUILDING_SITE; }
	// BW1W120 0043d960 BW1M119 010ba260
	virtual char* GetDebugText() { return "WorkshopBuildingSite:"; }
	// BW1W120 0043d970 BW1M119 010baa40
	virtual ~WorkshopBuildingSite();
	// BW1W120 0043db20 BW1M119 010ba4c0
	virtual uint32_t AddResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool poisoned,
	                             const MapCoords* coords, int from_other_player);
	// BW1W120 0043db60 BW1M119 010ba340
	virtual uint32_t RemoveResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool* poisoned);
	// BW1W120 0043dba0 BW1M119 010ba2b0
	virtual void Process();
	// BW1W120 0043db90 BW1M119 010ba2f0
	virtual uint32_t GetWoodForStats();
	// BW1W120 0043d9b0 BW1M119 010ba980
	virtual Pot* GetPileWood(const MapCoords& coords);
	// BW1W120 0043d9e0 BW1M119 010ba940
	virtual void SetPileWood(Pot* pot);
	// BW1W120 0043d9f0 BW1M119 010ba7c0
	virtual void CreatePileWood();
	// BW1W120 0043da80 BW1M119 010ba5c0
	virtual MapCoords GetResourcePosAndYAngle(RESOURCE_TYPE type, unsigned long index, float* y_angle);
	// BW1W120 0043da70 BW1M119 010ba760
	virtual void RemovePotFromStructure(PotStructure* structure);

	// BW1W120 0043d900 BW1M119 010baae0
	WorkshopBuildingSite();
};

#endif /* BW1_DECOMP_WORKSHOP_BUILDING_SITE_INCLUDED_H */
