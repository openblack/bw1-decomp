#ifndef BW1_DECOMP_MPFE_USER_TEAM_LIST_INCLUDED_H
#define BW1_DECOMP_MPFE_USER_TEAM_LIST_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

// Forward Declares

struct MPFEPlayerDetails;

class MPFEUserTeamList: public MPFEMessageObject
{
public:

    // Override methods

    // win1.41 00633050 mac 10396090 MPFEUserTeamList::_dt(void)
    virtual ~MPFEUserTeamList();
    // win1.41 00626a00 mac inlined MPFEUserTeamList::Send(MPFEPlayerDetails *)
    virtual void Send(MPFEPlayerDetails* param_1);
};

#endif /* BW1_DECOMP_MPFE_USER_TEAM_LIST_INCLUDED_H */
