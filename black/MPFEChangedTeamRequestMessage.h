#ifndef BW1_DECOMP_MPFE_CHANGED_TEAM_REQUEST_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_CHANGED_TEAM_REQUEST_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEChangedTeamRequestMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEChangedTeamRequestMessage) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 00632d20 mac 10397440 MPFEChangedTeamRequestMessage::_dt(void)
void __fastcall __dt__29MPFEChangedTeamRequestMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEChangedTeamRequestMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_CHANGED_TEAM_REQUEST_MESSAGE_INCLUDED_H */
