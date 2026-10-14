#include "StreetLight.h"

bool32_t GStreetLight::Load(GameOSFile& file)
{
	if (GameThingWithPos::Load(file))
	{
		return true;
	}
	return false;
}

bool32_t GStreetLight::Save(GameOSFile& file)
{
	if (GameThingWithPos::Save(file))
	{
		return true;
	}
	return false;
}
