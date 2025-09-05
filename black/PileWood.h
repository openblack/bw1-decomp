#ifndef BW1_DECOMP_PILE_WOOD_INCLUDED_H
#define BW1_DECOMP_PILE_WOOD_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "PileResource.h" /* For struct PileResource */

struct PileWood
{
  struct PileResource super;  /* 0x0 */
};
static_assert(sizeof(struct PileWood) == 0xb4, "Data type is of wrong size");

// win1.41 008e5d88 mac 10748250 PileWood::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__8PileWood asm("??_R4PileWood@@6B@");

// win1.41 008e5d8c mac 10748258 PileWood::`vftable'
extern const struct PotVftable __vt__8PileWood asm("??_7PileWood@@6B@");

#endif /* BW1_DECOMP_PILE_WOOD_INCLUDED_H */
