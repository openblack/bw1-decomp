#include "GameTimeConstants.h"
#include "PlaytimeDance.h"
#include "CellSize.h"
#include "PlaytimeInfo.h"
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
#include <string>
#endif

GPlaytimeInfo GPlaytimeInfo::Infos[PLAYTIME_INFO_LAST];

Town* PlaytimeElement::GetTown()
{
	return town;
}

GBaseInfo* GPlaytimeInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = PLAYTIME_INFO_LAST;
	return Infos;
}
