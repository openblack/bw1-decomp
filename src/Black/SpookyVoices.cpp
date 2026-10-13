#include "SpookyVoices.h"

#include "ColourConstants.h" /* For White */
#include "SpookyVoiceInfo.h"

GSpookyVoiceInfo GSpookyVoiceInfo::Infos[NUM_SPOOKY_NAMES];

GBaseInfo* GSpookyVoiceInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = NUM_SPOOKY_NAMES;
	return Infos;
}

GSpookyVoices::~GSpookyVoices() {}
