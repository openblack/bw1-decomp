#ifndef BW1_DECOMP_CITADEL_BUILDING_SITE_INCLUDED_H
#define BW1_DECOMP_CITADEL_BUILDING_SITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */

#include "BuildingSite.h" /* For struct BuildingSite */

// Forward Declares

class Base;
class GInterfaceStatus;
class GameOSFile;
class GameThing;
struct MapCoords;
class Pot;
class PotStructure;

class CitadelBuildingSite : public BuildingSite
{
public:
	// Override methods

	// BW1W120 0043d1b0 BW1M119 010c17b0
	virtual ~CitadelBuildingSite();
	// BW1W120 0043d220 BW1M119 010bc340
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0043d320 BW1M119 010bc100
	virtual uint32_t GetResource(RESOURCE_TYPE param_1);
	// BW1W120 0043d360 BW1M119 010bbf90
	virtual uint32_t AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4,
	                             const MapCoords* param_5, int param_6);
	// BW1W120 0043d3f0 BW1M119 010bbe70
	virtual uint32_t RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
	// BW1W120 0043d1a0 BW1M119 010c1880
	virtual char* GetDebugText();
	// BW1W120 0043d620 BW1M119 010bb890
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0043d5e0 BW1M119 010bb930
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0043d190 BW1M119 010c1840
	virtual uint32_t GetSaveType();
	// BW1W120 0043d660 BW1M119 010bb7e0
	virtual void Process();
	// BW1W120 0043d500 BW1M119 010bbb40
	virtual Pot* GetPileWood(const MapCoords& param_1);
	// BW1W120 0043d180 BW1M119 010bc470
	virtual void SetPileWood(Pot* param_1);
	// BW1W120 0043d460 BW1M119 010bbe30
	virtual void CreatePileWood();
	// BW1W120 0043d470 BW1M119 inlined
	virtual void GetResourcePosAndYAngle(uint32_t param_1, uint32_t param_2, float* param_3);
	// BW1W120 0043d5b0 BW1M119 010bb9d0
	virtual void RemovePotFromStructure(PotStructure* param_1);
	// BW1W120 0043d580 BW1M119 010bba60
	virtual bool IsLinkedToThisBuildingSite(Pot* param_1);
};

#endif /* BW1_DECOMP_CITADEL_BUILDING_SITE_INCLUDED_H */
