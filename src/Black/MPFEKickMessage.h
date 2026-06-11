#ifndef BW1_DECOMP_MPFE_KICK_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_KICK_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEKickMessage: public MPFEMessageObject
{
public:

    // Override methods

    // win1.41 00627980 mac 1039a1a0 MPFEKickMessage::_dt(void)
    virtual ~MPFEKickMessage();
};

#endif /* BW1_DECOMP_MPFE_KICK_MESSAGE_INCLUDED_H */
