#ifndef BW1_DECOMP_GESTURE_SYSTEM_RESULT_INCLUDED_H
#define BW1_DECOMP_GESTURE_SYSTEM_RESULT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

struct GestureSystemResult
{
  uint8_t field_0x0;
};
static_assert(sizeof(struct GestureSystemResult) == 0x1, "Data type is of wrong size");

#endif /* BW1_DECOMP_GESTURE_SYSTEM_RESULT_INCLUDED_H */
