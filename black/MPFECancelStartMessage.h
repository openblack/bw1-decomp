#ifndef BW1_DECOMP_MPFE_CANCEL_START_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_CANCEL_START_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFECancelStartMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFECancelStartMessage) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 00627640 mac 1039ba50 MPFECancelStartMessage::_dt(void)
void __fastcall __dt__22MPFECancelStartMessageFv(struct MPFEMessageObject* this) asm("??_GMPFECancelStartMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_CANCEL_START_MESSAGE_INCLUDED_H */
