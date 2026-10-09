#ifndef BW1_DECOMP_CREATURE_MENTAL_DEBUG_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_DEBUG_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

#include "Base.h" /* For struct Base */

class CreatureMentalDebug : public Base
{
public:
	uint32_t field_0x8;
	uint32_t field_0xc;
	uint32_t field_0x10;
	uint32_t field_0x14;
	uint32_t field_0x18;
	uint32_t field_0x1c;
	uint32_t field_0x20;
	LHPoint  LineStart;
	LHPoint  LineEnd;
	int      LineTurnsLeft;
	LHPoint  MarkerPos;

	// Override methods

	// BW1W120 004d2540 BW1M119 0124adc0
	virtual ~CreatureMentalDebug();
};

#endif /* BW1_DECOMP_CREATURE_MENTAL_DEBUG_INCLUDED_H */
