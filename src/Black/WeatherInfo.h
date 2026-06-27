#ifndef BW1_DECOMP_WEATHER_INFO_INCLUDED_H
#define BW1_DECOMP_WEATHER_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class WeatherInfo: public GBaseInfo
{
public:
    uint8_t field_0x10[0x54];
};

class GWeatherInfo: public GBaseInfo
{
public:

    // Override methods

    // BW1W120 00770e30 BW1M100 105a3520 GWeatherInfo::_dt(void)
    virtual ~GWeatherInfo();
    // BW1W120 00770dd0 BW1M100 105a3640 GWeatherInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_WEATHER_INFO_INCLUDED_H */
