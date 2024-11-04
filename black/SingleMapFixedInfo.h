#ifndef BW1_DECOMP_SINGLE_MAP_FIXED_INFO_INCLUDED_H
#define BW1_DECOMP_SINGLE_MAP_FIXED_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "ObjectInfo.h" /* For struct GObjectInfo, struct GObjectInfoVftable */

struct GSingleMapFixedInfoVftable
{
  struct GObjectInfoVftable super;  /* 0x0 */
};
static_assert(sizeof(struct GSingleMapFixedInfoVftable) == 0x3c, "Data type is of wrong size");

union GSingleMapFixedInfoBase
{
  struct GObjectInfo super;
  struct GSingleMapFixedInfoVftable* vftable;
};
static_assert(sizeof(union GSingleMapFixedInfoBase) == 0x100, "Data type is of wrong size");

struct GSingleMapFixedInfo
{
  union GSingleMapFixedInfoBase base;  /* 0x0 */
};
static_assert(sizeof(struct GSingleMapFixedInfo) == 0x100, "Data type is of wrong size");

static struct GSingleMapFixedInfoVftable* __vt__19GSingleMapFixedInfo = (struct GSingleMapFixedInfoVftable*)0x008db6dc;

#endif /* BW1_DECOMP_SINGLE_MAP_FIXED_INFO_INCLUDED_H */
