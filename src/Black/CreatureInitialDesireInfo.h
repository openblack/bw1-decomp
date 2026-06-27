#ifndef BW1_DECOMP_CREATURE_INITIAL_DESIRE_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_INITIAL_DESIRE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class CreatureInitialDesireInfo: public GBaseInfo
{
public:

    // Override methods

    // BW1W120 004918a0 BW1M100 1022e850 CreatureInitialDesireInfo::_dt(void)
    virtual ~CreatureInitialDesireInfo();
    // BW1W120 00491830 BW1M100 1022ec70 CreatureInitialDesireInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_CREATURE_INITIAL_DESIRE_INFO_INCLUDED_H */
