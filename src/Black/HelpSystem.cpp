#include "GameTimeConstants.h"
#include "HelpSystem.h"

#include "ColourConstants.h" /* For White */
#include "HelpSystemInfo.h"
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
#include <string>
#endif

GBaseInfo* HelpSystemInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = 1;
	return &Info;
}
