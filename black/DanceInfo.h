#ifndef BW1_DECOMP_DANCE_INFO_INCLUDED_H
#define BW1_DECOMP_DANCE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

struct GDanceInfo
{
  struct GBaseInfo super;  /* 0x0 */
  uint8_t field_0x10[0xa0];
};
static_assert(sizeof(struct GDanceInfo) == 0xb0, "Data type is of wrong size");

static struct GBaseInfoVftable* const __vt__10GDanceInfo = (struct GBaseInfoVftable* const)0x008d3938;

#endif /* BW1_DECOMP_DANCE_INFO_INCLUDED_H */
