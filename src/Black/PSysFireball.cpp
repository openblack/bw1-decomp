#include "MagicFireBall.h"
#include "MagicFireBallInfo.h"

GMagicFireBallInfo GMagicFireBallInfo::Infos[MAGIC_FIREBALL_TYPE_LAST];

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
	return false;
}

bool32_t MagicFireBall::CanBeSetOnFire(Creature* creature)
{
	return false;
}

bool32_t MagicFireBall::CanBeStompedOnByCreature(Creature* creature)
{
	return false;
}

bool32_t MagicFireBall::CanBeThrownByCreature(Creature* creature)
{
	return false;
}

bool32_t MagicFireBall::CanBePutInAStoragePit(Creature* creature)
{
	return false;
}

bool32_t MagicFireBall::CanBeDestroyedByStoning(Creature* creature)
{
	return false;
}

bool32_t MagicFireBall::CanBeStonedAndEatenByCreature(Creature* creature)
{
	return false;
}

bool32_t MagicFireBall::CanBeExaminedByCreature(Creature* creature)
{
	return false;
}

bool32_t MagicFireBall::CanBeFoughtByCreature(Creature* creature)
{
	return false;
}

bool32_t MagicFireBall::CanActAsAContainer(Creature* creature)
{
	return false;
}

bool32_t MagicFireBall::CanBecomeAPhysicsObject()
{
	return false;
}

char* MagicFireBall::GetDebugText()
{
	return "FireBall:";
}

uint32_t MagicFireBall::SaveObject(LHOSFile&, const MapCoords*)
{
	return 0;
}

MagicFireBall::~MagicFireBall() {}
