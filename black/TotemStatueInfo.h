#ifndef BW1_DECOMP_TOTEM_STATUE_INFO_INCLUDED_H
#define BW1_DECOMP_TOTEM_STATUE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */

struct GTotemStatueInfo
{
  struct GMultiMapFixedInfo super;  /* 0x0 */
  uint32_t field_0x120;
};
static_assert(sizeof(struct GTotemStatueInfo) == 0x124, "Data type is of wrong size");

static struct GMultiMapFixedInfoVftable* const __vt__16GTotemStatueInfo = (struct GMultiMapFixedInfoVftable* const)0x00999a48;

#endif /* BW1_DECOMP_TOTEM_STATUE_INFO_INCLUDED_H */
