#ifndef BW1_DECOMP_CAMERA_MODE_FOLLOW_HEADING_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_FOLLOW_HEADING_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "CameraMode.h" /* For struct CameraMode */

struct CameraModeFollowHeading
{
  struct CameraMode super;  /* 0x0 */
};
static_assert(sizeof(struct CameraModeFollowHeading) == 0x8, "Data type is of wrong size");

// win1.41 008c7900 mac 10777930 CameraModeFollowHeading::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__23CameraModeFollowHeading asm("??_R4CameraModeFollowHeading@@6B@");

// win1.41 008c7904 mac 10777938 CameraModeFollowHeading::`vftable'
extern const struct CameraModeVftable __vt__23CameraModeFollowHeading asm("??_7CameraModeFollowHeading@@6B@");

#endif /* BW1_DECOMP_CAMERA_MODE_FOLLOW_HEADING_INCLUDED_H */
