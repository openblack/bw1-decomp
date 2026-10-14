#include "GameTimeConstants.h"
#include "ScriptHighlight.h"

#include "ColourConstants.h" /* For White */
#include "ScriptHighlightInfo.h"
#include "GameOSFile.h" /* For class GameOSFile */

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

SCRIPT_OBJECT_TYPE ScriptHighlight::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_HIGHLIGHT;
}

char* ScriptHighlight::GetDebugText()
{
	return "ScriptHighlight:";
}

bool32_t ScriptHighlight::Load(GameOSFile& file)
{
	if (Fixed::Load(file))
	{
		file.ReadIt(field_0x5c);
		file.ReadIt(field_0x60);
		file.ReadIt(field_0x7c);
		file.ReadIt(field_0x80);
		file.ReadIt(field_0x78);
		file.ReadIt(field_0x84);
		return true;
	}
	return false;
}

bool32_t ScriptHighlight::Save(GameOSFile& file)
{
	if (Fixed::Save(file))
	{
		file.WriteIt(field_0x5c);
		file.WriteIt(field_0x60);
		file.WriteIt(field_0x7c);
		file.WriteIt(field_0x80);
		file.WriteIt(field_0x78);
		file.WriteIt(field_0x84);
		return true;
	}
	return false;
}

GBaseInfo* GScriptHighlightInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = SCRIPT_HIGHLIGHT_INFO_LAST;
	return Infos;
}
