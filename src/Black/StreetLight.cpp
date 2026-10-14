#include "StreetLight.h"

bool32_t GStreetLight::Load(GameOSFile& file)
{
	return GameThingWithPos::Load(file) != 0;
}

bool32_t GStreetLight::Save(GameOSFile& file)
{
	return GameThingWithPos::Save(file) != 0;
}
