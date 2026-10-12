#include "MultiMapFixed.h"
#include "CreatureMentalLearnAction.h"

bool32_t MultiMapFixed::IsBuildingWhichIsBeingBuilt(Creature* creature)
{
	if (GetPercentBuilt() < 1.0f || (Damaged == true && GetLife() < 1.0f))
	{
		return true;
	}
	return false;
}

GBaseInfo* CreatureActionKnownAboutEntry::GetBaseInfo(uint32_t& info_count)
{
	info_count = CREATURE_ACTION_KNOWN_ABOUT_LAST;
	return NormalActionKnownAboutInfo;
}
