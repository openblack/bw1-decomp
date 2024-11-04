#ifndef BW1_DECOMP_CAMERA_MODE_CITADEL_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_CITADEL_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "CameraMode.h" /* For struct CameraMode */

struct CameraModeCitadel
{
  struct CameraMode super;  /* 0x0 */
};
static_assert(sizeof(struct CameraModeCitadel) == 0x8, "Data type is of wrong size");

static struct CameraModeVftable* const __vt__17CameraModeCitadel = (struct CameraModeVftable* const)0x008c7694;

#endif /* BW1_DECOMP_CAMERA_MODE_CITADEL_INCLUDED_H */
