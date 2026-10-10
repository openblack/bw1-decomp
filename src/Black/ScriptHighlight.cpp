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
