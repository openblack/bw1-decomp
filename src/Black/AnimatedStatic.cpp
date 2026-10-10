#include "AnimatedStatic.h"

#include "LandscapeConstants.h" /* For LandscapeExtent */
#include "Feature.h"

uint32_t AnimatedStatic::GetSaveType()
{
	return GAME_THING_TYPE_ANIMATED_STATIC;
}

uint32_t Feature::GetSaveType()
{
	return GAME_THING_TYPE_FEATURE;
}
