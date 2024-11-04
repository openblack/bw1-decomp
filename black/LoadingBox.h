#ifndef BW1_DECOMP_LOADING_BOX_INCLUDED_H
#define BW1_DECOMP_LOADING_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct LoadingBox
{
  struct DialogBoxBase super;  /* 0x0 */
};
static_assert(sizeof(struct LoadingBox) == 0x10, "Data type is of wrong size");

static struct DialogBoxBaseVftable* __vt__10LoadingBox = (struct DialogBoxBaseVftable*)0x008deb54;

#endif /* BW1_DECOMP_LOADING_BOX_INCLUDED_H */
