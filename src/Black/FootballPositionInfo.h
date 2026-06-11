#ifndef BW1_DECOMP_FOOTBALL_POSITION_INFO_INCLUDED_H
#define BW1_DECOMP_FOOTBALL_POSITION_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GFootballPositionInfo: public GBaseInfo
{
public:

    // Override methods

    // win1.41 00530f60 mac 102bcb80 GFootballPositionInfo::_dt(void)
    virtual ~GFootballPositionInfo();
    // win1.41 00530f00 mac 102bd7f0 GFootballPositionInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

class GPFootballPositionInfo: public GBaseInfo
{
public:

    // Override methods

    // win1.41 006436f0 mac 101113c0 GPFootballPositionInfo::_dt(void)
    virtual ~GPFootballPositionInfo();
    // win1.41 00643690 mac 10111790 GPFootballPositionInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_FOOTBALL_POSITION_INFO_INCLUDED_H */
