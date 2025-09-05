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

// win1.41 008deba0 mac 109edd54 LobbyBox::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__8LobbyBox asm("??_R4LobbyBox@@6B@");

// win1.41 008deba4 mac 109edd5c LobbyBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__8LobbyBox asm("??_7LobbyBox@@6B@");

#endif /* BW1_DECOMP_LOBBY_BOX_INCLUDED_H */
