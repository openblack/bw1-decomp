#include "GameTimeConstants.h"
#include "Interface.h"

#include "ColourConstants.h" /* For White */
#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"

uint32_t GInterface::GetSaveType()
{
	return GAME_THING_TYPE_GPLAYER_INTERFACE;
}
