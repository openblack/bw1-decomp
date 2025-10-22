#ifndef BW1_DECOMP_PHYS_OB_INCLUDED_H
#define BW1_DECOMP_PHYS_OB_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

// Forward Declares

struct LH3DObject;

struct PhysOb
{
  struct LH3DObject* obj;  /* 0x0 */
  float field_0x4;
  uint8_t field_0x8[0x60];
  uint32_t field_0x68;
  uint32_t field_0x6c;
  uint32_t field_0x70;
  uint8_t field_0x74[0x68];
  uint32_t field_0xdc;
  uint32_t field_0xe0;
  uint32_t field_0xe4;
  uint8_t field_0xe8[0xc];
  uint32_t field_0xf4;
  uint32_t field_0xf8;
  uint32_t field_0xfc;
  uint32_t field_0x100;
  uint8_t field_0x104[0x4c];
  uint32_t field_0x150;
  uint8_t field_0x154[0x1c];
  int field_0x170;
  uint32_t field_0x174;
  uint32_t field_0x178;
};
static_assert(sizeof(struct PhysOb) == 0x17c, "Data type is of wrong size");

// Non-virtual methods

// win1.41 007fb780 mac 10088820 PhysOb::Initialise(LH3DObject *, float)
void __fastcall Initialise__6PhysObFP10LH3DObjectf(struct PhysOb* this, const void* edx, struct LH3DObject* obj, float param_3) asm("?Initialise@PhysOb@@QAEXPAULH3DObject@@M@Z");

#endif /* BW1_DECOMP_PHYS_OB_INCLUDED_H */
