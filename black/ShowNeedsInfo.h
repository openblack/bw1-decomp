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

// win1.41 009572c4 mac 1075b5a8 GShowNeedsInfo::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__14GShowNeedsInfo asm("??_R4GShowNeedsInfo@@6B@");

// win1.41 009572c8 mac 1075b5b0 GShowNeedsInfo::`vftable'
extern const struct ObjectVftable __vt__14GShowNeedsInfo asm("??_7GShowNeedsInfo@@6B@");

#endif /* BW1_DECOMP_SHOW_NEEDS_INFO_INCLUDED_H */
