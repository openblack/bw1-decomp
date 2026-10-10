#include "MagicWood.h"

uint32_t MagicWood::GetSaveType()
{
	return GAME_THING_TYPE_MAGIC_WOOD;
}

IMPRESSIVE_TYPE MagicWood::GetImpressiveType()
{
	return IMPRESSIVE_TYPE_MAGIC_WOOD;
}

bool32_t MagicWood::IsAWoodPileOutsideStoragePit(Creature* param_1)
{
	return true;
}
