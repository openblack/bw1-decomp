#include "GameTimeConstants.h"
#include "Forest.h"

#include "LandscapeConstants.h" /* For LandscapeExtent */

uint32_t Forest::GetSaveType()
{
	return GAME_THING_TYPE_FOREST;
}

uint32_t Forest::GetCreatureBeliefType()
{
	return 1;
}

uint32_t Forest::GetCreatureBeliefListType()
{
	return 0;
}

bool32_t Forest::IsSuitableForCreatureActivity()
{
	return true;
}

bool32_t Forest::IsActivityObjectWhichAngerAppliesTo(Creature* creature)
{
	return true;
}

bool32_t Forest::IsForest()
{
	return true;
}

bool32_t Forest::IsFootpathLink()
{
	return true;
}

uint32_t Forest::GetNearestPathTo(const MapCoords& param_1, float param_2, int param_3)
{
	return 0;
}
