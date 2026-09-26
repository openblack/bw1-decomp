#ifndef BW1_DECOMP_SCRIPT_MARKER_INCLUDED_H
#define BW1_DECOMP_SCRIPT_MARKER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class ScriptMarker : public GameThingWithPos
{
public:
	// Override methods

	// BW1W120 00561070 BW1M119 01507dc0
	virtual ~ScriptMarker();
	// BW1W120 0070d970 BW1M119 015080d0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00561060 BW1M119 01507fb0
	virtual char* GetDebugText();
	// BW1W120 0070d9f0 BW1M119 01507ff0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0070d9d0 BW1M119 01508060
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00561050 BW1M119 01507f70
	virtual uint32_t GetSaveType();
	// BW1W120 00561030 BW1M119 01507ee0
	virtual void PhysicsEditorCreate(int param_1);
	// BW1W120 00561040 BW1M119 01507f20
	virtual bool32_t IsDeletedWhenReleasedFromScript();
	// BW1W120 00561010 BW1M119 01507e60
	virtual const char* GetText();
	// BW1W120 00561020 BW1M119 01507ea0
	virtual bool32_t IsScriptMarker();
	// BW1W120 0070d960 BW1M119 015081e0
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
};

#endif /* BW1_DECOMP_SCRIPT_MARKER_INCLUDED_H */
