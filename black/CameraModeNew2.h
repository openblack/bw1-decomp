#ifndef BW1_DECOMP_CAMERA_MODE_NEW2_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_NEW2_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "CameraModeNew.h" /* For struct CameraModeNew */

struct CameraModeNew2
{
  struct CameraModeNew super;  /* 0x0 */
};
static_assert(sizeof(struct CameraModeNew2) == 0x8, "Data type is of wrong size");

static struct CameraModeVftable* __vt__14CameraModeNew2 = (struct CameraModeVftable*)0x008c7b58;

#endif /* BW1_DECOMP_CAMERA_MODE_NEW2_INCLUDED_H */
