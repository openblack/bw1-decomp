#ifndef BW1_DECOMP_LH3D_MESH_INTERSECT_INCLUDED_H
#define BW1_DECOMP_LH3D_MESH_INTERSECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

// Forward Declares

class LHFile;

struct MeshIntersect
{
	uint32_t field_0x0;
	uint32_t field_0x4;
	uint32_t field_0x8;
	uint32_t field_0xc;
	uint32_t field_0x10;
	uint32_t field_0x14;
	uint32_t field_0x18;
	uint32_t field_0x1c;
	uint32_t field_0x20;
	uint32_t field_0x24;

	// Non-virtual methods

	// BW1W120 00867c20 BW1M100 1061c70c MeshIntersect::ReadBinary(LHFile *)
	void ReadBinary(LHFile* file);
};

#endif /* BW1_DECOMP_LH3D_MESH_INTERSECT_INCLUDED_H */
