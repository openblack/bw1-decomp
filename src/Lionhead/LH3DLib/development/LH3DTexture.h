#ifndef BW1_DECOMP_LH3D_TEXTURE_INCLUDED_H
#define BW1_DECOMP_LH3D_TEXTURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

enum TextureFormat_
{
  TextureFormat_0x0 = 0x0,
  _TextureFormat__COUNT = 0x1
};

struct LH3DTexture
{
    uint32_t field_0x0;
    uint32_t field_0x4;
    uint32_t field_0x8;
    LH3DTexture* next;
    uint32_t field_0x10;
    TextureFormat format;
    uint32_t id;
    uint8_t field_0x1c[0x104];
    int* field_0x120;
    void* surface;
    uint32_t field_0x128;
    uint32_t mask_collide;
    uint32_t field_0x130;
    void* field_0x134;
    uint32_t field_0x138;

    // Static methods

    // win1.41 008379e0 mac 1061afb4 LH3DTexture::Create
    static LH3DTexture* Create(void* param_0, unsigned long param_1, unsigned long param_2, TextureFormat* param_3);
    // win1.41 008377e0 mac inlined LH3DTexture::SetPackedTexture(void)
    static void SetPackedTexture();
    // win1.41 00838480 mac 100c9060 LH3DTexture::GetThisTexture
    static LH3DTexture* GetThisTexture(unsigned long id);

    // Non-virtual methods

    // win1.41 00837d40 mac 1061b614 LH3DTexture::Release(void)
    void Release();
};

#endif /* BW1_DECOMP_LH3D_TEXTURE_INCLUDED_H */
