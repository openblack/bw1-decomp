#ifndef BW1_DECOMP_LH3D_COLOR_INCLUDED_H
#define BW1_DECOMP_LH3D_COLOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

struct LH3DColor
{
  uint8_t b;  /* 0x0 */
  uint8_t g;
  uint8_t r;
  uint8_t a;
};
static_assert(sizeof(struct LH3DColor) == 0x4, "Data type is of wrong size");

// Constructors

// win1.41 inlined mac 10083c40 LH3DColor::LH3DColor(uint)
void __fastcall __ct__9LH3DColorFUl(struct LH3DColor* this, const void* edx, uint32_t color) asm("??0LH3DColor@@QAE@K@Z");
// win1.41 inlined mac 100530b0 LH3DColor::LH3DColor(LH3DColor const &)
void __fastcall __ct__9LH3DColorFRC9LH3DColor(struct LH3DColor* this, const void* edx, const struct LH3DColor* other) asm("??0LH3DColor@@QAE@ABV0@@Z");

// Non-virtual methods

// win1.41 inlined mac 1047dc00 LH3DColor::operator=(LH3DColor const &)
void __fastcall __as__9LH3DColorFRC9LH3DColor(struct LH3DColor* this, const void* edx, const struct LH3DColor* other) asm("?__as@LH3DColor@@QAEXABV1@@Z");

#endif /* BW1_DECOMP_LH3D_COLOR_INCLUDED_H */
