#ifndef BW1_DECOMP_CAMERA_MODE_CTR_INTERACT_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_CTR_INTERACT_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "CameraMode.h" /* For struct CameraMode */

struct CameraModeCtrInteract
{
  struct CameraMode super;  /* 0x0 */
};
static_assert(sizeof(struct CameraModeCtrInteract) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009ce078 mac inlined CameraModeCtrInteract::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__21CameraModeCtrInteract asm("??_R0?AVCameraModeCtrInteract@@@8");
// win1.41 009a8940 mac inlined CameraModeCtrInteract::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__21CameraModeCtrInteract asm("??_R1A@?0A@A@CameraModeCtrInteract@@8");
// win1.41 009a8958 mac inlined CameraModeCtrInteract::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__21CameraModeCtrInteract asm("??_R2CameraModeCtrInteract@@8");
// win1.41 009a8968 mac inlined CameraModeCtrInteract::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__21CameraModeCtrInteract asm("??_R3CameraModeCtrInteract@@8");
// win1.41 008c773c mac 10777708 CameraModeCtrInteract::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__21CameraModeCtrInteract asm("??_R4CameraModeCtrInteract@@6B@");
// win1.41 008c7740 mac 106f67e8 CameraModeCtrInteract::`vftable'
extern const struct CameraModeVftable __vt__21CameraModeCtrInteract asm("??_7CameraModeCtrInteract@@6B@");

#endif /* BW1_DECOMP_CAMERA_MODE_CTR_INTERACT_INCLUDED_H */
