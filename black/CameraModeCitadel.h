#ifndef BW1_DECOMP_CAMERA_MODE_CITADEL_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_CITADEL_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "CameraMode.h" /* For struct CameraMode */

struct CameraModeCitadel
{
  struct CameraMode super;  /* 0x0 */
};
static_assert(sizeof(struct CameraModeCitadel) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009ce018 mac inlined CameraModeCitadel::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__17CameraModeCitadel asm("??_R0?AVCameraModeCitadel@@@8");
// win1.41 009a88c0 mac inlined CameraModeCitadel::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__17CameraModeCitadel asm("??_R1A@?0A@A@CameraModeCitadel@@8");
// win1.41 009a88d8 mac inlined CameraModeCitadel::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__17CameraModeCitadel asm("??_R2CameraModeCitadel@@8");
// win1.41 009a88e8 mac inlined CameraModeCitadel::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__17CameraModeCitadel asm("??_R3CameraModeCitadel@@8");
// win1.41 008c7690 mac inlined CameraModeCitadel::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__17CameraModeCitadel asm("??_R4CameraModeCitadel@@6B@");
// win1.41 008c7694 mac inlined CameraModeCitadel::`vftable'
extern const struct CameraModeVftable __vt__17CameraModeCitadel asm("??_7CameraModeCitadel@@6B@");

#endif /* BW1_DECOMP_CAMERA_MODE_CITADEL_INCLUDED_H */
