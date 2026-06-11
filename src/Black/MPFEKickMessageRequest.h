#ifndef BW1_DECOMP_MPFE_KICK_MESSAGE_REQUEST_INCLUDED_H
#define BW1_DECOMP_MPFE_KICK_MESSAGE_REQUEST_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEKickMessageRequest: public MPFEMessageObject
{
public:

    // Override methods

    // win1.41 00627790 mac 10397a60 MPFEKickMessageRequest::_dt(void)
    virtual ~MPFEKickMessageRequest();
};

#endif /* BW1_DECOMP_MPFE_KICK_MESSAGE_REQUEST_INCLUDED_H */
