#ifndef BW1_DECOMP_REWARD_INFO_INCLUDED_H
#define BW1_DECOMP_REWARD_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MobileObjectInfo.h" /* For struct GMobileObjectInfo */

// Forward Declares

class Base;
class GBaseInfo;

class GRewardInfo: public GMobileObjectInfo
{
public:

    // Override methods

    // win1.41 006e54b0 mac 1013b160 GRewardInfo::_dt(void)
    virtual ~GRewardInfo();
    // win1.41 006e5440 mac 1013c260 GRewardInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_REWARD_INFO_INCLUDED_H */
