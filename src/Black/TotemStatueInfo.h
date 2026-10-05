#ifndef BW1_DECOMP_TOTEM_STATUE_INFO_INCLUDED_H
#define BW1_DECOMP_TOTEM_STATUE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */
#include "InfoLoaders.h"       /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;
class GBaseInfo;
class GObjectInfo;

class GTotemStatueInfo : public GMultiMapFixedInfo
{
public:
	uint32_t field_0x120;

	// Override methods

	// BW1W120 00737af0 BW1M119 0154ee40
	virtual ~GTotemStatueInfo();
	// BW1W120 00737a80 BW1M119 0154f530
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
	// BW1W120 00737a70 BW1M119 0154c6e0
	virtual MESH_LIST GetMesh() const;

	// Static data

	// BW1W120 00da1d18
	static GTotemStatueInfo Infos[TRIBE_TYPE_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 0154f490
	static GTotemStatueInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in TotemStatue.h.
	INFO_DATA_BLOCK(field_0x120, field_0x120)
	INFO_DERIVED_LOADERS(GMultiMapFixedInfo, "TotemStatue.h", 19)
};

#endif /* BW1_DECOMP_TOTEM_STATUE_INFO_INCLUDED_H */
