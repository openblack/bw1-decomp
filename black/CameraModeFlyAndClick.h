#ifndef BW1_DECOMP_CAMERA_MODE_FLY_AND_CLICK_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_FLY_AND_CLICK_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "CameraMode.h" /* For struct CameraMode */

struct CameraModeFlyAndClick
{
  struct CameraMode super;  /* 0x0 */
};
static_assert(sizeof(struct CameraModeFlyAndClick) == 0x8, "Data type is of wrong size");

static struct CameraModeVftable* const __vt__21CameraModeFlyAndClick = (struct CameraModeVftable* const)0x008c7814;

#endif /* BW1_DECOMP_CAMERA_MODE_FLY_AND_CLICK_INCLUDED_H */
