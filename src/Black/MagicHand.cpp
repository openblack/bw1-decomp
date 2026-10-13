#include "MagicHand.h"

uint32_t GMagicHand::GetSaveType()
{
	return GAME_THING_TYPE_GMAGIC_HAND_1;
}

char* GMagicHand::GetDebugText()
{
	return "MagicHand:";
}

GMagicHand::~GMagicHand() {}
