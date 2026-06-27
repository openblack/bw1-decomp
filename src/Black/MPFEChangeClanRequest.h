#ifndef BW1_DECOMP_MPFE_CHANGE_CLAN_REQUEST_INCLUDED_H
#define BW1_DECOMP_MPFE_CHANGE_CLAN_REQUEST_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEChangeClanRequest: public MPFEMessageObject
{
public:

    // Override methods

    // BW1W120 0062c160 BW1M100 10397200 MPFEChangeClanRequest::_dt(void)
    virtual ~MPFEChangeClanRequest();
};

#endif /* BW1_DECOMP_MPFE_CHANGE_CLAN_REQUEST_INCLUDED_H */
