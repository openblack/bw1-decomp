#include "TownCreatureInfo.h"
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
#include <string>
#endif

GBaseInfo* TownCreatureInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = 0;
	return NULL;
}
