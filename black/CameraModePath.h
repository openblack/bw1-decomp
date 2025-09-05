#ifndef BW1_DECOMP_CAMERA_MODE_PATH_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_PATH_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "CameraMode.h" /* For struct CameraMode */

struct CameraModePath
{
  struct CameraMode super;  /* 0x0 */
};
static_assert(sizeof(struct CameraModePath) == 0x8, "Data type is of wrong size");

// win1.41 008c7d0c mac 10777078 CameraModePath::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__14CameraModePath asm("??_R4CameraModePath@@6B@");

// win1.41 008c7d10 mac 106f677c CameraModePath::`vftable'
extern const struct CameraModeVftable __vt__14CameraModePath asm("??_7CameraModePath@@6B@");

#endif /* BW1_DECOMP_CAMERA_MODE_PATH_INCLUDED_H */
