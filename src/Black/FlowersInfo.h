#ifndef BW1_DECOMP_FLOWERS_INFO_INCLUDED_H
#define BW1_DECOMP_FLOWERS_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "FeatureInfo.h" /* For struct GFeatureInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;
class GObjectInfo;

class GFlowersInfo : public GFeatureInfo
{
public:
	uint32_t field_0x124;

	// Override methods

	// BW1W120 00527910 BW1M119 010d4be0
	virtual ~GFlowersInfo();
	// BW1W120 005278b0 BW1M119 010d60c0
	virtual MESH_LIST GetMesh() const;

	// Static data

	// BW1W120 00cc9748
	static GFlowersInfo Infos[FLOWERS_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 010d4ae0
	static GFlowersInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in Feature.h.
	INFO_DATA_BLOCK(field_0x124, field_0x124)
	INFO_DERIVED_LOADERS(GFeatureInfo, "Feature.h", 106)
};

#endif /* BW1_DECOMP_FLOWERS_INFO_INCLUDED_H */
