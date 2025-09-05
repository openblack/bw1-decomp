#ifndef BW1_DECOMP_CAMERA_MODE_CTR_INTERACT_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_CTR_INTERACT_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "CameraMode.h" /* For struct CameraMode */

struct CameraModeCtrInteract
{
  struct CameraMode super;  /* 0x0 */
};
static_assert(sizeof(struct CameraModeCtrInteract) == 0x8, "Data type is of wrong size");

// win1.41 008c773c mac 10777708 CameraModeCtrInteract::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__21CameraModeCtrInteract asm("??_R4CameraModeCtrInteract@@6B@");

// win1.41 008c7740 mac 106f67e8 CameraModeCtrInteract::`vftable'
extern const struct CameraModeVftable __vt__21CameraModeCtrInteract asm("??_7CameraModeCtrInteract@@6B@");

#endif /* BW1_DECOMP_CAMERA_MODE_CTR_INTERACT_INCLUDED_H */
