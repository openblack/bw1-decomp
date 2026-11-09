#include "GameTimeConstants.h"
#include "SpellSeed.h"

#include <chlasm/AllMeshes.h>     /* For MSH_DUMMY */
#include <chlasm/HelpTextEnums.h> /* For HELP_TEXT_* */
#include "OneOffSpellSeed.h"

uint32_t SpellSeed::GetSaveType()
{
	return GAME_THING_TYPE_SPELL_SEED;
}

void SpellSeed::InsertMapObject() {}

void SpellSeed::RemoveMapObject() {}

uint32_t SpellSeed::GetCreatureBeliefType()
{
	return CREATURE_BELIEF_TYPE_SPELL_SEED;
}

uint32_t SpellSeed::GetOrigin()
{
	return OBJECT_ORIGIN_MAGIC;
}

uint32_t SpellSeed::SaveObject(LHOSFile& param_1, const MapCoords* param_2)
{
	return 0;
}

bool32_t SpellSeed::HandShouldFeelWithMeshIntersect()
{
	return false;
}

bool SpellSeed::InteractsWithPhysicsObjects()
{
	return false;
}

bool32_t SpellSeed::IsEffectReceiver(EffectValues* param_1)
{
	return false;
}

unsigned int SpellSeed::IsInterfacePowerUpWhenInHand() const
{
	return true;
}

float SpellSeed::GetPSysPower() const
{
	return PSysPower;
}

bool32_t OneOffSpellSeed::IsEffectReceiver(EffectValues* values)
{
	return false;
}

uint32_t OneOffSpellSeed::InterfaceValidToTap(GInterfaceStatus* status)
{
	return true;
}

MESH_LIST OneOffSpellSeed::GetMesh() const
{
	return MSH_DUMMY;
}

PHYSICS_CONSTANTS_TYPE OneOffSpellSeed::GetPhysicsConstantsType()
{
	return PHYSICS_CONSTANTS_TYPE_ONE_OFF_SPELL;
}

uint32_t OneOffSpellSeed::GetOverwriteTapToolTip()
{
	return HELP_TEXT_TOOLTIP_133;
}
