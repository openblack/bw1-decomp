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

uint32_t Bonfire::InterfaceValidToTap(GInterfaceStatus* param_1)
{
	return 0;
}

bool32_t Bonfire::ValidForPlaceInHand(GInterfaceStatus* param_1)
{
	return false;
}

void Bonfire::SetToZero() {}

void Bonfire::ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2) {}

void Bonfire::PhysicsEditorCreate(int param_1)
{
	Pos.altitude = 0.0f;
}
