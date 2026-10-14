#include "GameTimeConstants.h"
#include "Wonder.h"
#include "GameOSFile.h" /* For class GameOSFile */

void Wonder::MakeFunctional()
{
	Abode::MakeFunctional();
}

uint32_t Wonder::Load(GameOSFile& file)
{
	if (Abode::Load(file))
	{
		file.ReadIt(power);
		return 1;
	}
	return 0;
}

uint32_t Wonder::Save(GameOSFile& file)
{
	if (Abode::Save(file))
	{
		file.WriteIt(power);
		return 1;
	}
	return 0;
}
