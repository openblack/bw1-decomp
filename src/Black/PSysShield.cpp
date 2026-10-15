#include "GameTimeConstants.h"
#include "DefensiveShield.h"
#include <string> /* For the std::basic_string instantiations */

uint32_t DefensiveShield::GetSaveType()
{
	return GAME_THING_TYPE_UNUSED_000;
}

char* DefensiveShield::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}
