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

// win1.41 009341c4 mac 1074a620 GPrayerIconInfo::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__15GPrayerIconInfo asm("??_R4GPrayerIconInfo@@6B@");

// win1.41 009341c8 mac 1074a628 GPrayerIconInfo::`vftable'
extern const struct GSingleMapFixedInfoVftable __vt__15GPrayerIconInfo asm("??_7GPrayerIconInfo@@6B@");

#endif /* BW1_DECOMP_PRAYER_ICON_INFO_INCLUDED_H */
