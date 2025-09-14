#ifndef BW1_DECOMP_LH3D_CITADEL_INCLUDED_H
#define BW1_DECOMP_LH3D_CITADEL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "LH3DStaticMorphableObject.h" /* For struct LH3DStaticMorphableObject */

struct LH3DCitadel
{
  struct LH3DStaticMorphableObject super;  /* 0x0 */
  uint8_t field_0x84[0x3c];
};
static_assert(sizeof(struct LH3DCitadel) == 0xc0, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009a2bf8 mac 101ca6c8 LH3DCitadel::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleObjectLocator__11LH3DCitadel asm("??_R4LH3DCitadel@@6B@");
// win1.41 009a2bfc mac 101ca6d0 LH3DCitadel::`vftable'
extern const struct LH3DObjectVftable __vt__11LH3DCitadel asm("??_7LH3DCitadel@@6B@");

// Constructors

// win1.41 007f9560 mac 100b45b0 LH3DCitadel::LH3DCitadel(void)
struct LH3DCitadel* __fastcall __ct__11LH3DCitadelFv(struct LH3DCitadel* this);

#endif /* BW1_DECOMP_LH3D_CITADEL_INCLUDED_H */
