#ifndef BW1_DECOMP_LOBBY_BOX_INCLUDED_H
#define BW1_DECOMP_LOBBY_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct LobbyBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x7c];
};
static_assert(sizeof(struct LobbyBox) == 0x8c, "Data type is of wrong size");

static struct DialogBoxBaseVftable* const __vt__8LobbyBox = (struct DialogBoxBaseVftable* const)0x008deba4;

#endif /* BW1_DECOMP_LOBBY_BOX_INCLUDED_H */
