#ifndef BW1_DECOMP_MPFE_CHANGED_TEAM_REQUEST_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_CHANGED_TEAM_REQUEST_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEChangedTeamRequestMessage: public MPFEMessageObject
{
public:

    // Override methods

    // win1.41 00632d20 mac 10397440 MPFEChangedTeamRequestMessage::_dt(void)
    virtual ~MPFEChangedTeamRequestMessage();
};

#endif /* BW1_DECOMP_MPFE_CHANGED_TEAM_REQUEST_MESSAGE_INCLUDED_H */
