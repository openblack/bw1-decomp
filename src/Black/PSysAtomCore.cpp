#include "GameTimeConstants.h"
#include "PSysAtomCore.h"
// The BW1W100 build of this unit has no std::basic_string initializers.
#if !defined(VERSION_BW1W100)
#include <string> /* For the std::basic_string instantiations */
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
