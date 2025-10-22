#ifndef BW1_DECOMP_LIGHT_SHEET_INCLUDED_H
#define BW1_DECOMP_LIGHT_SHEET_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t */

#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */

// Forward Declares

struct LH3DMaterial;

struct LightSheet
{
  int count;  /* 0x0 */
  float field_0x4;
  float field_0x8;
  float field_0xc;
  float field_0x10;
  float field_0x14;
  float field_0x18;
  float field_0x1c;
  struct LHPoint* field_0x20;
  float* field_0x24;
  float* field_0x28;
  uint32_t field_0x2c;
  uint32_t field_0x30;
  float field_0x34;
  uint32_t field_0x38;
  uint32_t field_0x3c;
  float field_0x40;
  float* field_0x44;
  uint16_t* field_0x48;
  float* field_0x4c;
  uint32_t field_0x50;
  int field_0x54;
  struct LH3DMaterial* material_0x58;
  uint32_t field_0x5c;
};
static_assert(sizeof(struct LightSheet) == 0x60, "Data type is of wrong size");

// Constructors

// win1.41 0083e690 mac 100cddd0 LightSheet::LightSheet(void)
void __fastcall __ct__10LightSheetFv(struct LightSheet* this) asm("??0LightSheet@@QAE@XZ");

// Non-virtual methods

// win1.41 0083e610 mac 100cde20 LightSheet::PulseForceField(LHPoint, float)
void __fastcall PulseForceField__10LightSheetF7LHPointf(struct LightSheet* this, const void* edx, struct LHPoint param_1, float param_2) asm("?PulseForceField@LightSheet@@QAEXULHPoint@@M@Z");

#endif /* BW1_DECOMP_LIGHT_SHEET_INCLUDED_H */
