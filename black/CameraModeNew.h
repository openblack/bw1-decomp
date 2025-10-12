#ifndef BW1_DECOMP_CAMERA_MODE_NEW_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_NEW_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "CameraMode.h" /* For struct CameraMode */

struct CameraModeNew
{
  struct CameraMode super;  /* 0x0 */
};
static_assert(sizeof(struct CameraModeNew) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009ce248 mac inlined CameraModeNew::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13CameraModeNew asm("??_R0?AVCameraModeNew@@@8");
// win1.41 009a8b70 mac inlined CameraModeNew::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13CameraModeNew asm("??_R1A@?0A@A@CameraModeNew@@8");
// win1.41 009a8b88 mac inlined CameraModeNew::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13CameraModeNew asm("??_R2CameraModeNew@@8");
// win1.41 009a8b98 mac inlined CameraModeNew::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13CameraModeNew asm("??_R3CameraModeNew@@8");
// win1.41 008c7ab0 mac inlined CameraModeNew::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__13CameraModeNew asm("??_R4CameraModeNew@@6B@");
// win1.41 008c7ab4 mac inlined CameraModeNew::`vftable'
extern const struct CameraModeVftable __vt__13CameraModeNew asm("??_7CameraModeNew@@6B@");

#endif /* BW1_DECOMP_CAMERA_MODE_NEW_INCLUDED_H */
