#ifndef BW1_DECOMP_CREATURE_ACTION_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_ACTION_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/CreatureEnum.h> /* For NUM_CREATURE_ACTIONS */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class CreatureActionInfo : public GBaseInfo
{
public:
	uint8_t  field_0x10[0x98];
	uint32_t field_0xa8;
	uint8_t  field_0xac[0x38];
	uint32_t field_0xe4;
	uint8_t  field_0xe8[0x28];

	// Override methods

	// BW1W120 00491750 BW1M119 01233ab0
	virtual GBaseInfo* GetBaseInfo(uint32_t& num_infos)
	{
		num_infos = sizeof(g_CreatureActionInfos) / sizeof(g_CreatureActionInfos[0]);
		return g_CreatureActionInfos;
	}

	// BW1W120 00c6c490
	static CreatureActionInfo g_CreatureActionInfos[NUM_CREATURE_ACTIONS];
};
static_assert(sizeof(CreatureActionInfo) == 0x110, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_ACTION_INFO_INCLUDED_H */
