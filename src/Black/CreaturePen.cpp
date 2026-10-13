#include "GameTimeConstants.h"
#include "CreaturePen.h"

#include "ColourConstants.h" /* For White */
#include "CreaturePenInfo.h"

GBaseInfo* GCreaturePenInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = 5;
	return Infos;
}
