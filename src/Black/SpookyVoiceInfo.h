#ifndef BW1_DECOMP_SPOOKY_VOICE_INFO_INCLUDED_H
#define BW1_DECOMP_SPOOKY_VOICE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GSpookyVoiceInfo : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 0072e220 BW1M100 10149010 GSpookyVoiceInfo::_dt(void)
	virtual ~GSpookyVoiceInfo();
	// BW1W120 0072e1c0 BW1M100 10149130 GSpookyVoiceInfo::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_SPOOKY_VOICE_INFO_INCLUDED_H */
