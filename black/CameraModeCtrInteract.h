#ifndef BW1_DECOMP_CAMERA_MODE_CTR_INTERACT_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_CTR_INTERACT_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "CameraMode.h" /* For struct CameraMode */

struct CameraModeCtrInteract
{
  struct CameraMode super;  /* 0x0 */
};
static_assert(sizeof(struct CameraModeCtrInteract) == 0x8, "Data type is of wrong size");

static struct CameraModeVftable* __vt__21CameraModeCtrInteract = (struct CameraModeVftable*)0x008c7740;

#endif /* BW1_DECOMP_CAMERA_MODE_CTR_INTERACT_INCLUDED_H */
