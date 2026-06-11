#ifndef BW1_DECOMP_CLIMATE_RAIN_INFO_INCLUDED_H
#define BW1_DECOMP_CLIMATE_RAIN_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GClimateRainInfo: public GBaseInfo
{
public:

    // Override methods

    // win1.41 00773ce0 mac 105a3a30 GClimateRainInfo::_dt(void)
    virtual ~GClimateRainInfo();
    // win1.41 00773c90 mac 105a39e0 GClimateRainInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_CLIMATE_RAIN_INFO_INCLUDED_H */
