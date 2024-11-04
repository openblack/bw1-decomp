#ifndef BW1_DECOMP_WEATHER_INFO_INCLUDED_H
#define BW1_DECOMP_WEATHER_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

struct WeatherInfo
{
  struct GBaseInfo super;  /* 0x0 */
  uint8_t field_0x10[0x54];
};
static_assert(sizeof(struct WeatherInfo) == 0x64, "Data type is of wrong size");

static struct GBaseInfoVftable* __vt__11WeatherInfo = (struct GBaseInfoVftable*)0x0099b9b8;

#endif /* BW1_DECOMP_WEATHER_INFO_INCLUDED_H */
