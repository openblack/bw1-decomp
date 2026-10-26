#ifndef BW1_DECOMP_CREATURE_EXPLORATION_MAP_INCLUDED_H
#define BW1_DECOMP_CREATURE_EXPLORATION_MAP_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <limits.h>    /* For CHAR_BIT */
#include <re_common.h> /* For bool32_t */
#include <stdint.h>    /* For uint8_t, uint16_t, uint32_t */

#include "Base.h"      /* For struct Base */
#include "MapCoords.h" /* For struct MapCoords */

class Creature;
struct LHPoint;

#define EXPLORATION_MAP_REGIONS           0x40
#define EXPLORATION_REGION_CELLS          8
#define EXPLORATION_MAP_REGION_BYTES      (EXPLORATION_MAP_REGIONS / CHAR_BIT)
#define EXPLORATION_MAX_GAME_TURNS_STAYED 0xfffe

enum REGION_TYPE
{
	REGION_TYPE_CITADEL = 0,
	REGION_TYPE_TOWN = 1,
	REGION_TYPE_FIELD = 2,
	REGION_TYPE_FOREST = 3,
	REGION_TYPE_COAST = 4,
	REGION_TYPE_WATER = 5,
	REGION_TYPE_HILL = 6,
	REGION_TYPE_LAND = 7,
	REGION_TYPE_LAST = 8,
};

enum PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED
{
	PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_0 = 0,
	PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_1 = 1,
};

class CreatureExplorationRegionEntry : public Base
{
public:
	float         HighestAltitude;
	LH3DMapCoords HighestPos;
	uint8_t       RegionTypes;

	// BW1W120 inlined BW1M119 012662a0
	CreatureExplorationRegionEntry() {}
};

static_assert(sizeof(CreatureExplorationRegionEntry) == 0x1c, "Data type is of wrong size");

class CreatureGlobalExplorationMap : public Base
{
public:
	CreatureExplorationRegionEntry Regions[EXPLORATION_MAP_REGIONS][EXPLORATION_MAP_REGIONS];
	float                          HighestAltitude;

	// BW1W120 00c8dc40
	static CreatureGlobalExplorationMap GlobalMap;

	// BW1W120 inlined BW1M119 inlined
	CreatureGlobalExplorationMap() { HighestAltitude = 0.0f; }

	// BW1W120 004dfbd0 BW1M119 01264c90
	virtual void Dump();

	// BW1W120 004df9c0 BW1M119 01265230
	void PrecalculateMap();
	// BW1W120 004dfa10 BW1M119 012650c0
	void CalculateMaxAltitudeForRegion(short region_x, short region_z);
	// BW1W120 004dfb50 BW1M119 01264cf0
	void CalculateTypeForRegion(short region_x, short region_z);
};

static_assert(sizeof(CreatureGlobalExplorationMap) == 0x1c00c, "Data type is of wrong size");

class CreatureExplorationMap : public Base
{
public:
	uint32_t  field_0x8;
	MapCoords Pos;
	uint8_t   KnownRegions[EXPLORATION_MAP_REGIONS][EXPLORATION_MAP_REGION_BYTES];
	uint8_t   VisitedRegions[EXPLORATION_MAP_REGIONS][EXPLORATION_MAP_REGION_BYTES];
	uint16_t  GameTurnsStayedInRegion[EXPLORATION_MAP_REGIONS][EXPLORATION_MAP_REGIONS];

	// BW1W120 004df4f0 BW1M119 01265e70
	CreatureExplorationMap(const MapCoords& pos);

	// BW1W120 004df9b0 BW1M119 01265320
	virtual void Dump();

	// BW1W120 004df5f0 BW1M119 01265dd0
	uint16_t GetNumGameTurnsCreatureHasStayedInRegion(const MapCoords& pos);
	// BW1W120 004df620 BW1M119 01265c10
	void UpdateMap(const MapCoords& pos, Creature* creature);
	// BW1W120 004df6a0 BW1M119 null
	bool32_t KnowsAbout(short region_x, short region_z);
	// BW1W120 004df6e0 BW1M119 01265b80
	bool32_t HasVisitedRegion(short region_x, short region_z);
	// BW1W120 004df720 BW1M119 01265370
	bool32_t FindNearest(REGION_TYPE type, const MapCoords& pos, MapCoords* nearest,
	                     PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED preference, bool32_t allow_current_region);
	// BW1W120 004df8b0 BW1M119 null
	bool32_t FindNearestNextTo(REGION_TYPE type, REGION_TYPE next_to_type, const MapCoords& pos, MapCoords* nearest);
	// BW1W120 004df910 BW1M119 null
	LHPoint GetClearPosForCreature(Creature* creature);
	// BW1W120 inlined BW1M119 01265d40
	void SetKnowsAbout(short region_x, short region_z)
	{
		KnownRegions[region_x][region_z / CHAR_BIT] |= 1 << (region_z % CHAR_BIT);
	}
	// BW1W120 inlined BW1M119 inlined
	void ClearKnowsAbout(short region_x, short region_z)
	{
		KnownRegions[region_x][region_z / CHAR_BIT] &= ~(1 << (region_z % CHAR_BIT));
	}
	// BW1W120 inlined BW1M119 inlined
	void ClearVisited(short region_x, short region_z)
	{
		VisitedRegions[region_x][region_z / CHAR_BIT] &= ~(1 << (region_z % CHAR_BIT));
	}
};

static_assert(sizeof(CreatureExplorationMap) == 0x2418, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_EXPLORATION_MAP_INCLUDED_H */
