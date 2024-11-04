#ifndef BW1_DECOMP_SHOW_NEEDS_INFO_INCLUDED_H
#define BW1_DECOMP_SHOW_NEEDS_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "ObjectInfo.h" /* For struct GObjectInfo */

struct GShowNeedsInfo
{
  struct GObjectInfo super;  /* 0x0 */
  uint8_t field_0x100[0x14];
};
static_assert(sizeof(struct GShowNeedsInfo) == 0x114, "Data type is of wrong size");

static struct ObjectVftable* __vt__14GShowNeedsInfo = (struct ObjectVftable*)0x009572c8;

#endif /* BW1_DECOMP_SHOW_NEEDS_INFO_INCLUDED_H */
