#include "GameTimeConstants.h"
#include "ScriptTimer.h"
#include "GameOSFile.h" /* For class GameOSFile */

// BW1W120 00711600 BW1M119 0150e230
SCRIPT_OBJECT_TYPE ScriptTimer::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_TIMER;
}

bool32_t ScriptTimer::Load(GameOSFile& file)
{
	if (GameThingWithPos::Load(file))
	{
		file.ReadIt(field_0x28);
		file.ReadIt(field_0x2c);
		return true;
	}
	return false;
}

bool32_t ScriptTimer::Save(GameOSFile& file)
{
	if (GameThingWithPos::Save(file))
	{
		file.WriteIt(field_0x28);
		file.WriteIt(field_0x2c);
		return true;
	}
	return false;
}
