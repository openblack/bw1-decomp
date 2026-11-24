#ifndef BW1_DECOMP_EXPLORATION_REGION_TYPE_INFO_INCLUDED_H
#define BW1_DECOMP_EXPLORATION_REGION_TYPE_INFO_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <re_common.h> /* For bool32_t */

#include "CreatureExplorationMap.h" /* For REGION_TYPE_LAST */
#include "MapCoords.h"              /* For struct MapCoords */

struct ExplorationRegionTypeInfo
{
	bool32_t (MapCoords::*DoesRegionContain)();
	void (MapCoords::*GetExactMapSquare)();
	char Name[64];

	// BW1W120 00bdf610
	static ExplorationRegionTypeInfo Table[REGION_TYPE_LAST];
};

static_assert(sizeof(ExplorationRegionTypeInfo) == 0x48, "Data type is of wrong size");

#endif /* BW1_DECOMP_EXPLORATION_REGION_TYPE_INFO_INCLUDED_H */
