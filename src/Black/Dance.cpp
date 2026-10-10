#include "GameTimeConstants.h"
#include "Dance.h"

#include "ColourConstants.h"    /* For White */
#include "LandscapeConstants.h" /* For LandscapeExtent */
#include "FootpathLink.h"

uint32_t Dance::GetSaveType()
{
	return GAME_THING_TYPE_DANCE;
}

uint32_t GFootpathLink::GetSaveType()
{
	return GAME_THING_TYPE_GFOOTPATH_LINK;
}

SCRIPT_OBJECT_TYPE Dance::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_DANCE;
}
