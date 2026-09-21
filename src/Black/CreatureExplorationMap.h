#ifndef BW1_DECOMP_CREATURE_EXPLORATION_MAP_INCLUDED_H
#define BW1_DECOMP_CREATURE_EXPLORATION_MAP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t */

#include "Base.h"      /* For struct Base */
#include "MapCoords.h" /* For struct MapCoords */

class CreatureExplorationMap : public Base
{
public:
	uint32_t  field_0x8;
	MapCoords coords;
	uint16_t  field_0x18[0x40][0x40];

	// Override methods

	// BW1W120 004df5c0 BW1M119 0124af90
	virtual ~CreatureExplorationMap();
};

class CreatureExplorationRegionEntry : public Base
{
public:
	// Override methods

	// BW1W120 004df430 BW1M119 012645d0
	virtual ~CreatureExplorationRegionEntry();
};

class CreatureGlobalExplorationMap : public Base
{
public:
	// Descriptive name; declaration only, full layout unrecovered.
	// BW1W120 00c8dc40
	static CreatureGlobalExplorationMap GlobalMap;
	// BW1W120 004df9c0 BW1M119 01265230
	void PrecalculateMap();
	// Override methods

	// BW1W120 004df450 BW1M119 01264510
	virtual ~CreatureGlobalExplorationMap();
	// BW1W120 004dfbd0 BW1M119 01264c90
	virtual void Dump();
};

#endif /* BW1_DECOMP_CREATURE_EXPLORATION_MAP_INCLUDED_H */
