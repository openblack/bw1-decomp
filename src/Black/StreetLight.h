#ifndef BW1_DECOMP_STREET_LIGHT_INCLUDED_H
#define BW1_DECOMP_STREET_LIGHT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

class Base;
class GPlayer;
class GameOSFile;
class GameThing;
struct MapCoords;

class GStreetLight : public GameThingWithPos
{
public:
	uint32_t field_0x28;

	// Override methods

	// BW1W120 00561420 BW1M119 0153e310
	virtual ~GStreetLight();
	// BW1W120 00734e00 BW1M119 0153ea20
	virtual void ToBeDeleted(int param_1);
	// BW1W120 005613d0 BW1M119 0153e3b0
	virtual GPlayer* GetPlayer();
	// BW1W120 00561410 BW1M119 0153e4b0
	virtual char* GetDebugText();
	// BW1W120 00735160 BW1M119 0153e550
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00735140 BW1M119 0153e5c0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00561400 BW1M119 0153e470
	virtual uint32_t GetSaveType();
	// BW1W120 00735180 BW1M119 0153e4f0
	virtual void ResolveLoad();
	// BW1W120 00735110 BW1M119 0153e630
	virtual float GetDistanceFromObject(const MapCoords& param_1);
	// BW1W120 005613f0 BW1M119 0153e430
	virtual uint32_t IsStreetLight();
	// BW1W120 005613e0 BW1M119 0153e3f0
	virtual const char* GetText();
};

#endif /* BW1_DECOMP_STREET_LIGHT_INCLUDED_H */
