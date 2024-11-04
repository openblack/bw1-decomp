#ifndef BW1_DECOMP_SKIRMISH_GAME_BOX_INCLUDED_H
#define BW1_DECOMP_SKIRMISH_GAME_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct SkirmishGameBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x22c];
};
static_assert(sizeof(struct SkirmishGameBox) == 0x23c, "Data type is of wrong size");

static struct DialogBoxBaseVftable* const __vt__15SkirmishGameBox = (struct DialogBoxBaseVftable* const)0x008de94c;

#endif /* BW1_DECOMP_SKIRMISH_GAME_BOX_INCLUDED_H */
