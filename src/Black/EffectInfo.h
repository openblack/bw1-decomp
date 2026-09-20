#ifndef BW1_DECOMP_EFFECT_INFO_INCLUDED_H
#define BW1_DECOMP_EFFECT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GEffectInfo : public GBaseInfo
{
public:
	float    field_0x10;
	float    field_0x14;
	float    field_0x18;
	float    field_0x1c;
	uint32_t field_0x20;
	float    field_0x24;
	uint32_t field_0x28;
	float    field_0x2c;
	uint32_t field_0x30;

	// Override methods

	// BW1W120 00524dd0 BW1M100 100cc6a0 GEffectInfo::_dt(void)
	virtual ~GEffectInfo();
	// BW1W120 00524d70 BW1M100 100ccc90 GEffectInfo::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Constructors

	// BW1W120 00524d40 BW1M100 100cc740 GEffectInfo::GEffectInfo(void)
	GEffectInfo();
};

#endif /* BW1_DECOMP_EFFECT_INFO_INCLUDED_H */
