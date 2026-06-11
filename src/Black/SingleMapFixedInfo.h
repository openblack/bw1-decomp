#ifndef BW1_DECOMP_SINGLE_MAP_FIXED_INFO_INCLUDED_H
#define BW1_DECOMP_SINGLE_MAP_FIXED_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "ObjectInfo.h" /* For struct GObjectInfo, struct GObjectInfoVftable */

// Forward Declares

class Base;
class GBaseInfo;

class GSingleMapFixedInfo: public GObjectInfo
{
public:

    // Override methods

    // win1.41 0052dd50 mac 100e2210 GSingleMapFixedInfo::_dt(void)
    virtual ~GSingleMapFixedInfo();
    // win1.41 0052dce0 mac 100e3150 GSingleMapFixedInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
    // win1.41 0052dcd0 mac 100c3840 GSingleMapFixedInfo::GetMesh( const(void))
    virtual uint32_t GetMesh();
};

#endif /* BW1_DECOMP_SINGLE_MAP_FIXED_INFO_INCLUDED_H */
