#include "StreetLantern.h"

bool GStreetLantern::InteractsWithPhysicsObjects()
{
	return false;
}

SCRIPT_OBJECT_TYPE GStreetLantern::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_MOBILE_STATIC;
}

bool32_t GStreetLantern::CreatureMustAvoid(Creature*)
{
	return false;
}
