#ifndef BW1_DECOMP_MAGIC_FLOCK_FLYING_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_FLOCK_FLYING_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

class Base;

class GMagicFlockFlyingInfo: public GMagicInfo
{
public:

    // Override methods

    // win1.41 004357c0 mac 1051ed80 GMagicFlockFlyingInfo::_dt(void)
    virtual ~GMagicFlockFlyingInfo();
};

#endif /* BW1_DECOMP_MAGIC_FLOCK_FLYING_INFO_INCLUDED_H */
