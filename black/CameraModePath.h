#ifndef BW1_DECOMP_CAMERA_MODE_PATH_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_PATH_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "CameraMode.h" /* For struct CameraMode */

struct CameraModePath
{
  struct CameraMode super;  /* 0x0 */
};
static_assert(sizeof(struct CameraModePath) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cd9e0 mac inlined CameraModePath::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14CameraModePath asm("??_R0?AVCameraModePath@@@8");
// win1.41 009a8c60 mac inlined CameraModePath::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14CameraModePath asm("??_R1A@?0A@A@CameraModePath@@8");
// win1.41 009a8c78 mac inlined CameraModePath::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14CameraModePath asm("??_R2CameraModePath@@8");
// win1.41 009a8c88 mac inlined CameraModePath::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14CameraModePath asm("??_R3CameraModePath@@8");
// win1.41 008c7d0c mac 10777078 CameraModePath::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__14CameraModePath asm("??_R4CameraModePath@@6B@");
// win1.41 008c7d10 mac 106f677c CameraModePath::`vftable'
extern const struct CameraModeVftable __vt__14CameraModePath asm("??_7CameraModePath@@6B@");

#endif /* BW1_DECOMP_CAMERA_MODE_PATH_INCLUDED_H */
