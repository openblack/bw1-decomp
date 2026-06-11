#ifndef BW1_DECOMP_MPFE_PUBLIC_CHAT_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_PUBLIC_CHAT_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEPublicChatMessage: public MPFEMessageObject
{
public:

    // Override methods

    // win1.41 00626e00 mac 10398090 MPFEPublicChatMessage::_dt(void)
    virtual ~MPFEPublicChatMessage();
};

#endif /* BW1_DECOMP_MPFE_PUBLIC_CHAT_MESSAGE_INCLUDED_H */
