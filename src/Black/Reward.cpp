#include "GameTimeConstants.h"
#include "Reward.h"
#include <chlasm/HelpTextEnums.h> /* For HELP_TEXT_* */
#include "RewardInfo.h"

GRewardInfo     GRewardInfo::Infos[REWARD_OBJECT_INFO_LAST];
GRewardProgress GRewardProgress::InfosGood[REWARD_INFO_PROGRESS_GOOD_LAST];

unsigned char LandAvoid[512][512];

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
	return HELP_TEXT_TOOLTIP_126;
}

GBaseInfo* GRewardInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = REWARD_OBJECT_INFO_LAST;
	return Infos;
}

GBaseInfo* GRewardProgress::GetBaseInfo(uint32_t& info_count)
{
	info_count = REWARD_INFO_PROGRESS_GOOD_LAST;
	return InfosGood;
}

SCRIPT_OBJECT_TYPE Reward::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_REWARD;
}
