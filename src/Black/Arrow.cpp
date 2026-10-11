#include "Arrow.h"
#include "MobileObject.h"

uint32_t MobileObject::GetSaveType()
{
	return GAME_THING_TYPE_MOBILE_OBJECT;
}

float MobileObject::GetXAngle()
{
	return XAngle;
}

float MobileObject::GetZAngle()
{
	return ZAngle;
}
