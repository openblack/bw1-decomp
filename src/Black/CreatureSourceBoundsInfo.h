#ifndef BW1_DECOMP_CREATURE_SOURCE_BOUNDS_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_SOURCE_BOUNDS_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class CreatureSourceBoundsInfo: public GBaseInfo
{
public:

    // Override methods

    // BW1W120 004dd400 BW1M100 1025eab0 CreatureSourceBoundsInfo::_dt(void)
    virtual ~CreatureSourceBoundsInfo();
    // BW1W120 004dd3a0 BW1M100 1025ee20 CreatureSourceBoundsInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_CREATURE_SOURCE_BOUNDS_INFO_INCLUDED_H */
