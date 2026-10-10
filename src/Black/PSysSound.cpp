#include "GameTimeConstants.h"
#include "PSysSound.h"
#include "DefensiveSphere.h"

uint32_t DefensiveSphere::GetSaveType()
{
	return GAME_THING_TYPE_DEFENSIVE_SPHERE;
}

uint32_t PSysSound::GetSaveType()
{
	return GAME_THING_TYPE_PSYS_SOUND;
}
