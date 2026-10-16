#include "EffectInfo.h"
#include "MagicEffectInfo.h"
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
#include <string>
#endif

GBaseInfo* GEffectInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = EFFECT_INFO_LAST;
	return Infos;
}

GBaseInfo* GMagicEffectInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = MAGIC_TYPE_LAST;
	return Infos;
}
