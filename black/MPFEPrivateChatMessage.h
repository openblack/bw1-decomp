#ifndef BW1_DECOMP_MPFE_PRIVATE_CHAT_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_PRIVATE_CHAT_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEPrivateChatMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEPrivateChatMessage) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 00626ed0 mac 10398140 MPFEPrivateChatMessage::_dt(void)
void __fastcall __dt__22MPFEPrivateChatMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEPrivateChatMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_PRIVATE_CHAT_MESSAGE_INCLUDED_H */
