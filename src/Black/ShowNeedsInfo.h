#ifndef BW1_DECOMP_SHOW_NEEDS_INFO_INCLUDED_H
#define BW1_DECOMP_SHOW_NEEDS_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "ObjectInfo.h" /* For struct GObjectInfo */

// Forward Declares

class Base;
class GBaseInfo;

class GShowNeedsInfo : public GObjectInfo
{
public:
	uint8_t field_0x100[0x14];

	// Override methods

	// BW1W120 00719a80 BW1M119 0114e240
	virtual ~GShowNeedsInfo();
	// BW1W120 00719a10 BW1M119 0114e3f0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
	// BW1W120 00719a00 BW1M119 0114cbd0
	virtual MESH_LIST GetMesh() const;
};

#endif /* BW1_DECOMP_SHOW_NEEDS_INFO_INCLUDED_H */
