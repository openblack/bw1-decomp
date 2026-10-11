#include "GameTimeConstants.h"
#include "SpellShield.h"

#include "ColourConstants.h" /* For White */
#include "MagicShield.h"
#include "PhysicalShield.h"
#include "PhysicsConstantsType.h" /* For PHYSICS_CONSTANTS_TYPE_SPELL_SHIELD */

uint32_t MagicShield::GetSaveType()
{
	return GAME_THING_TYPE_MAGIC_SHIELD;
}

uint32_t PhysicalShield::GetSaveType()
{
	return GAME_THING_TYPE_PHYSICAL_SHIELD;
}

bool PhysicalShield::GetAlwaysRemainsInPhysicsInternalSystem()
{
	return true;
}

float SpellShield::GetRadius()
{
	return Get2DRadius();
}

MapShield::MapShield() : spell(NULL), SpellInfo(NULL)
{
	SetToZero();
}

void MapShield::SetToZero()
{
	spell = NULL;
	SpellInfo = NULL;
}

MagicShield::MagicShield() {}

PhysicalShield::PhysicalShield()
{
	SetToZero();
}

bool32_t MapShield::ValidForPlaceInHand(GInterfaceStatus* param_1)
{
	return false;
}

bool32_t MapShield::HandShouldFeelWithMeshIntersect()
{
	return false;
}

uint32_t MapShield::SaveObject(LHOSFile& param_1, const MapCoords* param_2)
{
	return 0;
}

uint32_t MapShield::GetSaveType()
{
	return GAME_THING_TYPE_UNUSED_000;
}

bool32_t MapShield::CanBecomeAPhysicsObject()
{
	return false;
}

void MagicShield::ProcessShield() {}

void MagicShield::DrawShield() {}

bool32_t MagicShield::IsEffectReceiver(EffectValues* param_1)
{
	return false;
}

bool MagicShield::InteractsWithPhysicsObjects()
{
	return false;
}

void PhysicalShield::Draw() {}

bool PhysicalShield::InteractsWithPhysicsObjects()
{
	return true;
}

uint32_t PhysicalShield::GetPhysicsConstantsType()
{
	return PHYSICS_CONSTANTS_TYPE_SPELL_SHIELD;
}

void MagicShield::Draw() {}
