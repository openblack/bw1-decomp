#include "GameTimeConstants.h"
#include "Creature.h"

#include "ColourConstants.h"    /* For White */
#include "LandscapeConstants.h" /* For LandscapeExtent */

uint32_t Creature::GetSaveType()
{
	return GAME_THING_TYPE_CREATURE;
}
