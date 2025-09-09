#ifndef BW1_DECOMP_MPFE_USER_TEAM_LIST_INCLUDED_H
#define BW1_DECOMP_MPFE_USER_TEAM_LIST_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

// Forward Declares

struct MPFEPlayerDetails;

struct MPFEUserTeamList
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEUserTeamList) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 00633050 mac 10396090 MPFEUserTeamList::_dt(void)
void __fastcall __dt__16MPFEUserTeamListFv(struct MPFEMessageObject* this) asm("??_GMPFEUserTeamList@@UAEPAXI@Z");
// win1.41 00626a00 mac inlined MPFEUserTeamList::Send(MPFEPlayerDetails *)
void __fastcall Send__16MPFEUserTeamListFP17MPFEPlayerDetails(struct MPFEMessageObject* this, const void* edx, struct MPFEPlayerDetails* param_1) asm("?Send@MPFEUserTeamList@@UAEXPAUMPFEPlayerDetails@@@Z");

#endif /* BW1_DECOMP_MPFE_USER_TEAM_LIST_INCLUDED_H */
