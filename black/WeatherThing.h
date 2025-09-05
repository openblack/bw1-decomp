#ifndef BW1_DECOMP_WEATHER_THING_INCLUDED_H
#define BW1_DECOMP_WEATHER_THING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

struct WeatherThing
{
  struct GameThingWithPos super;  /* 0x0 */
  uint8_t field_0x28[0x60];
};
static_assert(sizeof(struct WeatherThing) == 0x88, "Data type is of wrong size");

// win1.41 008ebc44 mac 109ea360 WeatherThing::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__12WeatherThing asm("??_R4WeatherThing@@6B@");

// win1.41 008ebc48 mac 109ea368 WeatherThing::`vftable'
extern const struct GameThingWithPosVftable __vt__12WeatherThing asm("??_7WeatherThing@@6B@");

DECLARE_LH_LIST_HEAD(WeatherThing);

#endif /* BW1_DECOMP_WEATHER_THING_INCLUDED_H */
