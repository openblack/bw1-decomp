#include "GameTimeConstants.h"
#include "PlayerComputer.h"

#include "ColourConstants.h" /* For White */
#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"

SCRIPT_OBJECT_TYPE GComputerPlayer::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_COMPUTER_PLAYER;
}
