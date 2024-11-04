#ifndef BW1_DECOMP_GESTURE_SYSTEM_DATA_INCLUDED_H
#define BW1_DECOMP_GESTURE_SYSTEM_DATA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "Base.h" /* For struct Base */

struct GestureSystemData
{
  struct Base super;  /* 0x0 */
  uint8_t field_0x8[0x654];
};
static_assert(sizeof(struct GestureSystemData) == 0x65c, "Data type is of wrong size");

static struct BaseVftable* __vt__17GestureSystemData = (struct BaseVftable*)0x008df7e0;

#endif /* BW1_DECOMP_GESTURE_SYSTEM_DATA_INCLUDED_H */
