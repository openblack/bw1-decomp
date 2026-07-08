#ifndef BW1_DECOMP_GESTURE_SYSTEM_RESULT_INCLUDED_H
#define BW1_DECOMP_GESTURE_SYSTEM_RESULT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

struct GestureSystemResult
{
	uint8_t field_0x0;

	// Constructors

	// BW1W120 0054bb90 BW1M100 inlined GestureSystemResult::GestureSystemResult(void)
	GestureSystemResult();

	// Non-virtual methods

	// BW1W120 inlined BW1M100 100938a0 GestureSystemResult::SetToZero(void)
	void SetToZero();
};

#endif /* BW1_DECOMP_GESTURE_SYSTEM_RESULT_INCLUDED_H */
