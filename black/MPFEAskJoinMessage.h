#ifndef BW1_DECOMP_MPFE_ASK_JOIN_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_ASK_JOIN_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEAskJoinMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEAskJoinMessage) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 00626f90 mac 10397e50 MPFEAskJoinMessage::_dt(void)
void __fastcall __dt__18MPFEAskJoinMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEAskJoinMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_ASK_JOIN_MESSAGE_INCLUDED_H */
