#ifndef BW1_DECOMP_FOOTPATH_FINDER_INCLUDED_H
#define BW1_DECOMP_FOOTPATH_FINDER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LHLib/ver5.0/RPHolder.h> /* For struct RPHolder */
#include <Lionhead/LHLib/ver5.0/RPlan.h>    /* For struct RPlan */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class GFootpath;
class GFootpathNode;
class GameOSFile;
class GameThingWithPos;

class GFootpathFinder : public GameThing
{
public:
	RPHolder          holder; /* 0x14 */
	RPlan             plan;   /* 0x64040 */
	GameThingWithPos* From;   /* 0x640b4 */
	GameThingWithPos* To;
	GFootpath*        Footpath;
	GFootpathNode*    StartNode; /* 0x640c0 */
	GFootpathNode*    DestNode;

	// Override methods

	// BW1W120 00539020 BW1M119 010ebed0
	virtual ~GFootpathFinder();
	// BW1W120 005391c0 BW1M119 010eb9b0
	virtual void ToBeDeleted(bool32_t delete_now);
	// BW1W120 00538fe0 BW1M119 010eb1e0
	virtual char* GetDebugText() { return "Footpath pathfinder:"; }
	// BW1W120 005390e0 BW1M119 010ebc90
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 00539150 BW1M119 010ebbd0
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 00538fd0 BW1M119 010eb1a0
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_GFOOTPATH_FINDER; }

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	GFootpathFinder() {}
	// BW1W120 00538ec0 BW1M119 010ec000
	GFootpathFinder(GameThingWithPos* from, GameThingWithPos* to);

	// Non-virtual methods

	// BW1W120 00539040 BW1M119 010ebd60
	void GameTurnProcess();
	// BW1W120 00539240 BW1M119 010eb850
	void Done();
	// BW1W120 005392f0 BW1M119 010eb220
	void Init();
};

#endif /* BW1_DECOMP_FOOTPATH_FINDER_INCLUDED_H */
