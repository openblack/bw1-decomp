#ifndef BW1_DECOMP_TOWN_CREATURE_INFO_INCLUDED_H
#define BW1_DECOMP_TOWN_CREATURE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class TownCreatureInfo : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 007437d0 BW1M100 10557190 TownCreatureInfo::_dt(void)
	virtual ~TownCreatureInfo();
	// BW1W120 007437c0 BW1M100 10558ea0 TownCreatureInfo::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_TOWN_CREATURE_INFO_INCLUDED_H */
