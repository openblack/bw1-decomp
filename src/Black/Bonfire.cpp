#include "Bonfire.h"

uint32_t Bonfire::GetSaveType()
{
	return GAME_THING_TYPE_BONFIRE;
}

bool32_t Bonfire::CanBecomeAPhysicsObject()
{
	return false;
}

bool Bonfire::InteractsWithPhysicsObjects()
{
	return false;
}
