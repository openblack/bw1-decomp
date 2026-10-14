#include "GameTimeConstants.h"
#include "Interface.h"

#include "ColourConstants.h" /* For White */
#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameOSFile.h"      /* For class GameOSFile */
#include "InterfaceStatus.h" /* For class GInterfaceStatus */

uint32_t GInterface::GetSaveType()
{
	return GAME_THING_TYPE_GPLAYER_INTERFACE;
}

char* GInterface::GetDebugText()
{
	return "Interface:";
}

bool32_t GInterface::LoadFiles()
{
	return true;
}

uint32_t GInterface::Load(GameOSFile& file)
{
	if (GameThingWithPos::Load(file))
	{
		file.ReadPtr((GameThing**)&status);
		return 1;
	}
	return 0;
}

uint32_t GInterface::Save(GameOSFile& file)
{
	if (GameThingWithPos::Save(file))
	{
		file.WritePtr(status);
		return 1;
	}
	return 0;
}

void GInterface::Cheat() {}
