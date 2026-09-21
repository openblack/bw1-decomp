#ifndef BW1_DECOMP_MAGIC_FIRE_BALL_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_FIRE_BALL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "ObjectInfo.h" /* For struct GObjectInfo */

// Forward Declares

class Base;
class GBaseInfo;

class GMagicFireBallInfo : public GObjectInfo
{
public:
	// Override methods

	// BW1W120 00682910 BW1M119 014066a0
	virtual ~GMagicFireBallInfo();
	// BW1W120 006828a0 BW1M119 01407650
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_MAGIC_FIRE_BALL_INFO_INCLUDED_H */
