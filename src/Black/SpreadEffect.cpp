#include "FireEffect.h"

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
