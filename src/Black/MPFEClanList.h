#ifndef BW1_DECOMP_MPFE_CLAN_LIST_INCLUDED_H
#define BW1_DECOMP_MPFE_CLAN_LIST_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEClanList: public MPFEMessageObject
{
public:

    // Override methods

    // win1.41 0062bf30 mac 10396a90 MPFEClanList::_dt(void)
    virtual ~MPFEClanList();
};

#endif /* BW1_DECOMP_MPFE_CLAN_LIST_INCLUDED_H */
