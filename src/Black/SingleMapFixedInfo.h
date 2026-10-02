#ifndef BW1_DECOMP_SINGLE_MAP_FIXED_INFO_INCLUDED_H
#define BW1_DECOMP_SINGLE_MAP_FIXED_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "ObjectInfo.h" /* For struct GObjectInfo, struct GObjectInfoVftable */

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
};

#endif /* BW1_DECOMP_SINGLE_MAP_FIXED_INFO_INCLUDED_H */
