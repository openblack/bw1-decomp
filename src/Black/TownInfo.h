#ifndef BW1_DECOMP_TOWN_INFO_INCLUDED_H
#define BW1_DECOMP_TOWN_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "ContainerInfo.h" /* For struct GContainerInfo */

// Forward Declares

class Base;
class GBaseInfo;
struct LHColor;

class GTownInfo : public GContainerInfo
{
public:
	float    field_0x148;
	float    field_0x14c;
	uint32_t field_0x150;
	float    field_0x154;
	float    field_0x158;
	float    field_0x15c;
	uint32_t field_0x160;
	float    field_0x164;
	uint32_t field_0x168;
	float    field_0x16c;
	float    field_0x170;
	float    field_0x174;
	float    field_0x178;
	float    field_0x17c;
	float    field_0x180;
	float    field_0x184;
	float    field_0x188;

	// Override methods

	// BW1W120 00738fc0 BW1M100 10545c00 GTownInfo::_dt(void)
	virtual ~GTownInfo();
	// BW1W120 0073fd80 BW1M100 inlined GTownInfo::GetDebugColor( const(LHColor *))
	virtual LHColor* GetDebugColor(LHColor* param_1);
	// BW1W120 00738f70 BW1M100 10545ba0 GTownInfo::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_TOWN_INFO_INCLUDED_H */
