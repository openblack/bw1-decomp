#ifndef BW1_DECOMP_LH3D_SPRITE_INCLUDED_H
#define BW1_DECOMP_LH3D_SPRITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For int32_t, uint16_t, uint32_t, uint8_t */

#include "LHPoint.h" /* For struct LHPoint */

struct LH3DSprite
{
    LHPoint pos; /* 0x0 */
    float field_0xc;
    float field_0x10;
    float angle;
    float field_0x18;
    float field_0x1c;
    float field_0x20;
    float field_0x24;
    uint32_t field_0x28;
    float field_0x2c;
    uint8_t field_0x30;
    uint8_t field_0x31;
    uint8_t field_0x32;
    uint8_t field_0x33;

    // Static methods

    // win1.41 008404a0 mac 100b64f0 LH3DSprite::Create(long, int)
    static LH3DSprite* Create(int param_1, int param_2);

    // Non-virtual methods

    // win1.41 008404f0 mac 1000c7c0 LH3DSprite::SetToZero(void)
    void SetToZero();
    // win1.41 00840520 mac 100b6440 LH3DSprite::Release(void)
    void Release();
    // win1.41 00840530 mac 1002a870 LH3DSprite::Draw(void)
    void Draw();
};

#endif /* BW1_DECOMP_LH3D_SPRITE_INCLUDED_H */
