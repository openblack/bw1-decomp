#ifndef BW1_DECOMP_LH_INET_WEATHER_INCLUDED_H
#define BW1_DECOMP_LH_INET_WEATHER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

struct LHInetWeather
{
  uint32_t field_0x0;
};
static_assert(sizeof(struct LHInetWeather) == 0x4, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_INET_WEATHER_INCLUDED_H */
