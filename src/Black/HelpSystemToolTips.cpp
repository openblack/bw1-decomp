#include "ToolTipsInfo.h"

GBaseInfo* GToolTipsInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = TOOLTIPS_TYPE_LAST;
	return Infos;
}
