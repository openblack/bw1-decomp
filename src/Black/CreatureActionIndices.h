#ifndef BW1_DECOMP_CREATURE_ACTION_INDICES_INCLUDED_H
#define BW1_DECOMP_CREATURE_ACTION_INDICES_INCLUDED_H

#include <stdint.h> /* For uint32_t */

#include <chlasm/CreatureEnum.h> /* For NUM_CREATURE_ACTIONS */

struct CreatureActionIndices
{
	// BW1W120 00c82118 BW1M119 01aa0944
	static uint32_t Index[NUM_CREATURE_ACTIONS];
};

#endif /* BW1_DECOMP_CREATURE_ACTION_INDICES_INCLUDED_H */
