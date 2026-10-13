#include "ShowNeeds.h"

#include "GameThingWithPos.h"
#include "ShowNeedsInfo.h"

GShowNeedsInfo GShowNeedsInfo::Infos[SHOW_NEEDS_INFO_LAST];

GPlayer* ShowNeeds::GetPlayer()
{
	if (thing.Get() != NULL)
	{
		return thing.Get()->GetPlayer();
	}
	return NULL;
}

GBaseInfo* GShowNeedsInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = SHOW_NEEDS_INFO_LAST;
	return Infos;
}
