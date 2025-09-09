#ifndef BW1_DECOMP_MPFE_KICK_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_KICK_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEKickMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEKickMessage) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 00627980 mac 1039a1a0 MPFEKickMessage::_dt(void)
void __fastcall __dt__15MPFEKickMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEKickMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_KICK_MESSAGE_INCLUDED_H */
