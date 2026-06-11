#ifndef BW1_DECOMP_PRAYER_SITE_INFO_INCLUDED_H
#define BW1_DECOMP_PRAYER_SITE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */

// Forward Declares

class Base;
class GBaseInfo;
class GObjectInfo;

class GPrayerSiteInfo: public GMultiMapFixedInfo
{
public:

    // Override methods

    // win1.41 006706c0 mac 1011ea20 GPrayerSiteInfo::_dt(void)
    virtual ~GPrayerSiteInfo();
    // win1.41 00670670 mac 1011eb00 GPrayerSiteInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
    // win1.41 00670660 mac 1011eac0 GPrayerSiteInfo::GetMesh( const(void))
    virtual uint32_t GetMesh();
};

#endif /* BW1_DECOMP_PRAYER_SITE_INFO_INCLUDED_H */
