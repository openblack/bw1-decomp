#ifndef BW1_DECOMP_CAMERA_MODE_FOLLOW_HEADING_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_FOLLOW_HEADING_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "CameraMode.h" /* For struct CameraMode */

struct CameraModeFollowHeading
{
  struct CameraMode super;  /* 0x0 */
};
static_assert(sizeof(struct CameraModeFollowHeading) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009ce1d8 mac inlined CameraModeFollowHeading::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__23CameraModeFollowHeading asm("??_R0?AVCameraModeFollowHeading@@@8");
// win1.41 009a8a80 mac inlined CameraModeFollowHeading::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__23CameraModeFollowHeading asm("??_R1A@?0A@A@CameraModeFollowHeading@@8");
// win1.41 009a8a98 mac inlined CameraModeFollowHeading::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__23CameraModeFollowHeading asm("??_R2CameraModeFollowHeading@@8");
// win1.41 009a8aa8 mac inlined CameraModeFollowHeading::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__23CameraModeFollowHeading asm("??_R3CameraModeFollowHeading@@8");
// win1.41 008c7900 mac 10777930 CameraModeFollowHeading::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__23CameraModeFollowHeading asm("??_R4CameraModeFollowHeading@@6B@");
// win1.41 008c7904 mac 10777938 CameraModeFollowHeading::`vftable'
extern const struct CameraModeVftable __vt__23CameraModeFollowHeading asm("??_7CameraModeFollowHeading@@6B@");

#endif /* BW1_DECOMP_CAMERA_MODE_FOLLOW_HEADING_INCLUDED_H */
