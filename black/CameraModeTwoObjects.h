#ifndef BW1_DECOMP_CAMERA_MODE_TWO_OBJECTS_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_TWO_OBJECTS_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "CameraMode.h" /* For struct CameraMode */

struct CameraModeTwoObjects
{
  struct CameraMode super;  /* 0x0 */
};
static_assert(sizeof(struct CameraModeTwoObjects) == 0x8, "Data type is of wrong size");

// win1.41 008c7dcc mac 109c3938 CameraModeTwoObjects::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__20CameraModeTwoObjects asm("??_R4CameraModeTwoObjects@@6B@");

// win1.41 008c7dd0 mac 106fa538 CameraModeTwoObjects::`vftable'
extern const struct CameraModeVftable __vt__20CameraModeTwoObjects asm("??_7CameraModeTwoObjects@@6B@");

#endif /* BW1_DECOMP_CAMERA_MODE_TWO_OBJECTS_INCLUDED_H */
