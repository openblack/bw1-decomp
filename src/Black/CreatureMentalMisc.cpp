#include "CreatureMentalLearnAction.h"

GBaseInfo* CreatureActionKnownAboutEntry::GetBaseInfo(uint32_t& info_count)
{
	info_count = CREATURE_ACTION_KNOWN_ABOUT_LAST;
	return NormalActionKnownAboutInfo;
}
