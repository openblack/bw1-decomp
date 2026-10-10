#include "Creed.h"

bool Creed::InteractsWithPhysicsObjects()
{
	return false;
}

bool32_t Creed::CanBecomeAPhysicsObject()
{
	return false;
}

uint32_t Creed::GetSaveType()
{
	return GAME_THING_TYPE_CREED;
}
