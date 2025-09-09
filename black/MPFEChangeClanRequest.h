#ifndef BW1_DECOMP_MPFE_CHANGE_CLAN_REQUEST_INCLUDED_H
#define BW1_DECOMP_MPFE_CHANGE_CLAN_REQUEST_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEChangeClanRequest
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEChangeClanRequest) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 0062c160 mac 10397200 MPFEChangeClanRequest::_dt(void)
void __fastcall __dt__21MPFEChangeClanRequestFv(struct MPFEMessageObject* this) asm("??_GMPFEChangeClanRequest@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_CHANGE_CLAN_REQUEST_INCLUDED_H */
