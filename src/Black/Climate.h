#ifndef BW1_DECOMP_CLIMATE_INCLUDED_H
#define BW1_DECOMP_CLIMATE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LH3DMapCoords.h> /* For struct LH3DMapCoords */
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>         /* For class LHLinkedList */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class GameOSFile;
class LH3DStorm;
struct LHPoint;

struct RainInfo
{
	uint8_t field_0x0[0x10];

	// BW1W120 00773d10 BW1M119 015aa600
	RainInfo();
};

struct TempInfo
{
	uint8_t field_0x0[0x8];

	// BW1W120 00773ec0 BW1M119 015aab40
	TempInfo();
};

struct WindInfo
{
	uint8_t field_0x0[0xc];

	// BW1W120 00774a80 BW1M119 015ac240
	WindInfo();
};

class GClimate : public GameThing
{
public:
	// BW1W120 00771be0 BW1M119 01053390
	static void ProcessAll();
	// BW1W120 007714b0 BW1M119 01026110
	static bool IsRaining(const LHPoint& point);

	LH3DMapCoords            Pos;
	uint8_t                  field_0x20[0x14];
	RainInfo                 Rain;
	TempInfo                 Temp;
	WindInfo                 Wind;
	uint32_t                 field_0x58;
	LHLinkedList<LH3DStorm*> Storms;
	uint8_t                  field_0x64[0x24];

	// Override methods

	// BW1W120 007713d0 BW1M119 015a9660
	virtual ~GClimate();
	// BW1W120 007713e0 BW1M119 015a9410
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055ded0 BW1M119 015a5f10
	virtual char* GetDebugText() { return "Climate:"; }
	// BW1W120 007736e0 BW1M119 015a5f50
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00773320 BW1M119 015a6820
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055dec0 BW1M119 015a5ed0
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_GCLIMATE; }

	// BW1W120 0055de80 BW1M119 inlined
	GClimate() {}
};

#endif /* BW1_DECOMP_CLIMATE_INCLUDED_H */
