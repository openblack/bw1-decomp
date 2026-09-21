#include "CreatureAction.h"

#include <chlasm/Enum.h> /* For NUM_CREATURE_DESIRES */

#include "ColourConstants.h"           /* For White */
#include "CreatureInitialDesireInfo.h" /* For struct CreatureInitialDesireInfo */

// BW1W120 00c67e90
CreatureInitialDesireInfo CreatureInitialDesireInfo::g_CreatureInitialDesireInfos[NUM_CREATURE_DESIRES];

// BW1W120 00491830 BW1M119 01233b60
GBaseInfo* CreatureInitialDesireInfo::GetBaseInfo(uint32_t& count)
{
	count = sizeof(g_CreatureInitialDesireInfos) / sizeof(g_CreatureInitialDesireInfos[0]);
	return g_CreatureInitialDesireInfos;
}
