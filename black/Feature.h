#ifndef BW1_DECOMP_FEATURE_INCLUDED_H
#define BW1_DECOMP_FEATURE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MultiMapFixed.h" /* For struct MultiMapFixed */

struct Feature
{
  struct MultiMapFixed super;  /* 0x0 */
};
static_assert(sizeof(struct Feature) == 0x7c, "Data type is of wrong size");

static struct MultiMapFixedVftable* const __vt__7Feature = (struct MultiMapFixedVftable* const)0x008c2320;

#endif /* BW1_DECOMP_FEATURE_INCLUDED_H */
