#ifndef BW1_DECOMP_FOOTBALL_INFO_INCLUDED_H
#define BW1_DECOMP_FOOTBALL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */
#include "InfoLoaders.h"       /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;
class GBaseInfo;
class GObjectInfo;

class GPFootballInfo : public GMultiMapFixedInfo
{
public:
	uint32_t field_0x120;

	// Override methods

	// BW1W120 00643620 BW1M119 0111aeb0
	virtual ~GPFootballInfo();
	// BW1W120 006435d0 BW1M119 0111af50
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
	// BW1W120 006435c0 BW1M119 0111ab50
	virtual MESH_LIST GetMesh() const;

	// Static data

	// BW1W120 00d46ae8
	static GPFootballInfo Infos[FOOTBALL_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 0111ae10
	static GPFootballInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in PFootball.h.
	INFO_DATA_BLOCK(field_0x120, field_0x120)
	INFO_DERIVED_LOADERS(GMultiMapFixedInfo, "PFootball.h", 36)
};

#endif /* BW1_DECOMP_FOOTBALL_INFO_INCLUDED_H */
