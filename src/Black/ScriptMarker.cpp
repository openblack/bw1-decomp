#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "ScriptMarker.h"

#include "ColourConstants.h" /* For White */
#include "CellSize.h"

SCRIPT_OBJECT_TYPE ScriptMarker::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_MARKER;
}

uint32_t ScriptMarker::Load(GameOSFile& file)
{
	if (GameThingWithPos::Load(file))
	{
		return 1;
	}
	return 0;
}

uint32_t ScriptMarker::Save(GameOSFile& file)
{
	if (GameThingWithPos::Save(file))
	{
		return 1;
	}
	return 0;
}
