#ifndef BW1_DECOMP_GESTURE_SYSTEM_INCLUDED_H
#define BW1_DECOMP_GESTURE_SYSTEM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <string.h>

#include "Base.h" /* For struct Base */
#include "GestureSample.h"

class GestureSystem : public Base
{
public:
	GestureSample Samples[0x50];
	uint8_t       field_0xc88;
	uint8_t       field_0xc89[3];
	uint32_t      field_0xc8c;
	uint8_t       field_0xc90;
	uint32_t      field_0xc94;

	// BW1W120 inlined BW1M119 0108a3b0
	void ClearSamples() { memset(Samples, 0, sizeof(Samples)); }
	// BW1W120 inlined BW1M119 01335240
	void Reset()
	{
		field_0xc88 = 0;
		field_0xc90 = 0;
		field_0xc8c = 0;
		ClearSamples();
	}

	// Override methods

	// BW1W120 0054bb60 BW1M119 01550d80
	virtual ~GestureSystem();

	// Constructors

	// BW1W120 0054bb40 BW1M119 inlined
	GestureSystem();
};

#endif /* BW1_DECOMP_GESTURE_SYSTEM_INCLUDED_H */
