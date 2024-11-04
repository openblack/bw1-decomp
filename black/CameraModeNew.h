#ifndef BW1_DECOMP_CAMERA_MODE_NEW_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_NEW_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "CameraMode.h" /* For struct CameraMode */

struct CameraModeNew
{
  struct CameraMode super;  /* 0x0 */
};
static_assert(sizeof(struct CameraModeNew) == 0x8, "Data type is of wrong size");

static struct CameraModeVftable* __vt__13CameraModeNew = (struct CameraModeVftable*)0x008c7ab4;

#endif /* BW1_DECOMP_CAMERA_MODE_NEW_INCLUDED_H */
