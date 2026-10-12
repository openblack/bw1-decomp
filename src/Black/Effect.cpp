#include "EffectInfo.h"
#include "MagicEffectInfo.h"

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
