#include "GameTimeConstants.h"
#include "Forest.h"

#include "Game.h"               /* For GGame */
#include "LandscapeConstants.h" /* For LandscapeExtent */
#include "Town.h"               /* For Town */

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

void Forest::RemoveForestFromTowns(Forest* forest)
{
	for (LHLinkedNode<Town*>* node = GGame::g_game->GameLists.TownList.GetStart(); node != NULL;
	     node = node->next.Get())
	{
		node->payload->RemoveForest(forest);
	}
}

char* Forest::GetDebugText()
{
	return "Forest:";
}

const char* Forest::GetText()
{
	return "Forest";
}
