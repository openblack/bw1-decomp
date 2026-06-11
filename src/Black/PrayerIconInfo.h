#ifndef BW1_DECOMP_PRAYER_ICON_INFO_INCLUDED_H
#define BW1_DECOMP_PRAYER_ICON_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "SingleMapFixedInfo.h" /* For struct GSingleMapFixedInfo */

// Forward Declares

class Base;
class GBaseInfo;

class GPrayerIconInfo: public GSingleMapFixedInfo
{
public:
    uint32_t field_0x100;
    uint32_t field_0x104;

    // Override methods

    // win1.41 00670770 mac 1011e8e0 GPrayerIconInfo::_dt(void)
    virtual ~GPrayerIconInfo();
    // win1.41 00670720 mac 1011eb60 GPrayerIconInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_PRAYER_ICON_INFO_INCLUDED_H */
