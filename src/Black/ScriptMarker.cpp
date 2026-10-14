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

bool32_t ScriptMarker::Load(GameOSFile& file)
{
	return GameThingWithPos::Load(file) != false;
}

bool32_t ScriptMarker::Save(GameOSFile& file)
{
	return GameThingWithPos::Save(file) != false;
}
