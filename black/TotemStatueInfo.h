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

// win1.41 00999a44 mac 109e33a8 GTotemStatueInfo::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__16GTotemStatueInfo asm("??_R4GTotemStatueInfo@@6B@");

// win1.41 00999a48 mac 109e33b0 GTotemStatueInfo::`vftable'
extern const struct GMultiMapFixedInfoVftable __vt__16GTotemStatueInfo asm("??_7GTotemStatueInfo@@6B@");

#endif /* BW1_DECOMP_TOTEM_STATUE_INFO_INCLUDED_H */
