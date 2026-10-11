#include "GameTimeConstants.h"
#include "PSysAtomCore.h"

uint32_t AtomCore::GetSaveType()
{
	return GAME_THING_TYPE_ATOM_CORE;
}

char* AtomCore::GetDebugText()
{
	return "##a_class:";
}

char* AtomCollection::GetDebugText()
{
	return "##a_class:";
}
