#include "GameTimeConstants.h"
#include "FireFly.h"

uint32_t FireFly::GetSaveType()
{
	return GAME_THING_TYPE_FIREFLY;
}

void FireFly::ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2) {}

bool FireFly::InteractsWithPhysicsObjects()
{
	return false;
}

bool32_t FireFly::CanBecomeAPhysicsObject()
{
	return false;
}

bool32_t FireFly::IsMoving() const
{
	return true;
}

char* FireFly::GetDebugText()
{
	return "FireFly:";
}
