#ifndef BW1_DECOMP_MPFE_KICK_MESSAGE_REQUEST_INCLUDED_H
#define BW1_DECOMP_MPFE_KICK_MESSAGE_REQUEST_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEKickMessageRequest
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEKickMessageRequest) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 00627790 mac 10397a60 MPFEKickMessageRequest::_dt(void)
void __fastcall __dt__22MPFEKickMessageRequestFv(struct MPFEMessageObject* this) asm("??_GMPFEKickMessageRequest@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_KICK_MESSAGE_REQUEST_INCLUDED_H */
