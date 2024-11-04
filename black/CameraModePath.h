#ifndef BW1_DECOMP_CAMERA_MODE_PATH_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_PATH_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "CameraMode.h" /* For struct CameraMode */

struct CameraModePath
{
  struct CameraMode super;  /* 0x0 */
};
static_assert(sizeof(struct CameraModePath) == 0x8, "Data type is of wrong size");

static struct CameraModeVftable* const __vt__14CameraModePath = (struct CameraModeVftable* const)0x008c7d10;

#endif /* BW1_DECOMP_CAMERA_MODE_PATH_INCLUDED_H */
