#include "GameTimeConstants.h"
#include "JobInfo.h"
#include "StdStringInitializers.h"

GBaseInfo* GJobInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = JOB_INFO_LAST;
	return InfoList;
}
