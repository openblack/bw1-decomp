#ifndef BW1_DECOMP_PRAYER_ICON_INFO_INCLUDED_H
#define BW1_DECOMP_PRAYER_ICON_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "SingleMapFixedInfo.h" /* For struct GSingleMapFixedInfo */

struct GPrayerIconInfo
{
  struct GSingleMapFixedInfo super;  /* 0x0 */
  uint32_t field_0x100;
  uint32_t field_0x104;
};
static_assert(sizeof(struct GPrayerIconInfo) == 0x108, "Data type is of wrong size");

static struct GSingleMapFixedInfoVftable* __vt__15GPrayerIconInfo = (struct GSingleMapFixedInfoVftable*)0x009341c8;

#endif /* BW1_DECOMP_PRAYER_ICON_INFO_INCLUDED_H */
