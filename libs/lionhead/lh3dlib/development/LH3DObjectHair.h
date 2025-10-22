#ifndef BW1_DECOMP_LH3D_OBJECT_HAIR_INCLUDED_H
#define BW1_DECOMP_LH3D_OBJECT_HAIR_INCLUDED_H

#include <assert.h> /* For static_assert */

// Forward Declares

struct HairGroup;

struct LH3DObjectHair
{
  long hair_count;  /* 0x0 */
  struct HairGroup** hairs;
};
static_assert(sizeof(struct LH3DObjectHair) == 0x8, "Data type is of wrong size");

// Non-virtual methods

// win1.41 00848340 mac 10137b70 LH3DObjectHair::Init(long, HairGroup **)
void __fastcall Init__14LH3DObjectHairFlPP9HairGroup(struct LH3DObjectHair* this, const void* edx, long param_2, struct HairGroup** param_3) asm("?Init@LH3DObjectHair@@QAEXJPAPAUHairGroup@@@Z");

#endif /* BW1_DECOMP_LH3D_OBJECT_HAIR_INCLUDED_H */
