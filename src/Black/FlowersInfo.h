#ifndef BW1_DECOMP_FLOWERS_INFO_INCLUDED_H
#define BW1_DECOMP_FLOWERS_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "FeatureInfo.h" /* For struct GFeatureInfo */

// Forward Declares

class Base;
class GObjectInfo;

class GFlowersInfo : public GFeatureInfo
{
public:
	// Override methods

	// BW1W120 00527910 BW1M119 010d4be0
	virtual ~GFlowersInfo();
	// BW1W120 005278b0 BW1M119 010d60c0
	virtual MESH_LIST GetMesh() const;
};

#endif /* BW1_DECOMP_FLOWERS_INFO_INCLUDED_H */
