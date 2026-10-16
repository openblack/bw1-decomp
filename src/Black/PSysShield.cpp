#include "GameTimeConstants.h"
#include "DefensiveShield.h"
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
#include <string>
#endif

uint32_t DefensiveShield::GetSaveType()
{
	return GAME_THING_TYPE_UNUSED_000;
}

char* DefensiveShield::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}
