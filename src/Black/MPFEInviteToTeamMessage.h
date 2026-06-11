#ifndef BW1_DECOMP_MPFE_INVITE_TO_TEAM_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_INVITE_TO_TEAM_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEInviteToTeamMessage: public MPFEMessageObject
{
public:

    // Override methods

    // win1.41 00627410 mac 103977c0 MPFEInviteToTeamMessage::_dt(void)
    virtual ~MPFEInviteToTeamMessage();
};

#endif /* BW1_DECOMP_MPFE_INVITE_TO_TEAM_MESSAGE_INCLUDED_H */
