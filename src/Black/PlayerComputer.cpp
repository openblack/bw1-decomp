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

bool32_t GComputerAttitudeToPlayer::Load(GameOSFile& file)
{
	if (GameThing::Load(file))
	{
		file.ReadIt(Attitude);
		return true;
	}
	return false;
}

bool32_t GComputerAttitudeToPlayer::Save(GameOSFile& file)
{
	if (GameThing::Save(file))
	{
		file.WriteIt(Attitude);
		return true;
	}
	return false;
}

bool32_t GComputerSeen::Load(GameOSFile& file)
{
	if (GameThing::Load(file))
	{
		file.ReadPtr((GameThing**)&field_0x14);
		file.ReadIt(field_0x18);
		return true;
	}
	return false;
}

bool32_t GComputerSeen::Save(GameOSFile& file)
{
	if (GameThing::Save(file))
	{
		file.WritePtr(field_0x14);
		file.WriteIt(field_0x18);
		return true;
	}
	return false;
}
