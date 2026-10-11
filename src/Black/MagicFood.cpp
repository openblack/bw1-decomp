#include "GameTimeConstants.h"
#include "MagicFood.h"

uint32_t MagicFood::GetSaveType()
{
	return GAME_THING_TYPE_MAGIC_FOOD;
}

IMPRESSIVE_TYPE MagicFood::GetImpressiveType()
{
	return IMPRESSIVE_TYPE_MAGIC_FOOD;
}
