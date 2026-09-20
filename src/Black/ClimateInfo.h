#ifndef BW1_DECOMP_CLIMATE_INFO_INCLUDED_H
#define BW1_DECOMP_CLIMATE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GClimateInfo : public GBaseInfo
{
public:
	// Descriptive table name; seven records constructed at 00770f50 in Weather.cpp.
	// The constructor stride and scalar deletion at 00770ff0 both establish 0xa0 bytes.
	static GClimateInfo Info[7]; // 00dcb198

	// TODO: Recover the prefix and original seasonal field names. Season-indexed accesses
	// in GClimate's constructors/Process establish six four-float arrays at 0x40..0x9f.
	uint8_t field_0x10[0x30];
	float   field_0x40[4];
	float   field_0x50[4];
	float   field_0x60[4];
	float   field_0x70[4];
	float   field_0x80[4];
	float   field_0x90[4];

	// Override methods

	// BW1W120 inlined BW1M100 105a16b0 GClimateInfo::~GClimateInfo(void)
	virtual ~GClimateInfo();
	// BW1W120 00770f80 BW1M100 105a3780 GClimateInfo::GetBaseInfo(unsigned long&)
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_CLIMATE_INFO_INCLUDED_H */
