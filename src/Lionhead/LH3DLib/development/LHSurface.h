#ifndef BW1_DECOMP_LH_SURFACE_INCLUDED_H
#define BW1_DECOMP_LH_SURFACE_INCLUDED_H

#include <assert.h> /* For static_assert */
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpragma-pack"
#pragma clang diagnostic ignored "-Wmacro-redefined"
#pragma clang diagnostic ignored "-Wmissing-declarations"
#include <ddraw.h> /* For IDirectDrawSurface7 */
#pragma clang diagnostic pop
#include <stdint.h> /* For uint16_t, uint32_t */

// Forward Declares

struct LHPixel;

struct LHSurface
{
  IDirectDrawSurface7* d3d_surfaces;  /* 0x0 */
  uint32_t field_0x4;
  int field_0x8;
  uint32_t field_0xc;
  uint32_t field_0x10;
  uint16_t width;
  uint16_t height;
  struct LHPixel* pixels;
  uint32_t field_0x1c;
  uint32_t field_0x20;
  uint32_t field_0x24;
  uint32_t field_0x28;
  int field_0x2c;
};
static_assert(sizeof(struct LHSurface) == 0x30, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_SURFACE_INCLUDED_H */
