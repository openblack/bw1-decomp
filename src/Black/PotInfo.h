#ifndef BW1_DECOMP_POT_INFO_INCLUDED_H
#define BW1_DECOMP_POT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MobileObjectInfo.h" /* For struct GMobileObjectInfo */

// Forward Declares

class Base;
class GBaseInfo;

class GPotInfo: public GMobileObjectInfo
{
public:

    // Override methods

    // win1.41 0066cc40 mac 10117210 GPotInfo::_dt(void)
    virtual ~GPotInfo();
    // win1.41 0066cbd0 mac 1011d400 GPotInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_POT_INFO_INCLUDED_H */
