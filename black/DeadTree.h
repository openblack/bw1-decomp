#ifndef BW1_DECOMP_DEAD_TREE_INCLUDED_H
#define BW1_DECOMP_DEAD_TREE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "Rock.h" /* For struct Rock */

struct DeadTree
{
  struct Rock super;  /* 0x0 */
  uint8_t field_0x94[0xc];
};
static_assert(sizeof(struct DeadTree) == 0xa0, "Data type is of wrong size");

// win1.41 008d6060 mac 1073a834 DeadTree::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__8DeadTree asm("??_R4DeadTree@@6B@");

// win1.41 008d6064 mac 1073a87c DeadTree::`vftable'
extern const struct RockVftable __vt__8DeadTree asm("??_7DeadTree@@6B@");

#endif /* BW1_DECOMP_DEAD_TREE_INCLUDED_H */
