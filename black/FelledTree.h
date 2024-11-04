#ifndef BW1_DECOMP_FELLED_TREE_INCLUDED_H
#define BW1_DECOMP_FELLED_TREE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "DeadTree.h" /* For struct DeadTree */

struct FelledTree
{
  struct DeadTree super;  /* 0x0 */
};
static_assert(sizeof(struct FelledTree) == 0xa0, "Data type is of wrong size");

static struct RockVftable* const __vt__10FelledTree = (struct RockVftable* const)0x008d697c;

#endif /* BW1_DECOMP_FELLED_TREE_INCLUDED_H */
