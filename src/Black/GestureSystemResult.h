#ifndef BW1_DECOMP_GESTURE_SYSTEM_RESULT_INCLUDED_H
#define BW1_DECOMP_GESTURE_SYSTEM_RESULT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

struct GestureSystemResult
{
	uint8_t  Gesture;
	uint32_t Reversed;
	uint8_t  StartSample;
	uint8_t  EndSample;
	uint8_t  DataIndex;

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	GestureSystemResult() { SetToZero(); }

	// Non-virtual methods

	// BW1W120 0054bb90 BW1M119 01095b00
	void SetToZero()
	{
		Gesture = 0;
		Reversed = 0;
		EndSample = 0;
		StartSample = 0;
	}
	// BW1W120 inlined BW1M119 01333f40
	uint8_t GetResult() const { return Gesture; }
	// BW1W120 inlined BW1M119 01333f80
	uint32_t IsInverse() const { return Reversed; }
};

// BW1W120 0057b980 BW1M119 null
void fn_0057B980();

#endif /* BW1_DECOMP_GESTURE_SYSTEM_RESULT_INCLUDED_H */
