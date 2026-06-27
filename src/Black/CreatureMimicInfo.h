#ifndef BW1_DECOMP_CREATURE_MIMIC_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_MIMIC_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class CreatureMimicInfo: public GBaseInfo
{
public:

    // Override methods

    // BW1W120 004e9cf0 BW1M100 1026ea60 CreatureMimicInfo::_dt(void)
    virtual ~CreatureMimicInfo();
    // BW1W120 004e9c80 BW1M100 1026ff90 CreatureMimicInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_CREATURE_MIMIC_INFO_INCLUDED_H */
