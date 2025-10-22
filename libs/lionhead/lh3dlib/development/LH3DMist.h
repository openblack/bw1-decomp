#ifndef BW1_DECOMP_LH3D_MIST_INCLUDED_H
#define BW1_DECOMP_LH3D_MIST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTICompleteObjectLocator */

#include "LH3DStaticObject.h" /* For struct LH3DStaticObject */

struct LH3DMist
{
  struct LH3DStaticObject super;  /* 0x0 */
  uint32_t field_0x80;
  uint32_t field_0x84;
  float field_0x88;
  float field_0x8c;
  uint32_t field_0x90;
  struct LH3DMist* next;
  uint32_t field_0x98;
};
static_assert(sizeof(struct LH3DMist) == 0x9c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009a22e4 mac 101cd2bc LH3DMist::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__8LH3DMist asm("??_R4LH3DMist@@6B@");
// win1.41 009a22e8 mac 101cd2c4 LH3DMist::`vftable'
extern const struct LH3DObjectVftable __vt__8LH3DMist asm("??_7LH3DMist@@6B@");

// Constructors

// win1.41 007f9560 mac 100b45b0 LH3DMist::LH3DMist(void)
struct LH3DMist* __fastcall __ct__8LH3DMistFv(struct LH3DMist* this) asm("??0LH3DMist@@QAE@XZ");

#endif /* BW1_DECOMP_LH3D_MIST_INCLUDED_H */
