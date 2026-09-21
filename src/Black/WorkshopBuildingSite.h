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
};

#endif /* BW1_DECOMP_WORKSHOP_BUILDING_SITE_INCLUDED_H */
