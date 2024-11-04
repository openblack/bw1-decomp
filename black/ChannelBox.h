#ifndef BW1_DECOMP_CHANNEL_BOX_INCLUDED_H
#define BW1_DECOMP_CHANNEL_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct ChannelBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0xac4];
};
static_assert(sizeof(struct ChannelBox) == 0xad4, "Data type is of wrong size");

static struct DialogBoxBaseVftable* const __vt__10ChannelBox = (struct DialogBoxBaseVftable* const)0x008dea3c;

#endif /* BW1_DECOMP_CHANNEL_BOX_INCLUDED_H */
