#ifndef BW1_DECOMP_MPFE_CLAN_LIST_INCLUDED_H
#define BW1_DECOMP_MPFE_CLAN_LIST_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEClanList
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEClanList) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 0062bf30 mac 10396a90 MPFEClanList::_dt(void)
void __fastcall __dt__12MPFEClanListFv(struct MPFEMessageObject* this) asm("??_GMPFEClanList@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_CLAN_LIST_INCLUDED_H */
