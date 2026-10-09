#ifndef BW1_DECOMP_MIST_INCLUDED_H
#define BW1_DECOMP_MIST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/ScriptEnums.h>               /* For enum SCRIPT_OBJECT_TYPE */
#include <Lionhead/LHLib/ver5.0/LHListNode.h> /* For struct LHListNode */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "LHPTR.h"            /* For class LHPTR */

// Forward Declares

class LH3DMist;
class Base;
class GPlayer;
class GameOSFile;
class GameThing;
struct MapCoords;
struct MistListNode;

class Mist : public GameThingWithPos
{
public:
	LHPTR<LH3DMist>  MistObject;
	float            field_0x2c;
	uint32_t         field_0x30;
	float            field_0x34;
	uint8_t          field_0x38[0x14];
	uint32_t         field_0x4c;
	LHListNode<Mist> next;

	// Override methods

	// BW1W120 00606300 BW1M119 0110ef00
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055eb70 BW1M119 0110e0f0
	virtual GPlayer* GetPlayer() { return NULL; }
	// BW1W120 0055ebc0 BW1M119 0110e1f0
	virtual char* GetDebugText() { return "Mist:"; }
	// BW1W120 00606a10 BW1M119 0110e290
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00606920 BW1M119 0110e3f0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055ebb0 BW1M119 0110e1c0
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_MIST; }
	// BW1W120 00606af0 BW1M119 0110e230
	virtual void ResolveLoad();
	// BW1W120 0055eba0 BW1M119 0110e180
	virtual uint32_t GetCreatureBeliefType() { return CREATURE_BELIEF_TYPE_MIST; }
	// BW1W120 006067d0 BW1M119 0110e710
	virtual float GetDistanceFromObject(const MapCoords& param_1);
	// BW1W120 0055eb90 BW1M119 0110e150
	virtual bool32_t IsMist() { return true; }
	// BW1W120 0055eb80 BW1M119 0110e120
	virtual const char* GetText() { return "Mist"; }
	// BW1W120 00606910 BW1M119 0110e560
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	Mist() {}
	// BW1W120 00606270 BW1M119 0110f140
	Mist(const MapCoords& coords, float param_3, uint32_t param_4, float param_5);

	// Non-virtual methods

	// BW1W120 00606880 BW1M119 01065070
	void Process();
};

#endif /* BW1_DECOMP_MIST_INCLUDED_H */
