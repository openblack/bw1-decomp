#ifndef BW1_DECOMP_BIG_FOREST_INFO_INCLUDED_H
#define BW1_DECOMP_BIG_FOREST_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */

struct GBigForestInfo
{
  struct GMultiMapFixedInfo super;  /* 0x0 */
  uint8_t field_0x120[0x8];
};
static_assert(sizeof(struct GBigForestInfo) == 0x128, "Data type is of wrong size");

static struct GMultiMapFixedInfoVftable* const __vt__14GBigForestInfo = (struct GMultiMapFixedInfoVftable* const)0x008c58b8;

#endif /* BW1_DECOMP_BIG_FOREST_INFO_INCLUDED_H */
