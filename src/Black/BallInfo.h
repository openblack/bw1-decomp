#ifndef BW1_DECOMP_BALL_INFO_INCLUDED_H
#define BW1_DECOMP_BALL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "MobileObjectInfo.h" /* For struct GMobileObjectInfo */
#include "InfoLoaders.h"      /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;
class GBaseInfo;

class GBallInfo : public GMobileObjectInfo
{
public:
	uint8_t field_0x114[0x2c];

	// Override methods

	// BW1W120 00435930 BW1M119 010b3b70
	virtual GBaseInfo* GetBaseInfo(uint32_t& info_count)
	{
		info_count = 1;
		return &Info;
	}

	// Static data

	// BW1W120 00c58498
	static GBallInfo Info;

	// Static methods

	// BW1W120 inlined BW1M119 010b3a40
	static GBallInfo* GetInfo() { return &Info; }

	// TODO(#377): The original declared this class in Ball.h.
	// Out of line: LoadBinary at 0042e8c0, Load at 0042e830.
	INFO_DATA_BLOCK(field_0x114, field_0x114)
	INFO_DERIVED_LOADERS(28, "Ball.h", GMobileObjectInfo)
};

class GPBallInfo : public GMobileObjectInfo
{
public:
	uint8_t field_0x114[0x8];

	// Override methods

	// BW1W120 0063e8c0 BW1M119 0111a820
	virtual ~GPBallInfo();
	// BW1W120 0063e870 BW1M119 0111a8c0
	virtual GBaseInfo* GetBaseInfo(uint32_t& info_count);

	// Static data

	// BW1W120 00d454f0
	static GPBallInfo Infos[1];

	// Static methods

	// BW1W120 inlined BW1M119 0111a790
	static GPBallInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in PBall.h.
	INFO_DATA_BLOCK(field_0x114, field_0x114)
	INFO_DERIVED_LOADERS(23, "PBall.h", GMobileObjectInfo)
};

#endif /* BW1_DECOMP_BALL_INFO_INCLUDED_H */
