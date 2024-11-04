#ifndef BW1_DECOMP_WEATHER_THING_INCLUDED_H
#define BW1_DECOMP_WEATHER_THING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <lionhead/lhlib/VER5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

struct WeatherThing
{
  struct GameThingWithPos super;  /* 0x0 */
  uint8_t field_0x28[0x60];
};
static_assert(sizeof(struct WeatherThing) == 0x88, "Data type is of wrong size");

static struct GameThingWithPosVftable* const __vt__12WeatherThing = (struct GameThingWithPosVftable* const)0x008ebc48;

DECLARE_LH_LIST_HEAD(WeatherThing);

#endif /* BW1_DECOMP_WEATHER_THING_INCLUDED_H */
