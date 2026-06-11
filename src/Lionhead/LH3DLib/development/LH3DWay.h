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

    // Non-virtual methods

    // win1.41 00842f10 mac 100d49e0 LH3DWay::Release(void)
    void Release();
    // win1.41 00843500 mac 100d3ea0 LH3DWay::Draw(void)
    void Draw();
    // win1.41 00844570 mac 100d2ad0 LH3DWay::AdjustPtr(void)
    void AdjustPtr();
};

struct Q27LH3DWay7Running
{
    uint32_t field_0x0;
    uint8_t field_0x4[0x200];
    float field_0x204;
    LH3DWay* way;

    // Constructors

    // win1.41 00843ed0 mac 1061ce2c LH3DWay::Running::Running(LH3DWay *)
    Q27LH3DWay7Running(LH3DWay* param_2);
};

#endif /* BW1_DECOMP_LH3D_WAY_INCLUDED_H */
