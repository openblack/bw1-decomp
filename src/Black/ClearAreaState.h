#ifndef BW1_DECOMP_CLEAR_AREA_STATE_INCLUDED_H
#define BW1_DECOMP_CLEAR_AREA_STATE_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <re_common.h> /* For bool32_t */
#include <stddef.h>    /* For NULL */
#include <stdint.h>    /* For uint32_t */

#include "MapCoords.h" /* For struct MapCoords */

class Creature;

#define CLEAR_AREA_DEFAULT_RADIUS        30.0f
#define CLEAR_AREA_DEFAULT_SEARCH_RADIUS 250.0f

enum CLEAR_AREA_STATE
{
	CLEAR_AREA_STATE_NONE = 0,
	CLEAR_AREA_STATE_FOUND = 1,
	CLEAR_AREA_STATE_NOT_FOUND = 2,
};

struct ClearAreaState
{
	MapCoords        Pos;
	CLEAR_AREA_STATE State;
	char*            ClearCells;
	MapCoords        Centre;
	uint32_t         Size;
	float            Radius;
	float            SearchRadius;

	// BW1W120 inlined BW1M119 inlined
	ClearAreaState()
	{
		State = CLEAR_AREA_STATE_NONE;
		Radius = CLEAR_AREA_DEFAULT_RADIUS;
		SearchRadius = CLEAR_AREA_DEFAULT_SEARCH_RADIUS;
		ClearCells = NULL;
	}
	// BW1W120 004dfc70 BW1M119 01264b20
	~ClearAreaState();

	// BW1W120 004dfc80 BW1M119 01264670
	bool32_t FindClearArea(const MapCoords& pos, Creature* creature, bool32_t avoid_living);
	// BW1W120 004dfff0 BW1M119 null
	void Draw();
	// BW1W120 004e0200 BW1M119 null
	void Draw3D();
};

static_assert(sizeof(ClearAreaState) == 0x2c, "Data type is of wrong size");

#endif /* BW1_DECOMP_CLEAR_AREA_STATE_INCLUDED_H */
