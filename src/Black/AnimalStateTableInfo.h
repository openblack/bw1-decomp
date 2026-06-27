#ifndef BW1_DECOMP_ANIMAL_STATE_TABLE_INFO_INCLUDED_H
#define BW1_DECOMP_ANIMAL_STATE_TABLE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GAnimalStateTableInfo: public GBaseInfo
{
public:

    // Override methods

    // BW1W120 00416e80 BW1M100 1016b620 GAnimalStateTableInfo::_dt(void)
    virtual ~GAnimalStateTableInfo();
    // BW1W120 00416e10 BW1M100 1016cd20 GAnimalStateTableInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_ANIMAL_STATE_TABLE_INFO_INCLUDED_H */
