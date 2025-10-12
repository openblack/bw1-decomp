#ifndef BW1_DECOMP_CAMERA_MODE_DANCE_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_DANCE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "CameraMode.h" /* For struct CameraMode */

struct CameraModeDance
{
  struct CameraMode super;  /* 0x0 */
};
static_assert(sizeof(struct CameraModeDance) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009ce0d0 mac inlined CameraModeDance::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15CameraModeDance asm("??_R0?AVCameraModeDance@@@8");
// win1.41 009a8990 mac inlined CameraModeDance::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15CameraModeDance asm("??_R1A@?0A@A@CameraModeDance@@8");
// win1.41 009a89a8 mac inlined CameraModeDance::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15CameraModeDance asm("??_R2CameraModeDance@@8");
// win1.41 009a89b8 mac inlined CameraModeDance::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15CameraModeDance asm("??_R3CameraModeDance@@8");
// win1.41 008c779c mac 10777774 CameraModeDance::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__15CameraModeDance asm("??_R4CameraModeDance@@6B@");
// win1.41 008c77a0 mac 1077777c CameraModeDance::`vftable'
extern const struct CameraModeVftable __vt__15CameraModeDance asm("??_7CameraModeDance@@6B@");

#endif /* BW1_DECOMP_CAMERA_MODE_DANCE_INCLUDED_H */
