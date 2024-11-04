#ifndef BW1_DECOMP_SKIP_BOX_INCLUDED_H
#define BW1_DECOMP_SKIP_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct SkipBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x14];
};
static_assert(sizeof(struct SkipBox) == 0x24, "Data type is of wrong size");

static struct DialogBoxBaseVftable* const __vt__7SkipBox = (struct DialogBoxBaseVftable* const)0x008deadc;

#endif /* BW1_DECOMP_SKIP_BOX_INCLUDED_H */
