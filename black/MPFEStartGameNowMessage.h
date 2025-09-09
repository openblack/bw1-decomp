#ifndef BW1_DECOMP_MPFE_START_GAME_NOW_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_START_GAME_NOW_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEStartGameNowMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEStartGameNowMessage) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 00630170 mac 10396930 MPFEStartGameNowMessage::_dt(void)
void __fastcall __dt__23MPFEStartGameNowMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEStartGameNowMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_START_GAME_NOW_MESSAGE_INCLUDED_H */
