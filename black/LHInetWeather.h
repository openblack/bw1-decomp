#ifndef BW1_DECOMP_LH_INET_WEATHER_INCLUDED_H
#define BW1_DECOMP_LH_INET_WEATHER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

struct LHInetWeather
{
  uint32_t field_0x0;
};
static_assert(sizeof(struct LHInetWeather) == 0x4, "Data type is of wrong size");

// Non-virtual methods

// win1.41 005e98b0 mac 10352780 LHInetWeather::InitForGame(void)
void __fastcall InitForGame__13LHInetWeatherFv(struct LHInetWeather* this) asm("?InitForGame@LHInetWeather@@QAEXXZ");

#endif /* BW1_DECOMP_LH_INET_WEATHER_INCLUDED_H */
