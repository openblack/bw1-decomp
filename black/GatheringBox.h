#ifndef BW1_DECOMP_GATHERING_BOX_INCLUDED_H
#define BW1_DECOMP_GATHERING_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct GatheringBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0xe0];
};
static_assert(sizeof(struct GatheringBox) == 0xf0, "Data type is of wrong size");

static struct DialogBoxBaseVftable* __vt__12GatheringBox = (struct DialogBoxBaseVftable*)0x008deb2c;

#endif /* BW1_DECOMP_GATHERING_BOX_INCLUDED_H */
