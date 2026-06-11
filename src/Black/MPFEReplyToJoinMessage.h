#ifndef BW1_DECOMP_MPFE_REPLY_TO_JOIN_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_REPLY_TO_JOIN_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEReplyToJoinMessage: public MPFEMessageObject
{
public:

    // Override methods

    // win1.41 006270a0 mac 10394150 MPFEReplyToJoinMessage::_dt(void)
    virtual ~MPFEReplyToJoinMessage();
};

#endif /* BW1_DECOMP_MPFE_REPLY_TO_JOIN_MESSAGE_INCLUDED_H */
