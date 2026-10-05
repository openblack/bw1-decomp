#ifndef BW1_DECOMP_MOBILE_STATIC_INFO_INCLUDED_H
#define BW1_DECOMP_MOBILE_STATIC_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */
#include "InfoLoaders.h"       /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;
class GBaseInfo;
class GObjectInfo;

class GMobileStaticInfo : public GMultiMapFixedInfo
{
public:
	uint8_t field_0x120[0xc];

	// Override methods

	// BW1W120 00608560 BW1M119 013c6550
	virtual ~GMobileStaticInfo();
	// BW1W120 006084f0 BW1M119 013c9000
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
	// BW1W120 006084e0 BW1M119 01052a20
	virtual MESH_LIST GetMesh() const;

	// Static data

	// BW1W120 00d3a6d8
	static GMobileStaticInfo Infos[MOBILE_STATIC_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 013c8f50
	static GMobileStaticInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in MobileStatic.h.
	INFO_DATA_BLOCK(field_0x120, field_0x120)
	INFO_DERIVED_LOADERS(GMultiMapFixedInfo, "MobileStatic.h", 21)
};

#endif /* BW1_DECOMP_MOBILE_STATIC_INFO_INCLUDED_H */
