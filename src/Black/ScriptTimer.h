#ifndef BW1_DECOMP_SCRIPT_TIMER_INCLUDED_H
#define BW1_DECOMP_SCRIPT_TIMER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class ScriptTimer : public GameThingWithPos
{
public:
	uint8_t field_0x28[0x8];

	// Override methods

	// BW1W120 00561320 BW1M119 0150dbd0
	virtual char* GetDebugText() { return "ScriptTimer:"; }
	// BW1W120 007117b0 BW1M119 0150dc10
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00711700 BW1M119 0150dd30
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00561310 BW1M119 0150db90
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_SCRIPT_TIMER; }
	// BW1W120 00561300 BW1M119 0150db40
	virtual bool32_t IsDeletedWhenReleasedFromScript() { return true; }
	// BW1W120 005612e0 BW1M119 0150da60
	virtual const char* GetText() { return "Script Timer"; }
	// BW1W120 005612f0 BW1M119 0102dcc0
	virtual bool32_t IsScriptTimer() { return true; }
	// BW1W120 00711600 BW1M119 0150e230
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();

	// BW1W120 inlined BW1M119 inlined
	ScriptTimer() { SetTime(0); }

	// BW1W120 00711610 BW1M119 010a1df0
	void SetTime(unsigned long time);
};

#endif /* BW1_DECOMP_SCRIPT_TIMER_INCLUDED_H */
