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

Football::Football(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale, float food,
                   int wood)
	: Abode(coords, info, town, y_angle, scale, food, wood), SavedThing(NULL)
{
	SetToZero();
	Functional = 0;
	PlayState = FOOTBALL_STATES_0;
	BallChaser = NULL;
	GoalTimer = 0;
	PlayStateTimer = 0;
	field_0x310 = 0;
	field_0x314 = 0;
	TheBall = NULL;
	field_0x30c = 1.0f;
}

bool32_t Football::IsFootball()
{
	return true;
}
