#ifndef BW1_DECOMP_LIVING_ACTION_INCLUDED_H
#define BW1_DECOMP_LIVING_ACTION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint16_t, uint32_t, uint8_t */

#include <chlasm/GStates.h> /* For enum VILLAGER_STATES */

enum LIVING_ACTION_INDEX
{
	LIVING_ACTION_INDEX_TOP = 0x0,
	LIVING_ACTION_INDEX_FINAL = 0x1,
	LIVING_ACTION_INDEX_PREVIOUS = 0x2,
	_LIVING_ACTION_INDEX_COUNT = 0x3
};

// Forward Declares

class Living;

struct LivingAction
{
	uint8_t  states[_LIVING_ACTION_INDEX_COUNT]; /* 0x0 */
	uint8_t  field_0x3;
	uint16_t TurnsSinceStateChange;

	// Constructors

	// BW1W120 005ecc70 BW1M119 01389490
	LivingAction();

	// Non-virtual methods

	// BW1W120 005ecc90 BW1M119 010749a0
	void SetState(LIVING_ACTION_INDEX index, VILLAGER_STATES state);
	// BW1W120 inlined BW1M119 0104edb0
	VILLAGER_STATES GetState(LIVING_ACTION_INDEX index) const;
};

#endif /* BW1_DECOMP_LIVING_ACTION_INCLUDED_H */
