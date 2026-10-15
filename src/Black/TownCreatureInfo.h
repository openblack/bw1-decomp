#ifndef BW1_DECOMP_TOWN_CREATURE_INFO_INCLUDED_H
#define BW1_DECOMP_TOWN_CREATURE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;
class Creature;

class TownCreatureInfo : public GBaseInfo
{
public:
	Creature* AboutCreature; /* 0x10 */
	uint32_t  Attitude;      /* 0x14 */
	uint32_t  field_0x18;
	uint32_t  field_0x1c;

	// Override methods

	// BW1W120 007437d0 BW1M119 015609c0
	virtual ~TownCreatureInfo();
	// BW1W120 007437c0 BW1M119 015623e0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};
static_assert(sizeof(TownCreatureInfo) == 0x20, "Data type is of wrong size");

#endif /* BW1_DECOMP_TOWN_CREATURE_INFO_INCLUDED_H */
