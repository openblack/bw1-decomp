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
  struct LH3DMaterial material_;  /* 0x0 */
  int num_vertices_;  /* 0x10 */
  struct LH3DVertex* vertices_;
  int num_triangles_;
  uint8_t* triangles_;
  int num_vertex_groups_;  /* 0x20 */
  struct LH3DVertexGroup* vertex_groups_;
  int num_blends_;
  uint8_t* blends_;
};
static_assert(sizeof(struct LH3DPrimitive) == 0x30, "Data type is of wrong size");

// Static methods

// win1.41 00807f30 mac 1006ad00 LH3DPrimitive::ComputeBoundingBox(LHPoint&, LHPoint&, int&)
void __fastcall ComputeBoundingBox__13LH3DPrimitiveFR7LHPointR7LHPointRi(struct LH3DPrimitive* this, struct LHPoint* maxima, struct LHPoint* minima, int* initialized) asm("?ComputeBoundingBox@LH3DPrimitive@@SAXAAULHPoint@@0AAH@Z");
// win1.41 0084ab50 mac 100a01f0 LH3DPrimitive::Create(unsigned char *, LH3DPrimitive *)
void __fastcall Create__13LH3DPrimitiveFPUcP13LH3DPrimitive(const uint8_t* buffer, struct LH3DPrimitive* primitive) asm("?Create@LH3DPrimitive@@SAXPAEPAV1@@Z");

#endif /* BW1_DECOMP_LH3D_PRIMITIVE_INCLUDED_H */
