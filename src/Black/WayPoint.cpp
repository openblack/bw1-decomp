#include "WayPoint.h"

uint32_t WayPoint::GetSaveType()
{
	return GAME_THING_TYPE_WAYPOINT;
}

char* WayPoint::GetDebugText()
{
	return "WayPoint:";
}

const char* WayPoint::GetText()
{
	return "WayPoint";
}

WayPoint::~WayPoint() {}
