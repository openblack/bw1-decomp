#ifndef BW1_DECOMP_CREATURE_SUB_STATE_TABLE_ENTRY_INCLUDED_H
#define BW1_DECOMP_CREATURE_SUB_STATE_TABLE_ENTRY_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "CreatureAction.h" /* For CREATURE_SUB_STATE_ACTIONS_LAST */

class Creature;

enum CREATURE_SUB_STATE_FUNCTION
{
	CREATURE_SUB_STATE_FUNCTION_INITIATE = 0x0,
	CREATURE_SUB_STATE_FUNCTION_PERFORM = 0x1,
	CREATURE_SUB_STATE_FUNCTION_FINISH = 0x2,
	CREATURE_SUB_STATE_FUNCTION_ABORT = 0x3,
	CREATURE_SUB_STATE_FUNCTION_LAST = 0x4
};

struct CreatureSubStateTableEntry
{
	char     Name[0x40];
	uint32_t field_0x40;
	int (Creature::* Function[CREATURE_SUB_STATE_FUNCTION_LAST])();

	// BW1W120 00be0b98
	static CreatureSubStateTableEntry SubStateTable[CREATURE_SUB_STATE_ACTIONS_LAST];
};
static_assert(sizeof(CreatureSubStateTableEntry) == 0x90, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_SUB_STATE_TABLE_ENTRY_INCLUDED_H */
