#ifndef BW1_DECOMP_INFLUENCE_INCLUDED_H
#define BW1_DECOMP_INFLUENCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

#include "BaseInfo.h"         /* For struct BaseInfo */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

class Base;
class GPlayer;
class GameOSFile;
class GameThing;
struct MapCoords;

enum INFL_CALC_TYPE
{
	INFL_CALC_TYPE_0 = 0
};

class Influence
{
public:
	// BW1W120 005cd170 BW1M119 010386b0
	static float CalculatePlayerInfluence(const MapCoords& pos, GPlayer* player, int param_3, INFL_CALC_TYPE type,
	                                      int param_5);
};

class InfluenceRing : public GameThingWithPos
{
public:
	// BW1W120 005cdb90 BW1M119 0105c050
	static void ProcessRings();

	BaseInfo info;   /* 0x28 */
	GPlayer* player; /* 0x34 */
	float    field_0x38;
	int      field_0x3c;
	uint32_t field_0x40;

	// Override methods

	// BW1W120 0055ec70 BW1M119 01104e10
	virtual ~InfluenceRing();
	// BW1W120 005cd8a0 BW1M119 01105da0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055ec40 BW1M119 010467f0
	virtual GPlayer* GetPlayer();
	// BW1W120 0055ec10 BW1M119 01104f10
	virtual void SetPlayer(GPlayer* param_1);
	// BW1W120 0055ec60 BW1M119 011050f0
	virtual char* GetDebugText();
	// BW1W120 005cdd40 BW1M119 01105130
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 005cdc60 BW1M119 01105280
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055ec50 BW1M119 011050b0
	virtual uint32_t GetSaveType();
	// BW1W120 0055ebf0 BW1M119 01104eb0
	virtual void SetPos(const MapCoords& param_1);
	// BW1W120 0055ec30 BW1M119 01104f90
	virtual const char* GetText();
	// BW1W120 0055ec20 BW1M119 01104f50
	virtual uint32_t IsInfluenceRing();
	// BW1W120 005cdc50 BW1M119 011053f0
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();

	// Constructors

	// BW1W120 005cd760 BW1M119 011061e0
	InfluenceRing(const MapCoords& coords, GPlayer* player, float param_4, int param_5);
	// BW1W120 005cd800 BW1M119 01105fd0
	InfluenceRing(GameThingWithPos* thing, GPlayer* player, float param_4, int param_5);
};

#endif /* BW1_DECOMP_INFLUENCE_INCLUDED_H */
