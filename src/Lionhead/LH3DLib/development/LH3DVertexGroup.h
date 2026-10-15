#ifndef BW1_DECOMP_LH3D_VERTEX_GROUP_INCLUDED_H
#define BW1_DECOMP_LH3D_VERTEX_GROUP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t */

struct LH3DVertexGroup
{
	uint16_t vertex_count; /* 0x0 */
	uint16_t BoneIndex;

	// BW1W120 007acdf0 BW1M119 0100d7c0 (LHCombined Release)
	int GetBoneIndex();
	// BW1W120 007ace00 BW1M119 inlined
	int GetVertexCount();
};
static_assert(sizeof(LH3DVertexGroup) == 0x4, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH3D_VERTEX_GROUP_INCLUDED_H */
