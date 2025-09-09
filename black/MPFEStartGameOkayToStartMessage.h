#ifndef BW1_DECOMP_MPFE_START_GAME_OKAY_TO_START_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_START_GAME_OKAY_TO_START_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEStartGameOkayToStartMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEStartGameOkayToStartMessage) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 0062fb90 mac 10393eb0 MPFEStartGameOkayToStartMessage::_dt(void)
void __fastcall __dt__31MPFEStartGameOkayToStartMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEStartGameOkayToStartMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_START_GAME_OKAY_TO_START_MESSAGE_INCLUDED_H */
