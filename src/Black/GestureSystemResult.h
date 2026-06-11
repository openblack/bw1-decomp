#ifndef BW1_DECOMP_GESTURE_SYSTEM_RESULT_INCLUDED_H
#define BW1_DECOMP_GESTURE_SYSTEM_RESULT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

struct GestureSystemResult
{
    uint8_t field_0x0;

    // Constructors

    // win1.41 0054bb90 mac inlined GestureSystemResult::GestureSystemResult(void)
    GestureSystemResult();

    // Non-virtual methods

    // win1.41 inlined mac 100938a0 GestureSystemResult::SetToZero(void)
    void SetToZero();
};

#endif /* BW1_DECOMP_GESTURE_SYSTEM_RESULT_INCLUDED_H */
