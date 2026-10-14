#include "GameTimeConstants.h"
#include "GraveYard.h"
#include "GameOSFile.h" /* For class GameOSFile */

bool Graveyard::InteractsWithPhysicsObjects()
{
	return false;
}

uint32_t Graveyard::Load(GameOSFile& file)
{
	if (Abode::Load(file))
	{
		file.ReadIt(field_0xc4);
		return 1;
	}
	return 0;
}

uint32_t Graveyard::Save(GameOSFile& file)
{
	if (Abode::Save(file))
	{
		file.WriteIt(field_0xc4);
		return 1;
	}
	return 0;
}
