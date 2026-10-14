#include "GameTimeConstants.h"
#include "PlayerComputer.h"

#include "ColourConstants.h" /* For White */
#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameOSFile.h" /* For class GameOSFile */

SCRIPT_OBJECT_TYPE GComputerPlayer::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_COMPUTER_PLAYER;
}

void GComputerPlayer::Draw() {}

uint32_t GComputerAttitudeToPlayer::Load(GameOSFile& file)
{
	if (GameThing::Load(file))
	{
		file.ReadIt(Attitude);
		return 1;
	}
	return 0;
}

uint32_t GComputerAttitudeToPlayer::Save(GameOSFile& file)
{
	if (GameThing::Save(file))
	{
		file.WriteIt(Attitude);
		return 1;
	}
	return 0;
}
