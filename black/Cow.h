#ifndef BW1_DECOMP_COW_INCLUDED_H
#define BW1_DECOMP_COW_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "Animal.h" /* For struct Animal */

struct Cow
{
  struct Animal super;  /* 0x0 */
};
static_assert(sizeof(struct Cow) == 0x148, "Data type is of wrong size");

static struct LivingVftable* __vt__3Cow = (struct LivingVftable*)0x008ad05c;

#endif /* BW1_DECOMP_COW_INCLUDED_H */
