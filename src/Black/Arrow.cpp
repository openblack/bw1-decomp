#include "Arrow.h"
#include "MobileObject.h"

uint32_t MobileObject::GetSaveType()
{
	return GAME_THING_TYPE_MOBILE_OBJECT;
}

uint32_t MobileObject::GetCreatureMimicType()
{
	return CREATURE_MIMIC_TYPE_MOBILE_OBJECT;
}
