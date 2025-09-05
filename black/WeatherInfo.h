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

// win1.41 0099b9b4 mac 109ea14c WeatherInfo::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__11WeatherInfo asm("??_R4WeatherInfo@@6B@");

// win1.41 0099b9b8 mac 109ea154 WeatherInfo::`vftable'
extern const struct GBaseInfoVftable __vt__11WeatherInfo asm("??_7WeatherInfo@@6B@");

#endif /* BW1_DECOMP_WEATHER_INFO_INCLUDED_H */
