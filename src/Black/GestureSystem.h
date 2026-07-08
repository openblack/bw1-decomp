#ifndef BW1_DECOMP_GESTURE_SYSTEM_INCLUDED_H
#define BW1_DECOMP_GESTURE_SYSTEM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Base.h" /* For struct Base */

class GestureSystem : public Base
{
public:
	uint8_t field_0x8[0xc98];

	// Override methods

	// BW1W120 0054bb60 BW1M100 1042dc00 GestureSystem::_dt(void)
	virtual ~GestureSystem();

	// Constructors

	// BW1W120 0054bb40 BW1M100 inlined GestureSystem::GestureSystem(void)
	GestureSystem();
};

#endif /* BW1_DECOMP_GESTURE_SYSTEM_INCLUDED_H */
