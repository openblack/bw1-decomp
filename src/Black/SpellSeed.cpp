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
	return 18;
}

uint32_t SpellSeed::GetOrigin()
{
	return 2;
}

uint32_t SpellSeed::SaveObject(LHOSFile& param_1, const MapCoords* param_2)
{
	return 0;
}
