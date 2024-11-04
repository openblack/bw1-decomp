#ifndef BW1_DECOMP_CAMERA_MODE_NEW1_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_NEW1_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "CameraModeNew.h" /* For struct CameraModeNew */

struct CameraModeNew1
{
  struct CameraModeNew super;  /* 0x0 */
};
static_assert(sizeof(struct CameraModeNew1) == 0x8, "Data type is of wrong size");

static struct CameraModeVftable* const __vt__14CameraModeNew1 = (struct CameraModeVftable* const)0x008c7a58;

#endif /* BW1_DECOMP_CAMERA_MODE_NEW1_INCLUDED_H */
