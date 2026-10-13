#include "ToolTipsInfo.h"

GToolTipsInfo GToolTipsInfo::Infos[TOOLTIPS_TYPE_LAST];

GBaseInfo* GToolTipsInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = TOOLTIPS_TYPE_LAST;
	return Infos;
}
