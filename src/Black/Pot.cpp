#include "GameTimeConstants.h"
#include "Pot.h"

#include "ColourConstants.h" /* For White */
#include "PileFood.h"

uint32_t PileFood::GetSaveType()
{
	return GAME_THING_TYPE_PILE_FOOD;
}
