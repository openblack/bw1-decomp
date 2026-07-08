#ifndef BW1_DECOMP_CITADEL_HEART_INFO_INCLUDED_H
#define BW1_DECOMP_CITADEL_HEART_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "CitadelPartInfo.h" /* For struct GCitadelPartInfo */

// Forward Declares

class Base;
class GBaseInfo;

class GCitadelHeartInfo : public GCitadelPartInfo
{
public:
	uint32_t field_0x134;
	uint32_t field_0x138;
	uint32_t field_0x13c;
	float    field_0x140;
	float    field_0x144;
	float    field_0x148;
	float    field_0x14c;
	float    field_0x150;
	float    field_0x154;

	// Override methods

	// BW1W120 004643e0 BW1M100 101c1bf0 GCitadelHeartInfo::_dt(void)
	virtual ~GCitadelHeartInfo();
	// BW1W120 00464390 BW1M100 101c1de0 GCitadelHeartInfo::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_CITADEL_HEART_INFO_INCLUDED_H */
