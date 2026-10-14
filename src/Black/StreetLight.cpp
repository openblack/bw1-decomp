#include "StreetLight.h"

uint32_t GStreetLight::Load(GameOSFile& file)
{
	if (GameThingWithPos::Load(file))
	{
		return 1;
	}
	return 0;
}

uint32_t GStreetLight::Save(GameOSFile& file)
{
	if (GameThingWithPos::Save(file))
	{
		return 1;
	}
	return 0;
}
