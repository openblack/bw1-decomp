#include <string.h> /* For strncpy */

#include "GameTimeConstants.h"
#include "Script.h"

#include "Game.h"
#include "GameThingWithPos.h"
#include "Object.h"
#include "ScriptDLL.h"

#include <Lionhead/LH3DLib/development/LHPoint.h>
#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"

// BW1W120 006f9090 BW1M119 014fe420
int GScript::SetFocusLoopFn(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t param_3)
{
	((Object*)thing)->SetFocus(GGame::g_game->script->FocusPos);
	return 0;
}

// BW1W120 006f90b0 BW1M119 0102e4a0
void GScript::SetFocus()
{
	ScriptDLL*         dll = g_scriptDLL;
	LHPoint            pos;
	GameThingWithPos*  thing;
	Object*            object;
	SCRIPT_OBJECT_TYPE objectType;

	pos.z = dll->COORD_POP();
	pos.y = dll->COORD_POP();
	pos.x = dll->COORD_POP();
	thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptWarningMessage("Thing no longer valid");
		return;
	}
	if (thing->IsScriptContainer())
	{
		objectType = thing->GetScriptObjectType();
		GGame::g_game->script->FocusPos = pos;
		if (g_scriptObjectDispatch[objectType - 1].Loop == NULL)
		{
			return;
		}
		g_scriptObjectDispatch[objectType - 1].Loop(thing, SetFocusLoopFn, SCRIPT_OBJECT_TYPE_NONE, 0);
		return;
	}
	object = dynamic_cast<Object*>(thing);
	if (object != NULL)
	{
		if (object->IsCreature())
		{
			object->SetControlledByScript(1);
		}
		object->SetFocus(pos);
		return;
	}
	ScriptErrorMessage("Jonty - Thing must be living to face position!");
}
