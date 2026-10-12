#include "MagicFireBall.h"
#include "MagicFireBallInfo.h"

uint32_t MagicFireBall::GetSaveType()
{
	return GAME_THING_TYPE_MAGIC_FIREBALL;
}

void MagicFireBall::InsertMapObject() {}

void MagicFireBall::Draw() {}

GBaseInfo* GMagicFireBallInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = MAGIC_FIREBALL_TYPE_LAST;
	return Infos;
}
