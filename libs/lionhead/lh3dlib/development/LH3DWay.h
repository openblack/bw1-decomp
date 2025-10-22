#ifndef BW1_DECOMP_LH3D_WAY_INCLUDED_H
#define BW1_DECOMP_LH3D_WAY_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

struct LH3DWay
{
  int field_0x0;
  int field_0x4;
  uint32_t field_0x8;
  float field_0xc;
  float field_0x10;
  uint8_t field_0x14[0x8];
};
static_assert(sizeof(struct LH3DWay) == 0x1c, "Data type is of wrong size");

// Non-virtual methods

// win1.41 00842f10 mac 100d49e0 LH3DWay::Release(void)
void __fastcall Release__7LH3DWayFv(struct LH3DWay* this) asm("?Release@LH3DWay@@QAEXXZ");
// win1.41 00843500 mac 100d3ea0 LH3DWay::Draw(void)
void __fastcall Draw__7LH3DWayFv(struct LH3DWay* this) asm("?Draw@LH3DWay@@QAEXXZ");
// win1.41 00844570 mac 100d2ad0 LH3DWay::AdjustPtr(void)
void __fastcall AdjustPtr__7LH3DWayFv(struct LH3DWay* this) asm("?AdjustPtr@LH3DWay@@QAEXXZ");

struct Q27LH3DWay7Running
{
  uint32_t field_0x0;
  uint8_t field_0x4[0x200];
  float field_0x204;
  struct LH3DWay* way;
};
static_assert(sizeof(struct Q27LH3DWay7Running) == 0x20c, "Data type is of wrong size");

// Constructors

// win1.41 00843ed0 mac 1061ce2c LH3DWay::Running::Running(LH3DWay *)
struct Q27LH3DWay7Running* __fastcall __ct__Q27LH3DWay7RunningFP7LH3DWay(struct Q27LH3DWay7Running* this, const void* edx, struct LH3DWay* param_2);

#endif /* BW1_DECOMP_LH3D_WAY_INCLUDED_H */
