#include "GameTimeConstants.h"
#include "Wonder.h"
#include "GameOSFile.h" /* For class GameOSFile */

void Wonder::MakeFunctional()
{
	Abode::MakeFunctional();
}

bool32_t Wonder::Load(GameOSFile& file)
{
	if (Abode::Load(file))
	{
		file.ReadIt(power);
		return true;
	}
	return false;
}

bool32_t Wonder::Save(GameOSFile& file)
{
	if (Abode::Save(file))
	{
		file.WriteIt(power);
		return true;
	}
	return false;
}
