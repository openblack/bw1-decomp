#include "StreetLight.h"

bool32_t GStreetLight::Load(GameOSFile& file)
{
	return GameThingWithPos::Load(file) != false;
}

bool32_t GStreetLight::Save(GameOSFile& file)
{
	return GameThingWithPos::Save(file) != false;
}
