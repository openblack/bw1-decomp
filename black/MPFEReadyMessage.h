#ifndef BW1_DECOMP_MPFE_READY_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_READY_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEReadyMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEReadyMessage) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 00627d80 mac inlined MPFEReadyMessage::_dt(void)
void __fastcall __dt__16MPFEReadyMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEReadyMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_READY_MESSAGE_INCLUDED_H */
