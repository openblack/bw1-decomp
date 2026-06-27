#ifndef BW1_DECOMP_MAP_SHIELD_INFO_INCLUDED_H
#define BW1_DECOMP_MAP_SHIELD_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "SingleMapFixedInfo.h" /* For struct GSingleMapFixedInfo */

// Forward Declares

class Base;

class GMapShieldInfo: public GSingleMapFixedInfo
{
public:

    // Override methods

    // BW1W120 0072bdf0 BW1M100 10531f60 GMapShieldInfo::_dt(void)
    virtual ~GMapShieldInfo();
};

#endif /* BW1_DECOMP_MAP_SHIELD_INFO_INCLUDED_H */
