#ifndef BW1_DECOMP_JOB_INFO_INCLUDED_H
#define BW1_DECOMP_JOB_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GJobInfo: public GBaseInfo
{
public:

    // Override methods

    // BW1W120 005e1720 BW1M100 100fe5c0 GJobInfo::_dt(void)
    virtual ~GJobInfo();
    // BW1W120 005e16c0 BW1M100 100fe6d0 GJobInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);

    // Non-virtual methods

    // BW1W120 005e1740 BW1M100 100fe450 GJobInfo::GetJobActivity(void) const
    uint32_t GetJobActivity();
};

#endif /* BW1_DECOMP_JOB_INFO_INCLUDED_H */
