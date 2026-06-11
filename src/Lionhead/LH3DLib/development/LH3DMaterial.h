#ifndef BW1_DECOMP_LH3D_MATERIAL_INCLUDED_H
#define BW1_DECOMP_LH3D_MATERIAL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint8_t */

#include "LH3DColor.h" /* For struct LH3DColor */

// Forward Declares

struct LH3DTexture;

enum LH3DMaterial__RenderMode
{
  RENDER_MODE_0x2 = 0x2,
  RENDER_MODE_0x3 = 0x3,
  RENDER_MODE_0x4 = 0x4,
  RENDER_MODE_0x5 = 0x5,
  RENDER_MODE_0x6 = 0x6,
  RENDER_MODE_0x8 = 0x8,
  RENDER_MODE_0x9 = 0x9,
  RENDER_MODE_0xc = 0xc,
  RENDER_MODE_0xd = 0xd,
  RENDER_MODE_0x10 = 0x10,
  _LH3DMaterial__RenderMode_COUNT = 0x11
};
static_assert(sizeof(enum LH3DMaterial__RenderMode) == 0x4, "Data type is of wrong size");

static const char* LH3DMaterial__RenderMode_strs[_LH3DMaterial__RenderMode_COUNT] = {
  "LH3DMaterial__RenderMode_0x0",
  "LH3DMaterial__RenderMode_0x1",
  "RENDER_MODE_0x2",
  "RENDER_MODE_0x3",
  "RENDER_MODE_0x4",
  "RENDER_MODE_0x5",
  "RENDER_MODE_0x6",
  "LH3DMaterial__RenderMode_0x7",
  "RENDER_MODE_0x8",
  "RENDER_MODE_0x9",
  "LH3DMaterial__RenderMode_0xa",
  "LH3DMaterial__RenderMode_0xb",
  "RENDER_MODE_0xc",
  "RENDER_MODE_0xd",
  "LH3DMaterial__RenderMode_0xe",
  "LH3DMaterial__RenderMode_0xf",
  "RENDER_MODE_0x10",
};

struct MaterialProperties
{
  bool field_0x0;
  bool field_0x1;
  bool cull;
  bool field_0x3;
  bool field_0x4;
};
static_assert(sizeof(struct MaterialProperties) == 0x5, "Data type is of wrong size");

struct LH3DMaterial
{
  enum LH3DMaterial__RenderMode render_mode;  /* 0x0 */
  uint8_t field_0x4;
  uint8_t cull_mode;
  struct LH3DTexture* texture;
  struct LH3DColor color;
};
static_assert(sizeof(struct LH3DMaterial) == 0x10, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH3D_MATERIAL_INCLUDED_H */
