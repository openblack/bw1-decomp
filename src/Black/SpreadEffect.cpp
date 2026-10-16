#include "FireEffect.h"
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
#include <string>
#endif

uint32_t FireEffect::GetSaveType()
{
	return GAME_THING_TYPE_FIRE_EFFECT;
}

GPlayer* FireEffect::GetPlayer()
{
	return player;
}

char* FireEffect::GetDebugText()
{
	return "SpreadEffect:";
}

FireEffect::~FireEffect() {}
