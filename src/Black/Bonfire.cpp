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

char* Bonfire::GetDebugText()
{
	return "Bonfire:";
}

IMMERSION_EFFECT_TYPE Bonfire::GetInHandImmersionTexture()
{
	return Object::GetInHandImmersionTexture();
}

SCRIPT_OBJECT_TYPE Bonfire::GetScriptObjectType()
{
	return MobileStatic::GetScriptObjectType();
}

void Bonfire::Draw()
{
	Rock::Draw();
}

bool32_t MobileStatic::CanBeStompedOnByCreature(Creature*)
{
	return true;
}

bool32_t MobileStatic::CanBePlayedWithByCreature(Creature*)
{
	return true;
}

bool32_t MobileStatic::CanBeThrownInTheSeaPlayfully(Creature*)
{
	return true;
}

uint32_t MobileStatic::GetTastiness()
{
	return 0;
}

bool32_t MobileStatic::IsMobileStatic()
{
	return true;
}

bool32_t MobileStatic::IsCastShadowAtNight()
{
	return true;
}

bool32_t Rock::IsResourceStore(RESOURCE_TYPE)
{
	return false;
}

bool32_t Rock::IsRock()
{
	return true;
}

bool32_t Rock::CanBeAttackedByCreature(Creature*)
{
	return true;
}

bool32_t Rock::ShouldFootpathsGoRound()
{
	return true;
}
