#ifndef BW1_DECOMP_SPOT_VISUAL_INFO_INCLUDED_H
#define BW1_DECOMP_SPOT_VISUAL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GSpotVisualInfo: public GBaseInfo
{
public:

    // Override methods

    // win1.41 0063e070 mac 101102f0 GSpotVisualInfo::_dt(void)
    virtual ~GSpotVisualInfo();
    // win1.41 0063e020 mac 10110f10 GSpotVisualInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_SPOT_VISUAL_INFO_INCLUDED_H */
