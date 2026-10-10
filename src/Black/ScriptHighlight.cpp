#include "GameTimeConstants.h"
#include "ScriptHighlight.h"

#include "ColourConstants.h" /* For White */
#include "ScriptHighlightInfo.h"

GScriptHighlightInfo GScriptHighlightInfo::Infos[SCRIPT_HIGHLIGHT_INFO_LAST];

uint32_t ScriptHighlight::GetSaveType()
{
	return GAME_THING_TYPE_SCRIPT_HIGHLIGHT;
}

uint32_t ScriptHighlight::ApplyOnlyAfterReleased()
{
	return 0;
}

void ScriptHighlight::PhysicsEditorCreate(int param_1) {}

uint32_t ScriptHighlight::ValidToApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords)
{
	return 0;
}

uint32_t ScriptHighlight::SaveObject(LHOSFile& file, const MapCoords* coords)
{
	return 0;
}

bool32_t ScriptHighlight::IsScriptHighlight()
{
	return true;
}

bool32_t ScriptHighlight::ValidForPlaceInHand(GInterfaceStatus* param_1)
{
	return false;
}

bool32_t ScriptHighlight::CanBeSleptNextToByCreature(Creature* param_1)
{
	return false;
}

bool32_t ScriptHighlight::CanBeDestroyedByStoning(Creature* param_1)
{
	return false;
}

bool32_t ScriptHighlight::CanBeSetOnFire(Creature* param_1)
{
	return false;
}

bool32_t ScriptHighlight::CanBeCrushed()
{
	return false;
}

bool32_t ScriptHighlight::IsEffectReceiver(EffectValues* param_1)
{
	return false;
}

bool32_t ScriptHighlight::ValidAsInterfaceTarget()
{
	return false;
}

bool32_t ScriptHighlight::CanBecomeAPhysicsObject()
{
	return false;
}

bool ScriptHighlight::InteractsWithPhysicsObjects()
{
	return false;
}

bool32_t ScriptHighlight::CanBePickedUpByCreature(Creature* param_1)
{
	return false;
}

bool32_t ScriptHighlight::InterfaceMustBeInInfluenceForInteraction()
{
	return false;
}
