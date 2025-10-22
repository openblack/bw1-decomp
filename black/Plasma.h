#ifndef BW1_DECOMP_PLASMA_INCLUDED_H
#define BW1_DECOMP_PLASMA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lh3dlib/development/LH3DColor.h> /* For struct LH3DColor */
#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint, struct Point2D */

// Forward Declares

struct LH3DMaterial;
struct LH3DTexture;

struct Plasma
{
  struct LHPoint points[0x4f7];  /* 0x0 */
  struct Point2D uvs[0x4f7];  /* 0x3b94 */
  uint32_t indices[0x3][0x960];  /* 0x634c */
  struct LH3DColor colors[0x4f7];  /* 0xd3cc */
  struct LHPoint field_0xe7a8[0x10];
  struct LHPoint field_0xe868[0x10];
  struct LH3DTexture* pin_texture;  /* 0xe928 */
  struct LH3DMaterial* pin_material;
};
static_assert(sizeof(struct Plasma) == 0xe930, "Data type is of wrong size");

// Non-virtual methods

// win1.41 0053c640 mac 105c4040 Plasma::Init(void)
void __fastcall Init__6PlasmaFv(struct Plasma* this) asm("?Init@Plasma@@QAEXXZ");
// win1.41 0053c840 mac 105c3d50 Plasma::Render(int)
void __fastcall Render__6PlasmaFi(struct Plasma* this, const void* edx, int param_1) asm("?Render@Plasma@@QAEXH@Z");
// win1.41 inlined mac 100c9220 Plasma::Close(void)
void __fastcall Close__6PlasmaFv(struct Plasma* this) asm("?Close@Plasma@@QAEXXZ");

#endif /* BW1_DECOMP_PLASMA_INCLUDED_H */
