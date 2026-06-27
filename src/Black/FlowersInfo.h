#ifndef BW1_DECOMP_FLOWERS_INFO_INCLUDED_H
#define BW1_DECOMP_FLOWERS_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "FeatureInfo.h" /* For struct GFeatureInfo */

// Forward Declares

class Base;
class GObjectInfo;

class GFlowersInfo: public GFeatureInfo
{
public:

    // Override methods

    // BW1W120 00527910 BW1M100 100d06a0 GFlowersInfo::_dt(void)
    virtual ~GFlowersInfo();
    // BW1W120 005278b0 BW1M100 100d15c0 GFlowersInfo::GetMesh( const(void))
    virtual uint32_t GetMesh();
};

#endif /* BW1_DECOMP_FLOWERS_INFO_INCLUDED_H */
