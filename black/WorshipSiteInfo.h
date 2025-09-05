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

// win1.41 0099c474 mac 109eb3b4 GWorshipSiteInfo::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__16GWorshipSiteInfo asm("??_R4GWorshipSiteInfo@@6B@");

// win1.41 0099c478 mac 109eb3bc GWorshipSiteInfo::`vftable'
extern const struct GMultiMapFixedInfoVftable __vt__16GWorshipSiteInfo asm("??_7GWorshipSiteInfo@@6B@");

#endif /* BW1_DECOMP_WORSHIP_SITE_INFO_INCLUDED_H */
