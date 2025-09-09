#ifndef BW1_DECOMP_MPFE_CHANGED_MAP_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_CHANGED_MAP_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEChangedMapMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEChangedMapMessage) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 00631270 mac 103969e0 MPFEChangedMapMessage::_dt(void)
void __fastcall __dt__21MPFEChangedMapMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEChangedMapMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_CHANGED_MAP_MESSAGE_INCLUDED_H */
