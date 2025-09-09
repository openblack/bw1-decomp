#ifndef BW1_DECOMP_MPFE_REPLY_TO_INVITE_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_REPLY_TO_INVITE_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEReplyToInviteMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEReplyToInviteMessage) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 006274f0 mac 10397500 MPFEReplyToInviteMessage::_dt(void)
void __fastcall __dt__24MPFEReplyToInviteMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEReplyToInviteMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_REPLY_TO_INVITE_MESSAGE_INCLUDED_H */
