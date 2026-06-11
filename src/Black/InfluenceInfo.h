#ifndef BW1_DECOMP_INFLUENCE_INFO_INCLUDED_H
#define BW1_DECOMP_INFLUENCE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GInfluenceInfo: public GBaseInfo
{
public:

    // Override methods

    // win1.41 005cd150 mac 100fd4f0 GInfluenceInfo::_dt(void)
    virtual ~GInfluenceInfo();
    // win1.41 005cd110 mac 100fd4a0 GInfluenceInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_INFLUENCE_INFO_INCLUDED_H */
