#include "MagicHand.h"
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
#include <string>
#endif

uint32_t GMagicHand::GetSaveType()
{
	return GAME_THING_TYPE_GMAGIC_HAND_1;
}

char* GMagicHand::GetDebugText()
{
	return "MagicHand:";
}

GMagicHand::~GMagicHand() {}
