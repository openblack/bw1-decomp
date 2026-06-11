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

    // win1.41 00527910 mac 100d06a0 GFlowersInfo::_dt(void)
    virtual ~GFlowersInfo();
    // win1.41 005278b0 mac 100d15c0 GFlowersInfo::GetMesh( const(void))
    virtual uint32_t GetMesh();
};

#endif /* BW1_DECOMP_FLOWERS_INFO_INCLUDED_H */
