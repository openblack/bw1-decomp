#include "GameTimeConstants.h"
#include "PlaytimeDance.h"
#include "CellSize.h"
#include "PlaytimeInfo.h"
#include <string> /* For the std::basic_string instantiations */

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
