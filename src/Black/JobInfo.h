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

    // win1.41 005e1720 mac 100fe5c0 GJobInfo::_dt(void)
    virtual ~GJobInfo();
    // win1.41 005e16c0 mac 100fe6d0 GJobInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);

    // Non-virtual methods

    // win1.41 005e1740 mac 100fe450 GJobInfo::GetJobActivity(void) const
    uint32_t GetJobActivity();
};

#endif /* BW1_DECOMP_JOB_INFO_INCLUDED_H */
