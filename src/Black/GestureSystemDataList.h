#ifndef BW1_DECOMP_GESTURE_SYSTEM_DATA_LIST_INCLUDED_H
#define BW1_DECOMP_GESTURE_SYSTEM_DATA_LIST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Base.h" /* For struct Base */

class GestureSystemDataList: public Base
{
public:
    uint8_t field_0x8[0x8];

    // Override methods

    // win1.41 0054bac0 mac 100d4da0 GestureSystemDataList::_dt(void)
    virtual ~GestureSystemDataList();

    // Constructors

    // win1.41 0054baa0 mac inlined GestureSystemDataList::GestureSystemDataList(void)
    GestureSystemDataList();

    // Non-virtual methods

    // win1.41 00579af0 mac 1032b530 GestureSystemDataList::Load(char *)
    bool Load(char* param_1);
};

#endif /* BW1_DECOMP_GESTURE_SYSTEM_DATA_LIST_INCLUDED_H */
