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
	// Override methods

	// BW1W120 00561330 BW1M119 0150d9c0
	virtual ~ScriptTimer();
	// BW1W120 00561320 BW1M119 0150dbd0
	virtual char* GetDebugText();
	// BW1W120 007117b0 BW1M119 0150dc10
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00711700 BW1M119 0150dd30
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00561310 BW1M119 0150db90
	virtual uint32_t GetSaveType();
	// BW1W120 00561300 BW1M119 0150db40
	virtual bool32_t IsDeletedWhenReleasedFromScript();
	// BW1W120 005612e0 BW1M119 0150da60
	virtual const char* GetText();
	// BW1W120 005612f0 BW1M119 0102dcc0
	virtual bool32_t IsScriptTimer();
	// BW1W120 00711600 BW1M119 0150e230
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
};

#endif /* BW1_DECOMP_SCRIPT_TIMER_INCLUDED_H */
