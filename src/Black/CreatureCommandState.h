#ifndef BW1_DECOMP_CREATURE_COMMAND_STATE_INCLUDED_H
#define BW1_DECOMP_CREATURE_COMMAND_STATE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Base.h" /* For struct Base */

class CreatureCommandState : public Base
{
public:
	uint8_t  field_0x8[0x14];
	uint32_t field_0x1c;
	uint32_t field_0x20;
	uint32_t field_0x24;
	int      field_0x28;

	// Override methods

	// BW1W120 004d35e0 BW1M100 10245e50 CreatureCommandState::_dt(void)
	virtual ~CreatureCommandState();
};

#endif /* BW1_DECOMP_CREATURE_COMMAND_STATE_INCLUDED_H */
