#ifndef BW1_DECOMP_FEATURE_INFO_INCLUDED_H
#define BW1_DECOMP_FEATURE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum ABODE_NUMBER, enum ABODE_TYPE */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */

// Forward Declares

class Base;
class GBaseInfo;
class GObjectInfo;

class GFeatureInfo: public GMultiMapFixedInfo
{
public:

    // Override methods

    // win1.41 00527320 mac 100a6900 GFeatureInfo::_dt(void)
    virtual ~GFeatureInfo();
    // win1.41 00421eb0 mac 100a7c10 GFeatureInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
    // win1.41 00421ea0 mac 100a5310 GFeatureInfo::GetMesh( const(void))
    virtual uint32_t GetMesh();
    // win1.41 00421e80 mac inlined GFeatureInfo::GetAbodeType( const(void))
    virtual ABODE_TYPE GetAbodeType();
    // win1.41 00421e90 mac inlined GFeatureInfo::GetAbodeNumber( const(void))
    virtual ABODE_NUMBER GetAbodeNumber();
};

#endif /* BW1_DECOMP_FEATURE_INFO_INCLUDED_H */
