#include "PSysManager.h"
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
#include <string>
#endif

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
