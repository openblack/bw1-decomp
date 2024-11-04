#ifndef BW1_DECOMP_GESTURE_SYSTEM_DATA_LIST_INCLUDED_H
#define BW1_DECOMP_GESTURE_SYSTEM_DATA_LIST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "Base.h" /* For struct Base */

struct GestureSystemDataList
{
  struct Base super;  /* 0x0 */
  uint8_t field_0x8[0x8];
};
static_assert(sizeof(struct GestureSystemDataList) == 0x10, "Data type is of wrong size");

static struct BaseVftable* const __vt__21GestureSystemDataList = (struct BaseVftable* const)0x008df7c0;

#endif /* BW1_DECOMP_GESTURE_SYSTEM_DATA_LIST_INCLUDED_H */
