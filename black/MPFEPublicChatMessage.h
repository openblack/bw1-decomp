#ifndef BW1_DECOMP_MPFE_PUBLIC_CHAT_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_PUBLIC_CHAT_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEPublicChatMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEPublicChatMessage) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 00626e00 mac 10398090 MPFEPublicChatMessage::_dt(void)
void __fastcall __dt__21MPFEPublicChatMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEPublicChatMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_PUBLIC_CHAT_MESSAGE_INCLUDED_H */
