#ifndef BW1_DECOMP_CREATURE_EXPLORATION_MAP_INCLUDED_H
#define BW1_DECOMP_CREATURE_EXPLORATION_MAP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t */

#include "Base.h"      /* For struct Base */
#include "MapCoords.h" /* For struct MapCoords */

enum REGION_TYPE
{
	REGION_TYPE_TOWN = 1,
	REGION_TYPE_COAST = 4,
	REGION_TYPE_SEA = 5,
	REGION_TYPE_HILL = 6,
	REGION_TYPE_7 = 7,
};

enum PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED
{
	PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_0 = 0,
	PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_1 = 1,
};

class CreatureExplorationMap : public Base
{
public:
	uint32_t  field_0x8;
	MapCoords coords;
	uint16_t  field_0x18[0x40][0x40];

	// Override methods

	// BW1W120 004df5c0 BW1M119 0124af90
	virtual ~CreatureExplorationMap();
	// BW1W120 004df9b0 BW1M119 01265320
	virtual void Dump();

	// Non-virtual methods

	// BW1W120 004df720 BW1M119 01265370
	int FindNearest(REGION_TYPE type, const MapCoords& pos, MapCoords* nearest,
	                PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED preference, int param_5);
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
