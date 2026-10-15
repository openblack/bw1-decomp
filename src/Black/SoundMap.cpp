#include "GameTimeConstants.h"
#include "SoundMap.h"
#include "SoundInfo.h"
#include <string> /* For the std::basic_string instantiations */

GBaseInfo* GSoundInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = 1;
	return &Info;
}
