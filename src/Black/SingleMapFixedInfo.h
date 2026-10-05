#ifndef BW1_DECOMP_SINGLE_MAP_FIXED_INFO_INCLUDED_H
#define BW1_DECOMP_SINGLE_MAP_FIXED_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "ObjectInfo.h"  /* For struct GObjectInfo, struct GObjectInfoVftable */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;
class GBaseInfo;

class GSingleMapFixedInfo : public GObjectInfo
{
public:
	MESH_LIST Mesh; /* 0x100 */

	// Static data

	// BW1W120 00ccfdb8
	static GSingleMapFixedInfo Infos[4];

	// Override methods

	// BW1W120 0052dcd0 BW1M119 010c68e0
	virtual MESH_LIST GetMesh() const { return Mesh; }
	// BW1W120 0052dce0 BW1M119 010e75b0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1)
	{
		param_1 = 4;
		return Infos;
	}

	// Static methods

	// BW1W120 inlined BW1M119 010e7050
	static GSingleMapFixedInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in Fixed.h.
	// Out of line: LoadBinary at 0042de00, Load at 0042dd90.
	INFO_DATA_BLOCK(Mesh, Mesh)
	INFO_DERIVED_LOADERS(GObjectInfo, "Fixed.h", 283)
};

#endif /* BW1_DECOMP_SINGLE_MAP_FIXED_INFO_INCLUDED_H */
