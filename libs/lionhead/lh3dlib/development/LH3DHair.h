#ifndef BW1_DECOMP_LH3D_HAIR_INCLUDED_H
#define BW1_DECOMP_LH3D_HAIR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LH3DMeshIntersect.h" /* For struct MeshIntersect */
#include "LHPoint.h" /* For struct LHPoint */

// Forward Declares

struct HairGroup;
struct LHFile;

struct LH3DHair__field_0x34
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
};
static_assert(sizeof(struct LH3DHair__field_0x34) == 0x24, "Data type is of wrong size");

struct LH3DHair
{
  struct LHPoint field_0x0[0x3];
  uint32_t field_0x24;
  uint32_t field_0x28;
  uint32_t field_0x2c;
  uint32_t field_0x30;
  struct LH3DHair__field_0x34* field_0x34;
  struct MeshIntersect intersect;
  struct HairGroup* hair_group;  /* 0x60 */
};
static_assert(sizeof(struct LH3DHair) == 0x64, "Data type is of wrong size");

// Constructors

// win1.41 00846680 mac inlined LH3DHair::LH3DHair(void)
struct LH3DHair* __fastcall __ct__LH3DHairFv(struct LH3DHair* this);

// Non-virtual methods

// win1.41 00847890 mac 100415b0 LH3DHair::ReadBinary(LHFile *, long, long, HairGroup *)
void __fastcall ReadBinary__8LH3DHairFP6LHFilellP9HairGroup(struct LH3DHair* this, const void* edx, struct LHFile* param_2, uint32_t param_3, uint32_t param_4, struct HairGroup* param_5) asm("?ReadBinary@LH3DHair@@QAEXPAVLHFile@@JJPAUHairGroup@@@Z");

#endif /* BW1_DECOMP_LH3D_HAIR_INCLUDED_H */
