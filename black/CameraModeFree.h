#ifndef BW1_DECOMP_CAMERA_MODE_FREE_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_FREE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "CameraMode.h" /* For struct CameraMode */

struct CameraModeFree
{
  struct CameraMode super;  /* 0x0 */
  float field_0x8;
  uint32_t field_0xc;
  uint32_t field_0x10;
  uint32_t field_0x14;
};
static_assert(sizeof(struct CameraModeFree) == 0x18, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cda00 mac inlined CameraModeFree::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14CameraModeFree asm("??_R0?AVCameraModeFree@@@8");
// win1.41 009a8ad0 mac inlined CameraModeFree::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14CameraModeFree asm("??_R1A@?0A@A@CameraModeFree@@8");
// win1.41 009a8ae8 mac inlined CameraModeFree::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14CameraModeFree asm("??_R2CameraModeFree@@8");
// win1.41 009a8af8 mac inlined CameraModeFree::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14CameraModeFree asm("??_R3CameraModeFree@@8");
// win1.41 008c7954 mac 1077708c CameraModeFree::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__14CameraModeFree asm("??_R4CameraModeFree@@6B@");
// win1.41 008c7958 mac 106f6780 CameraModeFree::`vftable'
extern const struct CameraModeVftable __vt__14CameraModeFree asm("??_7CameraModeFree@@6B@");

#endif /* BW1_DECOMP_CAMERA_MODE_FREE_INCLUDED_H */
