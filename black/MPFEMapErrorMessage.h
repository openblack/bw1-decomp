#ifndef BW1_DECOMP_MPFE_MAP_ERROR_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_MAP_ERROR_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEMapErrorMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEMapErrorMessage) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 00631510 mac 103a4050 MPFEMapErrorMessage::_dt(void)
void __fastcall __dt__19MPFEMapErrorMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEMapErrorMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_MAP_ERROR_MESSAGE_INCLUDED_H */
