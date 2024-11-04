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

static struct LH3DObjectVftable* __vt__11LH3DCitadel = (struct LH3DObjectVftable*)0x009a2bfc;

// Constructors

// win1.41 007f9560 mac 100b45b0 LH3DCitadel::LH3DCitadel(void)
struct LH3DCitadel* __fastcall __ct__11LH3DCitadelFv(struct LH3DCitadel* this);

#endif /* BW1_DECOMP_LH3D_CITADEL_INCLUDED_H */
