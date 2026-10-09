#ifndef BW1_DECOMP_SHOW_NEEDS_INCLUDED_H
#define BW1_DECOMP_SHOW_NEEDS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint32_t */

#include "GameThing.h"                           /* For struct GameThing */
#include <Lionhead/LHLib/ver5.0/LHFastPointer.h> /* For LHFastPointer */

// Forward Declares

class Base;
class GPlayer;
class GameOSFile;
class GameThingWithPos;
struct MapCoords;
class ShowNeedsVisuals;

class ShowNeeds : public GameThing
{
public:
	LHFastPointer<GameThingWithPos> thing;
	ShowNeedsVisuals*               visuals[0x3];

	// Override methods

	// BW1W120 00719b20 BW1M119 0114dfc0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00719c30 BW1M119 0114dc40
	virtual GPlayer* GetPlayer();
	// BW1W120 0055dd30 BW1M119 0114e570
	virtual char* GetDebugText() { return "ShowNeeds:"; }
	// BW1W120 00719d30 BW1M119 0114da80
	virtual uint32_t GetShowNeedsPos(uint32_t param_1, MapCoords* param_2);
	// BW1W120 00719cf0 BW1M119 0114db00
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00719cb0 BW1M119 0114dba0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055dd20 BW1M119 0114e530
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_SHOW_NEEDS; }

	// Static methods

	// BW1W120 00719b60 BW1M119 0114def0
	static ShowNeeds* Create(GameThingWithPos* game_thing);

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	ShowNeeds() {}
	// BW1W120 00719ab0 BW1M119 0114e080
	ShowNeeds(GameThingWithPos* game_thing);

	// Non-virtual methods

	// BW1W120 00719c10 BW1M119 0114dd20
	void Draw();
};

#endif /* BW1_DECOMP_SHOW_NEEDS_INCLUDED_H */
