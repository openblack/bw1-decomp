#ifndef BW1_DECOMP_MPFE_CHANGE_CLAN_REQUEST_INCLUDED_H
#define BW1_DECOMP_MPFE_CHANGE_CLAN_REQUEST_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEChangeClanRequest: public MPFEMessageObject
{
public:

    // Override methods

    // win1.41 0062c160 mac 10397200 MPFEChangeClanRequest::_dt(void)
    virtual ~MPFEChangeClanRequest();
};

#endif /* BW1_DECOMP_MPFE_CHANGE_CLAN_REQUEST_INCLUDED_H */
