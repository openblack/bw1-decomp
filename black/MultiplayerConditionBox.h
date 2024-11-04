#ifndef BW1_DECOMP_MULTIPLAYER_CONDITION_BOX_INCLUDED_H
#define BW1_DECOMP_MULTIPLAYER_CONDITION_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct MultiplayerConditionBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x2c];
};
static_assert(sizeof(struct MultiplayerConditionBox) == 0x3c, "Data type is of wrong size");

static struct DialogBoxBaseVftable* const __vt__23MultiplayerConditionBox = (struct DialogBoxBaseVftable* const)0x008de9c4;

#endif /* BW1_DECOMP_MULTIPLAYER_CONDITION_BOX_INCLUDED_H */
