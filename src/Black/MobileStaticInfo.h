#ifndef BW1_DECOMP_MOBILE_STATIC_INFO_INCLUDED_H
#define BW1_DECOMP_MOBILE_STATIC_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */

// Forward Declares

class Base;
class GBaseInfo;
class GObjectInfo;

class GMobileStaticInfo: public GMultiMapFixedInfo
{
public:
    uint8_t field_0x120[0xc];

    // Override methods

    // BW1W120 00608560 BW1M100 103be790 GMobileStaticInfo::_dt(void)
    virtual ~GMobileStaticInfo();
    // BW1W120 006084f0 BW1M100 103c1240 GMobileStaticInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
    // BW1W120 006084e0 BW1M100 10050090 GMobileStaticInfo::GetMesh( const(void))
    virtual uint32_t GetMesh();

    // Static methods

    // BW1W120 005ff2f0 BW1M100 103c1190 GMobileStaticInfo::GetInfo(void)
    static GMobileStaticInfo* GetInfo();
};

#endif /* BW1_DECOMP_MOBILE_STATIC_INFO_INCLUDED_H */
