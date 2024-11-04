#ifndef BW1_DECOMP_S_LOBBY_BOX_INCLUDED_H
#define BW1_DECOMP_S_LOBBY_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct GSLobbyBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x2a4];
};
static_assert(sizeof(struct GSLobbyBox) == 0x2b4, "Data type is of wrong size");

static struct DialogBoxBaseVftable* const __vt__10GSLobbyBox = (struct DialogBoxBaseVftable* const)0x008deb7c;

#endif /* BW1_DECOMP_S_LOBBY_BOX_INCLUDED_H */
