#ifndef BW1_DECOMP_LH3D_SUB_MESH_INCLUDED_H
#define BW1_DECOMP_LH3D_SUB_MESH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

// Forward Declares

struct LH3DPrimitive;
struct LHPoint;

struct LH3DSubMesh
{
    uint32_t flags_; /* 0x0 */
    uint32_t num_primitives_;
    LH3DPrimitive** primitives_;
    int num_bones_;
    uint8_t* bones_; /* 0x10 */

    // Static methods

    // BW1W120 0087fa00 BW1M100 100bbe90 LH3DSubMesh::Create(unsigned char *, LH3DSubMesh *)
    static void Create(const uint8_t* buffer, LH3DSubMesh* submesh);
    // BW1W120 0087fb20 BW1M100 100bbcb0 LH3DSubMesh::ComputeBoundingBox(LHPoint&, LHPoint&, int&)
    static void ComputeBoundingBox(LH3DSubMesh* this, LHPoint* maxima, LHPoint* minima, int* initialized);
};

#endif /* BW1_DECOMP_LH3D_SUB_MESH_INCLUDED_H */
