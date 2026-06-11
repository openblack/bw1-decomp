#ifndef BW1_DECOMP_LH3D_PRIMITIVE_INCLUDED_H
#define BW1_DECOMP_LH3D_PRIMITIVE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "LH3DMaterial.h" /* For struct LH3DMaterial */

// Forward Declares

struct LH3DVertex;
struct LH3DVertexGroup;
struct LHPoint;

struct LH3DPrimitive
{
    LH3DMaterial material_; /* 0x0 */
    int num_vertices_; /* 0x10 */
    LH3DVertex* vertices_;
    int num_triangles_;
    uint8_t* triangles_;
    int num_vertex_groups_; /* 0x20 */
    LH3DVertexGroup* vertex_groups_;
    int num_blends_;
    uint8_t* blends_;

    // Static methods

    // win1.41 00807f30 mac 1006ad00 LH3DPrimitive::ComputeBoundingBox(LHPoint&, LHPoint&, int&)
    static void ComputeBoundingBox(LH3DPrimitive* this, LHPoint* maxima, LHPoint* minima, int* initialized);
    // win1.41 0084ab50 mac 100a01f0 LH3DPrimitive::Create(unsigned char *, LH3DPrimitive *)
    static void Create(const uint8_t* buffer, LH3DPrimitive* primitive);
};

#endif /* BW1_DECOMP_LH3D_PRIMITIVE_INCLUDED_H */
