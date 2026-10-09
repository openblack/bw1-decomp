#ifndef BW1_DECOMP_WORKSHOP_BUILDING_SITE_INCLUDED_H
#define BW1_DECOMP_WORKSHOP_BUILDING_SITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */

#include "BuildingSite.h" /* For struct BuildingSite */

// Forward Declares

class Base;
class GInterfaceStatus;
class GameThing;
class Pot;
class PotStructure;
struct MapCoords;

class WorkshopBuildingSite : public BuildingSite
{
public:
	// Override methods

	// BW1W120 0043d970 BW1M119 010baa40
	virtual ~WorkshopBuildingSite();
	// BW1W120 0043db20 BW1M119 010ba4c0
	virtual uint32_t AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4,
	                             const MapCoords* param_5, int param_6);
	// BW1W120 0043db60 BW1M119 010ba340
	virtual uint32_t RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
	// BW1W120 0043d950 BW1M119 010ba220
	virtual uint32_t GetSaveType();
	// BW1W120 0043d960 BW1M119 010ba260
	virtual char* GetDebugText();
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
	virtual void GetResourcePosAndYAngle(uint32_t param_1, uint32_t param_2, float* param_3);
	// BW1W120 0043da70 BW1M119 010ba760
	virtual void RemovePotFromStructure(PotStructure* structure);

	// BW1W120 0043d900 BW1M119 010baae0
	WorkshopBuildingSite();
};

#endif /* BW1_DECOMP_WORKSHOP_BUILDING_SITE_INCLUDED_H */
