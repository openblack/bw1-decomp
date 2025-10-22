#ifndef BW1_DECOMP_VISCOUS_LIQUID_INCLUDED_H
#define BW1_DECOMP_VISCOUS_LIQUID_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

// Forward Declares

struct GameOSFile;
struct LH3DMesh;
struct LH3DPrimitive;

struct FragVertex
{
  uint8_t field_0x0[0x14];
};
static_assert(sizeof(struct FragVertex) == 0x14, "Data type is of wrong size");

// Constructors

// win1.41 0076d970 mac 1015ce60 FragVertex::FragVertex(void)
struct FragVertex* __fastcall __ct__10FragVertexFv(struct FragVertex* this) asm("??0FragVertex@@QAE@XZ");

struct FragTriangle
{
  uint32_t field_0x0;
  struct FragVertex vertices[0x3];
  uint8_t field_0x40[0x18];
};
static_assert(sizeof(struct FragTriangle) == 0x58, "Data type is of wrong size");

struct FragPrimitive
{
  struct LH3DPrimitive* lh3d_primitive;  /* 0x0 */
  uint32_t field_0x4[0x3];
  struct FragTriangle* triangle;  /* 0x10 */
};
static_assert(sizeof(struct FragPrimitive) == 0x14, "Data type is of wrong size");

// Constructors

// win1.41 0076d7a0 mac 1015de30 FragPrimitive::FragPrimitive(GameOSFile &, LH3DMesh *)
struct FragPrimitive* __fastcall __ct__13FragPrimitiveFR10GameOSFileP8LH3DMesh(struct FragPrimitive* this, const void* edx, struct GameOSFile* file, struct LH3DMesh* mesh) asm("??0FragPrimitive@@QAE@AAVGameOSFile@@PAULH3DMesh@@@Z");

struct FragMesh
{
  uint32_t field_0x0;
  uint32_t count;
  uint32_t field_0x8;
  struct FragPrimitive* primitives;
  uint32_t field_0x10;
  uint8_t field_0x14[0x14];
};
static_assert(sizeof(struct FragMesh) == 0x28, "Data type is of wrong size");

// Constructors

// win1.41 0076d520 mac 1015e3a0 FragMesh::FragMesh(GameOSFile &, LH3DMesh *)
struct FragMesh* __fastcall __ct__8FragMeshFR10GameOSFileP8LH3DMesh(struct FragMesh* this, const void* edx, struct GameOSFile* file, struct LH3DMesh* mesh) asm("??0FragMesh@@QAE@AAVGameOSFile@@PAULH3DMesh@@@Z");

// Non-virtual methods

// win1.41 007f70e0 mac 1015e8f0 FragMesh::_dt(void)
void __fastcall __dt__8FragMeshFv(struct FragMesh* this) asm("??1FragMesh@@QAE@XZ");

#endif /* BW1_DECOMP_VISCOUS_LIQUID_INCLUDED_H */
