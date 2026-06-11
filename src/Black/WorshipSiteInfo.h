#ifndef BW1_DECOMP_WORSHIP_SITE_INFO_INCLUDED_H
#define BW1_DECOMP_WORSHIP_SITE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum ABODE_TYPE */

#include "CitadelPartInfo.h" /* For struct GCitadelPartInfo */

// Forward Declares

class Base;
class GBaseInfo;
class GMultiMapFixedInfo;
class GObjectInfo;

class GWorshipSiteInfo: public GCitadelPartInfo
{
public:
    float field_0x134;
    uint32_t field_0x138;
    uint32_t field_0x13c;
    uint32_t field_0x140;
    float field_0x144;
    float field_0x148;
    uint32_t field_0x14c;
    float field_0x150;
    float field_0x154;
    uint32_t field_0x158;
    float field_0x15c;

    // Override methods

    // win1.41 0077a920 mac 105b0900 GWorshipSiteInfo::_dt(void)
    virtual ~GWorshipSiteInfo();
    // win1.41 0077a8b0 mac 105b3c70 GWorshipSiteInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
    // win1.41 00464370 mac inlined GWorshipSiteInfo::GetMesh( const(void))
    virtual uint32_t GetMesh();
    // win1.41 00464380 mac inlined GWorshipSiteInfo::GetAbodeType( const(void))
    virtual ABODE_TYPE GetAbodeType();
};

#endif /* BW1_DECOMP_WORSHIP_SITE_INFO_INCLUDED_H */
