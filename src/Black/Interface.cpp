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

bool32_t GInterface::Load(GameOSFile& file)
{
	if (GameThingWithPos::Load(file))
	{
		file.ReadPtr((GameThing**)&status);
		return true;
	}
	return false;
}

bool32_t GInterface::Save(GameOSFile& file)
{
	if (GameThingWithPos::Save(file))
	{
		file.WritePtr(status);
		return true;
	}
	return false;
}

GPlayer* GInterface::GetPlayer()
{
	return status->GetPlayer();
}

void GInterface::Cheat() {}
