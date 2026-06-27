#ifndef BW1_DECOMP_MPFE_CHANGED_MAP_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_CHANGED_MAP_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEChangedMapMessage: public MPFEMessageObject
{
public:

    // Override methods

    // BW1W120 00631270 BW1M100 103969e0 MPFEChangedMapMessage::_dt(void)
    virtual ~MPFEChangedMapMessage();
};

#endif /* BW1_DECOMP_MPFE_CHANGED_MAP_MESSAGE_INCLUDED_H */
