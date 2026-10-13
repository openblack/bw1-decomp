#include "GameTimeConstants.h"
#include "PlaytimeDance.h"
#include "CellSize.h"
#include "PlaytimeInfo.h"

GPlaytimeInfo GPlaytimeInfo::Infos[PLAYTIME_INFO_LAST];

Town* PlaytimeElement::GetTown()
{
	return town;
}
