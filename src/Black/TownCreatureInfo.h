#ifndef BW1_DECOMP_TOWN_CREATURE_INFO_INCLUDED_H
#define BW1_DECOMP_TOWN_CREATURE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class TownCreatureInfo: public GBaseInfo
{
public:

    // Override methods

    // win1.41 007437d0 mac 10557190 TownCreatureInfo::_dt(void)
    virtual ~TownCreatureInfo();
    // win1.41 007437c0 mac 10558ea0 TownCreatureInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_TOWN_CREATURE_INFO_INCLUDED_H */
