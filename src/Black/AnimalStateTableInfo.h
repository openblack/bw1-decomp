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

    // win1.41 00416e80 mac 1016b620 GAnimalStateTableInfo::_dt(void)
    virtual ~GAnimalStateTableInfo();
    // win1.41 00416e10 mac 1016cd20 GAnimalStateTableInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_ANIMAL_STATE_TABLE_INFO_INCLUDED_H */
