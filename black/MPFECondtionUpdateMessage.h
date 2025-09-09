#ifndef BW1_DECOMP_MPFE_CONDTION_UPDATE_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_CONDTION_UPDATE_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFECondtionUpdateMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFECondtionUpdateMessage) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 0062c860 mac inlined MPFECondtionUpdateMessage::_dt(void)
void __fastcall __dt__25MPFECondtionUpdateMessageFv(struct MPFEMessageObject* this) asm("??_GMPFECondtionUpdateMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_CONDTION_UPDATE_MESSAGE_INCLUDED_H */
