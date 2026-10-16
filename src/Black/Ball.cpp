#include "GameTimeConstants.h"
#include "Ball.h"
#include "PhysicsConstantsType.h" /* For enum PHYSICS_CONSTANTS_TYPE */
#include "BallInfo.h"

uint32_t Ball::GetSaveType()
{
	return GAME_THING_TYPE_BALL;
}

SCRIPT_OBJECT_TYPE Ball::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_BALL;
}

bool32_t Ball::CanBePickedUpByCreature(Creature* param_1)
{
	return true;
}

uint32_t Ball::Process()
{
	return 1;
}

PHYSICS_CONSTANTS_TYPE Ball::GetPhysicsConstantsType()
{
	return PHYSICS_CONSTANTS_TYPE_FOOTBALL;
}

bool32_t Ball::IsToy(Creature* param_1)
{
	return true;
}

bool32_t Ball::IsToyBall(Creature* param_1)
{
	return true;
}

char* Ball::GetDebugText()
{
	return "Ball:";
}

GBaseInfo* GBallInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = ARRAY_SIZE(Infos);
	return Infos;
}
