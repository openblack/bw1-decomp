#ifndef BW1_DECOMP_BELIEF_INFO_INCLUDED_H
#define BW1_DECOMP_BELIEF_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GBeliefInfo: public GBaseInfo
{
public:

    // Override methods

    // win1.41 00437db0 mac 100b22b0 GBeliefInfo::_dt(void)
    virtual ~GBeliefInfo();
    // win1.41 00437d60 mac 100b2260 GBeliefInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_BELIEF_INFO_INCLUDED_H */
