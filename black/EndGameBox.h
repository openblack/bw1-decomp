#ifndef BW1_DECOMP_END_GAME_BOX_INCLUDED_H
#define BW1_DECOMP_END_GAME_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct EndGameBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0xac];
};
static_assert(sizeof(struct EndGameBox) == 0xbc, "Data type is of wrong size");

static struct DialogBoxBaseVftable* const __vt__10EndGameBox = (struct DialogBoxBaseVftable* const)0x008de9ec;

#endif /* BW1_DECOMP_END_GAME_BOX_INCLUDED_H */
