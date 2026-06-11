#ifndef BW1_DECOMP_SOUND_INFO_INCLUDED_H
#define BW1_DECOMP_SOUND_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GSoundInfo: public GBaseInfo
{
public:

    // Override methods

    // win1.41 0071d6b0 mac 105135d0 GSoundInfo::_dt(void)
    virtual ~GSoundInfo();
    // win1.41 0071d660 mac 10513590 GSoundInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_SOUND_INFO_INCLUDED_H */
