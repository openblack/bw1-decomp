#ifndef BW1_DECOMP_CREATURE_OBJECTS_INSPECTED_INCLUDED_H
#define BW1_DECOMP_CREATURE_OBJECTS_INSPECTED_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

class CreatureObjectsInspected : public Base
{
public:
	uint32_t field_0x8[0x18];

	// Override methods

	// BW1W120 004e3520 BW1M100 102466c0 CreatureObjectsInspected::_dt(void)
	virtual ~CreatureObjectsInspected();
};

#endif /* BW1_DECOMP_CREATURE_OBJECTS_INSPECTED_INCLUDED_H */
