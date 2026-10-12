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

bool32_t MagicFireBall::CanBePickedUpByCreature(Creature* creature)
{
	return 0;
}

bool32_t MagicFireBall::CanBeSetOnFire(Creature* creature)
{
	return 0;
}

bool32_t MagicFireBall::CanBeStompedOnByCreature(Creature* creature)
{
	return 0;
}

bool32_t MagicFireBall::CanBeThrownByCreature(Creature* creature)
{
	return 0;
}

bool32_t MagicFireBall::CanBePutInAStoragePit(Creature* creature)
{
	return 0;
}

bool32_t MagicFireBall::CanBeDestroyedByStoning(Creature* creature)
{
	return 0;
}

bool32_t MagicFireBall::CanBeStonedAndEatenByCreature(Creature* creature)
{
	return 0;
}

bool32_t MagicFireBall::CanBeExaminedByCreature(Creature* creature)
{
	return 0;
}

bool32_t MagicFireBall::CanBeFoughtByCreature(Creature* creature)
{
	return 0;
}
