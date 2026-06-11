#ifndef BW1_DECOMP_SPOOKY_VOICE_INFO_INCLUDED_H
#define BW1_DECOMP_SPOOKY_VOICE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GSpookyVoiceInfo: public GBaseInfo
{
public:

    // Override methods

    // win1.41 0072e220 mac 10149010 GSpookyVoiceInfo::_dt(void)
    virtual ~GSpookyVoiceInfo();
    // win1.41 0072e1c0 mac 10149130 GSpookyVoiceInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_SPOOKY_VOICE_INFO_INCLUDED_H */
