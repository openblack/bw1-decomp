#ifndef BW1_DECOMP_GESTURE_SYSTEM_RESULT_INCLUDED_H
#define BW1_DECOMP_GESTURE_SYSTEM_RESULT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

struct GestureSystemResult
{
  uint8_t field_0x0;
};
static_assert(sizeof(struct GestureSystemResult) == 0x1, "Data type is of wrong size");

// Constructors

// win1.41 0054bb90 mac inlined GestureSystemResult::GestureSystemResult(void)
struct GestureSystemResult* __fastcall __ct__19GestureSystemResultFv(struct GestureSystemResult* this) asm("??0GestureSystemResult@@QAE@XZ");

// Non-virtual methods

// win1.41 inlined mac 100938a0 GestureSystemResult::SetToZero(void)
void __fastcall SetToZero__19GestureSystemResultFv(struct GestureSystemResult* this) asm("?SetToZero@GestureSystemResult@@QAEXXZ");

#endif /* BW1_DECOMP_GESTURE_SYSTEM_RESULT_INCLUDED_H */
