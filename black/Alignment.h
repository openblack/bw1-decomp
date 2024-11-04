#ifndef BW1_DECOMP_ALIGNMENT_INCLUDED_H
#define BW1_DECOMP_ALIGNMENT_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "Base.h" /* For struct Base */

struct GAlignment
{
  struct Base super;  /* 0x0 */
  float value;
  float field_0xc;
};
static_assert(sizeof(struct GAlignment) == 0x10, "Data type is of wrong size");

static struct BaseVftable* const __vt__10GAlignment = (struct BaseVftable* const)0x008cc7f0;

#endif /* BW1_DECOMP_ALIGNMENT_INCLUDED_H */
