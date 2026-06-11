#ifndef BW1_DECOMP_RANK_INFO_INCLUDED_H
#define BW1_DECOMP_RANK_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GRankInfo: public GBaseInfo
{
public:

    // Override methods

    // win1.41 006e0870 mac 10133c10 GRankInfo::_dt(void)
    virtual ~GRankInfo();
    // win1.41 006e0810 mac 101340a0 GRankInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_RANK_INFO_INCLUDED_H */
