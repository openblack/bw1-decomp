#ifndef BW1_DECOMP_BELIEF_INFO_INCLUDED_H
#define BW1_DECOMP_BELIEF_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GBeliefInfo : public GBaseInfo
{
public:
	float field_0x10;
	float field_0x14;
	float field_0x18;
	float field_0x1c;
	float UpdateOfBoredomValue;
	float field_0x24;

	// BW1W120 00c58640
	static GBeliefInfo Info;

	// Override methods

	// BW1W120 00437db0 BW1M119 010b4e10
	virtual ~GBeliefInfo();
	// BW1W120 00437d60 BW1M119 010b4dc0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_BELIEF_INFO_INCLUDED_H */
