#ifndef BW1_DECOMP_CAMERA_MODE_FLY_AND_CLICK_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_FLY_AND_CLICK_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "CameraMode.h" /* For struct CameraMode */

struct CameraModeFlyAndClick
{
  struct CameraMode super;  /* 0x0 */
};
static_assert(sizeof(struct CameraModeFlyAndClick) == 0x8, "Data type is of wrong size");

// win1.41 008c7810 mac inlined CameraModeFlyAndClick::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__21CameraModeFlyAndClick asm("??_R4CameraModeFlyAndClick@@6B@");

// win1.41 008c7814 mac inlined CameraModeFlyAndClick::`vftable'
extern const struct CameraModeVftable __vt__21CameraModeFlyAndClick asm("??_7CameraModeFlyAndClick@@6B@");

#endif /* BW1_DECOMP_CAMERA_MODE_FLY_AND_CLICK_INCLUDED_H */
