#ifndef BW1_DECOMP_GAME_AREA_INCLUDED_H
#define BW1_DECOMP_GAME_AREA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For struct LHListNode */

#include "Base.h"      /* For struct Base */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

class LHOSFile;

#if defined(VERSION_BW1W130)
#define GAME_AREA_FILEPATH "D:\\Work\\Games\\dd\\Black\\GameArea.h"
#elif defined(VERSION_BW1W120)
#define GAME_AREA_FILEPATH "C:\\dev\\MP\\Black\\GameArea.h"
#elif defined(VERSION_BW1W100) || defined(VERSION_BW1WCI)
#define GAME_AREA_FILEPATH "C:\\dev\\black\\GameArea.h"
#else
#define GAME_AREA_FILEPATH "C:\\dev\\Black\\GameArea.h"
#endif
#define GAME_AREA_CREATE_LINE 14

class GameArea : public Base
{
public:
	MapCoords            Pos;    /* 0x8 */
	float                Radius; /* 0x14 */
	LHListNode<GameArea> next;   /* 0x18 */

	// Override methods

	// BW1W120 00557220 BW1M119 013007c0
	virtual ~GameArea();

	// BW1W120 005571c0 BW1M119 01300a00
	GameArea(const MapCoords& coords, float radius);
	// BW1W120 inlined BW1M119 inlined
	static GameArea* Create(const MapCoords& coords, float radius)
	{
		return new (GAME_AREA_FILEPATH, GAME_AREA_CREATE_LINE) GameArea(coords, radius);
	}
	// BW1W120 00557400 BW1M119 013005c0
	static void SaveAll(LHOSFile& file, const MapCoords& coords);
};

static_assert(sizeof(GameArea) == 0x1c, "Data type is of wrong size");

#endif /* BW1_DECOMP_GAME_AREA_INCLUDED_H */
