#ifndef BW1_DECOMP_CITADEL_BUILDING_SITE_INCLUDED_H
#define BW1_DECOMP_CITADEL_BUILDING_SITE_INCLUDED_H

#include <assert.h>
#include <stdint.h>

#include <chlasm/Enum.h>

#include "BuildingSite.h"

#define CITADEL_WOOD_PILE_COUNT        6
#define CITADEL_WOOD_PILE_ANGLE_OFFSET (TWO_PI / 5.5f)
#define CITADEL_WOOD_PILE_DISTANCE     22.0f

class Base;
class GInterfaceStatus;
class GameOSFile;
class GameThing;
class MultiMapFixed;
class PlannedMultiMapFixed;
struct MapCoords;
class Pot;
class PotStructure;

class CitadelBuildingSite : public BuildingSite
{
public:
	Pot* WoodPiles[CITADEL_WOOD_PILE_COUNT];

	// BW1W120 0043d180 BW1M119 010bc470
	virtual void SetPileWood(Pot* pot) {}
	// BW1W120 0043d190 BW1M119 010c1840
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_CITADEL_BUILDING_SITE; }
	// BW1W120 0043d1a0 BW1M119 010c1880
	virtual char* GetDebugText() { return "CitadelBuildingSite:"; }
	// BW1W120 0043d1b0 BW1M119 010c17b0
	virtual ~CitadelBuildingSite() {}
	// BW1W120 0043d220 BW1M119 010bc340
	virtual void ToBeDeleted(bool32_t delete_now);
	// BW1W120 0043d320 BW1M119 010bc100
	virtual uint32_t GetResource(RESOURCE_TYPE type);
	// BW1W120 0043d360 BW1M119 010bbf90
	virtual uint32_t AddResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool poisoned,
	                             const MapCoords* coords, int from_other_player);
	// BW1W120 0043d3f0 BW1M119 010bbe70
	virtual uint32_t RemoveResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool* poisoned);
	// BW1W120 0043d620 BW1M119 010bb890
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 0043d5e0 BW1M119 010bb930
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 0043d660 BW1M119 010bb7e0
	virtual void Process();
	// BW1W120 0043d500 BW1M119 010bbb40
	virtual Pot* GetPileWood(const MapCoords& coords);
	// BW1W120 0043d460 BW1M119 010bbe30
	virtual void CreatePileWood();
	// BW1W120 0043d470 BW1M119 010bbc50
	virtual MapCoords GetResourcePosAndYAngle(RESOURCE_TYPE type, unsigned long index, float* y_angle);
	// BW1W120 0043d5b0 BW1M119 010bb9d0
	virtual void RemovePotFromStructure(PotStructure* structure);
	// BW1W120 0043d580 BW1M119 010bba60
	virtual bool32_t IsLinkedToThisBuildingSite(Pot* pot);

	// BW1W120 0043d120 BW1M119 010bc600
	CitadelBuildingSite();

	// BW1W120 0043d1e0 BW1M119 010bc580
	CitadelBuildingSite(MultiMapFixed* site);
	// BW1W120 0043d200 BW1M119 010bc4f0
	CitadelBuildingSite(PlannedMultiMapFixed* site);

	// BW1W120 0043d2a0 BW1M119 010bc1e0
	void CreatePilesOfWood();
};

#endif /* BW1_DECOMP_CITADEL_BUILDING_SITE_INCLUDED_H */
