#ifndef BW1_DECOMP_INTERFACE_FLAGS_INCLUDED_H
#define BW1_DECOMP_INTERFACE_FLAGS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

class GInterfaceFlags : public Base
{
public:
	uint8_t  field_0x8_0 : 5;
	uint8_t  WaitForGive : 1;
	uint8_t  field_0x8_6 : 2;
	uint8_t  Select : 1;
	uint8_t  Apply : 1;
	uint8_t  field_0x9_2 : 6;
	uint8_t  field_0xa[2];
	uint32_t field_0xc;
	uint8_t  field_0x10_0 : 1;
	uint8_t  field_0x10_1 : 1;
	uint8_t  DoubleClicked : 1;
	uint8_t  field_0x10_3 : 5;
	uint8_t  field_0x11[3];

	// Non-virtual methods

	// BW1W120 inlined BW1M119 01000000
	void ClearDoubleClicked() { DoubleClicked = 0; }
	// BW1W120 inlined BW1M119 010141a0
	bool32_t IsDoubleClicked() const { return DoubleClicked; }
	// BW1W120 inlined BW1M119 011af240
	bool32_t IsSelect() const { return Select == 1; }
	// BW1W120 inlined BW1M119 01088790
	bool32_t IsApply() const { return Apply == 1; }
	// BW1W120 inlined BW1M119 011f7580
	void ClearWaitForGive() { WaitForGive = 0; }

	// Override methods

	// BW1W120 005ce340 BW1M119 01364290
	virtual ~GInterfaceFlags();
};

#endif /* BW1_DECOMP_INTERFACE_FLAGS_INCLUDED_H */
