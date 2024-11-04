#ifndef BW1_DECOMP_CAMERA_MODE_FREE_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_FREE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "CameraMode.h" /* For struct CameraMode */

struct CameraModeFree
{
  struct CameraMode super;  /* 0x0 */
  float field_0x8;
  uint32_t field_0xc;
  uint32_t field_0x10;
  uint32_t field_0x14;
};
static_assert(sizeof(struct CameraModeFree) == 0x18, "Data type is of wrong size");

static struct CameraModeVftable* const __vt__14CameraModeFree = (struct CameraModeVftable* const)0x008c7958;

#endif /* BW1_DECOMP_CAMERA_MODE_FREE_INCLUDED_H */
