#ifndef BW1_DECOMP_CAMERA_MODE_CITADEL_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_CITADEL_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "CameraMode.h" /* For struct CameraMode */

struct CameraModeCitadel
{
  struct CameraMode super;  /* 0x0 */
};
static_assert(sizeof(struct CameraModeCitadel) == 0x8, "Data type is of wrong size");

// win1.41 008c7690 mac inlined CameraModeCitadel::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__17CameraModeCitadel asm("??_R4CameraModeCitadel@@6B@");

// win1.41 008c7694 mac inlined CameraModeCitadel::`vftable'
extern const struct CameraModeVftable __vt__17CameraModeCitadel asm("??_7CameraModeCitadel@@6B@");

#endif /* BW1_DECOMP_CAMERA_MODE_CITADEL_INCLUDED_H */
