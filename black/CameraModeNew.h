#ifndef BW1_DECOMP_CAMERA_MODE_NEW_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_NEW_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "CameraMode.h" /* For struct CameraMode */

struct CameraModeNew
{
  struct CameraMode super;  /* 0x0 */
};
static_assert(sizeof(struct CameraModeNew) == 0x8, "Data type is of wrong size");

// win1.41 008c7ab0 mac inlined CameraModeNew::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__13CameraModeNew asm("??_R4CameraModeNew@@6B@");

// win1.41 008c7ab4 mac inlined CameraModeNew::`vftable'
extern const struct CameraModeVftable __vt__13CameraModeNew asm("??_7CameraModeNew@@6B@");

#endif /* BW1_DECOMP_CAMERA_MODE_NEW_INCLUDED_H */
