#ifndef BW1_DECOMP_CAMERA_MODE_FLY_AND_CLICK_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_FLY_AND_CLICK_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "CameraMode.h" /* For struct CameraMode */

struct CameraModeFlyAndClick
{
  struct CameraMode super;  /* 0x0 */
};
static_assert(sizeof(struct CameraModeFlyAndClick) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009ce0f8 mac inlined CameraModeFlyAndClick::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__21CameraModeFlyAndClick asm("??_R0?AVCameraModeFlyAndClick@@@8");
// win1.41 009a89e0 mac inlined CameraModeFlyAndClick::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__21CameraModeFlyAndClick asm("??_R1A@?0A@A@CameraModeFlyAndClick@@8");
// win1.41 009a89f8 mac inlined CameraModeFlyAndClick::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__21CameraModeFlyAndClick asm("??_R2CameraModeFlyAndClick@@8");
// win1.41 009a8a08 mac inlined CameraModeFlyAndClick::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__21CameraModeFlyAndClick asm("??_R3CameraModeFlyAndClick@@8");
// win1.41 008c7810 mac inlined CameraModeFlyAndClick::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__21CameraModeFlyAndClick asm("??_R4CameraModeFlyAndClick@@6B@");
// win1.41 008c7814 mac inlined CameraModeFlyAndClick::`vftable'
extern const struct CameraModeVftable __vt__21CameraModeFlyAndClick asm("??_7CameraModeFlyAndClick@@6B@");

#endif /* BW1_DECOMP_CAMERA_MODE_FLY_AND_CLICK_INCLUDED_H */
