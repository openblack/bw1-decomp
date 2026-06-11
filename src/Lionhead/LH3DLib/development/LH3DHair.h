#ifndef BW1_DECOMP_LH3D_HAIR_INCLUDED_H
#define BW1_DECOMP_LH3D_HAIR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LH3DMeshIntersect.h" /* For struct MeshIntersect */
#include "LHPoint.h" /* For struct LHPoint */

// Forward Declares

struct HairGroup;
class LHFile;

struct LH3DHair
{
    LHPoint field_0x0[0x3];
    uint32_t field_0x24;
    uint32_t field_0x28;
    uint32_t field_0x2c;
    uint32_t field_0x30;
    LH3DHair__field_0x34* field_0x34;
    MeshIntersect intersect;
    HairGroup* hair_group; /* 0x60 */

    // Constructors

    // win1.41 00846680 mac inlined LH3DHair::LH3DHair(void)
    LH3DHair();

    // Non-virtual methods

    // win1.41 00847890 mac 100415b0 LH3DHair::ReadBinary(LHFile *, long, long, HairGroup *)
    void ReadBinary(LHFile* param_2, uint32_t param_3, uint32_t param_4, HairGroup* param_5);
};

#endif /* BW1_DECOMP_LH3D_HAIR_INCLUDED_H */
