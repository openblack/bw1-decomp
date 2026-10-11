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

Fragment::Fragment() : frag_mesh(NULL), field_0x98(0), field_0xa0(0), field_0xa4(0) {}

bool32_t Fragment::CanBePickedUpByCreature(Creature* creature)
{
	return false;
}

bool32_t Fragment::ValidForPlaceInHand(GInterfaceStatus* param_1)
{
	return false;
}

uint32_t Fragment::InterfaceValidToTap(GInterfaceStatus* param_1)
{
	return 0;
}

bool32_t Fragment::CanBeThrownByPlayer()
{
	return false;
}

bool Fragment::InteractsWithPhysicsObjects()
{
	return false;
}

void Fragment::ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2) {}

bool32_t Fragment::ShouldFootpathsGoRound()
{
	return false;
}
