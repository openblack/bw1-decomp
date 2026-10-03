#ifndef BW1_DECOMP_CITADEL_INFO_INCLUDED_H
#define BW1_DECOMP_CITADEL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "ContainerInfo.h" /* For struct GContainerInfo */

// Forward Declares

class Base;
class GBaseInfo;

class GCitadelInfo : public GContainerInfo
{
public:
	uint8_t field_0x14[0x40];

	// Override methods

	// BW1W120 004629d0 BW1M119 011c3650
	virtual ~GCitadelInfo();
	// BW1W120 00462980 BW1M119 011c36f0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_CITADEL_INFO_INCLUDED_H */
