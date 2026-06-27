#ifndef BW1_DECOMP_CREATURE_ACTION_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_ACTION_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class CreatureActionInfo: public GBaseInfo
{
public:

    // Override methods

    // BW1W120 004917c0 BW1M100 1022eaa0 CreatureActionInfo::_dt(void)
    virtual ~CreatureActionInfo();
    // BW1W120 00491750 BW1M100 1022ebc0 CreatureActionInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_CREATURE_ACTION_INFO_INCLUDED_H */
