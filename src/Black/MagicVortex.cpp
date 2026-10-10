#include "GameTimeConstants.h"
#include "MagicVortex.h"

#include "ColourConstants.h" /* For White */

uint32_t LandscapeVortexIn::GetSaveType()
{
	return GAME_THING_TYPE_LANDSCAPE_VORTEX_IN;
}

uint32_t LandscapeVortexOut::GetSaveType()
{
	return GAME_THING_TYPE_LANDSCAPE_VORTEX_OUT;
}

uint32_t LandscapeVortexVolc::GetSaveType()
{
	return GAME_THING_TYPE_LANDSCAPE_VORTEX_VOLC;
}
