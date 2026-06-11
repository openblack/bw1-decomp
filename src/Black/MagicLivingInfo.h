#ifndef BW1_DECOMP_MAGIC_LIVING_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_LIVING_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LivingInfo.h" /* For struct GLivingInfo */

// Forward Declares

class Base;
class GBaseInfo;
class GObjectInfo;

class GMagicLivingInfo: public GLivingInfo
{
public:

    // Override methods

    // win1.41 005fb980 mac inlined GMagicLivingInfo::_dt(void)
    virtual ~GMagicLivingInfo();
    // win1.41 005fb910 mac inlined GMagicLivingInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
    // win1.41 005fb900 mac inlined GMagicLivingInfo::GetMesh( const(void))
    virtual uint32_t GetMesh();
};

#endif /* BW1_DECOMP_MAGIC_LIVING_INFO_INCLUDED_H */
