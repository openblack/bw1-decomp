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

static struct RockVftable* const __vt__8DeadTree = (struct RockVftable* const)0x008d6064;

#endif /* BW1_DECOMP_DEAD_TREE_INCLUDED_H */
