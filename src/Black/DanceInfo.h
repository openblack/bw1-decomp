#ifndef BW1_DECOMP_DANCE_INFO_INCLUDED_H
#define BW1_DECOMP_DANCE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GDanceInfo: public GBaseInfo
{
public:
    uint8_t field_0x10[0xa0];

    // Override methods

    // win1.41 0050b670 mac 102a8e60 GDanceInfo::_dt(void)
    virtual ~GDanceInfo();
    // win1.41 0050b600 mac 102aa810 GDanceInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_DANCE_INFO_INCLUDED_H */
