#include "GameTimeConstants.h"
#include "JobInfo.h"
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
#include <string>
#endif

GBaseInfo* GJobInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = JOB_INFO_LAST;
	return InfoList;
}
