#include "GameTimeConstants.h"
#include "BuildingSite.h"

#include "MultiMapFixed.h"
#include "CitadelBuildingSite.h"
#include "StandardBuildingSite.h"
#include "WorkshopBuildingSite.h"

void BuildingSite::BuildBy(float amount)
{
	GetBuilding()->BuildBy(amount);
}

uint32_t CitadelBuildingSite::GetSaveType()
{
	return GAME_THING_TYPE_CITADEL_BUILDING_SITE;
}

uint32_t StandardBuildingSite::GetSaveType()
{
	return GAME_THING_TYPE_STANDARD_BUILDING_SITE;
}

uint32_t WorkshopBuildingSite::GetSaveType()
{
	return GAME_THING_TYPE_WORKSHOP_BUILDING_SITE;
}

MultiMapFixed* BuildingSite::GetRootBuilding()
{
	return RootBuilding;
}

uint32_t BuildingSite::GetSaveType()
{
	return GAME_THING_TYPE_UNUSED_000;
}

void BuildingSite::Init() {}

Town* BuildingSite::GetTown()
{
	if (RootBuilding != NULL)
	{
		return RootBuilding->GetTown();
	}
	return NULL;
}
