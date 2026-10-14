#include "GameTimeConstants.h"
#include "MagicFood.h"
#include "GameOSFile.h" /* For class GameOSFile */
#include "Player.h"     /* For class GPlayer */

uint32_t MagicFood::GetSaveType()
{
	return GAME_THING_TYPE_MAGIC_FOOD;
}

IMPRESSIVE_TYPE MagicFood::GetImpressiveType()
{
	return IMPRESSIVE_TYPE_MAGIC_FOOD;
}

char* MagicFood::GetDebugText()
{
	return "MagicFood:";
}

GPlayer* MagicFood::GetPlayer()
{
	return Player;
}

void MagicFood::SetPlayer(GPlayer* player)
{
	Player = player;
}

bool32_t MagicFood::Load(GameOSFile& file)
{
	if (PileFood::Load(file))
	{
		file.ReadPtr((GameThing**)&Player);
		return true;
	}
	return false;
}

bool32_t MagicFood::Save(GameOSFile& file)
{
	if (PileFood::Save(file))
	{
		file.WritePtr(Player);
		return true;
	}
	return false;
}
