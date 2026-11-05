#include "PSysManager.h"

#include "PSysFileData.h"

long SpellTargets::GetNumObjects()
{
	return Objects.GetSize();
}

unsigned long PSysFileData::GetMaxGroups()
{
	return ARRAY_SIZE(Groups);
}

void PSysFileData::SetMaxGroups(unsigned long max_groups) {}

uint32_t PSysManager::GetSaveType()
{
	return GAME_THING_TYPE_PSYS_MANAGER;
}

GPlayer* PSysManager::GetPlayer()
{
	return Player;
}

char* PSysManager::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}
