#ifndef BW1_DECOMP_MPFE_MAP_ERROR_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_MAP_ERROR_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEMapErrorMessage: public MPFEMessageObject
{
public:

    // Override methods

    // BW1W120 00631510 BW1M100 103a4050 MPFEMapErrorMessage::_dt(void)
    virtual ~MPFEMapErrorMessage();
};

#endif /* BW1_DECOMP_MPFE_MAP_ERROR_MESSAGE_INCLUDED_H */
