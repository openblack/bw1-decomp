#ifndef BW1_DECOMP_GESTURE_SYSTEM_DATA_INCLUDED_H
#define BW1_DECOMP_GESTURE_SYSTEM_DATA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Base.h" /* For struct Base */

class GestureSystemData: public Base
{
public:
    uint8_t field_0x8[0x654];

    // Override methods

    // BW1W120 00579690 BW1M100 1042dc90 GestureSystemData::_dt(void)
    virtual ~GestureSystemData();

    // Constructors

    // BW1W120 0054baf0 BW1M100 inlined GestureSystemData::GestureSystemData(void)
    GestureSystemData();
};

#endif /* BW1_DECOMP_GESTURE_SYSTEM_DATA_INCLUDED_H */
