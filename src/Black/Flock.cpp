#include "GameTimeConstants.h"
#include "Flock.h"

uint32_t Flock::GetSaveType()
{
	return GAME_THING_TYPE_FLOCK;
}

Town* Flock::GetTown()
{
	return town;
}

SCRIPT_OBJECT_TYPE Flock::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_FLOCK;
}

uint32_t Flock::GetCreatureBeliefType()
{
	return CREATURE_BELIEF_TYPE_FLOCK;
}

uint32_t Flock::GetCreatureBeliefListType()
{
	return 0;
}

bool32_t Flock::IsSuitableForCreatureActivity()
{
	return true;
}

bool32_t Flock::IsActivityObjectWhichAngerAppliesTo(Creature* creature)
{
	return true;
}

bool32_t Flock::IsActivityObjectWhichCompassionAppliesTo(Creature* creature)
{
	return false;
}

bool32_t Flock::IsActivityObjectWhichPlayfulnessAppliesTo(Creature* creature)
{
	return true;
}
