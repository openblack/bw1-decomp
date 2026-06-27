#ifndef BW1_DECOMP_LH_INET_WEATHER_INCLUDED_H
#define BW1_DECOMP_LH_INET_WEATHER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

struct LHInetWeather
{
    uint32_t field_0x0;

    // Non-virtual methods

    // BW1W120 005e98b0 BW1M100 10352780 LHInetWeather::InitForGame(void)
    void InitForGame();
};

#endif /* BW1_DECOMP_LH_INET_WEATHER_INCLUDED_H */
