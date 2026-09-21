#ifndef BW1_DECOMP_GESTURE_SYSTEM_RESULT_INCLUDED_H
#define BW1_DECOMP_GESTURE_SYSTEM_RESULT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

struct GestureSystemResult
{
	uint8_t  field_0x0;
	uint32_t Reversed;
	uint8_t  StartSample;
	uint8_t  EndSample;
	uint8_t  DataIndex;

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	GestureSystemResult() { SetToZero(); }

	// Non-virtual methods

	// BW1W120 0054bb90 BW1M119 01095b00
	void SetToZero();
};

#endif /* BW1_DECOMP_GESTURE_SYSTEM_RESULT_INCLUDED_H */
