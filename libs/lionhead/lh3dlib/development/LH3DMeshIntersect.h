#ifndef BW1_DECOMP_LH3D_MESH_INTERSECT_INCLUDED_H
#define BW1_DECOMP_LH3D_MESH_INTERSECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

// Forward Declares

struct LHFile;

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
};
static_assert(sizeof(struct MeshIntersect) == 0x28, "Data type is of wrong size");

// Non-virtual methods

// win1.41 00867c20 mac 1061c70c MeshIntersect::ReadBinary(LHFile *)
void __fastcall ReadBinary__13MeshIntersectFP6LHFile(struct MeshIntersect* this, const void* edx, struct LHFile* file) asm("?ReadBinary@MeshIntersect@@QAEXPAVLHFile@@@Z");

#endif /* BW1_DECOMP_LH3D_MESH_INTERSECT_INCLUDED_H */
