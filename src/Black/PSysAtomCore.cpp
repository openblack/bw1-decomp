#include "GameTimeConstants.h"
#include "PSysAtomCore.h"
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
#include <string>
#endif

uint32_t AtomCore::GetSaveType()
{
	return GAME_THING_TYPE_ATOM_CORE;
}

char* AtomCore::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}

char* AtomCollection::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}
