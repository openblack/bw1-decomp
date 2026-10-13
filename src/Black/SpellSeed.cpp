#include "GameTimeConstants.h"
#include "SpellSeed.h"

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
