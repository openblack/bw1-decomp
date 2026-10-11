#include "ViscousLiquid.h"
#include "Fragment.h"

uint32_t Fragment::GetSaveType()
{
	return GAME_THING_TYPE_FRAGMENT;
}

SOUND_COLLISION_TYPE Fragment::GetCollideSoundType()
{
	return SOUND_COLLISION_TYPE_BUSH;
}
