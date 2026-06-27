#ifndef BW1_DECOMP_MAGIC_FOREST_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_FOREST_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

class Base;

class GMagicForestInfo: public GMagicInfo
{
public:

    // Override methods

    // BW1W120 004356e0 BW1M100 103ac990 GMagicForestInfo::_dt(void)
    virtual ~GMagicForestInfo();
};

#endif /* BW1_DECOMP_MAGIC_FOREST_INFO_INCLUDED_H */
