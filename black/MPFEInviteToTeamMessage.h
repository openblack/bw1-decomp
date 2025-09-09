#ifndef BW1_DECOMP_MPFE_INVITE_TO_TEAM_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_INVITE_TO_TEAM_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEInviteToTeamMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEInviteToTeamMessage) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 00627410 mac 103977c0 MPFEInviteToTeamMessage::_dt(void)
void __fastcall __dt__23MPFEInviteToTeamMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEInviteToTeamMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_INVITE_TO_TEAM_MESSAGE_INCLUDED_H */
