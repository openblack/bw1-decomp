#ifndef BW1_DECOMP_BALL_INFO_INCLUDED_H
#define BW1_DECOMP_BALL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "MobileObjectInfo.h" /* For struct GMobileObjectInfo */

// Forward Declares

class Base;
class GBaseInfo;

class GBallInfo : public GMobileObjectInfo
{
public:
	uint8_t field_0x114[0x2c];

	// Override methods

	// BW1W120 00435980 BW1M119 010b3ad0
	virtual ~GBallInfo();
	// BW1W120 00435930 BW1M119 010b3b70
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

class GPBallInfo : public GMobileObjectInfo
{
public:
	// Override methods

	// BW1W120 0063e8c0 BW1M119 0111a820
	virtual ~GPBallInfo();
	// BW1W120 0063e870 BW1M119 0111a8c0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_BALL_INFO_INCLUDED_H */
