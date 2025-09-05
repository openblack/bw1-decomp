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

// win1.41 008c58b4 mac 1073865c GBigForestInfo::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__14GBigForestInfo asm("??_R4GBigForestInfo@@6B@");

// win1.41 008c58b8 mac 10738664 GBigForestInfo::`vftable'
extern const struct GMultiMapFixedInfoVftable __vt__14GBigForestInfo asm("??_7GBigForestInfo@@6B@");

#endif /* BW1_DECOMP_BIG_FOREST_INFO_INCLUDED_H */
