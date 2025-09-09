#ifndef BW1_DECOMP_MPFE_DISCONNECT_NOW_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_DISCONNECT_NOW_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEDisconnectNowMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEDisconnectNowMessage) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 006302c0 mac 10393c20 MPFEDisconnectNowMessage::_dt(void)
void __fastcall __dt__24MPFEDisconnectNowMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEDisconnectNowMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_DISCONNECT_NOW_MESSAGE_INCLUDED_H */
