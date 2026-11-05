#include "Arrow.h"
#include "MobileObject.h"
#include "ArrowInfo.h"

GBaseInfo* GArrowInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = ARRAY_SIZE(Infos);
	return Infos;
}
