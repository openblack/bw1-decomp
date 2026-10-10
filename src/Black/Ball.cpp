#include "GameTimeConstants.h"
#include "Ball.h"

uint32_t Ball::GetSaveType()
{
	return GAME_THING_TYPE_BALL;
}

SCRIPT_OBJECT_TYPE Ball::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_BALL;
}
