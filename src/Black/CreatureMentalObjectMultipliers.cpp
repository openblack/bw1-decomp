#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"

#include "ColourConstants.h" /* For White */

#include "GameThingWithPos.h"

#define DOING_SOMETHING_INTERESTING_MULTIPLIER 5.0f
#define PLAYING_FOOTBALL_MULTIPLIER            5.0f
#define TOY_MULTIPLIER                         3.0f

float GameThingWithPos::MultiplyUsefulnessIfInteresting(Creature* creature)
{
	if (IsDoingSomethingInteresting(creature))
	{
		return DOING_SOMETHING_INTERESTING_MULTIPLIER;
	}
	return 1.0f;
}

float GameThingWithPos::MultiplyUsefulnessForPlayfulness(Creature* creature)
{
	if (IsPlayingFootball(creature))
	{
		return PLAYING_FOOTBALL_MULTIPLIER;
	}
	if (IsToy(NULL))
	{
		return TOY_MULTIPLIER;
	}
	return 1.0f;
}
