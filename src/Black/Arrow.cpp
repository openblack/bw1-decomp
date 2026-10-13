#include "Arrow.h"
#include "MobileObject.h"
#include "ArrowInfo.h"

uint32_t MobileObject::GetSaveType()
{
	return GAME_THING_TYPE_MOBILE_OBJECT;
}

GBaseInfo* GArrowInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = ARRAY_SIZE(Infos);
	return Infos;
}
