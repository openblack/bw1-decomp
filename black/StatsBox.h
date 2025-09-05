#ifndef BW1_DECOMP_STATS_BOX_INCLUDED_H
#define BW1_DECOMP_STATS_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct StatsBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x64];
};
static_assert(sizeof(struct StatsBox) == 0x74, "Data type is of wrong size");

// win1.41 008dea10 mac 1099add0 StatsBox::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__8StatsBox asm("??_R4StatsBox@@6B@");

// win1.41 008dea14 mac 1099add8 StatsBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__8StatsBox asm("??_7StatsBox@@6B@");

#endif /* BW1_DECOMP_STATS_BOX_INCLUDED_H */
