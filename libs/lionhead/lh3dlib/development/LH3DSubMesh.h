#ifndef BW1_DECOMP_LH3D_SUB_MESH_INCLUDED_H
#define BW1_DECOMP_LH3D_SUB_MESH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

// Forward Declares

struct LH3DPrimitive;
struct LHPoint;

struct LH3DSubMesh
{
  uint32_t flags_;  /* 0x0 */
  uint32_t num_primitives_;
  struct LH3DPrimitive** primitives_;
  int num_bones_;
  uint8_t* bones_;  /* 0x10 */
};
static_assert(sizeof(struct LH3DSubMesh) == 0x14, "Data type is of wrong size");

// Static methods

// win1.41 0087fa00 mac 100bbe90 LH3DSubMesh::Create(unsigned char *, LH3DSubMesh *)
void __cdecl Create__11LH3DSubMeshFPUcP11LH3DSubMesh(const uint8_t* buffer, struct LH3DSubMesh* submesh) asm("?Create@LH3DSubMesh@@SAXPAEPAV1@@Z");
// win1.41 0087fb20 mac 100bbcb0 LH3DSubMesh::ComputeBoundingBox(LHPoint&, LHPoint&, int&)
void __fastcall ComputeBoundingBox__11LH3DSubMeshFR7LHPointR7LHPointRi(struct LH3DSubMesh* this, struct LHPoint* maxima, struct LHPoint* minima, int* initialized) asm("?ComputeBoundingBox@LH3DSubMesh@@SAXAAULHPoint@@0AAH@Z");

#endif /* BW1_DECOMP_LH3D_SUB_MESH_INCLUDED_H */
