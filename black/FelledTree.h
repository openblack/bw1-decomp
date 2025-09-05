#ifndef BW1_DECOMP_FELLED_TREE_INCLUDED_H
#define BW1_DECOMP_FELLED_TREE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "DeadTree.h" /* For struct DeadTree */

struct FelledTree
{
  struct DeadTree super;  /* 0x0 */
};
static_assert(sizeof(struct FelledTree) == 0xa0, "Data type is of wrong size");

// win1.41 008d6978 mac 1073a888 FelledTree::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__10FelledTree asm("??_R4FelledTree@@6B@");

// win1.41 008d697c mac 1073a890 FelledTree::`vftable'
extern const struct RockVftable __vt__10FelledTree asm("??_7FelledTree@@6B@");

#endif /* BW1_DECOMP_FELLED_TREE_INCLUDED_H */
