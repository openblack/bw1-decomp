#include "GameTimeConstants.h"
#include "MapShieldInfo.h"
#include "SpellShield.h"

#include "ColourConstants.h" /* For White */
#include "MagicShield.h"
#include "PhysicalShield.h"
#include "PhysicsConstantsType.h" /* For PHYSICS_CONSTANTS_TYPE_SPELL_SHIELD */
#include "SpellStormAndTornado.h"

GMapShieldInfo GMapShieldInfo::Infos[MAP_SHIELD_INFO_LAST];

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

SpellShield* SpellShield::IsSpellShield()
{
	return this;
}

float SpellShield::GetRadius()
{
	return Get2DRadius();
}

float SpellShield::Get2DRadius()
{
	return GetSpellMagnitude();
}

char* SpellShield::GetDebugText()
{
	return "SpellShield:";
}

void SpellShield::CloseDown()
{
	SpellWithObjects::CloseDown();
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

float MapShield::GetTopPos()
{
	return 0.0f;
}

bool MapShield::ShouldPhysicsRaiseObjectUntilNotIntersectingThis(Object* object)
{
	return false;
}

bool32_t MapShield::CanBecomeAPhysicsObject()
{
	return false;
}

char* MapShield::GetDebugText()
{
	return "MapShield";
}

bool32_t MagicShield::Load(GameOSFile& file)
{
	return MapShield::Load(file) != false;
}

bool32_t MagicShield::Save(GameOSFile& file)
{
	return MapShield::Save(file) != false;
}

LH3DObject::ObjectType MagicShield::Get3DType()
{
	return Object::Get3DType();
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

char* MagicShield::GetDebugText()
{
	return "MagicShield:";
}

LH3DObject::ObjectType PhysicalShield::Get3DType()
{
	return LH3DObject::MORPHABLE;
}

float PhysicalShield::ApplyEffect(EffectValues& values, int param_2)
{
	return Object::ApplyEffect(values, param_2);
}

uint32_t PhysicalShield::DestroyedByEffect(GPlayer* player, float damage)
{
	return Object::DestroyedByEffect(player, damage);
}

void PhysicalShield::Draw() {}

bool PhysicalShield::InteractsWithPhysicsObjects()
{
	return true;
}

PHYSICS_CONSTANTS_TYPE PhysicalShield::GetPhysicsConstantsType()
{
	return PHYSICS_CONSTANTS_TYPE_SPELL_SHIELD;
}

char* PhysicalShield::GetDebugText()
{
	return "PhysicalShield:";
}

void MagicShield::Draw() {}

float SpellStormAndTornado::GetRadius()
{
	return Get2DRadius();
}

float SpellStormAndTornado::Get2DRadius()
{
	return GetSpellMagnitude();
}

char* SpellStormAndTornado::GetDebugText()
{
	return "SpellStormAndTornado:";
}
