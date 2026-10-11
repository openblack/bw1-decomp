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

uint32_t Fragment::InterfaceValidToTap(GInterfaceStatus* interface_status)
{
	return 0;
}

void Fragment::ReactToPhysicsImpact(PhysicsObject* physics_object, bool param_2) {}
