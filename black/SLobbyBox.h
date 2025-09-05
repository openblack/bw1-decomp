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

// win1.41 008deb78 mac 109edd0c GSLobbyBox::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__10GSLobbyBox asm("??_R4GSLobbyBox@@6B@");

// win1.41 008deb7c mac 109edd14 GSLobbyBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__10GSLobbyBox asm("??_7GSLobbyBox@@6B@");

#endif /* BW1_DECOMP_S_LOBBY_BOX_INCLUDED_H */
