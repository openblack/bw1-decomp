#include "GameTimeConstants.h"
#include "JobInfo.h"
#include <string> /* For the std::basic_string instantiations */

GBaseInfo* GJobInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = JOB_INFO_LAST;
	return InfoList;
}
