#ifndef BW1_DECOMP_MPFE_CONDTION_UPDATE_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_CONDTION_UPDATE_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFECondtionUpdateMessage: public MPFEMessageObject
{
public:

    // Override methods

    // win1.41 0062c860 mac inlined MPFECondtionUpdateMessage::_dt(void)
    virtual ~MPFECondtionUpdateMessage();
};

#endif /* BW1_DECOMP_MPFE_CONDTION_UPDATE_MESSAGE_INCLUDED_H */
