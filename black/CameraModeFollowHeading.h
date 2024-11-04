#ifndef BW1_DECOMP_CAMERA_MODE_FOLLOW_HEADING_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_FOLLOW_HEADING_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "CameraMode.h" /* For struct CameraMode */

struct CameraModeFollowHeading
{
  struct CameraMode super;  /* 0x0 */
};
static_assert(sizeof(struct CameraModeFollowHeading) == 0x8, "Data type is of wrong size");

static struct CameraModeVftable* __vt__23CameraModeFollowHeading = (struct CameraModeVftable*)0x008c7904;

#endif /* BW1_DECOMP_CAMERA_MODE_FOLLOW_HEADING_INCLUDED_H */
