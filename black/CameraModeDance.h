#ifndef BW1_DECOMP_CAMERA_MODE_DANCE_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_DANCE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "CameraMode.h" /* For struct CameraMode */

struct CameraModeDance
{
  struct CameraMode super;  /* 0x0 */
};
static_assert(sizeof(struct CameraModeDance) == 0x8, "Data type is of wrong size");

// win1.41 008c779c mac 10777774 CameraModeDance::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__15CameraModeDance asm("??_R4CameraModeDance@@6B@");

// win1.41 008c77a0 mac 1077777c CameraModeDance::`vftable'
extern const struct CameraModeVftable __vt__15CameraModeDance asm("??_7CameraModeDance@@6B@");

#endif /* BW1_DECOMP_CAMERA_MODE_DANCE_INCLUDED_H */
