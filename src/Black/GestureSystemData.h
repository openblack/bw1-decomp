#ifndef BW1_DECOMP_GESTURE_SYSTEM_DATA_INCLUDED_H
#define BW1_DECOMP_GESTURE_SYSTEM_DATA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Base.h" /* For struct Base */
#include "GestureSample.h"

class GestureSystemData : public Base
{
public:
	GestureSampleBase Samples[0x50];
	uint8_t           SampleCount;
	uint8_t           Gesture;
	uint8_t           field_0x64a;
	float             AspectRatio;
	uint32_t          CheckDirection;
	uint32_t          AllowReverse;
	uint32_t          CheckAspectRatio;

	// Override methods

	// BW1W120 00579690 BW1M119 010c8600
	virtual ~GestureSystemData();

	// Constructors

	// BW1W120 0054baf0 BW1M119 inlined
	GestureSystemData();
	// BW1W120 00578be0 BW1M119 01095a70
	void SetToZero();
};

#endif /* BW1_DECOMP_GESTURE_SYSTEM_DATA_INCLUDED_H */
