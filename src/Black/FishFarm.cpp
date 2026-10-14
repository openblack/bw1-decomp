#include "GameTimeConstants.h"
#include "FishFarm.h"
#include "FishFarmInfo.h"

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

bool32_t FishFarm::CreatureMustAvoid(Creature* param_1)
{
	return false;
}

PlannedMultiMapFixed* FishFarm::ConvertToPlanned()
{
	return NULL;
}

uint32_t FishFarm::GetCreatureBeliefType()
{
	return CREATURE_BELIEF_TYPE_FIELD;
}

bool32_t FishFarm::CanBePoodOn(Creature* param_1)
{
	return false;
}

bool32_t FishFarm::CanBePickedUpByCreature(Creature* param_1)
{
	return false;
}

bool32_t FishFarm::CanBeStompedOnByCreature(Creature* param_1)
{
	return false;
}

bool32_t FishFarm::CanBeGivenToVillager(Creature* param_1)
{
	return false;
}

bool32_t FishFarm::CanBePutInAStoragePit(Creature* param_1)
{
	return false;
}

bool32_t FishFarm::CanBeDestroyedByStoning(Creature* param_1)
{
	return false;
}

bool32_t FishFarm::CanBeExaminedByCreature(Creature* param_1)
{
	return false;
}

bool32_t FishFarm::CanBeEatenByCreature(Creature* param_1)
{
	return true;
}

bool32_t FishFarm::CanBeSleptNextToByCreature(Creature* param_1)
{
	return false;
}

bool32_t FishFarm::IsBeingBuilt(Creature* param_1)
{
	return false;
}

bool32_t FishFarm::NeedsRepair(Creature* param_1)
{
	return false;
}

bool32_t FishFarm::IsLockedInInteract()
{
	return true;
}

void FishFarm::Draw() {}

bool32_t FishFarm::ValidForLockedSelectProcess(GInterfaceStatus* param_1)
{
	return true;
}

bool32_t FishFarm::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1)
{
	return true;
}

bool32_t FishFarm::NetworkUnfriendlyEndLockedSelect()
{
	return false;
}

char* FishFarm::GetDebugText()
{
	return "FishFarm:";
}

Town* FishFarm::GetTown()
{
	return town.Get();
}

GBaseInfo* GFishFarmInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = FISH_FARM_INFO_LAST;
	return Infos;
}
