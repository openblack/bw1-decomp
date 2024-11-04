#ifndef BW1_DECOMP_PILE_WOOD_INCLUDED_H
#define BW1_DECOMP_PILE_WOOD_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "PileResource.h" /* For struct PileResource */

struct PileWood
{
  struct PileResource super;  /* 0x0 */
};
static_assert(sizeof(struct PileWood) == 0xb4, "Data type is of wrong size");

static struct PotVftable* const __vt__8PileWood = (struct PotVftable* const)0x008e5d8c;

#endif /* BW1_DECOMP_PILE_WOOD_INCLUDED_H */
