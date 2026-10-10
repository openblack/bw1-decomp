#include "GameTimeConstants.h"
#include "Reward.h"

uint32_t Reward::GetSaveType()
{
	return GAME_THING_TYPE_REWARD;
}

void Reward::PhysicsEditorCreate(int param_1) {}

bool32_t Reward::ValidForPlaceInHand(GInterfaceStatus* param_1)
{
	return false;
}

uint32_t Reward::GetOverwriteTapToolTip()
{
	return 3832;
}
