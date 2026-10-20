#ifndef BW1_DECOMP_EXPLORATION_REGION_TYPE_INFO_INCLUDED_H
#define BW1_DECOMP_EXPLORATION_REGION_TYPE_INFO_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <re_common.h> /* For bool32_t */

#include "CreatureExplorationMap.h" /* For REGION_TYPE_LAST */
#include "MapCoords.h"              /* For struct MapCoords */

#define EXPLORATION_REGION_TYPE_NAME_LENGTH 0x40

struct ExplorationRegionTypeInfo
{
	bool32_t (MapCoords::*DoesRegionContain)();
	bool32_t (MapCoords::*GetExactMapSquare)();
	char Name[EXPLORATION_REGION_TYPE_NAME_LENGTH];

	// BW1W120 00bdf610
	static ExplorationRegionTypeInfo Table[REGION_TYPE_LAST];
};

static_assert(sizeof(ExplorationRegionTypeInfo) == 0x48, "Data type is of wrong size");

#endif /* BW1_DECOMP_EXPLORATION_REGION_TYPE_INFO_INCLUDED_H */
