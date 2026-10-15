#include "GameTimeConstants.h"
#include "CreatureMimic.h"

#include "ColourConstants.h" /* For White */
#include "CreatureMimicInfo.h"
#include <string> /* For the std::basic_string instantiations */

GBaseInfo* CreatureMimicInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = DETECTED_PLAYER_ACTION_LAST;
	return Infos;
}
