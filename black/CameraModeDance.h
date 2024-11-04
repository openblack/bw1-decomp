#ifndef BW1_DECOMP_CAMERA_MODE_DANCE_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_DANCE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "CameraMode.h" /* For struct CameraMode */

struct CameraModeDance
{
  struct CameraMode super;  /* 0x0 */
};
static_assert(sizeof(struct CameraModeDance) == 0x8, "Data type is of wrong size");

static struct CameraModeVftable* __vt__15CameraModeDance = (struct CameraModeVftable*)0x008c77a0;

#endif /* BW1_DECOMP_CAMERA_MODE_DANCE_INCLUDED_H */
