#ifndef BW1_DECOMP_FOOTBALL_POSITION_INFO_INCLUDED_H
#define BW1_DECOMP_FOOTBALL_POSITION_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For FOOTBALL_POSITION_INFO_LAST, PFOOTBALL_POSITION_INFO_LAST */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class GFootballPositionInfo : public GBaseInfo
{
public:
	uint8_t field_0x10[0x14];

	// Override methods

	// BW1W120 00530f60 BW1M119 012c0540
	virtual ~GFootballPositionInfo();
	// BW1W120 00530f00 BW1M119 012c1180
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static data

	// BW1W120 00cd01e0
	static GFootballPositionInfo Infos[FOOTBALL_POSITION_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 012c10d0
	static GFootballPositionInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in Football.h.
	INFO_DATA_BLOCK(field_0x10, field_0x10)
	INFO_ROOT_LOADERS("Football.h", 58)
};

class GPFootballPositionInfo : public GBaseInfo
{
public:
	uint8_t field_0x10[0x14];

	// Override methods

	// BW1W120 006436f0 BW1M119 0111abf0
	virtual ~GPFootballPositionInfo();
	// BW1W120 00643690 BW1M119 0111afb0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static data

	// BW1W120 00d46c10
	static GPFootballPositionInfo Infos[PFOOTBALL_POSITION_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 0111ad60
	static GPFootballPositionInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in PFootball.h.
	INFO_DATA_BLOCK(field_0x10, field_0x10)
	INFO_ROOT_LOADERS("PFootball.h", 24)
};

#endif /* BW1_DECOMP_FOOTBALL_POSITION_INFO_INCLUDED_H */
