#include "Arrow.h"
#include "MobileObject.h"

uint32_t MobileObject::GetSaveType()
{
	return GAME_THING_TYPE_MOBILE_OBJECT;
}

bool32_t MobileObject::CanBeStompedOnByCreature(Creature* creature)
{
	return true;
}

bool32_t MobileObject::CanBeThrownInTheSeaPlayfully(Creature* creature)
{
	return true;
}

bool32_t MobileObject::CanBePlayedWithByCreature(Creature* creature)
{
	return true;
}

bool32_t MobileObject::IsMobileObject()
{
	return true;
}
