#ifndef BW1_DECOMP_INFLUENCE_INCLUDED_H
#define BW1_DECOMP_INFLUENCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/ScriptEnums.h>               /* For enum SCRIPT_OBJECT_TYPE */
#include <Lionhead/LHLib/ver5.0/LHListNode.h> /* For struct LHListNode */

#include "BaseInfo.h"         /* For struct BaseInfo */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "LHPTR.h"            /* For LHPTR */

// Forward Declares

class Base;
class GPlayer;
class GameOSFile;
class GameThing;
struct MapCoords;

enum INFL_CALC_TYPE
{
	INFL_CALC_TYPE_DEFAULT = 0,
	INFL_CALC_TYPE_ALWAYS_INCLUDE_HAND = 1,
};

class Influence
{
public:
	// BW1W120 005cd170 BW1M119 010386b0
	static float CalculatePlayerInfluence(const MapCoords& pos, GPlayer* player, int param_3, INFL_CALC_TYPE type,
	                                      int param_5);
	// BW1W120 005cd630 BW1M119 010674f0
	static GPlayer* CalculateMostInfluentialPlayer(const MapCoords& pos, float* influence);
};

class InfluenceRing : public GameThingWithPos
{
public:
	// BW1W120 005cdb90 BW1M119 0105c050
	static void ProcessRings();
	// BW1W120 005cd9d0 BW1M119 01105ad0
	static InfluenceRing* Create(const MapCoords& coords, GPlayer* player, float radius, int anti);
	// BW1W120 005cd990 BW1M119 01105bb0
	static InfluenceRing* Create(GameThingWithPos* thing, GPlayer* player, float radius, int anti);

	BaseInfo                  info;
	LHPTR<GPlayer>            player;
	float                     Influence;
	int                       field_0x3c;
	LHListNode<InfluenceRing> next;

	// Override methods

	// BW1W120 005cd8a0 BW1M119 01105da0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055ec40 BW1M119 010467f0
	virtual GPlayer* GetPlayer() { return player.Get(); }
	// BW1W120 0055ec10 BW1M119 01104f10
	virtual void SetPlayer(GPlayer* new_player) { player = new_player; }
	// BW1W120 0055ec60 BW1M119 011050f0
	virtual char* GetDebugText() { return "InfluenceRing:"; }
	// BW1W120 005cdd40 BW1M119 01105130
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 005cdc60 BW1M119 01105280
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055ec50 BW1M119 011050b0
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_INFLUENCE_RING; }
	// BW1W120 0055ebf0 BW1M119 01104eb0
	virtual void SetPos(const MapCoords& pos) { Pos = pos; }
	// BW1W120 0055ec30 BW1M119 01104f90
	virtual const char* GetText() { return "Influence Ring"; }
	// BW1W120 0055ec20 BW1M119 01104f50
	virtual bool32_t IsInfluenceRing() { return true; }
	// BW1W120 005cdc50 BW1M119 011053f0
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	InfluenceRing() {}
	// BW1W120 005cd760 BW1M119 011061e0
	InfluenceRing(const MapCoords& coords, GPlayer* player, float radius, int anti);
	// BW1W120 005cd800 BW1M119 01105fd0
	InfluenceRing(GameThingWithPos* thing, GPlayer* player, float radius, int anti);
};

#endif /* BW1_DECOMP_INFLUENCE_INCLUDED_H */
