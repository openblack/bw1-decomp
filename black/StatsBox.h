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

static struct DialogBoxBaseVftable* __vt__8StatsBox = (struct DialogBoxBaseVftable*)0x008dea14;

#endif /* BW1_DECOMP_STATS_BOX_INCLUDED_H */
