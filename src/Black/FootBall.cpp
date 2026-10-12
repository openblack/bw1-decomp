#include "ColourConstants.h" /* For White */
#include "GameTimeConstants.h"
#include "Football.h"
#include "FootballPositionInfo.h"

uint32_t Football::GetSaveType()
{
	return GAME_THING_TYPE_FOOTBALL;
}

bool Football::InteractsWithPhysicsObjects()
{
	return false;
}

LH3DObject::ObjectType Football::Get3DType()
{
	return LH3DObject::MORPHABLE;
}

GBaseInfo* GFootballPositionInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = FOOTBALL_POSITION_INFO_LAST;
	return Infos;
}
