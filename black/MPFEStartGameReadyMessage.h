#ifndef BW1_DECOMP_MPFE_START_GAME_READY_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_START_GAME_READY_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEStartGameReadyMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEStartGameReadyMessage) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 0062fd00 mac 103a7130 MPFEStartGameReadyMessage::_dt(void)
void __fastcall __dt__25MPFEStartGameReadyMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEStartGameReadyMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_START_GAME_READY_MESSAGE_INCLUDED_H */
