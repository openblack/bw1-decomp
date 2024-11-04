#ifndef BW1_DECOMP_CREATURE_COMMAND_STATE_INCLUDED_H
#define BW1_DECOMP_CREATURE_COMMAND_STATE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Base.h" /* For struct Base */

struct CreatureCommandState
{
  struct Base super;  /* 0x0 */
  uint8_t field_0x8[0x14];
  uint32_t field_0x1c;
  uint32_t field_0x20;
  uint32_t field_0x24;
  int field_0x28;
};
static_assert(sizeof(struct CreatureCommandState) == 0x2c, "Data type is of wrong size");

static struct BaseVftable* const __vt__20CreatureCommandState = (struct BaseVftable* const)0x008cf970;

#endif /* BW1_DECOMP_CREATURE_COMMAND_STATE_INCLUDED_H */
