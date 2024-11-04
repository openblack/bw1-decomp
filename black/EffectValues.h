#ifndef BW1_DECOMP_EFFECT_VALUES_INCLUDED_H
#define BW1_DECOMP_EFFECT_VALUES_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For EFFECT_TYPE_LAST, enum EFFECT_TYPE */

#include "Base.h" /* For struct Base */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

struct GPlayer;
struct GameThing;

struct EffectNumbers
{
  float values[EFFECT_TYPE_LAST];  /* 0x0 */
};
static_assert(sizeof(struct EffectNumbers) == 0x1c, "Data type is of wrong size");

struct EffectValues
{
  struct Base super;  /* 0x0 */
  struct EffectNumbers numbers;
  float field_0x24;
  struct GameThing* applied_by;
  struct MapCoords coords;
  uint32_t field_0x38;
  struct GPlayer* player;
};
static_assert(sizeof(struct EffectValues) == 0x40, "Data type is of wrong size");

static struct GBaseInfoVftable* __vt__12EffectValues = (struct GBaseInfoVftable*)0x008d8ba8;

// Static methods

// win1.41 00525040 mac 100cc350 EffectValues::EffectValues(EFFECT_TYPE, float, GameThing *, float, GPlayer *)
struct EffectValues* __fastcall __ct__12EffectValuesF11EFFECT_TYPEfP9GameThingfP7GPlayer(struct EffectValues* this, enum EFFECT_TYPE type, float value, struct GameThing* source, float param_4, struct GPlayer* player);

#endif /* BW1_DECOMP_EFFECT_VALUES_INCLUDED_H */
