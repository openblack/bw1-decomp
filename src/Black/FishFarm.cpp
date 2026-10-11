#include "GameTimeConstants.h"
#include "FishFarm.h"

uint32_t FishFarm::GetSaveType()
{
	return GAME_THING_TYPE_PILE_FISH_FARM;
}

bool FishFarm::InteractsWithPhysicsObjects()
{
	return false;
}

RESOURCE_TYPE FishFarm::GetResourceType()
{
	return RESOURCE_TYPE_FOOD;
}

void FishFarm::Draw() {}
