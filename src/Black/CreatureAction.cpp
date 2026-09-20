#include "CreatureAction.h"

#include <chlasm/Enum.h> /* For NUM_CREATURE_DESIRES */

#include "ColourConstants.h"           /* For White */
#include "CreatureInitialDesireInfo.h" /* For struct CreatureInitialDesireInfo */

// BW1W120 0x00c67e90 BW1M100 0x10a856b8
CreatureInitialDesireInfo CreatureInitialDesireInfo::g_CreatureInitialDesireInfos[NUM_CREATURE_DESIRES];

// BW1W120 00491830 BW1M100 1022ec70 CreatureInitialDesireInfo::GetBaseInfo(unsigned long &)
GBaseInfo* CreatureInitialDesireInfo::GetBaseInfo(uint32_t& count)
{
	count = sizeof(g_CreatureInitialDesireInfos) / sizeof(g_CreatureInitialDesireInfos[0]);
	return g_CreatureInitialDesireInfos;
}
