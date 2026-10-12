#include "GameTimeConstants.h"
#include "JobInfo.h"

GBaseInfo* GJobInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = JOB_INFO_LAST;
	return InfoList;
}
