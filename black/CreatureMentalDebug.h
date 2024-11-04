#ifndef BW1_DECOMP_CREATURE_MENTAL_DEBUG_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_DEBUG_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Base.h" /* For struct Base */

struct CreatureMentalDebug
{
  struct Base super;  /* 0x0 */
  uint32_t field_0x8;
  uint32_t field_0xc;
  uint32_t field_0x10;
  uint32_t field_0x14;
  uint32_t field_0x18;
  uint32_t field_0x1c;
  uint32_t field_0x20;
  uint32_t field_0x24;
  uint32_t field_0x28;
  uint8_t field_0x2c[0x10];
  uint32_t field_0x3c;
  uint8_t field_0x40[0xc];
};
static_assert(sizeof(struct CreatureMentalDebug) == 0x4c, "Data type is of wrong size");

static struct BaseVftable* __vt__19CreatureMentalDebug = (struct BaseVftable*)0x008cf8cc;

#endif /* BW1_DECOMP_CREATURE_MENTAL_DEBUG_INCLUDED_H */
