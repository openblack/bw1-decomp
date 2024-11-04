#ifndef BW1_DECOMP_CAMERA_MODE_TWO_OBJECTS_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_TWO_OBJECTS_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "CameraMode.h" /* For struct CameraMode */

struct CameraModeTwoObjects
{
  struct CameraMode super;  /* 0x0 */
};
static_assert(sizeof(struct CameraModeTwoObjects) == 0x8, "Data type is of wrong size");

static struct CameraModeVftable* const __vt__20CameraModeTwoObjects = (struct CameraModeVftable* const)0x008c7dd0;

#endif /* BW1_DECOMP_CAMERA_MODE_TWO_OBJECTS_INCLUDED_H */
