#ifndef BW1_DECOMP_CITADEL_INFO_INCLUDED_H
#define BW1_DECOMP_CITADEL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "ContainerInfo.h" /* For struct GContainerInfo */
#include "InfoLoaders.h"   /* For INFO_DATA_BLOCK */

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

	// Static data

	// BW1W120 00c5e1e8
	static GCitadelInfo Infos[1];

	// Static methods

	// BW1W120 inlined BW1M119 01069960
	static GCitadelInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in Citadel.h.
	// Out of line: LoadBinary at 0042ed50, Load at 0042ecf0.
	INFO_DATA_BLOCK(field_0x14, field_0x14)
	INFO_DERIVED_LOADERS(GContainerInfo, "Citadel.h", 45)
};

#endif /* BW1_DECOMP_CITADEL_INFO_INCLUDED_H */
