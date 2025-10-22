#ifndef BW1_DECOMP_LH3D_TEXTURE_INCLUDED_H
#define BW1_DECOMP_LH3D_TEXTURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

enum TextureFormat_
{
  TextureFormat_0x0 = 0x0,
  _TextureFormat__COUNT = 0x1
};
static_assert(sizeof(enum TextureFormat_) == 0x4, "Data type is of wrong size");

static const char* TextureFormat__strs[_TextureFormat__COUNT] = {
  "TextureFormat_0x0",
};

struct TextureFormat
{
  enum TextureFormat_ format;  /* 0x0 */
};
static_assert(sizeof(struct TextureFormat) == 0x4, "Data type is of wrong size");

struct LH3DTexture
{
  uint32_t field_0x0;
  uint32_t field_0x4;
  uint32_t field_0x8;
  struct LH3DTexture* next;
  uint32_t field_0x10;
  struct TextureFormat format;
  uint32_t id;
  uint8_t field_0x1c[0x104];
  int* field_0x120;
  void* surface;
  uint32_t field_0x128;
  uint32_t mask_collide;
  uint32_t field_0x130;
  void* field_0x134;
  uint32_t field_0x138;
};
static_assert(sizeof(struct LH3DTexture) == 0x13c, "Data type is of wrong size");

// Static methods

// win1.41 008379e0 mac 1061afb4 LH3DTexture::Create
struct LH3DTexture* __cdecl Create__11LH3DTextureFPvUlUlP13TextureFormat(void* param_0, unsigned long param_1, unsigned long param_2, struct TextureFormat* param_3) asm("?Create@LH3DTexture@@SAPAV1@PAXKKPAUTextureFormat@@@Z");
// win1.41 008377e0 mac inlined LH3DTexture::SetPackedTexture(void)
void __stdcall SetPackedTexture__LH3DTextureFv(void);
// win1.41 00838480 mac 100c9060 LH3DTexture::GetThisTexture
struct LH3DTexture* __cdecl GetThisTexture__11LH3DTextureFUl(unsigned long id) asm("?GetThisTexture@LH3DTexture@@SAPAV1@K@Z");

// Non-virtual methods

// win1.41 00837d40 mac 1061b614 LH3DTexture::Release(void)
void __fastcall Release__11LH3DTextureFv(struct LH3DTexture* this) asm("?Release@LH3DTexture@@QAEXXZ");

#endif /* BW1_DECOMP_LH3D_TEXTURE_INCLUDED_H */
