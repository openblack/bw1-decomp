#include "GameTimeConstants.h"
#include "Flock.h"

uint32_t Flock::GetSaveType()
{
	return GAME_THING_TYPE_FLOCK;
}

Town* Flock::GetTown()
{
	return town;
}

SCRIPT_OBJECT_TYPE Flock::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_FLOCK;
}
