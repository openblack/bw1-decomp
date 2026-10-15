#include "GameTimeConstants.h"
#include "HelpSystem.h"

#include "ColourConstants.h" /* For White */
#include "HelpSystemInfo.h"

GBaseInfo* HelpSystemInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = 1;
	return &Info;
}
