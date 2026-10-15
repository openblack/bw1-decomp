#include "GameTimeConstants.h"
#include "Reward.h"
#include <chlasm/HelpTextEnums.h> /* For HELP_TEXT_* */
#include "RewardInfo.h"
#include "GameOSFile.h" /* For class GameOSFile */
#include "Town.h"
#include "Player.h"

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

char* Reward::GetDebugText()
{
	return "Reward:";
}

void Reward::ResolveLoad()
{
	Object::ResolveLoad();
}

bool32_t Reward::Load(GameOSFile& file)
{
	if (MobileObject::Load(file))
	{
		file.ReadPtr((GameThing**)&field_0x68);
		file.ReadPtr((GameThing**)&Player);
		file.ReadPtr((GameThing**)&town);
		file.ReadIt(field_0x78);
		file.ReadIt(field_0x7c);
		file.ReadIt(field_0x80);
		file.ReadIt(field_0x84);
		file.ReadIt(field_0x88);
		file.ReadIt(field_0x8c);
		file.ReadIt(field_0x90);
		file.ReadIt(field_0x98);
		file.ReadIt(field_0x9c);
		file.ReadIt(field_0xa4);
		return true;
	}
	return false;
}

bool32_t Reward::Save(GameOSFile& file)
{
	if (MobileObject::Save(file))
	{
		file.WritePtr(field_0x68);
		file.WritePtr(Player);
		file.WritePtr(town);
		file.WriteIt(field_0x78);
		file.WriteIt(field_0x7c);
		file.WriteIt(field_0x80);
		file.WriteIt(field_0x84);
		file.WriteIt(field_0x88);
		file.WriteIt(field_0x8c);
		file.WriteIt(field_0x90);
		file.WriteIt(field_0x98);
		file.WriteIt(field_0x9c);
		file.WriteIt(field_0xa4);
		return true;
	}
	return false;
}

GPlayer* Reward::GetPlayer()
{
	return Player;
}

bool32_t Reward::IsReward() const
{
	return true;
}
