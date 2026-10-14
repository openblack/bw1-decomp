#include "MagicWood.h"
#include "GameOSFile.h" /* For class GameOSFile */
#include "Player.h"     /* For class GPlayer */

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

char* MagicWood::GetDebugText()
{
	return "MagicWood:";
}

GPlayer* MagicWood::GetPlayer()
{
	return Player;
}

bool32_t MagicWood::Load(GameOSFile& file)
{
	if (PileWood::Load(file))
	{
		file.ReadPtr((GameThing**)&Player);
		return true;
	}
	return false;
}

bool32_t MagicWood::Save(GameOSFile& file)
{
	if (PileWood::Save(file))
	{
		file.WritePtr(Player);
		return true;
	}
	return false;
}
