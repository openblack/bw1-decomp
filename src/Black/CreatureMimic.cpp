#include "GameTimeConstants.h"
#include "CreatureMimic.h"

#include "ColourConstants.h" /* For White */
#include "CreatureMimicInfo.h"
#include "StdStringInitializers.h"

GBaseInfo* CreatureMimicInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = DETECTED_PLAYER_ACTION_LAST;
	return Infos;
}
