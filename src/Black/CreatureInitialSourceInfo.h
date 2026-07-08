#ifndef BW1_DECOMP_CREATURE_INITIAL_SOURCE_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_INITIAL_SOURCE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class CreatureInitialSourceInfo : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 004dd2c0 BW1M100 1025d520 CreatureInitialSourceInfo::_dt(void)
	virtual ~CreatureInitialSourceInfo();
	// BW1W120 004dd260 BW1M100 1025eee0 CreatureInitialSourceInfo::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_CREATURE_INITIAL_SOURCE_INFO_INCLUDED_H */
