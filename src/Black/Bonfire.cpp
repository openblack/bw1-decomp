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

bool32_t MobileStatic::CanBeStompedOnByCreature(Creature* creature)
{
	return true;
}

bool32_t MobileStatic::CanBePlayedWithByCreature(Creature* creature)
{
	return true;
}

bool32_t MobileStatic::CanBeThrownInTheSeaPlayfully(Creature* creature)
{
	return true;
}

uint32_t MobileStatic::ValidToApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords)
{
	return 1;
}

bool32_t MobileStatic::IsMobileStatic()
{
	return true;
}

bool32_t MobileStatic::IsCastShadowAtNight()
{
	return true;
}

bool32_t Rock::IsRock()
{
	return true;
}

bool32_t Rock::CanBeAttackedByCreature(Creature* creature)
{
	return true;
}

bool32_t Rock::ShouldFootpathsGoRound()
{
	return true;
}
