#include "GameTimeConstants.h"
#include "BuildingSite.h"

#include "MultiMapFixed.h"
#include "CitadelBuildingSite.h"
#include "StandardBuildingSite.h"
#include "WorkshopBuildingSite.h"
#include "GameOSFile.h" /* For class GameOSFile */
#include "Pot.h"

void BuildingSite::BuildBy(float amount)
{
	GetBuilding()->BuildBy(amount);
}

uint32_t CitadelBuildingSite::GetSaveType()
{
	return GAME_THING_TYPE_CITADEL_BUILDING_SITE;
}

char* CitadelBuildingSite::GetDebugText()
{
	return "CitadelBuildingSite:";
}

void CitadelBuildingSite::CreatePileWood() {}

void CitadelBuildingSite::SetPileWood(Pot*) {}

uint32_t StandardBuildingSite::GetSaveType()
{
	return GAME_THING_TYPE_STANDARD_BUILDING_SITE;
}

char* StandardBuildingSite::GetDebugText()
{
	return "StandardBuildingSite:";
}

bool32_t StandardBuildingSite::Save(GameOSFile& file)
{
	if (BuildingSite::Save(file))
	{
		file.WritePtr(WoodPile);
		return true;
	}
	return false;
}

StandardBuildingSite::~StandardBuildingSite() {}

uint32_t WorkshopBuildingSite::GetSaveType()
{
	return GAME_THING_TYPE_WORKSHOP_BUILDING_SITE;
}

char* WorkshopBuildingSite::GetDebugText()
{
	return "WorkshopBuildingSite:";
}

uint32_t WorkshopBuildingSite::GetWoodForStats()
{
	return 0;
}

WorkshopBuildingSite::~WorkshopBuildingSite() {}

void WorkshopBuildingSite::Process() {}

void WorkshopBuildingSite::RemovePotFromStructure(PotStructure* structure) {}

void WorkshopBuildingSite::SetPileWood(Pot* pot) {}

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
