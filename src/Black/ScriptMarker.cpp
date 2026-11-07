#include "ScriptMarker.h"

#include "Game.h"

ScriptMarker* ScriptMarker::Create(const MapCoords& coords)
{
	ScriptMarker* marker = new (__FILE__, 11) ScriptMarker(coords);
	GGame::g_game->GameLists.ScriptMarkers.Add(marker);
	return marker;
}

SCRIPT_OBJECT_TYPE ScriptMarker::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_MARKER;
}

void ScriptMarker::ToBeDeleted(bool32_t delete_now)
{
	GGame::g_game->GameLists.ScriptMarkers.Remove(this);
	GameThingWithPos::ToBeDeleted(delete_now);
}

bool32_t ScriptMarker::Save(GameOSFile& file)
{
	return GameThingWithPos::Save(file) != false;
}

bool32_t ScriptMarker::Load(GameOSFile& file)
{
	return GameThingWithPos::Load(file) != false;
}
