#ifndef BW1_DECOMP_LH3D_SPRITE_INCLUDED_H
#define BW1_DECOMP_LH3D_SPRITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For int32_t, uint16_t, uint32_t, uint8_t */

#include "LHPoint.h" /* For struct LHPoint */

struct LH3DSprite
{
  struct LHPoint pos;  /* 0x0 */
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
};
static_assert(sizeof(struct LH3DSprite) == 0x34, "Data type is of wrong size");

// Static methods

// win1.41 008404a0 mac 100b64f0 LH3DSprite::Create(long, int)
struct LH3DSprite* __fastcall Create__10LH3DSpriteFli(int param_1, int param_2) asm("?Create@LH3DSprite@@SAPAV1@JH@Z");

// Non-virtual methods

// win1.41 008404f0 mac 1000c7c0 LH3DSprite::SetToZero(void)
void __fastcall SetToZero__10LH3DSpriteFv(struct LH3DSprite* this) asm("?SetToZero@LH3DSprite@@QAEXXZ");
// win1.41 00840520 mac 100b6440 LH3DSprite::Release(void)
void __fastcall Release__10LH3DSpriteFv(struct LH3DSprite* this) asm("?Release@LH3DSprite@@QAEXXZ");
// win1.41 00840530 mac 1002a870 LH3DSprite::Draw(void)
void __fastcall Draw__10LH3DSpriteFv(struct LH3DSprite* this) asm("?Draw@LH3DSprite@@QAEXXZ");

union LHSprite__Texels
{
  uint16_t _16;
  uint8_t _24[0x3];
};
static_assert(sizeof(union LHSprite__Texels) == 0x4, "Data type is of wrong size");

struct LHSprite
{
  uint16_t field_0x0;
  uint16_t field_0x2;
  union LHSprite__Texels* texels;
};
static_assert(sizeof(struct LHSprite) == 0x8, "Data type is of wrong size");

struct LHSpriteList
{
  bool initialized;  /* 0x0 */
  struct LHSprite* payload;
  int32_t field_0x8;
};
static_assert(sizeof(struct LHSpriteList) == 0xc, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH3D_SPRITE_INCLUDED_H */
