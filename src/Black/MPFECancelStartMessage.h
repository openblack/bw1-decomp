#ifndef BW1_DECOMP_MPFE_CANCEL_START_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_CANCEL_START_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFECancelStartMessage: public MPFEMessageObject
{
public:

    // Override methods

    // win1.41 00627640 mac 1039ba50 MPFECancelStartMessage::_dt(void)
    virtual ~MPFECancelStartMessage();
};

#endif /* BW1_DECOMP_MPFE_CANCEL_START_MESSAGE_INCLUDED_H */
