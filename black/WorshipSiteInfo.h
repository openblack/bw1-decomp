#ifndef BW1_DECOMP_WORSHIP_SITE_INFO_INCLUDED_H
#define BW1_DECOMP_WORSHIP_SITE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "CitadelPartInfo.h" /* For struct GCitadelPartInfo */

struct GWorshipSiteInfo
{
  struct GCitadelPartInfo super;  /* 0x0 */
  float field_0x134;
  uint32_t field_0x138;
  uint32_t field_0x13c;
  uint32_t field_0x140;
  float field_0x144;
  float field_0x148;
  uint32_t field_0x14c;
  float field_0x150;
  float field_0x154;
  uint32_t field_0x158;
  float field_0x15c;
};
static_assert(sizeof(struct GWorshipSiteInfo) == 0x160, "Data type is of wrong size");

static struct GMultiMapFixedInfoVftable* __vt__16GWorshipSiteInfo = (struct GMultiMapFixedInfoVftable*)0x0099c478;

#endif /* BW1_DECOMP_WORSHIP_SITE_INFO_INCLUDED_H */
