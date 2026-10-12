#include "SpookyVoices.h"

#include "ColourConstants.h" /* For White */
#include "SpookyVoiceInfo.h"

GBaseInfo* GSpookyVoiceInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = NUM_SPOOKY_NAMES;
	return Infos;
}
