#ifndef BW1_DECOMP_DIFFERENT_CREATURE_INFO_INCLUDED_H
#define BW1_DECOMP_DIFFERENT_CREATURE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class DifferentCreatureInfo: public GBaseInfo
{
public:

    // Override methods

    // BW1W120 00472d50 BW1M100 101d2170 DifferentCreatureInfo::_dt(void)
    virtual ~DifferentCreatureInfo();
    // BW1W120 00472cf0 BW1M100 101e2a50 DifferentCreatureInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_DIFFERENT_CREATURE_INFO_INCLUDED_H */
