#ifndef BW1_DECOMP_MAGIC_FIRE_BALL_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_FIRE_BALL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "ObjectInfo.h"  /* For struct GObjectInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;
class GBaseInfo;

class GMagicFireBallInfo : public GObjectInfo
{
public:
	uint8_t field_0x100[0xc];

	// Override methods

	// BW1W120 00682910 BW1M119 014066a0
	virtual ~GMagicFireBallInfo();
	// BW1W120 006828a0 BW1M119 01407650
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static data

	// BW1W120 00d4e3b0
	static GMagicFireBallInfo Infos[MAGIC_FIREBALL_TYPE_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 014075a0
	static GMagicFireBallInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in PSysFireBall.h.
	INFO_DATA_BLOCK(field_0x100, field_0x100)
	INFO_DERIVED_LOADERS(GObjectInfo, "PSysFireBall.h", 15)
};

#endif /* BW1_DECOMP_MAGIC_FIRE_BALL_INFO_INCLUDED_H */
