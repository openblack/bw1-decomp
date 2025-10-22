#ifndef BW1_DECOMP_HAIR_GROUP_INCLUDED_H
#define BW1_DECOMP_HAIR_GROUP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

// Forward Declares

struct LH3DHair;
struct LHFile;

struct HairGroup
{
  bool field_0x0;
  int hair_count;
  uint32_t field_0x8[0x3];
  uint32_t field_0x14[0x3];
  uint32_t field_0x20[0x3];
  float field_0x2c[0x3];
  float field_0x38[0x3];
  float field_0x44[0x3];
  float field_0x50[0x3];
  uint32_t count_0x5c;
  uint32_t field_0x60;
  uint32_t field_0x64;
  uint32_t field_0x68;
  uint32_t field_0x6c;
  uint32_t field_0x70;
  struct LH3DHair* hairs;
  uint32_t field_0x78;
};
static_assert(sizeof(struct HairGroup) == 0x7c, "Data type is of wrong size");

// Non-virtual methods

// win1.41 00847b50 mac 10041060 HairGroup::DeleteHair(long)
void __fastcall DeleteHair__9HairGroupFl(struct HairGroup* this, const void* edx, int param_1) asm("?DeleteHair@HairGroup@@QAEXJ@Z");
// win1.41 008479e0 mac 10041400 HairGroup::Init(long)
void __fastcall Init__9HairGroupFl(struct HairGroup* this, const void* edx, long param_1) asm("?Init@HairGroup@@QAEXJ@Z");
// win1.41 00848180 mac 101376f0 HairGroup::ReadBinary(LHFile *)
void __fastcall ReadBinary__9HairGroupFP6LHFile(struct HairGroup* this, const void* edx, struct LHFile* param_1) asm("?ReadBinary@HairGroup@@QAEXPAVLHFile@@@Z");

#endif /* BW1_DECOMP_HAIR_GROUP_INCLUDED_H */
