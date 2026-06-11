#ifndef BW1_DECOMP_VORTEX_INFO_INCLUDED_H
#define BW1_DECOMP_VORTEX_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GVortexInfo: public GBaseInfo
{
public:

    // Override methods

    // win1.41 005fd3f0 mac 103b8d80 GVortexInfo::_dt(void)
    virtual ~GVortexInfo();
    // win1.41 005fd390 mac 103b9150 GVortexInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_VORTEX_INFO_INCLUDED_H */
