#include "PSysManager.h"

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
