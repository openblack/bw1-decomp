#ifndef BW1_DECOMP_VISCOUS_LIQUID_INCLUDED_H
#define BW1_DECOMP_VISCOUS_LIQUID_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

// Forward Declares

class GameOSFile;
struct LH3DMesh;
struct LH3DPrimitive;

struct FragVertex
{
    uint8_t field_0x0[0x14];

    // Constructors

    // win1.41 0076d970 mac 1015ce60 FragVertex::FragVertex(void)
    FragVertex();
};

struct FragPrimitive
{
    LH3DPrimitive* lh3d_primitive; /* 0x0 */
    uint32_t field_0x4[0x3];
    FragTriangle* triangle; /* 0x10 */

    // Constructors

    // win1.41 0076d7a0 mac 1015de30 FragPrimitive::FragPrimitive(GameOSFile &, LH3DMesh *)
    FragPrimitive(GameOSFile* file, LH3DMesh* mesh);
};

struct FragMesh
{
    uint32_t field_0x0;
    uint32_t count;
    uint32_t field_0x8;
    FragPrimitive* primitives;
    uint32_t field_0x10;
    uint8_t field_0x14[0x14];

    // Constructors

    // win1.41 0076d520 mac 1015e3a0 FragMesh::FragMesh(GameOSFile &, LH3DMesh *)
    FragMesh(GameOSFile* file, LH3DMesh* mesh);

    // Non-virtual methods

    // win1.41 007f70e0 mac 1015e8f0 FragMesh::_dt(void)
    void _dt();
};

#endif /* BW1_DECOMP_VISCOUS_LIQUID_INCLUDED_H */
