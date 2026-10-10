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
